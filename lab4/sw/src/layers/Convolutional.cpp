#include "Convolutional.h"

#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {

const fp64 ConvolutionalLayer::compute2DIntermediateResult(const LayerData& ifMap,
                                                           const size curRow, const size curCol,
                                                           const size curChan,
                                                           const size curFilter) const {
    const auto filterRows = this->getWeightParams().dims.at(0);
    const auto filterCols = this->getWeightParams().dims.at(1);
    const auto filterChans = this->getWeightParams().dims.at(2);
    const auto maxRow = ifMap.getParams().dims.at(0) - filterRows + 1;
    const auto maxCol = ifMap.getParams().dims.at(1) - filterCols + 1;
    const auto maxChan = ifMap.getParams().dims.at(2);

    fp64 sum = 0;

    // error handling
    if (curChan >= maxChan) {
        logError("ERROR: curChan >= maxChan");
        exit(1);
    }
    if (curRow >= maxRow) {
        logError("ERROR: curRow >= maxRow");
        exit(1);
    }
    if (curCol >= maxCol) {
        logError("ERROR: curCol >= maxCol");
        exit(1);
    }
    if (filterChans != maxChan) {
        logError("ERROR: filterChans != maxChan");
        exit(1);
    }

    // compute 2D intermediate result
    const auto& ifMapData = ifMap.getData<Array3D_fp32>();
    const auto& weightData = this->getWeightData().getData<Array4D_fp32>();
    for (size rowIdx = curRow; rowIdx < (curRow + filterRows); rowIdx++) {
        for (size colIdx = curCol; colIdx < (curCol + filterCols); colIdx++) {
            sum +=
                ifMapData[rowIdx][colIdx][curChan] * weightData[rowIdx][colIdx][curChan][curFilter];
        }
    }
    return sum;
}

const fp64 ConvolutionalLayer::compute3DIntermediateResult(const LayerData& ifMap,
                                                           const size curRow, const size curCol,
                                                           const size curFilter) const {
    const auto filterRows = this->getWeightParams().dims.at(0);
    const auto filterCols = this->getWeightParams().dims.at(1);
    const auto filterChans = this->getWeightParams().dims.at(2);
    const auto maxRow = ifMap.getParams().dims.at(0) - filterRows + 1;
    const auto maxCol = ifMap.getParams().dims.at(1) - filterCols + 1;

    fp64 sum = 0;

    // error handling
    if (curRow >= maxRow) {
        logError("ERROR: curRow >= maxRow");
        exit(1);
    }
    if (curCol >= maxCol) {
        logError("ERROR: curCol >= maxCol");
        exit(1);
    }

    // compute 3D intermediate result
    const auto& ifMapData = ifMap.getData<Array3D_fp32>();
    const auto& weightData = this->getWeightData().getData<Array4D_fp32>();
    const size rowLimit = curRow + filterRows;
    const size colLimit = curCol + filterCols;
    for (size rowIdx = curRow; rowIdx < rowLimit; rowIdx++) {
        for (size colIdx = curCol; colIdx < colLimit; colIdx++) {
            for (size chanIdx = 0; chanIdx < filterChans; chanIdx++) {
                // logDebug("rowIdx: " + std::to_string(rowIdx) + ", " + std::to_string(curRow));
                // logDebug("colIdx: " + std::to_string(colIdx) + ", " + std::to_string(curCol));
                // logDebug("chanIdx: " + std::to_string(chanIdx));
                sum += ifMapData[rowIdx][colIdx][chanIdx] *
                       weightData[rowIdx - curRow][colIdx - curCol][chanIdx][curFilter];
            }
        }
    }
    // logDebug("sum: " + std::to_string(sum) + "\n");
    return sum;
}

const i32 ConvolutionalLayer::compute3DIntermediateResultQuant1(const LayerData& ifMap,
                                                                const size curRow,
                                                                const size curCol,
                                                                const size curFilter) const {
    const auto filterRows = this->getWeightParams().dims.at(0);
    const auto filterCols = this->getWeightParams().dims.at(1);
    const auto filterChans = this->getWeightParams().dims.at(2);
    const auto maxRow = ifMap.getParams().dims.at(0) - filterRows + 1;
    const auto maxCol = ifMap.getParams().dims.at(1) - filterCols + 1;

    i32 sum = 0;

    // error handling
    if (curRow >= maxRow) {
        logError("ERROR: curRow >= maxRow");
        exit(1);
    }
    if (curCol >= maxCol) {
        logError("ERROR: curCol >= maxCol");
        exit(1);
    }

    // compute 3D intermediate result
    const auto& ifMapData = ifMap.getData<Array3D_ui8>();
    const auto& weightData = this->getWeightData().getData<Array4D_i8>();
    const size rowLimit = curRow + filterRows;
    const size colLimit = curCol + filterCols;
    for (size rowIdx = curRow; rowIdx < rowLimit; rowIdx++) {
        for (size colIdx = curCol; colIdx < colLimit; colIdx++) {
            for (size chanIdx = 0; chanIdx < filterChans; chanIdx++) {
                // logDebug("rowIdx: " + std::to_string(rowIdx) + ", " + std::to_string(curRow));
                // logDebug("colIdx: " + std::to_string(colIdx) + ", " + std::to_string(curCol));
                // logDebug("chanIdx: " + std::to_string(chanIdx));
                i8 w = weightData[rowIdx - curRow][colIdx - curCol][chanIdx][curFilter];
                ui8 in = ifMapData[rowIdx][colIdx][chanIdx];
                if (w < 0) {
                    sum -= static_cast<i32>(in * static_cast<ui8>(-w));
                } else {
                    sum += static_cast<i32>(in * static_cast<ui8>(w));
                }
            }
        }
    }
    // logDebug("sum: " + std::to_string(sum) + "\n");
    return sum;
}

const i32 ConvolutionalLayer::compute3DIntermediateResultQuant2(const LayerData& ifMap,
                                                                const size curRow,
                                                                const size curCol,
                                                                const size curFilter) const {
    const auto filterRows = this->getWeightParams().dims.at(0);
    const auto filterCols = this->getWeightParams().dims.at(1);
    const auto filterChans = this->getWeightParams().dims.at(2);
    const auto maxRow = ifMap.getParams().dims.at(0) - filterRows + 1;
    const auto maxCol = ifMap.getParams().dims.at(1) - filterCols + 1;

    i32 sum = 0;

    // error handling
    if (curRow >= maxRow) {
        logError("ERROR: curRow >= maxRow");
        exit(1);
    }
    if (curCol >= maxCol) {
        logError("ERROR: curCol >= maxCol");
        exit(1);
    }

    // compute 3D intermediate result
    const auto& ifMapData = ifMap.getData<Array3D_fp32>();
    const auto& weightData = this->getWeightData().getData<Array4D_i8>();
    const size rowLimit = curRow + filterRows;
    const size colLimit = curCol + filterCols;
    for (size rowIdx = curRow; rowIdx < rowLimit; rowIdx++) {
        for (size colIdx = curCol; colIdx < colLimit; colIdx++) {
            for (size chanIdx = 0; chanIdx < filterChans; chanIdx++) {
                // logDebug("rowIdx: " + std::to_string(rowIdx) + ", " + std::to_string(curRow));
                // logDebug("colIdx: " + std::to_string(colIdx) + ", " + std::to_string(curCol));
                // logDebug("chanIdx: " + std::to_string(chanIdx));
                const i8 w = weightData[rowIdx - curRow][colIdx - curCol][chanIdx][curFilter];
                const ui8 in = static_cast<ui8>(
                    std::round(this->s_input * ifMapData[rowIdx][colIdx][chanIdx]));
                if (w < 0) {
                    sum -= static_cast<i32>(in * static_cast<ui8>(-w));
                } else {
                    sum += static_cast<i32>(in * static_cast<ui8>(w));
                }
            }
        }
    }
    // logDebug("sum: " + std::to_string(sum) + "\n");
    return sum;
}

// Compute the convolution for the layer data
void ConvolutionalLayer::computeNaive(const LayerData& dataIn) const {
    if (!dataIn.isAlloced() || !dataIn.isValid()) {
        logError("ERROR: dataIn not allocated or not valid");
        exit(1);
    }
    if (!this->isOutputBufferAlloced() || !this->getOutputData().isValid()) {
        logError("ERROR: output buffer not allocated or not valid");
        exit(1);
    }
    const auto numFilters = this->getWeightParams().dims.at(3);
    const auto filterRows = this->getWeightParams().dims.at(0);
    const auto filterCols = this->getWeightParams().dims.at(1);
    const auto filterChans = this->getWeightParams().dims.at(2);
    const auto maxRow = dataIn.getParams().dims.at(0) - filterRows + 1;
    const auto maxCol = dataIn.getParams().dims.at(1) - filterCols + 1;
    const auto maxChan = dataIn.getParams().dims.at(2);
    // logDebug("numFilters: " + std::to_string(numFilters));
    // logDebug("filterRows: " + std::to_string(filterRows));
    // logDebug("filterCols: " + std::to_string(filterCols));
    // logDebug("filterChans: " + std::to_string(filterChans));
    // logDebug("maxRow: " + std::to_string(maxRow));
    // logDebug("maxCol: " + std::to_string(maxCol));
    // logDebug("maxChan: " + std::to_string(maxChan));

    // error handling
    if (filterChans != maxChan) {
        logError("ERROR: filterChans != maxChan");
        exit(1);
    }

    // for each filter, for each input channel, compute intermediate result (2D convolution),
    // then add then up, and then add bias
    // Lastly, perform ReLu and write result to output feature map (outData in Layer)
    const auto& outData = this->getOutputData().getData<Array3D_fp32>();
    const auto& biasData = this->getBiasData().getData<Array1D_fp32>();
    for (size filterIdx = 0; filterIdx < numFilters; filterIdx++) {
        for (size rowIdx = 0; rowIdx < maxRow; rowIdx++) {
            for (size colIdx = 0; colIdx < maxCol; colIdx++) {
                // compute intermediate result
                // add bias
                // perform ReLu and write result to output feature map
                fp64 intermediateOut =
                    compute3DIntermediateResult(dataIn, rowIdx, colIdx, filterIdx) +
                    biasData[filterIdx];
                if (this->getAType() == ActivationType::RELU) {
                    intermediateOut = std::max((fp64)0, intermediateOut);
                } else if (this->getAType() == ActivationType::ELU) {
                    if (intermediateOut < 0.0) {
                        intermediateOut = ALPHA * (std::exp(intermediateOut) - 1.0);
                    }
                } else if (this->getAType() == ActivationType::TANH) {
                    intermediateOut = (std::exp(intermediateOut) - std::exp(-intermediateOut)) /
                                      (std::exp(intermediateOut) + std::exp(-intermediateOut));
                } else if (this->getAType() == ActivationType::SIGMOID) {
                    intermediateOut = 1.0 / (1.0 + std::exp(-intermediateOut));
                } else {
                    logError("ERROR: invalid activation type for convolutional layer");
                    exit(1);
                }
                outData[rowIdx][colIdx][filterIdx] = static_cast<fp32>(intermediateOut);
            }
        }
    }
}

void ConvolutionalLayer::computeQuant1(const LayerData& dataIn) const {
    if (!dataIn.isAlloced() || !dataIn.isValid()) {
        logError("ERROR: dataIn not allocated or not valid");
        exit(1);
    }
    if (!this->isOutputBufferAlloced() || !this->getOutputData().isValid()) {
        logError("ERROR: output buffer not allocated or not valid");
        exit(1);
    }
    const auto numFilters = this->getWeightParams().dims.at(3);
    const auto filterRows = this->getWeightParams().dims.at(0);
    const auto filterCols = this->getWeightParams().dims.at(1);
    const auto filterChans = this->getWeightParams().dims.at(2);
    const auto maxRow = dataIn.getParams().dims.at(0) - filterRows + 1;
    const auto maxCol = dataIn.getParams().dims.at(1) - filterCols + 1;
    const auto maxChan = dataIn.getParams().dims.at(2);
    // logDebug("numFilters: " + std::to_string(numFilters));
    // logDebug("filterRows: " + std::to_string(filterRows));
    // logDebug("filterCols: " + std::to_string(filterCols));
    // logDebug("filterChans: " + std::to_string(filterChans));
    // logDebug("maxRow: " + std::to_string(maxRow));
    // logDebug("maxCol: " + std::to_string(maxCol));
    // logDebug("maxChan: " + std::to_string(maxChan));

    // error handling
    if (filterChans != maxChan) {
        logError("ERROR: filterChans != maxChan");
        exit(1);
    }

    // for each filter, for each input channel, compute intermediate result (2D convolution),
    // then add then up, and then add bias
    // Lastly, perform ReLu and write result to output feature map (outData in Layer)
    const auto& outData = this->getOutputData().getData<Array3D_ui8>();
    const auto& biasData = this->getBiasData().getData<Array1D_i32>();
    const fp32 dScale = 1 / (this->s_input * this->s_weight);
    for (size filterIdx = 0; filterIdx < numFilters; filterIdx++) {
        for (size rowIdx = 0; rowIdx < maxRow; rowIdx++) {
            for (size colIdx = 0; colIdx < maxCol; colIdx++) {
                // compute intermediate result
                // add bias
                // perform ReLu and write result to output feature map
                i32 intermediateOut =
                    compute3DIntermediateResultQuant1(dataIn, rowIdx, colIdx, filterIdx) +
                    biasData[filterIdx];
                // convert activation back to ui8 by 1st dequantizing to fp32
                // do this by dividing with quantization scale (scale_input * scale_weights)
                // and then requantize the fp32 value to ui8 for the next layers
                fp32 dequantized;
                if (this->getAType() == ActivationType::RELU) {
                    intermediateOut = std::max((i32)0, intermediateOut);
                    dequantized = intermediateOut * dScale;
                } else if (this->getAType() == ActivationType::ELU) {
                    dequantized = intermediateOut * dScale;
                    if (dequantized < 0) {
                        dequantized = ALPHA * (std::exp(dequantized) - 1);
                    }
                } else if (this->getAType() == ActivationType::TANH) {
                    dequantized = intermediateOut * dScale;
                    dequantized = (std::exp(dequantized) - std::exp(-dequantized)) /
                                  (std::exp(dequantized) + std::exp(-dequantized));
                } else if (this->getAType() == ActivationType::SIGMOID) {
                    dequantized = intermediateOut * dScale;
                    dequantized = 1.0 / (1.0 + std::exp(-dequantized));
                } else {
                    logError("ERROR: invalid activation type for convolutional layer");
                    exit(1);
                }
                outData[rowIdx][colIdx][filterIdx] =
                    static_cast<ui8>(std::round(this->s_input * dequantized));
            }
        }
    }
}

void ConvolutionalLayer::computeQuant2(const LayerData& dataIn) const {
    if (!dataIn.isAlloced() || !dataIn.isValid()) {
        logError("ERROR: dataIn not allocated or not valid");
        exit(1);
    }
    if (!this->isOutputBufferAlloced() || !this->getOutputData().isValid()) {
        logError("ERROR: output buffer not allocated or not valid");
        exit(1);
    }
    const auto numFilters = this->getWeightParams().dims.at(3);
    const auto filterRows = this->getWeightParams().dims.at(0);
    const auto filterCols = this->getWeightParams().dims.at(1);
    const auto filterChans = this->getWeightParams().dims.at(2);
    const auto maxRow = dataIn.getParams().dims.at(0) - filterRows + 1;
    const auto maxCol = dataIn.getParams().dims.at(1) - filterCols + 1;
    const auto maxChan = dataIn.getParams().dims.at(2);
    // logDebug("numFilters: " + std::to_string(numFilters));
    // logDebug("filterRows: " + std::to_string(filterRows));
    // logDebug("filterCols: " + std::to_string(filterCols));
    // logDebug("filterChans: " + std::to_string(filterChans));
    // logDebug("maxRow: " + std::to_string(maxRow));
    // logDebug("maxCol: " + std::to_string(maxCol));
    // logDebug("maxChan: " + std::to_string(maxChan));

    // error handling
    if (filterChans != maxChan) {
        logError("ERROR: filterChans != maxChan");
        exit(1);
    }

    // for each filter, for each input channel, compute intermediate result (2D convolution),
    // then add then up, and then add bias
    // Lastly, perform ReLu and write result to output feature map (outData in Layer)
    const auto& outData = this->getOutputData().getData<Array3D_fp32>();
    const auto& biasData = this->getBiasData().getData<Array1D_i32>();
    const fp32 dScale = 1 / (this->s_input * this->s_weight);
    for (size filterIdx = 0; filterIdx < numFilters; filterIdx++) {
        for (size rowIdx = 0; rowIdx < maxRow; rowIdx++) {
            for (size colIdx = 0; colIdx < maxCol; colIdx++) {
                // compute intermediate result
                // add bias
                // perform ReLu and write result to output feature map
                i32 intermediateOut =
                    compute3DIntermediateResultQuant2(dataIn, rowIdx, colIdx, filterIdx) +
                    biasData[filterIdx];
                // convert activation back to ui8 by 1st dequantizing to fp32
                // do this by dividing with quantization scale (scale_input * scale_weights)
                // and then requantize the fp32 value to ui8 for the next layers
                fp32 dequantized;
                if (this->getAType() == ActivationType::RELU) {
                    intermediateOut = std::max((i32)0, intermediateOut);
                    dequantized = intermediateOut * dScale;
                } else if (this->getAType() == ActivationType::ELU) {
                    dequantized = intermediateOut * dScale;
                    if (dequantized < 0) {
                        dequantized = ALPHA * (std::exp(dequantized) - 1);
                    }
                } else if (this->getAType() == ActivationType::TANH) {
                    dequantized = intermediateOut * dScale;
                    dequantized = (std::exp(dequantized) - std::exp(-dequantized)) /
                                  (std::exp(dequantized) + std::exp(-dequantized));
                } else if (this->getAType() == ActivationType::SIGMOID) {
                    dequantized = intermediateOut * dScale;
                    dequantized = 1.0 / (1.0 + std::exp(-dequantized));
                } else {
                    logError("ERROR: invalid activation type for convolutional layer");
                    exit(1);
                }
                outData[rowIdx][colIdx][filterIdx] = dequantized;
            }
        }
    }
}

// Compute the convolution using threads
void ConvolutionalLayer::computeThreaded(const LayerData& dataIn) const {
    // TODO
}

// Compute the convolution using a tiled approach
void ConvolutionalLayer::computeTiled(const LayerData& dataIn) const {
    // TODO
}

// Compute the convolution using SIMD
void ConvolutionalLayer::computeSIMD(const LayerData& dataIn) const {
    // TODO
}
}  // namespace ML

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
                        intermediateOut = ALPHA * (std::exp((fp64)intermediateOut) - 1.0);
                    }
                } else if (this->getAType() == ActivationType::TANH) {
                    intermediateOut = (std::exp((fp64)intermediateOut) - std::exp(-(fp64)intermediateOut)) /
                                      (std::exp((fp64)intermediateOut) + std::exp(-(fp64)intermediateOut));
                } else if (this->getAType() == ActivationType::SIGMOID) {
                    intermediateOut = 1 / (1 + std::exp(-(fp64)intermediateOut));
                } else {
                    logError("ERROR: invalid activation type for convolutional layer");
                    exit(1);
                }
                outData[rowIdx][colIdx][filterIdx] = (fp32)intermediateOut;
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

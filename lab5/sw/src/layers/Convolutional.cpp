#include "Convolutional.h"

#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {

const fp64 ConvolutionalLayer::compute2DIntermediateResult(const LayerData& ifMap,
                                                           const size ifMapRow, const size ifMapCol,
                                                           const size curChan,
                                                           const size filterIdx) const {
    const auto R = this->getWeightParams().dims.at(0);
    const auto S = this->getWeightParams().dims.at(1);
    const auto C = this->getWeightParams().dims.at(2);
    const auto H_R = ifMap.getParams().dims.at(0) - R + 1;
    const auto W_S = ifMap.getParams().dims.at(1) - S + 1;
    const auto maxChan = ifMap.getParams().dims.at(2);

    fp64 sum = 0;

    // error handling
    if (curChan >= maxChan) {
        logError("ERROR: curChan >= maxChan");
        exit(1);
    }
    if (ifMapRow >= H_R) {
        logError("ERROR: ifMapRow >= H_R (max row)");
        exit(1);
    }
    if (ifMapCol >= W_S) {
        logError("ERROR: ifMapCol >= W_S (max col)");
        exit(1);
    }
    if (C != maxChan) {
        logError("ERROR: C (filter chans) != maxChan");
        exit(1);
    }

    // compute 2D intermediate result
    const auto& ifMapData = ifMap.getData<Array3D_fp32>();
    const auto& weightData = this->getWeightData().getData<Array4D_fp32>();
    for (size rowIdx = ifMapRow; rowIdx < (ifMapRow + R); rowIdx++) {
        for (size colIdx = ifMapCol; colIdx < (ifMapCol + S); colIdx++) {
            sum +=
                ifMapData[rowIdx][colIdx][curChan] * weightData[rowIdx][colIdx][curChan][filterIdx];
        }
    }
    return sum;
}

const fp64 ConvolutionalLayer::compute3DIntermediateResult(const LayerData& ifMap,
                                                           const size ifMapRow, const size ifMapCol,
                                                           const size filterIdx) const {
    const auto R = this->getWeightParams().dims.at(0);
    const auto S = this->getWeightParams().dims.at(1);
    const auto C = this->getWeightParams().dims.at(2);
    const auto H_R = ifMap.getParams().dims.at(0) - R + 1;
    const auto W_S = ifMap.getParams().dims.at(1) - S + 1;

    fp64 sum = 0;

    // error handling
    if (ifMapRow >= H_R) {
        logError("ERROR: ifMapRow >= H_R (max row)");
        exit(1);
    }
    if (ifMapCol >= W_S) {
        logError("ERROR: ifMapCol >= W_S (max col)");
        exit(1);
    }

    // compute 3D intermediate result
    const auto& ifMapData = ifMap.getData<Array3D_fp32>();
    const auto& weightData = this->getWeightData().getData<Array4D_fp32>();
    const size rowLimit = ifMapRow + R;
    const size colLimit = ifMapCol + S;
    for (size rowIdx = ifMapRow; rowIdx < rowLimit; rowIdx++) {
        for (size colIdx = ifMapCol; colIdx < colLimit; colIdx++) {
            for (size chanIdx = 0; chanIdx < C; chanIdx++) {
                // logDebug("rowIdx: " + std::to_string(rowIdx) + ", " + std::to_string(ifMapRow));
                // logDebug("colIdx: " + std::to_string(colIdx) + ", " + std::to_string(ifMapCol));
                // logDebug("chanIdx: " + std::to_string(chanIdx));
                sum += ifMapData[rowIdx][colIdx][chanIdx] *
                       weightData[rowIdx - ifMapRow][colIdx - ifMapCol][chanIdx][filterIdx];
            }
        }
    }
    // logDebug("sum: " + std::to_string(sum) + "\n");
    return sum;
}

const i32 ConvolutionalLayer::compute3DIntermediateResultQuant1(const LayerData& ifMap,
                                                                const size ifMapRow,
                                                                const size ifMapCol,
                                                                const size filterIdx) const {
    const auto R = this->getWeightParams().dims.at(0);
    const auto S = this->getWeightParams().dims.at(1);
    const auto C = this->getWeightParams().dims.at(2);
    const auto H_R = ifMap.getParams().dims.at(0) - R + 1;
    const auto W_S = ifMap.getParams().dims.at(1) - S + 1;

    i32 sum = 0;

    // error handling
    if (ifMapRow >= H_R) {
        logError("ERROR: ifMapRow >= H_R (max row)");
        exit(1);
    }
    if (ifMapCol >= W_S) {
        logError("ERROR: ifMapCol >= W_S (max col)");
        exit(1);
    }

    // compute 3D intermediate result
    const auto& ifMapData = ifMap.getData<Array3D_ui8>();
    const auto& weightData = this->getWeightData().getData<Array4D_i8>();
    const size rowLimit = ifMapRow + R;
    const size colLimit = ifMapCol + S;
    for (size rowIdx = ifMapRow; rowIdx < rowLimit; rowIdx++) {
        for (size colIdx = ifMapCol; colIdx < colLimit; colIdx++) {
            for (size chanIdx = 0; chanIdx < C; chanIdx++) {
                // logDebug("rowIdx: " + std::to_string(rowIdx) + ", " + std::to_string(ifMapRow));
                // logDebug("colIdx: " + std::to_string(colIdx) + ", " + std::to_string(ifMapCol));
                // logDebug("chanIdx: " + std::to_string(chanIdx));
                i8 w = weightData[rowIdx - ifMapRow][colIdx - ifMapCol][chanIdx][filterIdx];
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
                                                                const size ifMapRow,
                                                                const size ifMapCol,
                                                                const size filterIdx) const {
    const auto R = this->getWeightParams().dims.at(0);
    const auto S = this->getWeightParams().dims.at(1);
    const auto C = this->getWeightParams().dims.at(2);
    const auto H_R = ifMap.getParams().dims.at(0) - R + 1;
    const auto W_S = ifMap.getParams().dims.at(1) - S + 1;

    i32 sum = 0;

    // error handling
    if (ifMapRow >= H_R) {
        logError("ERROR: ifMapRow >= H_R (max row)");
        exit(1);
    }
    if (ifMapCol >= W_S) {
        logError("ERROR: ifMapCol >= W_S (max col)");
        exit(1);
    }

    // compute 3D intermediate result
    const auto& ifMapData = ifMap.getData<Array3D_fp32>();
    const auto& weightData = this->getWeightData().getData<Array4D_i8>();
    const size rowLimit = ifMapRow + R;
    const size colLimit = ifMapCol + S;
    for (size rowIdx = ifMapRow; rowIdx < rowLimit; rowIdx++) {
        for (size colIdx = ifMapCol; colIdx < colLimit; colIdx++) {
            for (size chanIdx = 0; chanIdx < C; chanIdx++) {
                // logDebug("rowIdx: " + std::to_string(rowIdx) + ", " + std::to_string(ifMapRow));
                // logDebug("colIdx: " + std::to_string(colIdx) + ", " + std::to_string(ifMapCol));
                // logDebug("chanIdx: " + std::to_string(chanIdx));
                const i8 w = weightData[rowIdx - ifMapRow][colIdx - ifMapCol][chanIdx][filterIdx];
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

const Array2D_fp32 ConvolutionalLayer::get2DInData(const LayerData& dataIn) const {
    // const auto& ifMapData = dataIn.getData<Array3D_fp32>();
    // const auto H = dataIn.getParams().dims.at(0);
    // const auto W = dataIn.getParams().dims.at(1);

    const auto R = this->getWeightParams().dims.at(0);
    const auto S = this->getWeightParams().dims.at(1);
    const auto C = this->getWeightParams().dims.at(2);

    const auto P = this->getOutputParams().dims.at(0);
    const auto Q = this->getOutputParams().dims.at(1);

    const auto maxRow = C * R * S;
    const auto maxCol = P * Q;

    Array2D_fp32 ifMap2D = new fp32*[maxRow];
    for (size i = 0; i <maxRow; i++) {
        ifMap2D[i] = new fp32[maxCol];
    }

    // put dataIn in 2D array so that is has redundant data with dimensions (C*R*S, P*Q)
    for (size rowIdx = 0; rowIdx < P; rowIdx++) {
        for (size colIdx = 0; colIdx < Q; colIdx++) {
            // TODO ssz
        }
    }
    

    return ifMap2D;
}

const Array2D_fp32 ConvolutionalLayer::get2DWeightData() const {
    return nullptr;
}

const Array2D_fp32 ConvolutionalLayer::get2DOutData() const {
    return nullptr;
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
    const auto R = this->getWeightParams().dims.at(0);
    const auto S = this->getWeightParams().dims.at(1);
    // const auto C = this->getWeightParams().dims.at(2);
    const auto M = this->getWeightParams().dims.at(3);
    const auto P = dataIn.getParams().dims.at(0) - R + 1;
    const auto Q = dataIn.getParams().dims.at(1) - S + 1;
    // logDebug("R (filter rows): " + std::to_string(R));
    // logDebug("S (filter cols): " + std::to_string(S));
    // logDebug("C (filter chans): " + std::to_string(C));
    // logDebug("M (num filters): " + std::to_string(M));
    // logDebug("P (max ofMap row): " + std::to_string(P));
    // logDebug("Q (max ofMap col): " + std::to_string(Q));

    // for each filter, for each input channel, compute intermediate result (2D convolution),
    // then add then up, and then add bias
    // Lastly, perform ReLu and write result to output feature map (outData in Layer)
    const auto& outData = this->getOutputData().getData<Array3D_fp32>();
    const auto& biasData = this->getBiasData().getData<Array1D_fp32>();
    // * Optimized loop order for cache locality (row, col, filter ORIGINAL WAS: filter, row, col)
    for (size rowIdx = 0; rowIdx < P; rowIdx++) {
        for (size colIdx = 0; colIdx < Q; colIdx++) {
            for (size filterIdx = 0; filterIdx < M; filterIdx++) {
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
    const auto M = this->getWeightParams().dims.at(3);
    const auto R = this->getWeightParams().dims.at(0);
    const auto S = this->getWeightParams().dims.at(1);
    // const auto C = this->getWeightParams().dims.at(2);
    const auto P = dataIn.getParams().dims.at(0) - R + 1;
    const auto Q = dataIn.getParams().dims.at(1) - S + 1;
    // logDebug("M (num filters): " + std::to_string(M));
    // logDebug("R (filter rows): " + std::to_string(R));
    // logDebug("S (filter cols): " + std::to_string(S));
    // logDebug("C (filter chans): " + std::to_string(C));
    // logDebug("P (max ofMap row): " + std::to_string(P));
    // logDebug("Q (max ofMap col): " + std::to_string(Q));

    // for each filter, for each input channel, compute intermediate result (2D convolution),
    // then add then up, and then add bias
    // Lastly, perform ReLu and write result to output feature map (outData in Layer)
    const auto& outData = this->getOutputData().getData<Array3D_ui8>();
    const auto& biasData = this->getBiasData().getData<Array1D_i32>();
    const fp32 dScale = 1 / (this->s_input * this->s_weight);
    for (size filterIdx = 0; filterIdx < M; filterIdx++) {
        for (size rowIdx = 0; rowIdx < P; rowIdx++) {
            for (size colIdx = 0; colIdx < Q; colIdx++) {
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
    const auto M = this->getWeightParams().dims.at(3);
    const auto R = this->getWeightParams().dims.at(0);
    const auto S = this->getWeightParams().dims.at(1);
    // const auto C = this->getWeightParams().dims.at(2);
    const auto P = dataIn.getParams().dims.at(0) - R + 1;
    const auto Q = dataIn.getParams().dims.at(1) - S + 1;
    // logDebug("M (num filters): " + std::to_string(M));
    // logDebug("R (filter rows): " + std::to_string(R));
    // logDebug("S (filter cols): " + std::to_string(S));
    // logDebug("C (filter chans): " + std::to_string(C));
    // logDebug("P (max ofMap row): " + std::to_string(P));
    // logDebug("Q (max ofMap col): " + std::to_string(Q));

    // for each filter, for each input channel, compute intermediate result (2D convolution),
    // then add then up, and then add bias
    // Lastly, perform ReLu and write result to output feature map (outData in Layer)
    const auto& outData = this->getOutputData().getData<Array3D_fp32>();
    const auto& biasData = this->getBiasData().getData<Array1D_i32>();
    const fp32 dScale = 1 / (this->s_input * this->s_weight);
    for (size filterIdx = 0; filterIdx < M; filterIdx++) {
        for (size rowIdx = 0; rowIdx < P; rowIdx++) {
            for (size colIdx = 0; colIdx < Q; colIdx++) {
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
    if (!dataIn.isAlloced() || !dataIn.isValid()) {
        logError("ERROR: dataIn not allocated or not valid");
        exit(1);
    }
    if (!this->isOutputBufferAlloced() || !this->getOutputData().isValid()) {
        logError("ERROR: output buffer not allocated or not valid");
        exit(1);
    }
    // const auto R = this->getWeightParams().dims.at(0);
    // const auto S = this->getWeightParams().dims.at(1);
    // const auto C = this->getWeightParams().dims.at(2);
    // const auto M = this->getWeightParams().dims.at(3);
    // const auto P = dataIn.getParams().dims.at(0) - R + 1;
    // const auto Q = dataIn.getParams().dims.at(1) - S + 1;
    // logDebug("R (filter rows): " + std::to_string(R));
    // logDebug("S (filter cols): " + std::to_string(S));
    // logDebug("C (filter chans): " + std::to_string(C));
    // logDebug("M (num filters): " + std::to_string(M));
    // logDebug("P (max ofMap row): " + std::to_string(P));
    // logDebug("Q (max ofMap col): " + std::to_string(Q));

    // for each filter, for each input channel, compute intermediate result (2D convolution),
    // then add then up, and then add bias
    // Lastly, perform ReLu and write result to output feature map (outData in Layer)
    // const auto& outData = this->getOutputData().getData<Array3D_fp32>();
    // const auto& biasData = this->getBiasData().getData<Array1D_fp32>();
    
}

// Compute the convolution using SIMD
void ConvolutionalLayer::computeSIMD(const LayerData& dataIn) const {
    // TODO
}
}  // namespace ML

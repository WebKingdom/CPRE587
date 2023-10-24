#include "Dense.h"

#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
void DenseLayer::computeNaive(const LayerData& dataIn) const {
    if (!dataIn.isAlloced() || !dataIn.isValid()) {
        logError("ERROR: dataIn not allocated or not valid");
        exit(1);
    }
    if (!this->isOutputBufferAlloced() || !this->getOutputData().isValid()) {
        logError("ERROR: output buffer not allocated or not valid");
        exit(1);
    }
    const auto& inData = dataIn.getData<Array1D_fp32>();
    const auto& outData = this->getOutputData().getData<Array1D_fp32>();
    const auto& weightData = this->getWeightData().getData<Array2D_fp32>();
    const auto& biasData = this->getBiasData().getData<Array1D_fp32>();
    const auto maxRowIn = dataIn.getParams().dims.at(0);
    const auto maxRowOut = this->getOutputParams().dims.at(0);
    Array1D_fp64 outData_fp64 = new fp64[maxRowOut];
    // logDebug("maxRowIn: " + std::to_string(maxRowIn));
    // logDebug("maxRowOut: " + std::to_string(maxRowOut));

    // compute dense layer intermediate result
    // outData[rowOut] = ReLU(sum(inData[0:rowIn] * weightData[0:rowIn][rowOut]) + biasData[rowOut])
    for (size rowOut = 0; rowOut < maxRowOut; rowOut++) {
        fp64 sum = 0.0;
        for (size rowIn = 0; rowIn < maxRowIn; rowIn++) {
            sum += inData[rowIn] * weightData[rowIn][rowOut];
        }
        outData_fp64[rowOut] = sum + biasData[rowOut];
    }

    // perform activation function
    if (this->getAType() == ActivationType::RELU) {
        for (size i = 0; i < maxRowOut; i++) {
            outData[i] = static_cast<fp32>(std::max((fp64)0, outData_fp64[i]));
        }
    } else if (this->getAType() == ActivationType::ELU) {
        for (size i = 0; i < maxRowOut; i++) {
            if (outData_fp64[i] < 0.0) {
                outData[i] = static_cast<fp32>(ALPHA * (std::exp(outData_fp64[i]) - 1.0));
            } else {
                outData[i] = static_cast<fp32>(outData_fp64[i]);
            }
        }
    } else if (this->getAType() == ActivationType::SOFTMAX) {
        fp64 sum = 0;
        for (size i = 0; i < maxRowOut; i++) {
            sum += std::exp(outData_fp64[i]);
        }
        for (size i = 0; i < maxRowOut; i++) {
            outData[i] = static_cast<fp32>(std::exp(outData_fp64[i]) / sum);
        }
    } else if (this->getAType() == ActivationType::TANH) {
        for (size i = 0; i < maxRowOut; i++) {
            outData[i] =
                static_cast<fp32>((std::exp(outData_fp64[i]) - std::exp(-outData_fp64[i])) /
                                  (std::exp(outData_fp64[i]) + std::exp(-outData_fp64[i])));
        }
    } else if (this->getAType() == ActivationType::SIGMOID) {
        for (size i = 0; i < maxRowOut; i++) {
            outData[i] = static_cast<fp32>(1.0 / (1.0 + std::exp(-outData_fp64[i])));
        }
    } else {
        logError("ERROR: invalid activation type for dense layer");
        delete[] outData_fp64;
        exit(1);
    }
    delete[] outData_fp64;
}

void DenseLayer::computeQuant1(const LayerData& dataIn) const {
    if (!dataIn.isAlloced() || !dataIn.isValid()) {
        logError("ERROR: dataIn not allocated or not valid");
        exit(1);
    }
    if (!this->isOutputBufferAlloced() || !this->getOutputData().isValid()) {
        logError("ERROR: output buffer not allocated or not valid");
        exit(1);
    }
    const auto& inData = dataIn.getData<Array1D_ui8>();
    const auto& outData = this->getOutputData().getData<Array1D_ui8>();
    const auto& weightData = this->getWeightData().getData<Array2D_i8>();
    const auto& biasData = this->getBiasData().getData<Array1D_i32>();
    const auto maxRowIn = dataIn.getParams().dims.at(0);
    const auto maxRowOut = this->getOutputParams().dims.at(0);
    Array1D_i32 outData_i32 = new i32[maxRowOut];
    // logDebug("maxRowIn: " + std::to_string(maxRowIn));
    // logDebug("maxRowOut: " + std::to_string(maxRowOut));

    // compute dense layer intermediate result
    // outData[rowOut] = ReLU(sum(inData[0:rowIn] * weightData[0:rowIn][rowOut]) + biasData[rowOut])
    for (size rowOut = 0; rowOut < maxRowOut; rowOut++) {
        i32 sum = 0;
        for (size rowIn = 0; rowIn < maxRowIn; rowIn++) {
            if (weightData[rowIn][rowOut] < 0) {
                sum -=
                    static_cast<i32>(inData[rowIn] * static_cast<ui8>(-weightData[rowIn][rowOut]));
            } else {
                sum +=
                    static_cast<i32>(inData[rowIn] * static_cast<ui8>(weightData[rowIn][rowOut]));
            }
        }
        outData_i32[rowOut] = sum + biasData[rowOut];
    }

    // perform activation function
    const fp32 dScale = 1 / (this->s_input * this->s_weight);
    if (this->getAType() == ActivationType::RELU) {
        for (size i = 0; i < maxRowOut; i++) {
            // convert activation back to ui8 by 1st dequantizing to fp32
            // do this by dividing with quantization scale (scale_input * scale_weights)
            // and then requantize the fp32 value to ui8 for the next layers
            i32 val = std::max((i32)0, outData_i32[i]);
            fp32 dequantized = val * dScale;
            outData[i] = static_cast<ui8>(std::round(this->s_input * dequantized));
        }
    } else if (this->getAType() == ActivationType::ELU) {
        for (size i = 0; i < maxRowOut; i++) {
            fp32 dequantized = outData_i32[i] * dScale;
            if (dequantized < 0.0) {
                dequantized = ALPHA * (std::exp(dequantized) - 1.0);
                outData[i] = static_cast<ui8>(std::round(this->s_input * dequantized));
            } else {
                outData[i] = static_cast<ui8>(std::round(this->s_input * dequantized));
            }
        }
    } else if (this->getAType() == ActivationType::SOFTMAX) {
        fp32 sum = 0;
        for (size i = 0; i < maxRowOut; i++) {
            fp32 dequantized = outData_i32[i] * dScale;
            sum += std::exp(dequantized);
        }
        for (size i = 0; i < maxRowOut; i++) {
            fp32 dequantized = outData_i32[i] * dScale;
            dequantized = std::exp(dequantized) / sum;
            outData[i] = static_cast<ui8>(std::round(this->s_input * dequantized));
        }
        // i32 sum = 0;
        // for (size i = 0; i < maxRowOut; i++) {
        //     sum += std::exp(outData_i32[i]);
        // }
        // for (size i = 0; i < maxRowOut; i++) {
        //     fp32 val = std::exp(outData_i32[i]) / sum;
        //     fp32 dequantized = val * dScale;
        //     outData[i] = static_cast<ui8>(std::round(this->s_input * dequantized));
        // }
    } else if (this->getAType() == ActivationType::TANH) {
        for (size i = 0; i < maxRowOut; i++) {
            fp32 dequantized = outData_i32[i] * dScale;
            dequantized = (std::exp(dequantized) - std::exp(-dequantized)) /
                          (std::exp(dequantized) + std::exp(-dequantized));
            outData[i] = static_cast<ui8>(std::round(this->s_input * dequantized));
        }
    } else if (this->getAType() == ActivationType::SIGMOID) {
        for (size i = 0; i < maxRowOut; i++) {
            fp32 dequantized = outData_i32[i] * dScale;
            dequantized = 1.0 / (1.0 + std::exp(-dequantized));
            outData[i] = static_cast<ui8>(std::round(this->s_input * dequantized));
        }
    } else {
        logError("ERROR: invalid activation type for dense layer");
        delete[] outData_i32;
        exit(1);
    }
    delete[] outData_i32;
}

void DenseLayer::computeQuant2(const LayerData& dataIn) const {
    if (!dataIn.isAlloced() || !dataIn.isValid()) {
        logError("ERROR: dataIn not allocated or not valid");
        exit(1);
    }
    if (!this->isOutputBufferAlloced() || !this->getOutputData().isValid()) {
        logError("ERROR: output buffer not allocated or not valid");
        exit(1);
    }
    const auto& inData = dataIn.getData<Array1D_fp32>();
    const auto& outData = this->getOutputData().getData<Array1D_fp32>();
    const auto& weightData = this->getWeightData().getData<Array2D_i8>();
    const auto& biasData = this->getBiasData().getData<Array1D_i32>();
    const auto maxRowIn = dataIn.getParams().dims.at(0);
    const auto maxRowOut = this->getOutputParams().dims.at(0);
    Array1D_i32 outData_i32 = new i32[maxRowOut];
    // logDebug("maxRowIn: " + std::to_string(maxRowIn));
    // logDebug("maxRowOut: " + std::to_string(maxRowOut));

    // compute dense layer intermediate result
    // outData[rowOut] = ReLU(sum(inData[0:rowIn] * weightData[0:rowIn][rowOut]) + biasData[rowOut])
    for (size rowOut = 0; rowOut < maxRowOut; rowOut++) {
        i32 sum = 0;
        for (size rowIn = 0; rowIn < maxRowIn; rowIn++) {
            const i8 w = weightData[rowIn][rowOut];
            const ui8 in = static_cast<ui8>(std::round(this->s_input * inData[rowIn]));
            if (weightData[rowIn][rowOut] < 0) {
                sum -= static_cast<i32>(in * static_cast<ui8>(-w));
            } else {
                sum += static_cast<i32>(in * static_cast<ui8>(w));
            }
        }
        outData_i32[rowOut] = sum + biasData[rowOut];
    }

    // perform activation function
    const fp32 dScale = 1 / (this->s_input * this->s_weight);
    if (this->getAType() == ActivationType::RELU) {
        for (size i = 0; i < maxRowOut; i++) {
            // convert activation back to ui8 by 1st dequantizing to fp32
            // do this by dividing with quantization scale (scale_input * scale_weights)
            // and then requantize the fp32 value to ui8 for the next layers
            i32 val = std::max((i32)0, outData_i32[i]);
            fp32 dequantized = val * dScale;
            outData[i] = dequantized;
        }
    } else if (this->getAType() == ActivationType::ELU) {
        for (size i = 0; i < maxRowOut; i++) {
            fp32 dequantized = outData_i32[i] * dScale;
            if (dequantized < 0.0) {
                dequantized = ALPHA * (std::exp(dequantized) - 1.0);
                outData[i] = dequantized;
            } else {
                outData[i] = dequantized;
            }
        }
    } else if (this->getAType() == ActivationType::SOFTMAX) {
        fp32 sum = 0;
        for (size i = 0; i < maxRowOut; i++) {
            fp32 dequantized = outData_i32[i] * dScale;
            sum += std::exp(dequantized);
        }
        for (size i = 0; i < maxRowOut; i++) {
            fp32 dequantized = outData_i32[i] * dScale;
            dequantized = std::exp(dequantized) / sum;
            outData[i] = dequantized;
        }
        // i32 sum = 0;
        // for (size i = 0; i < maxRowOut; i++) {
        //     sum += std::exp(outData_i32[i]);
        // }
        // for (size i = 0; i < maxRowOut; i++) {
        //     fp32 val = std::exp(outData_i32[i]) / sum;
        //     fp32 dequantized = val * dScale;
        //     outData[i] = dequantized;
        // }
    } else if (this->getAType() == ActivationType::TANH) {
        for (size i = 0; i < maxRowOut; i++) {
            fp32 dequantized = outData_i32[i] * dScale;
            dequantized = (std::exp(dequantized) - std::exp(-dequantized)) /
                          (std::exp(dequantized) + std::exp(-dequantized));
            outData[i] = dequantized;
        }
    } else if (this->getAType() == ActivationType::SIGMOID) {
        for (size i = 0; i < maxRowOut; i++) {
            fp32 dequantized = outData_i32[i] * dScale;
            dequantized = 1.0 / (1.0 + std::exp(-dequantized));
            outData[i] = dequantized;
        }
    } else {
        logError("ERROR: invalid activation type for dense layer");
        delete[] outData_i32;
        exit(1);
    }
    delete[] outData_i32;
}

void DenseLayer::computeThreaded(const LayerData& dataIn) const {
    // TODO
    computeNaive(dataIn);
}

void DenseLayer::computeTiled(const LayerData& dataIn) const {
    // TODO
    computeNaive(dataIn);
}

void DenseLayer::computeSIMD(const LayerData& dataIn) const {
    // TODO
}

}  // namespace ML

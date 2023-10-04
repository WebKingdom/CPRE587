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
            outData[i] = std::max((fp64)0, outData_fp64[i]);
        }
    } else if (this->getAType() == ActivationType::ELU) {
        for (size i = 0; i < maxRowOut; i++) {
            if (outData_fp64[i] < 0.0) {
                outData[i] = ALPHA * (std::exp(outData_fp64[i]) - 1.0);
            } else {
                outData[i] = outData_fp64[i];
            }
        }
    } else if (this->getAType() == ActivationType::SOFTMAX) {
        fp64 sum = 0;
        for (size i = 0; i < maxRowOut; i++) {
            sum += std::exp(outData_fp64[i]);
        }
        for (size i = 0; i < maxRowOut; i++) {
            outData[i] = std::exp(outData_fp64[i]) / sum;
        }
    } else if (this->getAType() == ActivationType::TANH) {
        for (size i = 0; i < maxRowOut; i++) {
            outData[i] = (std::exp(outData_fp64[i]) - std::exp(-outData_fp64[i])) /
                         (std::exp(outData_fp64[i]) + std::exp(-outData_fp64[i]));
        }
    } else if (this->getAType() == ActivationType::SIGMOID) {
        for (size i = 0; i < maxRowOut; i++) {
            outData[i] = 1.0 / (1.0 + std::exp(-outData_fp64[i]));
        }
    } else {
        logError("ERROR: invalid activation type for dense layer");
        delete[] outData_fp64;
        exit(1);
    }
    delete[] outData_fp64;
}

void DenseLayer::computeThreaded(const LayerData& dataIn) const {
    // TODO
}

void DenseLayer::computeTiled(const LayerData& dataIn) const {
    // TODO
}

void DenseLayer::computeSIMD(const LayerData& dataIn) const {
    // TODO
}

}  // namespace ML

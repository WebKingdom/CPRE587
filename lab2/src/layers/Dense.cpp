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
    // logDebug("maxRowIn: " + std::to_string(maxRowIn));
    // logDebug("maxRowOut: " + std::to_string(maxRowOut));

    // compute dense layer output data
    // outData[rowOut] = ReLU(sum(inData[0:rowIn] * weightData[0:rowIn][rowOut]) + biasData[rowOut])
    for (size rowOut = 0; rowOut < maxRowOut; rowOut++) {
        fp32 sum = 0;
        for (size rowIn = 0; rowIn < maxRowIn; rowIn++) {
            sum += inData[rowIn] * weightData[rowIn][rowOut];
        }
        outData[rowOut] = std::max((fp32)0, sum + biasData[rowOut]);
    }
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

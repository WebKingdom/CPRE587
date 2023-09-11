#include "Softmax.h"

#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
void SoftmaxLayer::computeNaive(const LayerData& dataIn) const {
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
    const auto maxLen = dataIn.getParams().dims.at(0);
    logDebug("maxLen: " + std::to_string(maxLen));

    // compute softmax
    fp32 sum = 0;
    for (size i = 0; i < maxLen; i++) {
        sum += std::exp(inData[i]);
    }
    for (size i = 0; i < maxLen; i++) {
        outData[i] = std::exp(inData[i]) / sum;
    }
}

void SoftmaxLayer::computeThreaded(const LayerData& dataIn) const {
    // TODO
}

void SoftmaxLayer::computeTiled(const LayerData& dataIn) const {
    // TODO
}

void SoftmaxLayer::computeSIMD(const LayerData& dataIn) const {
    // TODO
}

}  // namespace ML

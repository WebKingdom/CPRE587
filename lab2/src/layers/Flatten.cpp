#include "Flatten.h"

#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
void FlattenLayer::computeNaive(const LayerData& dataIn) const {
    const auto& inData = dataIn.getData<Array3D_fp32>();
    const auto& outData = this->getOutputData().getData<Array1D_fp32>();

    const auto maxRow = dataIn.getParams().dims.at(0);
    const auto maxCol = dataIn.getParams().dims.at(1);
    const auto maxChan = dataIn.getParams().dims.at(2);
    const auto maxLen = this->getOutputParams().dims.at(0);

    size idx = 0;
    for (size chan = 0; chan < maxChan; chan++) {
        for (size r = 0; r < maxRow; r++) {
            for (size c = 0; c < maxCol; c++) {
                if (idx > maxLen) {
                    logError("ERROR: idx > maxLen");
                    exit(1);
                }
                outData[idx++] = inData[r][c][chan];
            }
        }
    }
}

void FlattenLayer::computeThreaded(const LayerData& dataIn) const {
    // TODO 
}

void FlattenLayer::computeTiled(const LayerData& dataIn) const {
    // TODO 
}

void FlattenLayer::computeSIMD(const LayerData& dataIn) const {
    // TODO 
}

}  // namespace ML

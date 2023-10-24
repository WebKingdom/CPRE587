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
    // logDebug("maxRow: " + std::to_string(maxRow));
    // logDebug("maxCol: " + std::to_string(maxCol));
    // logDebug("maxChan: " + std::to_string(maxChan));
    // logDebug("maxLen: " + std::to_string(maxLen));

    size idx = 0;
    for (size r = 0; r < maxRow; r++) {
        for (size c = 0; c < maxCol; c++) {
            for (size chan = 0; chan < maxChan; chan++) {
                if (idx > maxLen) {
                    logError("ERROR: idx > maxLen");
                    exit(1);
                }
                // logDebug("idx: " + std::to_string(idx) + " r: " + std::to_string(r) +
                //          " c: " + std::to_string(c) + " chan: " + std::to_string(chan));
                outData[idx++] = inData[r][c][chan];
            }
        }
    }
}

void FlattenLayer::computeQuant1(const LayerData& dataIn) const {
    const auto& inData = dataIn.getData<Array3D_ui8>();
    const auto& outData = this->getOutputData().getData<Array1D_ui8>();

    const auto maxRow = dataIn.getParams().dims.at(0);
    const auto maxCol = dataIn.getParams().dims.at(1);
    const auto maxChan = dataIn.getParams().dims.at(2);
    const auto maxLen = this->getOutputParams().dims.at(0);
    // logDebug("maxRow: " + std::to_string(maxRow));
    // logDebug("maxCol: " + std::to_string(maxCol));
    // logDebug("maxChan: " + std::to_string(maxChan));
    // logDebug("maxLen: " + std::to_string(maxLen));

    size idx = 0;
    for (size r = 0; r < maxRow; r++) {
        for (size c = 0; c < maxCol; c++) {
            for (size chan = 0; chan < maxChan; chan++) {
                if (idx > maxLen) {
                    logError("ERROR: idx > maxLen");
                    exit(1);
                }
                // logDebug("idx: " + std::to_string(idx) + " r: " + std::to_string(r) +
                //          " c: " + std::to_string(c) + " chan: " + std::to_string(chan));
                outData[idx++] = inData[r][c][chan];
            }
        }
    }
}

void FlattenLayer::computeQuant2(const LayerData& dataIn) const {
    computeNaive(dataIn);
}

void FlattenLayer::computeThreaded(const LayerData& dataIn) const {
    // TODO
}

void FlattenLayer::computeTiled(const LayerData& dataIn) const {
    // TODO
    computeNaive(dataIn);
}

void FlattenLayer::computeSIMD(const LayerData& dataIn) const {
    // TODO
}

}  // namespace ML

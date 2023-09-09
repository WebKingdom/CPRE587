#include "MaxPooling.h"

#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
const fp32 MaxPoolingLayer::compute3DIntermediateResult(const LayerData& ifMap, const size curRow,
                                                        const size curCol,
                                                        const size curChan) const {
    const auto& ifMapData = ifMap.getData<Array3D_fp32>();
    fp32 max = ifMapData[curRow][curCol][curChan];
    for (size rowIdx = curRow; rowIdx < (curRow + POOL_SIZE); rowIdx++) {
        for (size colIdx = curCol; colIdx < (curCol + POOL_SIZE); colIdx++) {
            if (ifMapData[rowIdx][colIdx][curChan] > max) {
                max = ifMapData[rowIdx][colIdx][curChan];
            }
        }
    }
    return max;
}

void MaxPoolingLayer::computeNaive(const LayerData& dataIn) const {
    if (!dataIn.isAlloced() || !dataIn.isValid()) {
        logError("ERROR: dataIn not allocated or not valid");
        exit(1);
    }
    if (!this->isOutputBufferAlloced() || !this->getOutputData().isValid()) {
        logError("ERROR: output buffer not allocated or not valid");
        exit(1);
    }
    const auto maxRowOut = this->getOutputParams().dims.at(0);
    const auto maxColOut = this->getOutputParams().dims.at(1);
    const auto maxChan = dataIn.getParams().dims.at(2);

    // error handling
    if (maxRowOut != dataIn.getParams().dims.at(0) / POOL_STRIDE) {
        logError("ERROR: maxRowOut != dataIn.getParams().dims.at(0) / POOL_STRIDE");
        exit(1);
    }
    if (maxColOut != dataIn.getParams().dims.at(1) / POOL_STRIDE) {
        logError("ERROR: maxColOut != dataIn.getParams().dims.at(1) / POOL_STRIDE");
        exit(1);
    }

    const auto& outData = this->getOutputData().getData<Array3D_fp32>();
    for (size chanIdx = 0; chanIdx < maxChan; chanIdx++) {
        for (size rowIdx = 0; rowIdx < maxRowOut; rowIdx++) {
            for (size colIdx = 0; colIdx < maxColOut; colIdx++) {
                outData[rowIdx][colIdx][chanIdx] = compute3DIntermediateResult(
                    dataIn, rowIdx * POOL_STRIDE, colIdx * POOL_STRIDE, chanIdx);
            }
        }
    }
}

void MaxPoolingLayer::computeThreaded(const LayerData& dataIn) const {
    // TODO
}

void MaxPoolingLayer::computeTiled(const LayerData& dataIn) const {
    // TODO
}

void MaxPoolingLayer::computeSIMD(const LayerData& dataIn) const {
    // TODO
}

}  // namespace ML

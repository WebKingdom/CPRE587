#include "MaxPooling.h"

#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
const fp32 MaxPoolingLayer::compute2DIntermediateResult(const LayerData& ifMap, const size curRow,
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

const ui8 MaxPoolingLayer::compute2DIntermediateResultQuant1(const LayerData& ifMap, const size curRow,
                                                        const size curCol,
                                                        const size curChan) const {
    const auto& ifMapData = ifMap.getData<Array3D_ui8>();
    ui8 max = ifMapData[curRow][curCol][curChan];
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
    const auto P = this->getOutputParams().dims.at(0);
    const auto Q = this->getOutputParams().dims.at(1);
    const auto M = this->getOutputParams().dims.at(2);

    // error handling
    if (P != dataIn.getParams().dims.at(0) / POOL_STRIDE) {
        logError("ERROR: P != dataIn.getParams().dims.at(0) / POOL_STRIDE");
        exit(1);
    }
    if (Q != dataIn.getParams().dims.at(1) / POOL_STRIDE) {
        logError("ERROR: Q != dataIn.getParams().dims.at(1) / POOL_STRIDE");
        exit(1);
    }

    const auto& outData = this->getOutputData().getData<Array3D_fp32>();
    // * Optimized loop order for cache locality (row, col, chan ORIGINAL WAS: chan, row, col)
    for (size rowIdx = 0; rowIdx < P; rowIdx++) {
        for (size colIdx = 0; colIdx < Q; colIdx++) {
            for (size chanIdx = 0; chanIdx < M; chanIdx++) {
                outData[rowIdx][colIdx][chanIdx] = compute2DIntermediateResult(
                    dataIn, rowIdx * POOL_STRIDE, colIdx * POOL_STRIDE, chanIdx);
            }
        }
    }
}

void MaxPoolingLayer::computeQuant1(const LayerData& dataIn) const {
    if (!dataIn.isAlloced() || !dataIn.isValid()) {
        logError("ERROR: dataIn not allocated or not valid");
        exit(1);
    }
    if (!this->isOutputBufferAlloced() || !this->getOutputData().isValid()) {
        logError("ERROR: output buffer not allocated or not valid");
        exit(1);
    }
    const auto P = this->getOutputParams().dims.at(0);
    const auto Q = this->getOutputParams().dims.at(1);
    const auto M = dataIn.getParams().dims.at(2);

    // error handling
    if (P != dataIn.getParams().dims.at(0) / POOL_STRIDE) {
        logError("ERROR: P != dataIn.getParams().dims.at(0) / POOL_STRIDE");
        exit(1);
    }
    if (Q != dataIn.getParams().dims.at(1) / POOL_STRIDE) {
        logError("ERROR: Q != dataIn.getParams().dims.at(1) / POOL_STRIDE");
        exit(1);
    }

    const auto& outData = this->getOutputData().getData<Array3D_ui8>();
    for (size chanIdx = 0; chanIdx < M; chanIdx++) {
        for (size rowIdx = 0; rowIdx < P; rowIdx++) {
            for (size colIdx = 0; colIdx < Q; colIdx++) {
                outData[rowIdx][colIdx][chanIdx] = compute2DIntermediateResultQuant1(
                    dataIn, rowIdx * POOL_STRIDE, colIdx * POOL_STRIDE, chanIdx);
            }
        }
    }
}

void MaxPoolingLayer::computeQuant2(const LayerData& dataIn) const {
    computeNaive(dataIn);
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

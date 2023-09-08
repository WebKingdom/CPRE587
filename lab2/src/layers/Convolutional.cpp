#include "Convolutional.h"

#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {

const fp64 ConvolutionalLayer::compute2DIntermediateResult(const LayerData& ifMap,
                                                           const size_t curRow, const size_t curCol,
                                                           const size_t curChan,
                                                           const size_t curFilter) const {
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
        return sum;
    }
    if (curRow >= maxRow) {
        logError("ERROR: curRow >= maxRow");
        return sum;
    }
    if (curCol >= maxCol) {
        logError("ERROR: curCol >= maxCol");
        return sum;
    }
    if (filterChans != maxChan) {
        logError("ERROR: filterChans != maxChan");
        return sum;
    }

    // compute 2D intermediate result
    for (size_t rowIdx = curRow; rowIdx < filterRows; rowIdx++) {
        for (size_t colIdx = curCol; colIdx < filterCols; colIdx++) {
            sum +=
                ifMap.getData<Array3D_fp32>()[rowIdx][colIdx][curChan] *
                this->getWeightData().getData<Array4D_fp32>()[rowIdx][colIdx][curChan][curFilter];
        }
    }
    return sum;
}

const fp64 ConvolutionalLayer::compute3DIntermediateResult(const LayerData& ifMap,
                                                           const size_t curRow, const size_t curCol,
                                                           const size_t curFilter) const {
    const auto filterRows = this->getWeightParams().dims.at(0);
    const auto filterCols = this->getWeightParams().dims.at(1);
    const auto filterChans = this->getWeightParams().dims.at(2);
    const auto maxRow = ifMap.getParams().dims.at(0) - filterRows + 1;
    const auto maxCol = ifMap.getParams().dims.at(1) - filterCols + 1;

    fp64 sum = 0;

    // error handling
    if (curRow >= maxRow) {
        logError("ERROR: curRow >= maxRow");
        return sum;
    }
    if (curCol >= maxCol) {
        logError("ERROR: curCol >= maxCol");
        return sum;
    }

    // compute 3D intermediate result
    for (size_t rowIdx = curRow; rowIdx < filterRows; rowIdx++) {
        for (size_t colIdx = curCol; colIdx < filterCols; colIdx++) {
            for (size_t chanIdx = 0; chanIdx < filterChans; chanIdx++) {
                sum += ifMap.getData<Array3D_fp32>()[rowIdx][colIdx][chanIdx] *
                       this->getWeightData()
                           .getData<Array4D_fp32>()[rowIdx][colIdx][chanIdx][curFilter];
            }
        }
    }
    return sum;
}

// Compute the convolution for the layer data
void ConvolutionalLayer::computeNaive(const LayerData& dataIn) const {
    if (!dataIn.isAlloced() || !dataIn.isValid()) {
        logError("ERROR: dataIn not allocated or not valid");
        return;
    }
    const auto numFilters = this->getWeightParams().dims.at(3);
    const auto filterRows = this->getWeightParams().dims.at(0);
    const auto filterCols = this->getWeightParams().dims.at(1);
    const auto filterChans = this->getWeightParams().dims.at(2);
    const auto maxRow = dataIn.getParams().dims.at(0) - filterRows + 1;
    const auto maxCol = dataIn.getParams().dims.at(1) - filterCols + 1;
    const auto maxChan = dataIn.getParams().dims.at(2);

    // error handling
    if (filterChans != maxChan) {
        logError("ERROR: filterChans != maxChan");
        return;
    }
    logDebug("DEBUG: computeNaive in ConvolutionalLayer");

    // for each filter, for each input channel, compute intermediate result (2D convolution),
    // then add then up, and then add bias
    // Lastly, perform ReLu and write result to output feature map (outData in Layer)

    for (size_t filterIdx = 0; filterIdx < numFilters; filterIdx++) {
        for (size_t rowIdx = 0; rowIdx < maxRow; rowIdx++) {
            for (size_t colIdx = 0; colIdx < maxCol; colIdx++) {
                // compute intermediate result
                // add bias
                // perform ReLu and write result to output feature map
                fp64 intermediateOut =
                    compute3DIntermediateResult(dataIn, rowIdx, colIdx, filterIdx);
                intermediateOut += this->getBiasData().getData<Array1D_fp32>()[filterIdx];
                intermediateOut = std::max(intermediateOut, (fp64)0);
                this->getOutputData().getData<Array3D_fp32>()[rowIdx][colIdx][filterIdx] =
                    intermediateOut;
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

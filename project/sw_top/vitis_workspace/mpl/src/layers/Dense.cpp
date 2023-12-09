// -----------------rudy's file-----------------------
#include "Dense.h"

#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
// --- Begin Student Code ---

// Compute the convolution for the layer data
void DenseLayer::computeNaive(const LayerData &dataIn) const {
  Array1D_fp32 I = dataIn.getData<Array1D_fp32>();
  auto Iparams = dataIn.getParams().dims;

  int numInput = Iparams[0];

  Array2D_fp32 F = weightData.getData<Array2D_fp32>();
  auto Fparams = getWeightParams().dims;
  // Fparams[0] <-> input weights size
  // Fparams[1] <-> output weights size

  auto Oparams = getOutputParams().dims;

  Array1D_fp32 O = getOutputData().getData<Array1D_fp32>();
  // Output size
  int numOut = Oparams[0];

  Array1D_fp32 B = biasData.getData<Array1D_fp32>();
  int zerocount = 0;

  for (int m = 0; m < numOut; m++) {
    fp32 sum = 0;
    for (int hw = 0; hw < numInput; hw++) {
      sum += F[hw][m] * I[hw];
    }
    sum += B[m];

    fp32 relu = sum > 0 ? sum : 0;
    
    O[m] = relu;
  }

  printf("DENSE LAYER HAD %d ZEROS", zerocount);
}

// Compute the convolution using threads
void DenseLayer::computeThreaded(const LayerData &dataIn) const {
  // TODO: Your Code Here...
}

// Compute the convolution using a tiled approach
void DenseLayer::computeTiled(const LayerData &dataIn) const {
  // TODO: Your Code Here...
}

// Compute the convolution using SIMD
void DenseLayer::computeSIMD(const LayerData &dataIn) const {
  // TODO: Your Code Here...
}
} // namespace ML
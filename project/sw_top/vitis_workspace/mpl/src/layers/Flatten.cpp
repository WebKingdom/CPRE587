#include "Flatten.h"

#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
// --- Begin Student Code ---

// Compute the convolution for the layer data
void FlattenLayer::computeNaive(const LayerData &dataIn) const {
  Array3D_fp32 I = dataIn.getData<Array3D_fp32>();
  auto Iparams = dataIn.getParams().dims;

  int h = Iparams[0];
  int w = Iparams[1];
  int c = Iparams[2];

  Array1D_fp32 O = getOutputData().getData<Array1D_fp32>();
  // auto size = getOutputParams().dims[0];

  for (int i = 0; i < h; i++) {
    for (int j = 0; j < w; j++) {
      for (int k = 0; k < c; k++) {
        O[i * c * w + j * c + k] = I[i][j][k];
      }
    }
  }
}

// Compute the convolution using threads
void FlattenLayer::computeThreaded(const LayerData &dataIn) const {
  // TODO: Your Code Here...
}

// Compute the convolution using a tiled approach
void FlattenLayer::computeTiled(const LayerData &dataIn) const {
  // TODO: Your Code Here...
}

// Compute the convolution using SIMD
void FlattenLayer::computeSIMD(const LayerData &dataIn) const {
  // TODO: Your Code Here...
}
} // namespace ML
#include "Softmax.h"

#include <cmath>
#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML
{
  // --- Begin Student Code ---

  // Compute the convolution for the layer data
  void SoftmaxLayer::computeNaive(const LayerData &dataIn) const {
    printf("pog the middle\n");
    

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

  printf("pog1\n");
    for (int m = 0; m < numOut; m++){
      fp32 sum = 0;
      for (int hw = 0; hw < numInput; hw++){
        sum += F[hw][m] * I[hw];
      }
      sum += B[m];

      O[m] = sum;
    }
    printf("pog2\n");
      // softmax

    fp32 sum_softmax = 0;
    for (int i = 0; i < numOut; i++){
      sum_softmax += exp(O[i]);
    }
    for (int i = 0; i < numOut; i++){
      O[i] = exp(O[i]) / sum_softmax;
    }

    printf("pog3\n");
  }
  // Compute the convolution using threads
  void SoftmaxLayer::computeThreaded(const LayerData &dataIn) const {
    // TODO: Your Code Here...
  }

  // Compute the convolution using a tiled approach
  void SoftmaxLayer::computeTiled(const LayerData &dataIn) const {
    // TODO: Your Code Here...
  }

  // Compute the convolution using SIMD
  void SoftmaxLayer::computeSIMD(const LayerData &dataIn) const {
    // TODO: Your Code Here...
  }
} // namespace ML
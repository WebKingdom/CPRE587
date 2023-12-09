#include "MaxPooling.h"

#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
// --- Begin Student Code ---

// Compute the convolution for the layer data
void MaxPoolingLayer::computeNaive(const LayerData &dataIn) const {
  Array3D_fp32 I = dataIn.getData<Array3D_fp32>();
  auto Iparams = dataIn.getParams().dims;

  int h = Iparams[0];
  int w = Iparams[1];
  int c = Iparams[2];

  auto Fparams = getWeightParams().dims;
  int u0 = Fparams[0];
  int u1 = Fparams[1];

  Array3D_fp32 O = getOutputData().getData<Array3D_fp32>();
  auto Oparams = getOutputParams().dims;
  int p = Oparams[0];
  int q = Oparams[1];
  // int c2 = Oparams[2];

  for (int c0 = 0; c0 < c; c0++) {
    for (int p0 = 0; p0 < p; p0++) {
      for (int q0 = 0; q0 < q; q0++) {
        fp32 max = 0.0;
        for (int iterp = p0 * u0; iterp < u0 * (p0 + 1); iterp++) {
          for (int iterq = q0 * u0; iterq < u1 * (q0 + 1); iterq++) {
            
            if (iterp < h && iterq < w) {
              //if(c0==0) printf("Investigating cell (%d, %d) as potential max for %d, %d\n", iterp, iterq, p0, q0);
              max = max > I[iterp][iterq][c0] ? max : I[iterp][iterq][c0];

            } else {
              printf("Skipped cell (%d, %d) because image is (%d, %d)", iterp, iterq, h, w);
            } 
          }
        }
        //if(max == -1000000) printf("XDDDDDDDDDD\n");
        O[p0][q0][c0] = max;
      }
    }
  }

  // for (int c0 = 0; c0 < c; c0++) {
  //   if(c0==3){

      
  //     for (int p0 = 0; p0 < h; p0++) {
  //       for (int q0 = 0; q0 < w; q0++) {
  //         printf("%0.2f ", I[p0][q0][c0]);
  //       }
  //       printf("\n");
  //     }
  //   }
  // }

  // printf("\n\n");

  // for (int c0 = 0; c0 < c; c0++) {
  //   if(c0==3){

      
  //     for (int p0 = 0; p0 < p; p0++) {
  //       for (int q0 = 0; q0 < q; q0++) {
  //         printf("%0.2f ", O[p0][q0][c0]);
  //       }
  //       printf("\n");
  //     }
  //   }
  // }
  



}

// Compute the convolution using threads
void MaxPoolingLayer::computeThreaded(const LayerData &dataIn) const {
  // TODO: Your Code Here...
}

// Compute the convolution using a tiled approach
void MaxPoolingLayer::computeTiled(const LayerData &dataIn) const {
  // TODO: Your Code Here...
}

// Compute the convolution using SIMD
void MaxPoolingLayer::computeSIMD(const LayerData &dataIn) const {
  // TODO: Your Code Here...
}
} // namespace ML
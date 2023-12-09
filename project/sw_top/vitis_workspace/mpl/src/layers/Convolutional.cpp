#include "Convolutional.h"

#include <iostream>

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
// --- Begin Student Code ---

// Compute the convolution for the layer data

void ConvolutionalLayer::computeNaive(const LayerData &dataIn) const {
  Array3D_fp32 I = dataIn.getData<Array3D_fp32>();
  auto Iparams = dataIn.getParams().dims;

  int h = Iparams[0];
  int w = Iparams[1];

  Array4D_fp32 F = weightData.getData<Array4D_fp32>();
  auto Fparams = getWeightParams().dims;
  int r = Fparams[0];
  int s = Fparams[1];
  int c = Fparams[2];
  int m = Fparams[3];

  Array3D_fp32 O = getOutputData().getData<Array3D_fp32>();
  auto Oparams = getOutputParams().dims;
  int p = Oparams[0];
  int q = Oparams[1];
  Array1D_fp32 B = biasData.getData<Array1D_fp32>();

  fp32 maxW = getMaxW();
  fp32 maxI = getMaxQ();
  int qbits = getBits();
  fp32 scale_weights = ((1 << (qbits - 1)) - 1) / (maxW);
  fp32 scale_input = ((1 << qbits) - 1) / maxI;
  fp32 scale_biases = scale_input * scale_weights;

  Array4D_i8 FQ = allocArray<Array4D_i8>(
      {static_cast<unsigned long>(r), static_cast<unsigned long>(s),
       static_cast<unsigned long>(c), static_cast<unsigned long>(m)});

  


  for (int r0 = 0; r0 < r; r0++) {
    for (int s0 = 0; s0 < s; s0++) {
      for (int c0 = 0; c0 < c; c0++) {
        for (int m0 = 0; m0 < m; m0++) {
            FQ[r0][s0][c0][m0] = (i8) (scale_weights * F[r0][s0][c0][m0]);
        }
      }
    }
  }

  Array3D_ui8 IQ = allocArray<Array3D_ui8>({static_cast<unsigned long>(h), static_cast<unsigned long>(w), static_cast<unsigned long>(c)});

  for(int h0 = 0; h0 < h; h0++){
    for(int w0 = 0; w0 < w; w0++){
      for(int c0 = 0; c0 < c; c0++){
        IQ[h0][w0][c0] = (ui8)(scale_input * I[h0][w0][c0]);
      }
    }
  }

  Array1D_i32 BQ = allocArray<Array1D_i32>({static_cast<unsigned long>(m)});

  for(int p0 = 0; p0 < p; p0++){
	  for(int q0 = 0; q0 < q; q0++){
		  for(int m0 = 0; m0 < m; m0++){
			  O[p0][q0][m0] = BQ[m0];
		  }
	  }
  }

  Array2D_i32 OB = allocArray<Array2D_i32>({static_cast<unsigned long>(p), static_cast<unsigned long>(q)});

  for(int m0 = 0; m0 < m; m0++){
    BQ[m0] = (i32)(B[m0] * scale_biases);
  }
  const fp32 invscale = 1.0/scale_biases;

  for (int m0 = 0; m0 < m; m0++) {
    // printf("m: %d %f\n",m0 , B[m0]);
    for (int p0 = 0; p0 < p; p0++) {
      for (int q0 = 0; q0 < q; q0++) {
        i32 sum = BQ[m0];
        //i32 sum = (i32)(B[m0] * scale_biases);
        for (int c0 = 0; c0 < c; c0++) {
          for (int r0 = 0; r0 < r; r0++) {
            for (int s0 = 0; s0 < s; s0++) {
              i8 weight = FQ[r0][s0][c0][m0];
              ui8 input = IQ[p0 + r0][q0 + s0][c0];


              sum += input * weight;

            }
          }
        }
        i32 relu = sum > 0 ? sum : 0;
        fp32 outp = relu *invscale;
        O[p0][q0][m0] = outp;
      }
    }
  }

  /*for(int p0 = 0; p0 < p; p0++){
  	  for(int q0 = 0; q0 < q; q0++){
  		  for(int m0 = 0; m0 < m; m0++){
  			  O[p0][q0][m0] = BQ[m0];
  			  i32 relu = sum > 0 ? sum : 0;
  			  fp32 outp = relu * invscale;
  			  O[p0][q0][m0] = outp;
  		  }
  	  }
   }*/






  freeArray(FQ, {static_cast<unsigned long>(r), static_cast<unsigned long>(s),
       static_cast<unsigned long>(c), static_cast<unsigned long>(m)});

  freeArray(IQ, {static_cast<unsigned long>(h), static_cast<unsigned long>(w), static_cast<unsigned long>(c)});

  freeArray(BQ, {static_cast<unsigned long>(m)});
  freeArray(OB, {static_cast<unsigned long>(p), static_cast<unsigned long>(q)});
}























// Compute the convolution using threads
void ConvolutionalLayer::computeThreaded(const LayerData &dataIn) const {
  // TODO: Your Code Here...
}




// Compute the convolution using a tiled approach
void ConvolutionalLayer::computeTiled(const LayerData &dataIn) const {
  // TODO: Your Code Here...
}

// Compute the convolution using SIMD
void ConvolutionalLayer::computeSIMD(const LayerData &dataIn) const {
  // TODO: Your Code Here...
}
} // namespace ML

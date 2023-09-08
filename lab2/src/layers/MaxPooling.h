#pragma once

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
class MaxPoolingLayer : public Layer {
   public:
    MaxPoolingLayer(const LayerParams inParams, const LayerParams outParams)
        : Layer(inParams, outParams, LayerType::MAX_POOLING) {}

    // Allocate all resources needed for the layer & Load all of the required data for the layer
    template <typename T>
    void allocateLayer() {
        Layer::allocateOutputBuffer<Array3D<T>>();
    }

    // Free all resources allocated for the layer
    template <typename T>
    void freeLayer() {
        Layer::freeOutputBuffer<Array3D<T>>();
    }

    // Virtual functions
    virtual void computeNaive(const LayerData& dataIn) const override;
    virtual void computeThreaded(const LayerData& dataIn) const override;
    virtual void computeTiled(const LayerData& dataIn) const override;
    virtual void computeSIMD(const LayerData& dataIn) const override;

   private:
    static const ui8 POOL_SIZE = 2;
    static const ui8 POOL_STRIDE = 2;

    // computes the intermediate result for all input channels
    const fp32 compute3DIntermediateResult(const LayerData& ifMap, const size curRow,
                                           const size curCol, const size curChan) const;
};

}  // namespace ML

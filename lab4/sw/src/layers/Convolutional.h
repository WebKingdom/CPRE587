#pragma once

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
class ConvolutionalLayer : public Layer {
   public:
    ConvolutionalLayer(const LayerParams inParams, const LayerParams outParams,
                       const LayerParams weightParams, const LayerParams biasParams,
                       const ActivationType aType)
        : Layer(inParams, outParams, LayerType::CONVOLUTIONAL, aType),
          weightParam(weightParams),
          weightData(weightParams),
          biasParam(biasParams),
          biasData(biasParams) {}

    // Getters
    const LayerParams& getWeightParams() const { return weightParam; }
    const LayerParams& getBiasParams() const { return biasParam; }
    const LayerData& getWeightData() const { return weightData; }
    const LayerData& getBiasData() const { return biasData; }

    // Allocate all resources needed for the layer & Load all of the required data for the layer
    template <typename T>
    void allocateLayer() {
        Layer::allocateOutputBuffer<Array3D<T>>();
        weightData.loadData<Array4D<T>>();
        biasData.loadData<Array1D<T>>();
    }

    // Allocate all resources needed for the layer & Load all of the required data for the layer
    template <typename TW, typename TI, typename TB>
    void allocateLayer() {
        Layer::allocateOutputBuffer<Array3D<TI>>();
        weightData.loadData<Array4D<TW>>();
        biasData.loadData<Array1D<TB>>();
    }

    // Free all resources allocated for the layer
    template <typename T>
    void freeLayer() {
        Layer::freeOutputBuffer<Array3D<T>>();
        weightData.freeData<Array4D<T>>();
        biasData.freeData<Array1D<T>>();
    }

    // Free all resources allocated for the layer
    template <typename TW, typename TI, typename TB>
    void freeLayer() {
        Layer::freeOutputBuffer<Array3D<TI>>();
        weightData.freeData<Array4D<TW>>();
        biasData.freeData<Array1D<TB>>();
    }

    // Virtual functions
    virtual void computeNaive(const LayerData& dataIn) const override;
    virtual void computeThreaded(const LayerData& dataIn) const override;
    virtual void computeTiled(const LayerData& dataIn) const override;
    virtual void computeSIMD(const LayerData& dataIn) const override;

   private:
    LayerParams weightParam;
    LayerData weightData;

    LayerParams biasParam;
    LayerData biasData;

    static constexpr fp32 ALPHA = 1.0;

    // computes the intermediate result for a single filter and input channel
    const fp64 compute2DIntermediateResult(const LayerData& ifMap, const size curRow,
                                           const size curCol, const size curChan,
                                           const size curFilter) const;

    // computes the intermediate result for a single filter and all input channels
    const fp64 compute3DIntermediateResult(const LayerData& ifMap, const size curRow,
                                           const size curCol, const size curFilter) const;
};

}  // namespace ML
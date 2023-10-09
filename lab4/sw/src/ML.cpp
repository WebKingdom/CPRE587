#include <filesystem>
#include <iostream>
#include <sstream>
#include <vector>

#include "Config.h"
#include "Model.h"
#include "Types.h"
#include "Utils.h"
#include "layers/Convolutional.h"
#include "layers/Dense.h"
#include "layers/Flatten.h"
#include "layers/Layer.h"
#include "layers/MaxPooling.h"
#include "layers/Softmax.h"

#ifdef ZEDBOARD
#include "ML.h"
namespace ML {
#else
using namespace ML;
#endif

// Make our code a bit cleaner
namespace fs = std::filesystem;

// Build our ML toy model
template <typename TW, typename TI, typename TB>
Model buildToyModel(const fs::path modelPath, const ML::Layer::ActivationType af) {
    Model model;
    logInfo("--- Building Toy Model ---");

    // --- Conv 1: L1 ---
    // Input shape: 64x64x3
    // Output shape: 60x60x32
    // LayerParams conv1_inDataParam(sizeof(TI), {64, 64, 3});
    // LayerParams conv1_outDataParam(sizeof(TI), {60, 60, 32});
    // LayerParams conv1_weightParam(sizeof(TW), {5, 5, 3, 32}, modelPath / "conv1_weights.bin");
    // LayerParams conv1_biasParam(sizeof(TB), {32}, modelPath / "conv1_biases.bin");
    // auto conv1 = new ConvolutionalLayer(conv1_inDataParam, conv1_outDataParam, conv1_weightParam,
    // conv1_biasParam);
    auto conv1 = new ConvolutionalLayer(
        {{sizeof(TI), {64, 64, 3}},                                     // Input Params
         {sizeof(TI), {60, 60, 32}},                                    // Output Params
         {sizeof(TW), {5, 5, 3, 32}, modelPath / "conv1_weights.bin"},  // Weight params
         {sizeof(TB), {32}, modelPath / "conv1_biases.bin"},            // Bias params
         af});                                                          // Activation
    // conv1->setScales(419.3088582098988, 0.5980304553341924, 250.7594674009261);
    conv1->setScales(419.3088582098988, 0.5980304553341924, 250.7594674009261);
    model.addLayer(conv1);

    // --- Conv 2: L2 ---
    // Input shape: 60x60x32
    // Output shape: 56x56x32
    auto conv2 = new ConvolutionalLayer(
        {{sizeof(TI), {60, 60, 32}},                                     // Input Data
         {sizeof(TI), {56, 56, 32}},                                     // Output Data
         {sizeof(TW), {5, 5, 32, 32}, modelPath / "conv2_weights.bin"},  // Weights
         {sizeof(TB), {32}, modelPath / "conv2_biases.bin"},             // Bias
         af});                                                           // Activation
    // conv2->setScales(260.8992077660963, 0.24888639375534582, 64.93426295453042);
    conv2->setScales(260.8992077660963, 0.24500598686935113, 63.921867872164306);
    model.addLayer(conv2);

    // --- MPL 1: L3 ---
    // Input shape: 56x56x32
    // Output shape: 28x28x32
    auto maxPool1 = new MaxPoolingLayer({
        {sizeof(TI), {56, 56, 32}},  // Input Data
        {sizeof(TI), {28, 28, 32}}   // Output Data
    });
    model.addLayer(maxPool1);

    // --- Conv 3: L4 ---
    // Input shape: 28x28x32
    // Output shape: 26x26x64
    auto conv3 = new ConvolutionalLayer(
        {{sizeof(TI), {28, 28, 32}},                                     // Input Data
         {sizeof(TI), {26, 26, 64}},                                     // Output Data
         {sizeof(TW), {3, 3, 32, 64}, modelPath / "conv3_weights.bin"},  // Weights
         {sizeof(TB), {64}, modelPath / "conv3_biases.bin"},             // Bias
         af});                                                           // Activation
    // conv3->setScales(183.42577326208328, 0.28959079302678636, 53.1184151405182);
    conv3->setScales(183.42577326208328, 0.3352759864529216, 61.498257071334905);
    model.addLayer(conv3);

    // --- Conv 4: L5 ---
    // Input shape: 26x26x64
    // Output shape: 24x24x64
    auto conv4 = new ConvolutionalLayer(
        {{sizeof(TI), {26, 26, 64}},                                     // Input Data
         {sizeof(TI), {24, 24, 64}},                                     // Output Data
         {sizeof(TW), {3, 3, 64, 64}, modelPath / "conv4_weights.bin"},  // Weights
         {sizeof(TB), {64}, modelPath / "conv4_biases.bin"},             // Bias
         af});                                                           // Activation
    // conv4->setScales(234.51324444962967, 0.29300490347274266, 68.71353055304344);
    conv4->setScales(234.51324444962967, 0.29300490347274266, 68.71353055304344);
    model.addLayer(conv4);

    // --- MPL 2: L6 ---
    // Input shape: 24x24x64
    // Output shape: 12x12x64
    auto maxPool2 = new MaxPoolingLayer({
        {sizeof(TI), {24, 24, 64}},  // Input Data
        {sizeof(TI), {12, 12, 64}}   // Output Data
    });
    model.addLayer(maxPool2);

    // --- Conv 5: L7 ---
    // Input shape: 12x12x64
    // Output shape: 10x10x64
    auto conv5 = new ConvolutionalLayer(
        {{sizeof(TI), {12, 12, 64}},                                     // Input Data
         {sizeof(TI), {10, 10, 64}},                                     // Output Data
         {sizeof(TW), {3, 3, 64, 64}, modelPath / "conv5_weights.bin"},  // Weights
         {sizeof(TB), {64}, modelPath / "conv5_biases.bin"},             // Bias
         af});                                                           // Activation
    // conv5->setScales(236.64045885476003, 0.16692843795061652, 39.50202215254223);
    conv5->setScales(236.64045885476003, 0.16338900789374083, 38.66444979979884);
    model.addLayer(conv5);

    // --- Conv 6: L8 ---
    // Input shape: 10x10x64
    // Output shape: 8x8x128
    auto conv6 = new ConvolutionalLayer(
        {{sizeof(TI), {10, 10, 64}},                                      // Input Data
         {sizeof(TI), {8, 8, 128}},                                       // Output Data
         {sizeof(TW), {3, 3, 64, 128}, modelPath / "conv6_weights.bin"},  // Weights
         {sizeof(TB), {128}, modelPath / "conv6_biases.bin"},             // Bias
         af});                                                            // Activation
    // conv6->setScales(248.70011854276902, 0.12900969054867656, 32.08472533262181);
    conv6->setScales(248.70011854276902, 0.1290096985160389, 32.08472731410577);
    model.addLayer(conv6);

    // --- MPL 3: L9 ---
    // Input shape: 8x8x128
    // Output shape: 4x4x128
    auto maxPool3 = new MaxPoolingLayer({
        {sizeof(TI), {8, 8, 128}},  // Input Data
        {sizeof(TI), {4, 4, 128}}   // Output Data
    });
    model.addLayer(maxPool3);

    // --- Flatten 1: L10 ---
    // Input shape: 4x4x128
    // Output shape: 2048
    auto flatten1 = new FlattenLayer({
        {sizeof(TI), {4, 4, 128}},  // Input Data
        {sizeof(TI), {2048}}        // Output Data
    });
    model.addLayer(flatten1);

    // --- Dense 1: L11 ---
    // Input shape: 2048
    // Output shape: 256
    // ReLU Activation
    auto dense1 =
        new DenseLayer({{sizeof(TI), {2048}},                                         // Input Data
                        {sizeof(TI), {256}},                                          // Output Data
                        {sizeof(TW), {2048, 256}, modelPath / "dense1_weights.bin"},  // Weights
                        {sizeof(TB), {256}, modelPath / "dense1_biases.bin"},         // Bias
                        af}                                                           // Activation
        );
    // dense1->setScales(227.76791452790815, 0.0849367674520954, 19.345870389305677);
    dense1->setScales(227.76791452790815, 0.08675795711126105, 19.760678959933628);
    model.addLayer(dense1);

    // --- Dense 2: L12 ---
    // Input shape: 256
    // Output shape: 200
    // Softmax Activation
    auto dense2 =
        new DenseLayer({{sizeof(TI), {256}},                                         // Input Data
                        {sizeof(TI), {200}},                                         // Output Data
                        {sizeof(TW), {256, 200}, modelPath / "dense2_weights.bin"},  // Weights
                        {sizeof(TB), {200}, modelPath / "dense2_biases.bin"},        // Bias
                        Layer::ActivationType::SOFTMAX}                              // Activation
        );
    // dense2->setScales(95.91284026290671, 255.0, 24457.77426704121);
    dense2->setScales(95.91284026290671, 255.0, 24457.77426704121);
    model.addLayer(dense2);

    return model;
}

template <typename TI>
void runBasicTest(const Model& model, const fs::path& basePath) {
    logInfo("--- Running Basic Framework Test ---");

    // Load an image
    fs::path imgPath("./data/image_0.bin");
    dimVec dims = {64, 64, 3};
    Array3D<TI> img = loadArray<Array3D<TI>>(imgPath, dims);

    // Compare images
    std::cout << "Comparing image 0 to itself (max error): "
              << compareArray<Array3D<TI>>(img, img, dims) << std::endl
              << "Comparing image 0 to itself (T/F within epsilon " << ML::Config::EPSILON
              << "): " << std::boolalpha
              << compareArrayWithin<Array3D<TI>>(img, img, dims, ML::Config::EPSILON) << std::endl;

    // Test again with a modified copy
    std::cout << "\nChange a value by 1 and compare again" << std::endl;
    Array3D<TI> imgCopy = allocArray<Array3D<TI>>(dims);
    copyArray<Array3D<TI>>(img, imgCopy, dims);
    imgCopy[0][0][0] += 1;

    // Compare images
    compareArrayWithinPrint(img, imgCopy, dims);

    // Test again with a modified copy
    log("Change a value by 1 and compare again...");
    imgCopy[0][0][0] += 1;

    // Compare Images
    compareArrayWithinPrint(img, imgCopy, dims);

    // Clean up after ourselves
    freeArray<Array3D<TI>>(img, dims);
    freeArray<Array3D<TI>>(imgCopy, dims);
}

template <typename TI>
void runConvolutionalLayerTest1(const std::size_t layerNum, const Model& model,
                               const fs::path& basePath, const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running Convolutional Layer Test 1 ---");
    dimVec inDims = {64, 64, 3};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrenceLayer(img, layerNum, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model[layerNum]->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_0_output.bin"});
    expected.loadData<Array3D<TI>>();
    output.compareWithinPrint<Array3D<TI>>(expected);
}

template <typename TI>
void runConvolutionalLayerTest2(const std::size_t layerNum, const Model& model,
                               const fs::path& basePath, const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running Convolutional Layer Test 2 ---");
    dimVec inDims = {60, 60, 32};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0_data" / "layer_0_output.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrenceLayer(img, layerNum, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model[layerNum]->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_1_output.bin"});
    expected.loadData<Array3D<TI>>();
    output.compareWithinPrint<Array3D<TI>>(expected);
}

template <typename TI>
void runConvolutionalLayerTest3(const std::size_t layerNum, const Model& model,
                               const fs::path& basePath, const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running Convolutional Layer Test 3 ---");
    dimVec inDims = {28, 28, 32};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0_data" / "layer_2_output.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrenceLayer(img, layerNum, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model[layerNum]->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_3_output.bin"});
    expected.loadData<Array3D<TI>>();
    output.compareWithinPrint<Array3D<TI>>(expected);
}

template <typename TI>
void runConvolutionalLayerTest4(const std::size_t layerNum, const Model& model,
                               const fs::path& basePath, const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running Convolutional Layer Test 4 ---");
    dimVec inDims = {26, 26, 64};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0_data" / "layer_3_output.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrenceLayer(img, layerNum, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model[layerNum]->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_4_output.bin"});
    expected.loadData<Array3D<TI>>();
    output.compareWithinPrint<Array3D<TI>>(expected);
}

template <typename TI>
void runConvolutionalLayerTest5(const std::size_t layerNum, const Model& model,
                               const fs::path& basePath, const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running Convolutional Layer Test 5 ---");
    dimVec inDims = {12, 12, 64};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0_data" / "layer_5_output.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrenceLayer(img, layerNum, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model[layerNum]->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_6_output.bin"});
    expected.loadData<Array3D<TI>>();
    output.compareWithinPrint<Array3D<TI>>(expected);
}

template <typename TI>
void runConvolutionalLayerTest6(const std::size_t layerNum, const Model& model,
                               const fs::path& basePath, const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running Convolutional Layer Test 6 ---");
    dimVec inDims = {10, 10, 64};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0_data" / "layer_6_output.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrenceLayer(img, layerNum, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model[layerNum]->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_7_output.bin"});
    expected.loadData<Array3D<TI>>();
    output.compareWithinPrint<Array3D<TI>>(expected);
}

template <typename TI>
void runMaxPoolLayerTest1(const std::size_t layerNum, const Model& model, const fs::path& basePath,
                         const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running MaxPool Test 1 ---");
    dimVec inDims = {56, 56, 32};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0_data" / "layer_1_output.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrenceLayer(img, layerNum, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model[layerNum]->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_2_output.bin"});
    expected.loadData<Array3D<TI>>();
    output.compareWithinPrint<Array3D<TI>>(expected);
}

template <typename TI>
void runMaxPoolLayerTest2(const std::size_t layerNum, const Model& model, const fs::path& basePath,
                         const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running MaxPool Test 2 ---");
    dimVec inDims = {24, 24, 64};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0_data" / "layer_4_output.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrenceLayer(img, layerNum, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model[layerNum]->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_5_output.bin"});
    expected.loadData<Array3D<TI>>();
    output.compareWithinPrint<Array3D<TI>>(expected);
}

template <typename TI>
void runMaxPoolLayerTest3(const std::size_t layerNum, const Model& model, const fs::path& basePath,
                         const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running MaxPool Test 3 ---");
    dimVec inDims = {8, 8, 128};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0_data" / "layer_7_output.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrenceLayer(img, layerNum, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model[layerNum]->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_8_output.bin"});
    expected.loadData<Array3D<TI>>();
    output.compareWithinPrint<Array3D<TI>>(expected);
}

template <typename TI>
void runFlattenLayerTest(const std::size_t layerNum, const Model& model, const fs::path& basePath,
                         const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running Flatten Test ---");
    dimVec inDims = {4, 4, 128};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0_data" / "layer_8_output.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrenceLayer(img, layerNum, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model[layerNum]->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_9_output.bin"});
    expected.loadData<Array1D<TI>>();
    output.compareWithinPrint<Array1D<TI>>(expected);
}

template <typename TI>
void runDenseLayer1Test(const std::size_t layerNum, const Model& model, const fs::path& basePath,
                        const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running Dense 1 Test ---");
    dimVec inDims = {2048};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0_data" / "layer_9_output.bin"});
    img.loadData<Array1D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrenceLayer(img, layerNum, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model[layerNum]->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_10_output.bin"});
    expected.loadData<Array1D<TI>>();
    output.compareWithinPrint<Array1D<TI>>(expected);
}

template <typename TI>
void runDenseLayer2Test(const std::size_t layerNum, const Model& model, const fs::path& basePath,
                        const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running Dense 2 Test ---");
    dimVec inDims = {256};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0_data" / "layer_10_output.bin"});
    img.loadData<Array1D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrenceLayer(img, layerNum, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model[layerNum]->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_11_output.bin"});
    expected.loadData<Array1D<TI>>();
    output.compareWithinPrint<Array1D<TI>>(expected);
}

template <typename TI>
void runInfrenceTest0(const Model& model, const fs::path& basePath, const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running Full Inference Test 0 ---");
    dimVec inDims = {64, 64, 3};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_0.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrence(img, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model.getOutputLayer()->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_0_data" / "layer_11_output.bin"});
    expected.loadData<Array1D<TI>>();
    output.compareWithinPrint<Array1D<TI>>(expected);
}

template <typename TI>
void runInfrenceTest1(const Model& model, const fs::path& basePath, const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running Full Inference Test 1 ---");
    dimVec inDims = {64, 64, 3};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_1.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrence(img, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model.getOutputLayer()->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_1_data" / "layer_11_output.bin"});
    expected.loadData<Array1D<TI>>();
    output.compareWithinPrint<Array1D<TI>>(expected);
}

template <typename TI>
void runInfrenceTest2(const Model& model, const fs::path& basePath, const Layer::InfType infType) {
    // Load an image
    logInfo("--- Running Full Inference Test 2 ---");
    dimVec inDims = {64, 64, 3};

    // Construct a LayerData object from a LayerParams one
    LayerData img({sizeof(TI), inDims, basePath / "image_2.bin"});
    img.loadData<Array3D<TI>>();

    // Run infrence on the model
    const LayerData output = model.infrence(img, infType);

    // Compare the output
    // Construct a LayerData object from a LayerParams one
    dimVec outDims = model.getOutputLayer()->getOutputParams().dims;
    LayerData expected({sizeof(TI), outDims, basePath / "image_2_data" / "layer_11_output.bin"});
    expected.loadData<Array1D<TI>>();
    output.compareWithinPrint<Array1D<TI>>(expected);
}

/**
 * @brief Run all tests for the specified model path and activation function
 *
 * @param basePath base path for the model (May need to be altered for zedboards loading from SD
 * Cards)
 * @param af activation function to use
 */
void run_all_tests(const fs::path basePath, const ML::Layer::ActivationType af) {
    // Build the model and allocate the buffers
    Model model = buildToyModel<fp32, fp32, fp32>(basePath / "model", af);
    model.allocLayers<fp32>();

    // Run some framework tests as an example of loading data
    runBasicTest<fp32>(model, basePath);

    // Run a Convolutional layer test
    runConvolutionalLayerTest1<fp32>(0, model, basePath, Layer::InfType::NAIVE);
    runConvolutionalLayerTest2<fp32>(1, model, basePath, Layer::InfType::NAIVE);
    runConvolutionalLayerTest3<fp32>(3, model, basePath, Layer::InfType::NAIVE);
    runConvolutionalLayerTest4<fp32>(4, model, basePath, Layer::InfType::NAIVE);
    runConvolutionalLayerTest5<fp32>(6, model, basePath, Layer::InfType::NAIVE);
    runConvolutionalLayerTest6<fp32>(7, model, basePath, Layer::InfType::NAIVE);

    // Run 1st MaxPool layer test
    runMaxPoolLayerTest1<fp32>(2, model, basePath, Layer::InfType::NAIVE);
    runMaxPoolLayerTest2<fp32>(5, model, basePath, Layer::InfType::NAIVE);
    runMaxPoolLayerTest3<fp32>(8, model, basePath, Layer::InfType::NAIVE);

    // Run Flatten layer test
    runFlattenLayerTest<fp32>(9, model, basePath, Layer::InfType::NAIVE);

    // Run Dense layer 1 test
    runDenseLayer1Test<fp32>(10, model, basePath, Layer::InfType::NAIVE);

    // Run Dense layer 2 test
    runDenseLayer2Test<fp32>(11, model, basePath, Layer::InfType::NAIVE);

    // Run an end-to-end infrence test on image 0
    runInfrenceTest0<fp32>(model, basePath, Layer::InfType::NAIVE);

    // Run an end-to-end infrence test on image 1
    runInfrenceTest1<fp32>(model, basePath, Layer::InfType::NAIVE);

    // Run an end-to-end infrence test on image 2
    runInfrenceTest2<fp32>(model, basePath, Layer::InfType::NAIVE);

    // Clean up
    model.freeLayers<fp32>();
}

void run_all_quant1_tests(const fs::path basePath, const ML::Layer::ActivationType af) {
    // Build the model and allocate the buffers
    Model model = buildToyModel<i8, ui8, i32>(basePath / "model", af);
    model.allocLayers<i8, ui8, i32>();

    // Run some framework tests as an example of loading data
    // runBasicTest<ui8>(model, basePath);

    // // Run a Convolutional layer test
    // runConvolutionalLayerTest1<ui8>(0, model, basePath, Layer::InfType::QUANT1);
    // runConvolutionalLayerTest2<ui8>(1, model, basePath, Layer::InfType::QUANT1);
    // runConvolutionalLayerTest3<ui8>(3, model, basePath, Layer::InfType::QUANT1);
    // runConvolutionalLayerTest4<ui8>(4, model, basePath, Layer::InfType::QUANT1);
    // runConvolutionalLayerTest5<ui8>(6, model, basePath, Layer::InfType::QUANT1);
    // runConvolutionalLayerTest6<ui8>(7, model, basePath, Layer::InfType::QUANT1);

    // // Run 1st MaxPool layer test
    // runMaxPoolLayerTest1<ui8>(2, model, basePath, Layer::InfType::QUANT1);
    // runMaxPoolLayerTest2<ui8>(5, model, basePath, Layer::InfType::QUANT1);
    // runMaxPoolLayerTest3<ui8>(8, model, basePath, Layer::InfType::QUANT1);

    // // Run Flatten layer test
    // runFlattenLayerTest<ui8>(9, model, basePath, Layer::InfType::QUANT1);

    // // Run Dense layer 1 test
    // runDenseLayer1Test<ui8>(10, model, basePath, Layer::InfType::QUANT1);

    // // Run Dense layer 2 test
    // runDenseLayer2Test<ui8>(11, model, basePath, Layer::InfType::QUANT1);

    // Run an end-to-end infrence test on image 0
    runInfrenceTest0<ui8>(model, basePath, Layer::InfType::QUANT1);

    // Run an end-to-end infrence test on image 1
    // runInfrenceTest1<ui8>(model, basePath, Layer::InfType::QUANT1);

    // // Run an end-to-end infrence test on image 2
    // runInfrenceTest2<ui8>(model, basePath, Layer::InfType::QUANT1);

    // Clean up
    model.freeLayers<i8, ui8, i32>();
}

void run_all_quant2_tests(const fs::path basePath, const ML::Layer::ActivationType af) {
    // Build the model and allocate the buffers
    Model model = buildToyModel<i8, fp32, i32>(basePath / "model", af);
    model.allocLayers<i8, fp32, i32>();

    // Run some framework tests as an example of loading data
    // runBasicTest<fp32>(model, basePath);

    // Run a Convolutional layer test
    // runConvolutionalLayerTest1<fp32>(0, model, basePath, Layer::InfType::QUANT2);
    // runConvolutionalLayerTest2<fp32>(1, model, basePath, Layer::InfType::QUANT2);
    // runConvolutionalLayerTest3<fp32>(3, model, basePath, Layer::InfType::QUANT2);
    // runConvolutionalLayerTest4<fp32>(4, model, basePath, Layer::InfType::QUANT2);
    // runConvolutionalLayerTest5<fp32>(6, model, basePath, Layer::InfType::QUANT2);
    // runConvolutionalLayerTest6<fp32>(7, model, basePath, Layer::InfType::QUANT2);

    // Run 1st MaxPool layer test
    // runMaxPoolLayerTest1<fp32>(2, model, basePath, Layer::InfType::QUANT2);
    // runMaxPoolLayerTest2<fp32>(5, model, basePath, Layer::InfType::QUANT2);
    // runMaxPoolLayerTest3<fp32>(8, model, basePath, Layer::InfType::QUANT2);

    // // Run Flatten layer test
    // runFlattenLayerTest<fp32>(9, model, basePath, Layer::InfType::QUANT2);

    // // Run Dense layer 1 test
    // runDenseLayer1Test<fp32>(10, model, basePath, Layer::InfType::QUANT2);

    // // Run Dense layer 2 test
    // runDenseLayer2Test<fp32>(11, model, basePath, Layer::InfType::QUANT2);

    // // Run an end-to-end infrence test on image 0
    runInfrenceTest0<fp32>(model, basePath, Layer::InfType::QUANT2);

    // // Run an end-to-end infrence test on image 1
    // runInfrenceTest1<fp32>(model, basePath, Layer::InfType::QUANT2);

    // // Run an end-to-end infrence test on image 2
    // runInfrenceTest2<fp32>(model, basePath, Layer::InfType::QUANT2);

    // Clean up
    model.freeLayers<i8, fp32, i32>();
}

// clang-format off
#ifdef ZEDBOARD
int runModelTest(){
#else
int main(int argc, char** argv) {
    // Hanlde command line arguments
    Args& args = Args::getInst();
    args.parseArgs(argc, argv);
#endif
    // logInfo("Running RELU tests:");
    // run_all_tests(fs::path("data"), Layer::ActivationType::RELU);
    // printf("\n\n");

    // TODO ssz uncomment these tests
    // logInfo("Running ELU tests:");
    // run_all_tests(fs::path("data_elu"), Layer::ActivationType::ELU);
    // printf("\n\n");

    // logInfo("Running TANH tests:");
    // run_all_tests(fs::path("data_tanh"), Layer::ActivationType::TANH);
    // printf("\n\n");

    // logInfo("Running SIGMOID tests:");
    // run_all_tests(fs::path("data_sigmoid"), Layer::ActivationType::SIGMOID);
    // printf("\n\n");

    logInfo("Running Quantized 1 RELU tests:");
    run_all_quant1_tests(fs::path("data_quant_relu"), Layer::ActivationType::RELU);

    // logInfo("Running Quantized 2 RELU tests:");
    // run_all_quant2_tests(fs::path("data_quant2_relu"), Layer::ActivationType::RELU);

    return 0;
}
// clang-format on

#ifdef ZEDBOARD
}
;  // namespace ML;
#endif

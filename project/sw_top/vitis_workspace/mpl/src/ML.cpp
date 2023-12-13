#include <filesystem>
#include <ios>
#include <iostream>
#include <sstream>
#include <vector>
#include <string>
#include <iomanip>

#include "Config.h"
#include "Model.h"
#include "Types.h"
#include "Utils.h"
#include "accel.h"
#include "xparameters.h"
#include "xtime_l.h"
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
Model buildToyModel(const fs::path modelPath) {
  Model model;
  logInfo("--- Building Toy Model ---");

  // --- Conv 1: L1 ---
  // Input shape: 64x64x3
  // Output shape: 60x60x32

  // You can pick how you want to implement your layers, both are allowed:

  // LayerParams conv1_inDataParam(sizeof(fp32), {64, 64, 3});
  // LayerParams conv1_outDataParam(sizeof(fp32), {60, 60, 32});
  // LayerParams conv1_weightParam(sizeof(fp32), {5, 5, 3, 32}, modelPath /
  // "conv1_weights.bin"); LayerParams conv1_biasParam(sizeof(fp32), {32},
  // modelPath / "conv1_biases.bin"); auto conv1 = new
  // ConvolutionalLayer(conv1_inDataParam, conv1_outDataParam,
  // conv1_weightParam, conv1_biasParam);
  int quant_bits = 8;

  auto conv1 = new ConvolutionalLayer(
      {{sizeof(fp32), {64, 64, 3}},  // Input Data
       {sizeof(fp32), {60, 60, 32}}, // Output Data
       {sizeof(fp32),
        {5, 5, 3, 32},
        modelPath / "c1w"},                      // Weights
       {sizeof(fp32), {32}, modelPath / "c1b"}, 0.30287, 1.0, quant_bits}); // Bias
  model.addLayer(conv1);
  

  // --- Conv 2: L2 ---
  // Input shape: 60x60x32
  // Output shape: 56x56x32

  auto conv2 = new ConvolutionalLayer(
      {{sizeof(fp32), {60, 60, 32}}, // Input Data
       {sizeof(fp32), {56, 56, 32}}, // Output Data
       {sizeof(fp32),
        {5, 5, 32, 32},
        modelPath / "c2w"},                      // Weights
       {sizeof(fp32), {32}, modelPath / "c2b"}, 0.48678, 1.67, quant_bits}); // Bias

  model.addLayer(conv2);

  // --- MPL 1: L3 ---
  // Input shape: 56x56x32
  // Output shape: 28x28x32

  auto mpl1 = new MaxPoolingLayer({{sizeof(fp32), {56, 56, 32}}, // Input Data
                                   {sizeof(fp32), {28, 28, 32}}, // Output Data
                                   {sizeof(fp32), {2,2}},       // Weights
                                   {sizeof(fp32), {}}});         // Bias

  model.addLayer(mpl1);

  // --- Conv 3: L4 ---
  // Input shape: 28x28x32
  // Output shape: 26x26x64
  auto conv3 = new ConvolutionalLayer(
      {{sizeof(fp32), {28, 28, 32}}, // Input Data
       {sizeof(fp32), {26, 26, 64}}, // Output Data
       {sizeof(fp32),
        {3, 3, 32, 64},
        modelPath / "c3w"},                      // Weights
       {sizeof(fp32), {64}, modelPath / "c3b"}, 0.6924, 4.34, quant_bits}); // Bias

  model.addLayer(conv3);
  // --- Conv 4: L5 ---
  // Input shape: 26x26x64
  // Output shape: 24x24x64
  auto conv4 = new ConvolutionalLayer(
      {{sizeof(fp32), {26, 26, 64}}, // Input Data
       {sizeof(fp32), {24, 24, 64}}, // Output Data
       {sizeof(fp32),
        {3, 3, 64, 64},
        modelPath / "c4w"},                      // Weights
       {sizeof(fp32), {64}, modelPath / "c4b"}, 0.5416, 3.10, quant_bits}); // Bias

  model.addLayer(conv4);
  // --- MPL 2: L6 ---
  // Input shape: 24x24x64
  // Output shape: 12x12x64

  auto mpl2 = new MaxPoolingLayer({{sizeof(fp32), {24, 24, 64}}, // Input Data
                                   {sizeof(fp32), {12, 12, 64}}, // Output Data
                                   {sizeof(fp32), {2, 2}},       // Weights
                                   {sizeof(fp32), {}}});         // Bias

  model.addLayer(mpl2);

  // --- Conv 5: L7 ---
  // Input shape: 12x12x64
  // Output shape: 10x10x64

  auto conv5 = new ConvolutionalLayer(
      {{sizeof(fp32), {12, 12, 64}}, // Input Data
       {sizeof(fp32), {10, 10, 64}}, // Output Data
       {sizeof(fp32),
        {3, 3, 64, 64},
        modelPath / "c5w"},                      // Weights
       {sizeof(fp32), {64}, modelPath / "c5b"}, 0.5367, 4.97, quant_bits}); // Bias

  model.addLayer(conv5);

  // --- Conv 6: L8 ---
  // Input shape: 10x10x64
  // Output shape: 8x8x128
  auto conv6 = new ConvolutionalLayer(
      {{sizeof(fp32), {10, 10, 64}}, // Input Data
       {sizeof(fp32), {8, 8, 128}},  // Output Data
       {sizeof(fp32),
        {3, 3, 64, 128},
        modelPath / "c6w"},                      // Weights
       {sizeof(fp32), {128}, modelPath / "c6b"}, 0.511, 6.95, quant_bits}); // Bias

  model.addLayer(conv6);
  // --- MPL 3: L9 ---
  // Input shape: 8x8x128
  // Output shape: 4x4x128
  auto mpl3 = new MaxPoolingLayer({{sizeof(fp32), {8, 8, 128}}, // Input Data
                                   {sizeof(fp32), {4, 4, 128}}, // Output Data
                                   {sizeof(fp32), {2, 2}},      // Weights
                                   {sizeof(fp32), {}}});        // Bias

  model.addLayer(mpl3);
  // --- Flatten 1: L10 ---
  // Input shape: 4x4x128
  // Output shape: 2048

  auto flat1 = new FlattenLayer({{sizeof(fp32), {4, 4, 128}}, // Input Data
                                 {sizeof(fp32), {2048}},      // Output Data
                                 {sizeof(fp32), {}},          // "Weights"
                                 {sizeof(fp32), {}}});        // "Bias"

  model.addLayer(flat1);

  // --- Dense 1: L11 ---
  // Input shape: 2048
  // Output shape: 256
  auto dense1 = new DenseLayer(
      {{sizeof(fp32), {2048}}, // Input Data
       {sizeof(fp32), {256}},  // Output Data
       {sizeof(fp32), {2048, 256}, modelPath / "d1w"}, // Weights
       {sizeof(fp32), {256}, modelPath / "d1b"}});
  model.addLayer(dense1);

  // --- Dense 2: L12 ---
  // Input shape: 256
  // Output shape: 200

  /*auto dense2 = new DenseLayer(
      {{sizeof(fp32), {256}}, // Input Data
       {sizeof(fp32), {200}}, // Output Data
       {sizeof(fp32), {256, 200}, modelPath / "dense2_weights.bin"}, // Weights
       {sizeof(fp32), {200}, modelPath / "dense2_biases.bin"}});

  model.addLayer(dense2);*/

  // --- Softmax 1: L13 ---
  // Input shape: 200
  // Output shape: 200
  auto softmax1 = new SoftmaxLayer({{sizeof(fp32), {256}}, // Input Data
                                  {sizeof(fp32), {200}}, // Output Data
                                  {sizeof(fp32), {256, 200}, modelPath / "d2w"},
                                  {sizeof(fp32), {200}, modelPath / "d2b"}});
  model.addLayer(softmax1);

  return model;
}

void runBasicTest(const Model &model, const fs::path &basePath) {
  logInfo("--- Running Basic Test ---");

  // Load an image
  fs::path imgPath("./data/image_0.bin");
  dimVec dims = {64, 64, 3};
  Array3D_fp32 img = loadArray<Array3D_fp32>(imgPath, dims);

  // Compare images
  std::cout << "Comparing image 0 to itself (max error): "
            << compareArray<Array3D_fp32>(img, img, dims) << std::endl
            << "Comparing image 0 to itself (T/F within epsilon "
            << ML::Config::EPSILON << "): " << std::boolalpha
            << compareArrayWithinPrint<Array3D_fp32>(img, img, dims,
                                                ML::Config::EPSILON)
            << std::endl;

  // Test again with a modified copy
  std::cout << "\nChange a value by 0.1 and compare again" << std::endl;
  Array3D_fp32 imgCopy = allocArray<Array3D_fp32>(dims);
  copyArray<Array3D_fp32>(img, imgCopy, dims);
  imgCopy[0][0][0] += 0.1;

  // Compare images
  compareArrayWithinPrint(img, imgCopy, dims);

  // Test again with a modified copy
  log("Change a value by 0.1 and compare again...");
  imgCopy[0][0][0] += 0.1;

  // Compare Images
  compareArrayWithinPrint(img, imgCopy, dims);

  // Clean up after ourselves
  freeArray<Array3D_fp32>(img, dims);
  freeArray<Array3D_fp32>(imgCopy, dims);
}

void runLayerTest(const std::size_t layerNum, const Model &model,
                  const fs::path &basePath) {
  // Load an image
  logInfo("--- Running Infrence Test ---");
  dimVec inDims = {64, 64, 3};

  // Construct a LayerData object from a LayerParams one
  LayerData img({sizeof(fp32), inDims, basePath / "image_0.bin"});
  img.loadData<Array3D_fp32>();
  logInfo("--- Loaded Image ---");

  // Run infrence on the model
  const LayerData output =
      model.infrenceLayer(img, layerNum, Layer::InfType::NAIVE);

  // Compare the output
  // Construct a LayerData object from a LayerParams one
  dimVec outDims = model[layerNum]->getOutputParams().dims;
  LayerData expected({sizeof(fp32), outDims,
                      basePath / "image_0_data" / "layer_0_output.bin"});
  expected.loadData<Array3D_fp32>();
  output.compareWithinPrint<Array3D_fp32>(expected);
}


void runMaxPoolTest(const std::size_t layerNum, const Model &model,
                  const fs::path &basePath) {
  // Load an image
  logInfo("--- Running Infrence Test ---");
  dimVec inDims = {200};

  // Construct a LayerData object from a LayerParams one
  LayerData img({sizeof(fp32), inDims, basePath / "image_0_data" / "layer_10_output.bin"});
  img.loadData<Array1D_fp32>();
  logInfo("--- Loaded Image ---");

  // Run infrence on the model
  const LayerData output =
      model.infrenceLayer(img, layerNum, Layer::InfType::NAIVE);

  // Compare the output
  // Construct a LayerData object from a LayerParams one
  dimVec outDims = model[layerNum]->getOutputParams().dims;
  LayerData expected({sizeof(fp32), outDims,
                      basePath / "image_0_data" / "layer_11_output.bin"});
  expected.loadData<Array1D_fp32>();
  output.compareWithinPrint<Array1D_fp32>(expected);

  for(int i = 0; i < 200; i++){
    Array1D_fp32 exp = expected.getData<Array1D_fp32>();
    Array1D_fp32 outp = output.getData<Array1D_fp32>();
    Array1D_fp32 inp = img.getData<Array1D_fp32>();
    printf("%0.2f, %0.2f, %0.2f\n",inp[i], exp[i], outp[i]);
  }
}

void runInfrenceTest(const Model &model, const fs::path &basePath) {
  // Load an image
  logInfo("--- Running Infrence Test ---");
  dimVec inDims = {64, 64, 3};

  // Construct a LayerData object from a LayerParams one
  LayerData img({sizeof(fp32), inDims, basePath / "i1b"});
  img.loadData<Array3D_fp32>();

  // Run infrence on the model
  XTime start, end;

  //Xil_DCacheEnable();
  XTime_GetTime(&start);
  const LayerData output = model.infrence(img, Layer::InfType::NAIVE);



  XTime_GetTime(&end);

  //Xil_DCacheDisable();
  // Compare the output
  // Construct a LayerData object from a LayerParams one
  //dimVec outDims = model.getOutputLayer()->getOutputParams().dims;

  //dimVec outDims = model.getLayer(11)->getOutputParams().dims;

  printf("Inference took %0.2f us\n", 1.0 * (end - start) / (COUNTS_PER_SECOND/1000000));
  for(size_t i = 0; i <= 11 ; i++){
    const Layer* outp;

    outp = model.getLayer(i);
    
    LayerData outpd = outp->getOutputData();

    dimVec outDims2 = outp->getOutputParams().dims;
    LayerData expected({sizeof(fp32), outDims2,
                      basePath / "i1d" / ("l" + std::to_string(i) + "o")});
    
    expected.loadData<Array3D_fp32>();
    //printf("Comparing layer index %ld\n", i);
    outpd.compareWithinPrint<Array3D_fp32>(expected);
  }


  //official output
  dimVec outDims = model.getOutputLayer()->getOutputParams().dims;
  LayerData expected({sizeof(fp32), outDims,
                       basePath / "i1d" / "l11o"});
  expected.loadData<Array3D_fp32>();
  output.compareWithinPrint<Array3D_fp32>(expected);

  //LayerData expected({sizeof(fp32), outDims,
                      // basePath / "image_1_data" / "layer_11_output.bin"});
  //expected.loadData<Array3D_fp32>();
  //output.compareWithinPrint<Array3D_fp32>(expected);
}


void run1000InfrenceTest(const Model &model, const fs::path &basePath) {
  std::ofstream Ofile;
  Ofile.open("output.txt", std::ios_base::app);
  // Load an image
  logInfo("--- Running Infrence Test ---");
  dimVec inDims = {64, 64, 3};

  // Construct a LayerData object from a LayerParams one
  for(int idx = 0; idx < 1000; idx++){

  
  LayerData img({sizeof(fp32), inDims, basePath / ("img_data/image_" + std::to_string(idx) + ".bin")});
  img.loadData<Array3D_fp32>();




  // Run infrence on the model
  const LayerData output = model.infrence(img, Layer::InfType::NAIVE);


  //output.compareWithinPrint<Array3D_fp32>(expected);
  Array1D_fp32 outp = output.getData<Array1D_fp32>();
  
  for(int i = 0; i < 200; i++){
    Ofile << std::fixed << std::setw(11) << std::setprecision(6) << outp[i] << " ";
  }
  Ofile << "\n";
}
  Ofile.close();
}



void runFPGATest(){
	setReset(1);
	i8 * weights = WEIGHT_BRAM;
	ui8 * inputs = INPUT_BRAM;
	volatile i32 * psums = OUTPUT_BRAM;
	setFilterSize(3);
	setTileSize(5);
	setStart(0);
	setReset(0);
	setValid(1);

	setBAs();

	printBAs();

	printRegister((ui32*)ACCEL_PARAMS);
	printRegister((ui32*)(ACCEL_PARAMS+(4*4)));






	for(int i = 0; i < 28; i++){
		*(weights + i) = 1;
	}

	if(checkWeightBuffered()){
		printf("Something is wrong\r\n");
	}
	printStatusRegister();
	printf("Waiting for weight buffer\r\n");
	setBufferWeights(1);





	//wait on weights buffered
	while(!checkWeightBuffered()){
		printf("wb print\r\n");
	}

	printStatusRegister();
	printf("Confirmed weight buffer! \r\n");

	printf("About to wait for wait\r\n");
	setLoadWeights(1);
//	if(!checkWeightLoaded()){
//		printf("Weight load went low\r\n");
//	}



	//weight store load goes high

	//wait for weight store loaded

	while(!checkWeightLoaded()){
		printf("wl print\r\n");

	}
	printf("Weights loaded! \r\n");
	printStatusRegister();
	printErrors();



	for(int i = 0; i < 160; i++){
		*(inputs + i) = i;
		*(psums +i ) = -1;
	}

	for(int i = 0; i < 10; i++){
			for(int j = 0; j < 9; j++){
				printf("%u ", *(psums+i*9 + j));
			}
			printf("\r\n");
		}
	printStatusRegister();
	printf("About to buffer inputs!\r\n");


	if(checkInputBuffered()){
			printf("Something is wrong\r\n");
		}

	setBufferInputs(1);
	printf("About to wait for input buffer\r\n");

	while(!checkInputBuffered()){
		printf("ib print\r\n");

	}
	printStatusRegister();

	printErrors();

	printf("Finished input buffer\r\n");


	printf("About to start. BRAM looks like this:\n");

	printf("Inputs:\n");
	printMem(inputs, 20);

	printMem(weights, 20);

	printMem(psums, 20);


	setLoadWeights(0);

	setBufferWeights(0);
	setBufferInputs(0);


	setStart(1);

	while(!checkOutputWritten()){
		printf("o print\r\n");
	}
	printf("Finished Calc!\r\n");

	printMem(psums,160);

	printErrors();
	printStatusRegister();
	printRegister((ui32*)(ACCEL_PARAMS+(4*31)));










	//wait on output writted


	//outputs are in BRAM,
	//9 columns, 5 rows, only first 5 columns valid

















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

    // Base input data path (determined from current directory of where you are running the command)
    fs::path basePath("dqr");  // May need to be altered for zedboards loading from SD Cards

    // Build the model and allocate the buffers
    Model model = buildToyModel(basePath / "model");
    model.allocLayers<fp32>();



    // Run some framework tests as an example of loading data
    // runBasicTest(model, basePath);

    //runMaxPoolTest(12, model, basePath);

    // Run a layer infrence test
    // runLayerTest(0, model, basePath);

    // Run an end-to-end infrence test
    
    runInfrenceTest(model, basePath);

    //runFPGATest();
    // Clean up
    model.freeLayers<fp32>();

    return 0;
}
// clang-format on

#ifdef ZEDBOARD
}
; // namespace ML;
#endif

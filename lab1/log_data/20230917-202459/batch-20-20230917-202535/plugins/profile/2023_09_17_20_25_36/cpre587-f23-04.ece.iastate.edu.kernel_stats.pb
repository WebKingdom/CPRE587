
ð
©sm80_xmma_fprop_implicit_gemm_indexed_wo_smem_tf32f32_tf32f32_f32_nhwckrsc_nhwc_tilesize128x32x64_stage1_warpsize4x1x1_g1_tensor16x8x8_alignc8_execute_kernel_cudnn_infer  *2ê8¥°¹@H PXbsequential/conv2d_1/Reluh3u  ÈA
M
redzone_checker*2@8¼@ÀHèbsequential/conv2d_3/Reluh4uZUB
M
redzone_checker*2@8ø»@¸Hèbsequential/conv2d_2/Reluh4uZUB
M
redzone_checker*2@8à»@ÀHèbsequential/conv2d_5/Reluh4uZUB
M
redzone_checker*2@8È»@¸Hèbsequential/conv2d_4/Reluh4uZUB
K
redzone_checker*2@8ð@ÈHðbsequential/conv2d/Reluh,uZUB
M
redzone_checker*2@8ð@ÀHøbsequential/conv2d_1/Reluh*uZUB
¹
úvoid implicit_convolve_sgemm<float, float, 1024, 5, 5, 3, 3, 3, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)?*2Ê8¸@ØHðbsequential/conv2d/Reluh4uZUB

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148t_nt_v1~*2(8ø@ÈHØbsequential/conv2d_3/Reluh4uMUB

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148t_nt_v1~*2(8Ðq@H bsequential/conv2d_2/Reluh4uMUB
Ú
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*2q8¸l@èH bsequential/conv2d_1/Reluh3u  ÈB
Ú
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)0>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)"!*2b8à`@èHøbsequential/conv2d_1/Reluh3u  ÈB
Ú
void cudnn::ops::nhwcToNchwKernel<float, float, float, true, false, (cudnnKernelDataType_t)0>(cudnn::ops::nhwc2nchw_params_t<float>, float const*, float*)(!*2b8À]@èHðbsequential/conv2d_1/Reluh3u  ÈB
¾
þvoid explicit_convolve_sgemm<float, int, 128, 6, 7, 3, 3, 5, 0, false>(int, int, int, float const*, int, float const*, int, float*, kernel_conv_params, unsigned long long, int, unsigned long long, int, float, float, int, bool, float const*, float const*)K2* 2Ô8øQ@ø(H)bsequential/conv2d_1/Reluhu  HB
ì
¤void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)( *à28 A@ H°b sequential/max_pooling2d/MaxPoolh2u  ¯B

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile442t_nt_v1*2
8<@H bsequential/conv2d_4/Reluh4ugUA

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148t_nt_v1~*2P8À7@Hbsequential/conv2d_5/Reluh4uMUB
È
void cudnn::cnn::im2col4d_kernel<float, long>(cudnn::cnn::im2col4d_params, cudnnConvolutionStruct, cudnnTensorStruct, float const*, float*)#*2{85@¨Hàbsequential/conv2d_1/Reluhu  ÈB
¹
ùvoid implicit_convolve_sgemm<float, float, 128, 5, 5, 3, 3, 3, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)P*2¨84@¨H°bsequential/conv2d_1/Reluhu  HB
Ä
void cutlass::Kernel<cutlass_80_tensorop_s1688gemm_64x64_16x6_nn_align4>(cutlass_80_tensorop_s1688gemm_64x64_16x6_nn_align4::Params)^ *28@@HHXbsequential/dense/MatMulh2ugUA
Á
void cutlass::Kernel<cutlass_80_tensorop_s1688gemm_64x64_32x6_nn_align4>(cutlass_80_tensorop_s1688gemm_64x64_32x6_nn_align4::Params)d *28ø@8HHXbsequential/dense_1/MatMulh2
X
ampere_sgemm_128x128_nnv*2©8à@¨
H¸
bsequential/conv2d_1/ReluhuMUB
Ä
void cudnn::winograd_nonfused::winogradForwardData9x9_5x5<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)8 ü*¨2$ 8@¸	HÐ	bsequential/conv2d_1/Reluhu ÀsB
Î
­void tensorflow::functor::SwapDimension1And2InTensor3UsingTiles<unsigned char, 1024, 1024, 2, false>(unsigned char const*, tensorflow::functor::Dimension<3>, unsigned char*) *2 8 @(H8bzsequential/conv2d/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_uint8_Conv2D-0-TransposeNHWCToNCHW-LayoutOptimizerh2uZUB
¹
ùvoid implicit_convolve_sgemm<float, float, 128, 6, 7, 3, 3, 5, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)O2* 2´8ø@øH	bsequential/conv2d_3/Reluhu  HB
ì
¤void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)( *28ð@(H0b"sequential/max_pooling2d_1/MaxPoolh2u À¨B

Êvoid fft2d_c2r_32x32<float, false, true, 0u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)@ À*2(8°@PHbsequential/conv2d/ReluhuZUB
¾
þvoid explicit_convolve_sgemm<float, int, 128, 6, 7, 3, 3, 5, 0, false>(int, int, int, float const*, int, float const*, int, float*, kernel_conv_params, unsigned long long, int, unsigned long long, int, float, float, int, bool, float const*, float const*)K2* 2´8@Hbsequential/conv2d_3/Reluhu  HB
Î
void tensorflow::(anonymous namespace)::GenerateNormalizedProb<float, float, 4>(float const*, float const*, float const*, float*, int, int, bool) *28@ H(bsequential/dense_1/Softmaxh2u  ÈB
À
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*2H8ø@ H(bsequential/conv2d_5/Reluh2uZUB
Õ
çvoid Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorConversionOp<float, Eigen::TensorMap<Eigen::Tensor<unsigned char const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorConversionOp<float, Eigen::TensorMap<Eigen::Tensor<unsigned char const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long)*2~8È@ H(bKsequential/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_float_Casth2uZUB
Ø
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*2 8È@H bsequential/conv2d_1/Reluh3u  ÈB
À
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*2$8¸@H(bsequential/conv2d_3/Reluh2uZUB
À
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*2$8 @H(bsequential/conv2d_4/Reluh2uZUB
Æ
void cudnn::winograd_nonfused::winogradForwardOutput9x9_5x5<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)) *¨2$ 8@Hbsequential/conv2d/Reluhu ÀsB
À
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*28@H bsequential/conv2d_1/Reluh2uZUB
R
ampere_gcgemm_32x32_nt`*@2 8@PH`bsequential/conv2d/Reluhu  ÈA
À
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*28@H bsequential/conv2d_2/Reluh2uZUB
È
void cudnn::winograd_nonfused::winogradForwardOutput9x9_5x5<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)) *¨2$ 8@Hbsequential/conv2d_1/Reluhu ÀsB
¼
þvoid explicit_convolve_sgemm<float, int, 128, 6, 7, 3, 3, 5, 0, false>(int, int, int, float const*, int, float const*, int, float*, kernel_conv_params, unsigned long long, int, unsigned long long, int, float, float, int, bool, float const*, float const*)K2* 2å8ø@øHbsequential/conv2d/Reluhu  HB
W
ampere_gcgemm_64x32_nt~*2 8à@ðHðbsequential/conv2d_5/ReluhuMUB
¾
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*28À@H bsequential/conv2d/Reluh2uZUB
V
ampere_gcgemm_32x32_nt`*@2 8¨@HÀbsequential/conv2d_1/Reluhu  ÈA
V
ampere_sgemm_128x128_nnv*2©8¨@ÐHØbsequential/conv2d/ReluhuMUB
ë
¤void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)(  * 28ð
@H b"sequential/max_pooling2d_2/MaxPoolh2u  ÈB
¸
ùvoid implicit_convolve_sgemm<float, float, 128, 6, 7, 3, 3, 5, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)O2* 28è
@°H¸bsequential/conv2d_5/Reluhu  HB
¸
ùvoid implicit_convolve_sgemm<float, float, 128, 6, 7, 3, 3, 5, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)O2* 2 8È
@ H¨bsequential/conv2d_4/Reluhu  HB
Ü
void fft2d_r2c_32x32<float, false, 0u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*28À
@HHPbsequential/conv2d/ReluhuZUB
V
ampere_gcgemm_32x32_tnd*@2À8 
@Hbsequential/conv2d_1/Reluhu  ÈA

Åvoid tensorflow::functor::RowReduceKernel<cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long>, float*, cub::Sum>(cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long>, float*, int, int, cub::Sum, std::iterator_traits<cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long> >::value_type)*28 
@H bsequential/dense_1/Softmaxh2u  ÈB

¨void tensorflow::functor::SwapDimension1And2InTensor3UsingTiles<unsigned int, 256, 32, 32, false>(unsigned int const*, tensorflow::functor::Dimension<3>, unsigned int*) !*2P8
@H bJsequential/max_pooling2d_2/MaxPool-0-0-TransposeNCHWToNHWC-LayoutOptimizerh2u  ÈB
º
~void cudnn::winograd::generateWinogradTilesKernel<0, float, float>(cudnn::winograd::GenerateWinogradTilesParams<float, float>)(D* 28ø	@H bsequential/conv2d_2/Reluh4uZU·B
º
~void cudnn::winograd::generateWinogradTilesKernel<0, float, float>(cudnn::winograd::GenerateWinogradTilesParams<float, float>)(D* 28è	@H bsequential/conv2d_5/Reluh4uZU·B
º
~void cudnn::winograd::generateWinogradTilesKernel<0, float, float>(cudnn::winograd::GenerateWinogradTilesParams<float, float>)(D* 28è	@H bsequential/conv2d_4/Reluh4uZU·B
¹
ùvoid implicit_convolve_sgemm<float, float, 128, 6, 7, 3, 3, 5, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)O2* 2Ô8è	@ðHøbsequential/conv2d_2/Reluhu  HB
à
£void tensorflow::functor::RowReduceKernel<float const*, float*, cub::Max>(float const*, float*, int, int, cub::Max, std::iterator_traits<float const*>::value_type) *28À	@H bsequential/dense_1/Softmaxh2u  ÈB
º
~void cudnn::winograd::generateWinogradTilesKernel<0, float, float>(cudnn::winograd::GenerateWinogradTilesParams<float, float>)(D* 28À	@H bsequential/conv2d_3/Reluh4uZU·B
È
void cudnn::cnn::im2col4d_kernel<float, long>(cudnn::cnn::im2col4d_params, cudnnConvolutionStruct, cudnnTensorStruct, float const*, float*)#*28¸	@ØHàbsequential/conv2d_3/Reluhu  ÈB
à
void fft2d_r2c_32x32<float, false, 1u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*28¨	@ÐHØbsequential/conv2d_5/ReluhuZUB
Ù
void splitKreduce_kernel<float, float, float, float>(cublasSplitKParams<float>, float const*, float const*, float*, float const*, float const*, float const*) *2(8¨	@H Xbsequential/dense/MatMulh2u  ÈB
×
void Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_max_op<float const, float const, 1>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorCwiseNullaryOp<Eigen::internal::scalar_constant_op<float const>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_max_op<float const, float const, 1>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorCwiseNullaryOp<Eigen::internal::scalar_constant_op<float const>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const> const, Eigen::GpuDevice>, long)*28ø@Hbsequential/dense/Reluh2uZUB
¾
þvoid explicit_convolve_sgemm<float, int, 128, 6, 7, 3, 3, 5, 0, false>(int, int, int, float const*, int, float const*, int, float*, kernel_conv_params, unsigned long long, int, unsigned long long, int, float, float, int, bool, float const*, float const*)K2* 2Ô8è@°H¸bsequential/conv2d_2/Reluhu  HB

Êvoid fft2d_c2r_32x32<float, false, true, 0u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)@ À*2(8Ð@xHbsequential/conv2d_1/ReluhuZUB
½
þvoid explicit_convolve_sgemm<float, int, 128, 6, 7, 3, 3, 5, 0, false>(int, int, int, float const*, int, float const*, int, float*, kernel_conv_params, unsigned long long, int, unsigned long long, int, float, float, int, bool, float const*, float const*)K2* 28È@ H¨bsequential/conv2d_5/Reluhu  HB

Tvoid tensorflow::BiasNHWCKernel<float>(int, float const*, float const*, float*, int)*28¸@Hbsequential/dense/BiasAddh2uZUB

Ùvoid Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<long, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_sum_op<long const, long const>, Eigen::TensorMap<Eigen::Tensor<long, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorMap<Eigen::Tensor<long const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<long, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_sum_op<long const, long const>, Eigen::TensorMap<Eigen::Tensor<long, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorMap<Eigen::Tensor<long const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long)*28°@HbAssignAddVariableOph2uZUB

Tvoid tensorflow::BiasNHWCKernel<float>(int, float const*, float const*, float*, int)*28 @Hbsequential/dense_1/BiasAddh2uZUB
½
þvoid explicit_convolve_sgemm<float, int, 128, 6, 7, 3, 3, 5, 0, false>(int, int, int, float const*, int, float const*, int, float*, kernel_conv_params, unsigned long long, int, unsigned long long, int, float, float, int, bool, float const*, float const*)K2* 2 8 @Hbsequential/conv2d_4/Reluhu  HB
ß
 void internal::region_transform_ABC_val<int, 32, 32, false, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > > >(internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math)0B* 2 B8è@ðHøbsequential/conv2d_1/Reluhu  ÈA
W
ampere_gcgemm_64x32_tn~*2 8à@ðHðbsequential/conv2d_3/ReluhuMUB
Þ
void fft2d_r2c_32x32<float, false, 0u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*2(8 @pHxbsequential/conv2d_1/ReluhuZUB
È
void cudnn::cnn::im2col4d_kernel<float, long>(cudnn::cnn::im2col4d_params, cudnnConvolutionStruct, cudnnTensorStruct, float const*, float*)#*28@ÈHÈbsequential/conv2d_2/Reluhu  ÈB
W
ampere_gcgemm_64x32_nt~*2 8Ø@¨H°bsequential/conv2d_4/ReluhuMUB
W
ampere_gcgemm_64x32_nt~*2 8Ð@¨H¨bsequential/conv2d_3/ReluhuMUB
È
void cudnn::cnn::im2col4d_kernel<float, long>(cudnn::cnn::im2col4d_params, cudnnConvolutionStruct, cudnnTensorStruct, float const*, float*)#*28@Hbsequential/conv2d_4/Reluhu  ÈB
È
void cudnn::cnn::im2col4d_kernel<float, long>(cudnn::cnn::im2col4d_params, cudnnConvolutionStruct, cudnnTensorStruct, float const*, float*)#*28@Hbsequential/conv2d_5/Reluhu  ÈB
W
ampere_sgemm_128x128_nnv*2$8@Hbsequential/conv2d_2/ReluhuMUB
Ç
void cudnn::cnn::im2col4d_kernel<float, long>(cudnn::cnn::im2col4d_params, cudnnConvolutionStruct, cudnnTensorStruct, float const*, float*)#*28@Hbsequential/conv2d/Reluhu  ÈB
W
ampere_sgemm_128x128_nnv*2	$8Ø@èHðbsequential/conv2d_3/ReluhuMUB
s
2cudnn_infer_ampere_scudnn_128x64_relu_medium_nn_v1*2Z8À@ÀHÀbsequential/conv2d_3/ReluhuMUB
à
void fft2d_r2c_32x32<float, false, 0u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*2P8°@¨H°bsequential/conv2d_3/ReluhuZUB
s
4cudnn_infer_ampere_scudnn_128x32_relu_interior_nn_v1**@2
8¨@¨H¨bsequential/conv2d_5/ReluhuMUB
o
1cudnn_infer_ampere_scudnn_128x32_relu_small_nn_v1**@2³8¨@ÐHØbsequential/conv2d/ReluhuMUB
à
void fft2d_r2c_32x32<float, false, 1u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*28@ÀHÀbsequential/conv2d_3/ReluhuZUB
á
void fft2d_r2c_32x32<float, false, 1u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*28ø@¸HÀbsequential/conv2d_3/ReluhuZUB
à
void fft2d_r2c_32x32<float, false, 1u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*28ø@¸HÀbsequential/conv2d_4/ReluhuZUB
Ä
void cudnn::winograd_nonfused::winogradForwardOutput4x4<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)@*2@8è@°H¸bsequential/conv2d_2/ReluhuZUB
Í
void fft2d_c2r_64x64<float, false, true>(float*, float2*, int, int, int, int, int, int, int, int, int, int, float, float, int, float*, float*)@ B*28à@°H°bsequential/conv2d/ReluhuZUB

`void fft2d_r2c_64x64<float, true>(float2*, float const*, int, int, int, int, int, int, int, int)@ B*2 8à@¨H¸bsequential/conv2d_1/ReluhuZUB
Ý
 void internal::region_transform_ABC_val<int, 32, 32, false, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > > >(internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math)0B* 2B8à@°H°bsequential/conv2d/Reluhu  ÈA
Ï
void fft2d_c2r_64x64<float, false, true>(float*, float2*, int, int, int, int, int, int, int, int, int, int, float, float, int, float*, float*)@ B*28Ø@¨H°bsequential/conv2d_1/ReluhuZUB
ß
 void internal::region_transform_ABC_val<int, 32, 32, false, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > > >(internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math)0B* 2B8Ø@¨H°bsequential/conv2d_1/Reluhu  ÈA
ß
 void internal::region_transform_ABC_val<int, 32, 32, false, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > > >(internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math)0B* 2B8Ð@¨H¨bsequential/conv2d_1/Reluhu  ÈA
W
ampere_gcgemm_64x32_tn~*2 8À@H¨bsequential/conv2d_2/ReluhuMUB

`void fft2d_r2c_64x64<float, true>(float2*, float const*, int, int, int, int, int, int, int, int)@ B*2  8¸@H bsequential/conv2d_1/ReluhuZUB

Êvoid fft2d_c2r_32x32<float, false, true, 0u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)@ À*2P8 @Hbsequential/conv2d_2/ReluhuZUB
W
ampere_gcgemm_64x32_nt~*2 8ð@øHøbsequential/conv2d_2/ReluhuMUB

Êvoid fft2d_c2r_32x32<float, false, true, 1u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)= À*2 8è@ðHøbsequential/conv2d_5/ReluhuZUB

Êvoid fft2d_c2r_32x32<float, false, true, 0u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)@ À*2P8à@xHxbsequential/conv2d_3/ReluhuZUB
¿
void cudnn::winograd_nonfused::winogradForwardData4x4<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)@±*2@8È@àHèbsequential/conv2d_3/ReluhuZUB
W
ampere_gcgemm_64x32_tn~*28À@ØHèbsequential/conv2d_5/ReluhuMUB
Â
void cudnn::winograd_nonfused::winogradForwardData9x9_5x5<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)8 ü*¨2$8 @ÈHØbsequential/conv2d/Reluhu ÀsB
Þ
void fft2d_r2c_32x32<float, false, 0u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*2(8@`Hhbsequential/conv2d_2/ReluhuZUB
Ä
void cudnn::winograd_nonfused::winogradForwardOutput4x4<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)@*2@8@ÈHÐbsequential/conv2d_3/ReluhuZUB
à
void fft2d_r2c_32x32<float, false, 1u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*28@ÀHÀbsequential/conv2d_2/ReluhuZUB
á
void fft2d_r2c_32x32<float, false, 1u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*28@ÀHÀbsequential/conv2d_2/ReluhuZUB
T
ampere_gcgemm_32x32_tnd*@2À8ð@¸H¸bsequential/conv2d/Reluhu  ÈA
W
ampere_sgemm_128x128_nnv*2$8à@°H°bsequential/conv2d_4/ReluhuMUB
¿
void cudnn::winograd_nonfused::winogradForwardData4x4<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)@±*2 8Ø@¨H°bsequential/conv2d_2/ReluhuZUB
u
4cudnn_infer_ampere_scudnn_128x64_relu_interior_nn_v1*2j8Ø@ØHØbsequential/conv2d_2/ReluhuMUB

Zvoid fft2d_r2c_16x16<float>(float2*, float const*, int, int, int, int, int, int, int, int)( ÀL*28Ø@¨H°bsequential/conv2d_5/Reluhu  ÈB
î
©sm80_xmma_fprop_implicit_gemm_indexed_wo_smem_tf32f32_tf32f32_f32_nhwckrsc_nhwc_tilesize128x32x64_stage1_warpsize4x1x1_g1_tensor16x8x8_alignc4_execute_kernel_cudnn_infer  *2Z8¸@¸H¸PXbsequential/conv2d_3/Reluhu  ÈA
à
void fft2d_r2c_32x32<float, false, 1u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*2P8@Hbsequential/conv2d_5/ReluhuZUB
¤
åvoid precomputed_convolve_sgemm<float, 1024, 5, 5, 4, 3, 3, 1, false>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, bool, float const*, float const*, int*)@$*2?8@Hbsequential/conv2d_4/ReluhuZUB
à
void fft2d_r2c_32x32<float, false, 1u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*2P8@Hbsequential/conv2d_4/ReluhuZUB

Êvoid fft2d_c2r_32x32<float, false, true, 1u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)= À*2P8à@pHpbsequential/conv2d_4/ReluhuZUB
U
ampere_gcgemm_64x32_tn~*28Ø@hHpbsequential/conv2d_4/ReluhuMUB
U
ampere_sgemm_128x128_nnv*2$8Ø@hHpbsequential/conv2d_5/ReluhuMUB
Ý
void fft2d_r2c_32x32<float, false, 5u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*2@8Ø@hHpbsequential/conv2d_1/ReluhuZUB
í
©sm80_xmma_fprop_implicit_gemm_indexed_wo_smem_tf32f32_tf32f32_f32_nhwckrsc_nhwc_tilesize128x32x16_stage1_warpsize4x1x1_g1_tensor16x8x8_alignc8_execute_kernel_cudnn_inferv  *2j8À@ÀHÀPXbsequential/conv2d_2/ReluhuMUB

Zvoid fft2d_r2c_16x16<float>(float2*, float const*, int, int, int, int, int, int, int, int)( ÀL*2@8À@`H`bsequential/conv2d_4/Reluhu  ÈB
î
©sm80_xmma_fprop_implicit_gemm_indexed_wo_smem_tf32f32_tf32f32_f32_nhwckrsc_nhwc_tilesize128x32x64_stage1_warpsize4x1x1_g1_tensor16x8x8_alignc8_execute_kernel_cudnn_infer  *2
8@HPXbsequential/conv2d_5/Reluhu  ÈA
î
©sm80_xmma_fprop_implicit_gemm_indexed_wo_smem_tf32f32_tf32f32_f32_nhwckrsc_nhwc_tilesize128x32x64_stage1_warpsize4x1x1_g1_tensor16x8x8_alignc8_execute_kernel_cudnn_infer  *28@HPXbsequential/conv2d_4/Reluhu  ÈA
½
void cudnn::winograd_nonfused::winogradForwardData4x4<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)@±*2@8@@HHbsequential/conv2d_4/ReluhuZUB
Â
void cudnn::winograd_nonfused::winogradForwardOutput4x4<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)@*2@8@@HHbsequential/conv2d_4/ReluhuZUB
Ã
void cudnn::winograd_nonfused::winogradForwardOutput4x4<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)@*28@@H@bsequential/conv2d_5/ReluhuZUB
Û
void fft2d_r2c_32x32<float, false, 5u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ À*28@@H@bsequential/conv2d/ReluhuZUB

`void fft2d_r2c_64x64<float, true>(float2*, float const*, int, int, int, int, int, int, int, int)@ B*28@@H@bsequential/conv2d/ReluhuZUB

Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2@8@@H@bsequential/conv2d_5/Reluhu  A
Å
void fft2d_c2r_16x16<float, false>(float*, float2*, int, int, int, int, int, int, int, int, int, int, float, float, int, float*, float*)( D*2P8x@8H@bsequential/conv2d_4/Reluhu  ÈB
Æ
void fft2d_c2r_16x16<float, false>(float*, float2*, int, int, int, int, int, int, int, int, int, int, float, float, int, float*, float*)( D*2 8x@8H@bsequential/conv2d_5/Reluhu  ÈB

`void fft2d_r2c_64x64<float, true>(float2*, float const*, int, int, int, int, int, int, int, int)@ B*2 8p@8H8bsequential/conv2d/ReluhuZUB
×
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)0>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)"!*28p@pHpbsequential/conv2d_2/Reluhu  ÈB
×
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*28p@pHpbsequential/conv2d_3/Reluhu  ÈB

Zvoid fft2d_r2c_16x16<float>(float2*, float const*, int, int, int, int, int, int, int, int)( ÀL*28p@8H8bsequential/conv2d_4/Reluhu  ÈB

Zvoid fft2d_r2c_16x16<float>(float2*, float const*, int, int, int, int, int, int, int, int)( ÀL*28h@0H8bsequential/conv2d_5/Reluhu  ÈB
×
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)0>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)"!*28X@XHXbsequential/conv2d_3/Reluhu  ÈB
¼
void cudnn::winograd_nonfused::winogradForwardData4x4<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)@±*2@8X@(H0bsequential/conv2d_5/ReluhuZUB

Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2@@8X@(H0bsequential/conv2d_3/Reluhu  A

Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2@@8X@(H0bsequential/conv2d_4/Reluhu  A
×
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*28P@PHPbsequential/conv2d_2/Reluhu  ÈB
Ú
 void internal::region_transform_ABC_val<int, 32, 32, false, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > > >(internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math)0B* 2B8P@(H(bsequential/conv2d/Reluhu  ÈA
Ú
 void internal::region_transform_ABC_val<int, 32, 32, false, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > > >(internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math)0B* 2B8P@(H(bsequential/conv2d/Reluhu  ÈA
¿
void cudnn::winograd_nonfused::winogradForwardFilter4x4<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(H* 28H@ H(bsequential/conv2d_5/Reluhu  ÈB

Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2@ 8H@ H(bsequential/conv2d_2/Reluhu  A
¿
void cudnn::winograd_nonfused::winogradForwardFilter4x4<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(H* 28@@ H bsequential/conv2d_2/Reluhu  ÈB
¿
void cudnn::winograd_nonfused::winogradForwardFilter4x4<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(H* 28@@ H bsequential/conv2d_3/Reluhu  ÈB
¿
void cudnn::winograd_nonfused::winogradForwardFilter4x4<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(H* 28@@ H bsequential/conv2d_4/Reluhu  ÈB

Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2  8@@ H bsequential/conv2d_1/ReluhugUÐA
×
void cudnn::ops::nhwcToNchwKernel<float, float, float, true, false, (cudnnKernelDataType_t)0>(cudnn::ops::nhwc2nchw_params_t<float>, float const*, float*)(!*288@8H8bsequential/conv2d_2/Reluhu  ÈB
Â
void cudnn::winograd_nonfused::winogradForwardFilter9x9_5x5<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(*@2 88@H bsequential/conv2d/Reluhu³ªXB
Ä
void cudnn::winograd_nonfused::winogradForwardFilter9x9_5x5<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(*@2 88@H bsequential/conv2d_1/Reluhu³ªXB

avoid cask_cudnn_infer::computeOffsetsKernel<false, false>(cask_cudnn_infer::ComputeOffsetsParams)*280@H bsequential/conv2d/Reluhu  ÈB
×
void cudnn::ops::nhwcToNchwKernel<float, float, float, true, false, (cudnnKernelDataType_t)0>(cudnn::ops::nhwc2nchw_params_t<float>, float const*, float*)(!*280@0H0bsequential/conv2d_3/Reluhu  ÈB
~
Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2 80@Hbsequential/conv2d/ReluhugUÐA
×
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)0>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)"!*28(@(H(bsequential/conv2d_5/Reluhu  ÈB
×
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)0>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)"!*28(@(H(bsequential/conv2d_4/Reluhu  ÈB
×
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*28(@(H(bsequential/conv2d_5/Reluhu  ÈB
×
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*28(@(H(bsequential/conv2d_4/Reluhu  ÈB
×
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*2@8 @ H bsequential/conv2d_2/Reluhu  ÈB
×
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*2@8 @ H bsequential/conv2d_3/Reluhu  ÈB
×
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*2@8 @ H bsequential/conv2d_4/Reluhu  ÈB
Ø
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*28 @ H bsequential/conv2d_5/Reluhu  ÈB
×
void cudnn::ops::nhwcToNchwKernel<float, float, float, true, false, (cudnnKernelDataType_t)0>(cudnn::ops::nhwc2nchw_params_t<float>, float const*, float*)(!*28 @ H bsequential/conv2d_4/Reluhu  ÈB

avoid cask_cudnn_infer::computeOffsetsKernel<false, false>(cask_cudnn_infer::ComputeOffsetsParams)*28@Hbsequential/conv2d_5/Reluhu  ÈB

avoid cask_cudnn_infer::computeOffsetsKernel<false, false>(cask_cudnn_infer::ComputeOffsetsParams)*28@Hbsequential/conv2d_2/Reluhu  ÈB

avoid cask_cudnn_infer::computeOffsetsKernel<false, false>(cask_cudnn_infer::ComputeOffsetsParams)*28@Hbsequential/conv2d_3/Reluhu  ÈB
×
void cudnn::ops::nhwcToNchwKernel<float, float, float, true, false, (cudnnKernelDataType_t)0>(cudnn::ops::nhwc2nchw_params_t<float>, float const*, float*)(!*28@Hbsequential/conv2d_5/Reluhu  ÈB

Nvoid cudnn::cnn::kern_precompute_indices<false>(int*, int, int, int, int, int)*	2@8@Hbsequential/conv2d_4/Reluhu  A
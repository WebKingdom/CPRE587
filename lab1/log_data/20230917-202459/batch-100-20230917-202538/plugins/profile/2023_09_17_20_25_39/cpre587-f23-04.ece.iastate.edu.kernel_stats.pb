
W
ampere_gcgemm_32x32_nt`*@2 8Θ@pHπbsequential/conv2d_1/Reluhu  ΘA
M
redzone_checker*2@8»@ΈHΰbsequential/conv2d_2/Reluh4uZUB
M
redzone_checker*2@8ψΊ@ΈHθbsequential/conv2d_4/Reluh4uZUB
M
redzone_checker*2@8θΊ@ΈHθbsequential/conv2d_3/Reluh4uZUB
M
redzone_checker*2@8θΊ@ΐHΰbsequential/conv2d_5/Reluh4uZUB

Κvoid fft2d_c2r_32x32<float, false, true, 0u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)@ ΐ*2@8 °Ή@¨Hθbsequential/conv2d_1/ReluhxuZUB
K
redzone_checker*2@8ψ@ΐHθbsequential/conv2d/Reluh,uZUB
M
redzone_checker*2@8Έ@ΐHΰbsequential/conv2d_1/Reluh,uZUB
α
void fft2d_r2c_32x32<float, false, 0u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*2@8ΰ@ H°bsequential/conv2d_1/ReluhxuZUB

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148t_nt_v1~*2@8~@H bsequential/conv2d_3/ReluhuMUB

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148t_nt_v1~*2@8u@ΰHbsequential/conv2d_2/ReluhuMUB
o
1cudnn_infer_ampere_scudnn_128x32_relu_small_nn_v1**@28ΐe@¨HΈbsequential/conv2d/ReluhuMUB
μ
€void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)( *ΰ2 8ΐ;@ψHb sequential/max_pooling2d/MaxPoolhu  ―B
₯
εvoid precomputed_convolve_sgemm<float, 1024, 5, 5, 4, 3, 3, 1, false>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, bool, float const*, float const*, int*)@$*28Έ+@πHbsequential/conv2d_1/ReluhuZUB
U
ampere_sgemm_128x128_nnv*2$8ΰ#@hHpbsequential/conv2d_5/Reluh*uMUB
V
ampere_gcgemm_64x32_tn~*28Π@XHbsequential/conv2d_4/Reluh uMUB
έ
void fft2d_r2c_32x32<float, false, 5u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*2@8°@hHpbsequential/conv2d_1/Reluh uZUB

Zvoid fft2d_r2c_16x16<float>(float2*, float const*, int, int, int, int, int, int, int, int)( ΐL*2@8ΐ@PHhbsequential/conv2d_4/Reluh u  ΘB
Δ
void cutlass::Kernel<cutlass_80_tensorop_s1688gemm_64x64_16x6_nn_align4>(cutlass_80_tensorop_s1688gemm_64x64_16x6_nn_align4::Params)^ *28π@@HHXbsequential/dense/MatMulh(ugUA
Ύ
ώvoid explicit_convolve_sgemm<float, int, 128, 6, 7, 3, 3, 5, 0, false>(int, int, int, float const*, int, float const*, int, float*, kernel_conv_params, unsigned long long, int, unsigned long long, int, float, float, int, bool, float const*, float const*)K2* 2Δ8Π@θ
Hθ
bsequential/conv2d_1/Reluhu  HB
μ
€void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)( *2 8π@XH`b"sequential/max_pooling2d_1/MaxPoolhu ΐ¨B
Α
void cutlass::Kernel<cutlass_80_tensorop_s1688gemm_64x64_32x6_nn_align4>(cutlass_80_tensorop_s1688gemm_64x64_32x6_nn_align4::Params)d *28@8HHXbsequential/dense_1/MatMulh(
Ξ
­void tensorflow::functor::SwapDimension1And2InTensor3UsingTiles<unsigned char, 1024, 1024, 2, false>(unsigned char const*, tensorflow::functor::Dimension<3>, unsigned char*) *28¨@@HHbzsequential/conv2d/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_uint8_Conv2D-0-TransposeNHWCToNCHW-LayoutOptimizerhuZUB
Γ
void cudnn::winograd_nonfused::winogradForwardOutput4x4<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)@*28ΰ@@HHbsequential/conv2d_5/ReluhuZUB
Η
void fft2d_c2r_16x16<float, false>(float*, float2*, int, int, int, int, int, int, int, int, int, int, float, float, int, float*, float*)( D*28Έ@@HHbsequential/conv2d_4/Reluhu  ΘB

Zvoid fft2d_r2c_16x16<float>(float2*, float const*, int, int, int, int, int, int, int, int)( ΐL*2 8ΰ@8HHbsequential/conv2d_4/Reluhu  ΘB
€
εvoid precomputed_convolve_sgemm<float, 1024, 5, 5, 4, 3, 3, 1, false>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, bool, float const*, float const*, int*)@$*2U8Έ@H°bsequential/conv2d_2/ReluhuZUB

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile244t_nt_v1*28Ψ@Hbsequential/conv2d_3/ReluhugUA
X
ampere_sgemm_128x128_nnv*2©8Θ@ΰHθbsequential/conv2d_1/ReluhuMUB

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148n_nt_v1*28Έ@xHbsequential/conv2d_4/ReluhugUA
Έ
ωvoid implicit_convolve_sgemm<float, float, 128, 6, 7, 3, 3, 5, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)O2* 28@ΘHΠbsequential/conv2d_5/Reluhu  HB
Θ
void cudnn::cnn::im2col4d_kernel<float, long>(cudnn::cnn::im2col4d_params, cudnnConvolutionStruct, cudnnTensorStruct, float const*, float*)#*28@ΈHΘbsequential/conv2d_1/Reluhu  ΘB

Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2@@8π
@(H0bsequential/conv2d_4/Reluh u  A
ΐ
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*2H8ΰ
@ H(bsequential/conv2d_5/Reluh(uZUB
Ά
ϊvoid implicit_convolve_sgemm<float, float, 1024, 5, 5, 3, 3, 3, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)?*2Β8Θ
@pHxbsequential/conv2d/ReluhuZUB
Έ
ωvoid implicit_convolve_sgemm<float, float, 128, 6, 7, 3, 3, 5, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)O2* 28Θ
@ H¨bsequential/conv2d_4/Reluhu  HB
Έ
ωvoid implicit_convolve_sgemm<float, float, 128, 6, 7, 3, 3, 5, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)O2* 2$8°
@Hbsequential/conv2d_3/Reluhu  HB
ΐ
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*2$8¨
@H(bsequential/conv2d_3/Reluh(uZUB
Δ
void cudnn::winograd_nonfused::winogradForwardData9x9_5x5<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)8 ό*¨2 8
@ψHbsequential/conv2d_1/Reluhu ΐsB
ΐ
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*28
@H(bsequential/conv2d_1/Reluh(uZUB
W
ampere_gcgemm_64x32_nt~*2 8ψ	@πHbsequential/conv2d_5/ReluhuMUB
ΐ
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*2$8π	@H(bsequential/conv2d_4/Reluh(uZUB
ΐ
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*28Π	@H bsequential/conv2d_2/Reluh(uZUB
ΐ
void cudnn::winograd_nonfused::winogradForwardFilter4x4<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(H* 28Θ	@H(bsequential/conv2d_5/Reluh*u  ΘB

Κvoid fft2d_c2r_32x32<float, false, true, 0u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)@ ΐ*28Έ	@@HHbsequential/conv2d/ReluhuZUB
R
ampere_gcgemm_32x32_nt`*@2 8Έ	@@HHbsequential/conv2d/Reluhu  ΘA
Ί
ϊvoid implicit_convolve_sgemm<float, float, 1024, 5, 5, 3, 3, 3, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)?*28°	@ΨHΨbsequential/conv2d_1/ReluhuZUB
ΰ
void fft2d_r2c_32x32<float, false, 1u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28°	@ΨHΨbsequential/conv2d_5/ReluhuZUB
Ύ
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*28	@H bsequential/conv2d/Reluh(uZUB
½
ώvoid explicit_convolve_sgemm<float, int, 128, 6, 7, 3, 3, 5, 0, false>(int, int, int, float const*, int, float const*, int, float*, kernel_conv_params, unsigned long long, int, unsigned long long, int, float, float, int, bool, float const*, float const*)K2* 28ΰ@°H°bsequential/conv2d_5/Reluhu  HB
½
ώvoid explicit_convolve_sgemm<float, int, 128, 6, 7, 3, 3, 5, 0, false>(int, int, int, float const*, int, float const*, int, float*, kernel_conv_params, unsigned long long, int, unsigned long long, int, float, float, int, bool, float const*, float const*)K2* 28°@Hbsequential/conv2d_4/Reluhu  HB
Υ
ηvoid Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorConversionOp<float, Eigen::TensorMap<Eigen::Tensor<unsigned char const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorConversionOp<float, Eigen::TensorMap<Eigen::Tensor<unsigned char const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long)*2~8¨@ H(bKsequential/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_float_CasthuZUB
½
ώvoid explicit_convolve_sgemm<float, int, 128, 6, 7, 3, 3, 5, 0, false>(int, int, int, float const*, int, float const*, int, float*, kernel_conv_params, unsigned long long, int, unsigned long long, int, float, float, int, bool, float const*, float const*)K2* 2$8 @Hbsequential/conv2d_3/Reluhu  HB
Ξ
void tensorflow::(anonymous namespace)::GenerateNormalizedProb<float, float, 4>(float const*, float const*, float const*, float*, int, int, bool) *28@ H(bsequential/dense_1/Softmaxhu  ΘB
Ί
~void cudnn::winograd::generateWinogradTilesKernel<0, float, float>(cudnn::winograd::GenerateWinogradTilesParams<float, float>)(D* 28ψ@H bsequential/conv2d_3/Reluh*uZU·B
½
void cudnn::winograd_nonfused::winogradForwardData4x4<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)@±*2@8ψ@ H(bsequential/conv2d_5/ReluhuZUB
ά
void fft2d_r2c_32x32<float, false, 0u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28π@0H@bsequential/conv2d/ReluhuZUB
ί
 void internal::region_transform_ABC_val<int, 32, 32, false, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > > >(internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math)0B* 2 B8π@ψHψbsequential/conv2d_1/Reluhu  ΘA
λ
€void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)(  * 2 8ψ@H b"sequential/max_pooling2d_2/MaxPoolhu  ΘB

Ωvoid Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<long, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_sum_op<long const, long const>, Eigen::TensorMap<Eigen::Tensor<long, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorMap<Eigen::Tensor<long const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<long, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_sum_op<long const, long const>, Eigen::TensorMap<Eigen::Tensor<long, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorMap<Eigen::Tensor<long const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long)*28θ@HbAssignAddVariableOph(uZUB
Θ
void cudnn::cnn::im2col4d_kernel<float, long>(cudnn::cnn::im2col4d_params, cudnnConvolutionStruct, cudnnTensorStruct, float const*, float*)#*28ΐ@ H bsequential/conv2d_3/Reluhu  ΘB
V
ampere_sgemm_128x128_nnv*2©8Έ@H bsequential/conv2d/ReluhuMUB

Εvoid tensorflow::functor::RowReduceKernel<cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long>, float*, cub::Sum>(cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long>, float*, int, int, cub::Sum, std::iterator_traits<cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long> >::value_type)*28Έ@H bsequential/dense_1/Softmaxhu  ΘB
Ζ
void cudnn::winograd_nonfused::winogradForwardOutput9x9_5x5<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)) *¨2 8°@Hbsequential/conv2d/Reluhu ΐsB
Ί
~void cudnn::winograd::generateWinogradTilesKernel<0, float, float>(cudnn::winograd::GenerateWinogradTilesParams<float, float>)(D* 28 @H bsequential/conv2d_2/Reluh uZU·B
Θ
void cudnn::winograd_nonfused::winogradForwardOutput9x9_5x5<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)) *¨2 8@Hbsequential/conv2d_1/Reluhu ΐsB
V
ampere_gcgemm_32x32_tnd*@2ΐ8@Hbsequential/conv2d_1/Reluhu  ΘA
W
ampere_gcgemm_64x32_tn~*2 8@Hbsequential/conv2d_3/ReluhuMUB

¨void tensorflow::functor::SwapDimension1And2InTensor3UsingTiles<unsigned int, 256, 32, 32, false>(unsigned int const*, tensorflow::functor::Dimension<3>, unsigned int*) !*28@H bJsequential/max_pooling2d_2/MaxPool-0-0-TransposeNCHWToNHWC-LayoutOptimizerhu  ΘB
Θ
void cudnn::cnn::im2col4d_kernel<float, long>(cudnn::cnn::im2col4d_params, cudnnConvolutionStruct, cudnnTensorStruct, float const*, float*)#*28ψ@ψHbsequential/conv2d_2/Reluhu  ΘB
Θ
void cudnn::cnn::im2col4d_kernel<float, long>(cudnn::cnn::im2col4d_params, cudnnConvolutionStruct, cudnnTensorStruct, float const*, float*)#*28π@ψHψbsequential/conv2d_4/Reluhu  ΘB
Θ
void cudnn::cnn::im2col4d_kernel<float, long>(cudnn::cnn::im2col4d_params, cudnnConvolutionStruct, cudnnTensorStruct, float const*, float*)#*28θ@πHψbsequential/conv2d_5/Reluhu  ΘB
Ω
void splitKreduce_kernel<float, float, float, float>(cublasSplitKParams<float>, float const*, float const*, float*, float const*, float const*, float const*) *2@8θ@H Xbsequential/dense/MatMulhu  ΘB
Έ
ωvoid implicit_convolve_sgemm<float, float, 128, 6, 7, 3, 3, 5, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)O2* 2+8ΰ@πHπbsequential/conv2d_2/Reluhu  HB

avoid cask_cudnn_infer::computeOffsetsKernel<false, false>(cask_cudnn_infer::ComputeOffsetsParams)*28Ψ@H bsequential/conv2d/Reluh u  ΘB
ΰ
£void tensorflow::functor::RowReduceKernel<float const*, float*, cub::Max>(float const*, float*, int, int, cub::Max, std::iterator_traits<float const*>::value_type) *28Π@Hbsequential/dense_1/Softmaxhu  ΘB
W
ampere_gcgemm_64x32_nt~*2 8ΐ@ΰHΰbsequential/conv2d_3/ReluhuMUB
W
ampere_gcgemm_64x32_nt~*2 8ΐ@ΰHΰbsequential/conv2d_4/ReluhuMUB
s
4cudnn_infer_ampere_scudnn_128x32_relu_interior_nn_v1**@28ΐ@ΐHΐbsequential/conv2d_5/ReluhuMUB
Χ
void Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_max_op<float const, float const, 1>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorCwiseNullaryOp<Eigen::internal::scalar_constant_op<float const>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_max_op<float const, float const, 1>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorCwiseNullaryOp<Eigen::internal::scalar_constant_op<float const>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const> const, Eigen::GpuDevice>, long)*28Έ@H bsequential/dense/ReluhuZUB
s
4cudnn_infer_ampere_scudnn_128x32_relu_interior_nn_v1**@28@Hbsequential/conv2d_4/ReluhuMUB

Tvoid tensorflow::BiasNHWCKernel<float>(int, float const*, float const*, float*, int)*28@Hbsequential/dense_1/BiasAddhuZUB

Tvoid tensorflow::BiasNHWCKernel<float>(int, float const*, float const*, float*, int)*28@Hbsequential/dense/BiasAddhuZUB
½
ώvoid explicit_convolve_sgemm<float, int, 128, 6, 7, 3, 3, 5, 0, false>(int, int, int, float const*, int, float const*, int, float*, kernel_conv_params, unsigned long long, int, unsigned long long, int, float, float, int, bool, float const*, float const*)K2* 2+8@ΐHΐbsequential/conv2d_2/Reluhu  HB
ΰ
void fft2d_r2c_32x32<float, false, 1u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28@ΐHΐbsequential/conv2d_3/ReluhuZUB
ΰ
void fft2d_r2c_32x32<float, false, 1u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28ψ@ΈHΐbsequential/conv2d_4/ReluhuZUB
ή
void fft2d_r2c_32x32<float, false, 0u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28π@HHPbsequential/conv2d_1/ReluhuZUB
α
void fft2d_r2c_32x32<float, false, 1u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28π@ΈHΈbsequential/conv2d_3/ReluhuZUB

`void fft2d_r2c_64x64<float, true>(float2*, float const*, int, int, int, int, int, int, int, int)@ B*2  8ΐ@ H bsequential/conv2d_1/ReluhuZUB

Κvoid fft2d_c2r_32x32<float, false, true, 0u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)@ ΐ*28Έ@@HHbsequential/conv2d_1/ReluhuZUB
W
ampere_sgemm_128x128_nnv*2$8@Hbsequential/conv2d_3/ReluhuMUB
Γ
void cudnn::winograd_nonfused::winogradForwardOutput4x4<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)@*28θ@ H0bsequential/conv2d_5/ReluhuZUB
W
ampere_gcgemm_64x32_nt~*2 8@ΘHΠbsequential/conv2d_2/ReluhuMUB
W
ampere_gcgemm_64x32_tn~*2 8@ΘHΘbsequential/conv2d_2/ReluhuMUB
W
ampere_sgemm_128x128_nnv*2$8@ΘHΘbsequential/conv2d_2/ReluhuMUB
Ό
ώvoid explicit_convolve_sgemm<float, int, 128, 6, 7, 3, 3, 5, 0, false>(int, int, int, float const*, int, float const*, int, float*, kernel_conv_params, unsigned long long, int, unsigned long long, int, float, float, int, bool, float const*, float const*)K2* 2α8@ΐHΘbsequential/conv2d/Reluhu  HB
α
void fft2d_r2c_32x32<float, false, 1u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28@ΐHΐbsequential/conv2d_2/ReluhuZUB
W
ampere_gcgemm_64x32_tn~*28ψ@ΈHΐbsequential/conv2d_5/ReluhuMUB
ΰ
void fft2d_r2c_32x32<float, false, 1u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28ψ@ΈHΐbsequential/conv2d_2/ReluhuZUB
½
void cudnn::winograd_nonfused::winogradForwardData4x4<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)@±*2@8ΰ@H bsequential/conv2d_5/ReluhuZUB

Zvoid fft2d_r2c_16x16<float>(float2*, float const*, int, int, int, int, int, int, int, int)( ΐL*28ΰ@°H°bsequential/conv2d_5/Reluhu  ΘB
κ
€void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)( *ΰ28Θ@ H(b sequential/max_pooling2d/MaxPoolh
u  ―B
Ν
­void tensorflow::functor::SwapDimension1And2InTensor3UsingTiles<unsigned char, 1024, 1024, 2, false>(unsigned char const*, tensorflow::functor::Dimension<3>, unsigned char*) *2 8ΐ@ H bzsequential/conv2d/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_uint8_Conv2D-0-TransposeNHWCToNCHW-LayoutOptimizerh
uZUB
Ξ
void tensorflow::(anonymous namespace)::GenerateNormalizedProb<float, float, 4>(float const*, float const*, float const*, float*, int, int, bool) *28ΐ@ H bsequential/dense_1/Softmaxh
u  ΘB
T
ampere_gcgemm_32x32_tnd*@2ΐ8ΐ@ H bsequential/conv2d/Reluhu  ΘA
ή
void fft2d_r2c_32x32<float, false, 0u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28ΐ@HHXbsequential/conv2d_3/ReluhuZUB
Δ
void cudnn::winograd_nonfused::winogradForwardOutput4x4<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)@*2@8°@Hbsequential/conv2d_2/ReluhuZUB
n
1cudnn_infer_ampere_scudnn_128x32_relu_small_nn_v1**@2q8°@Hbsequential/conv2d/ReluhuMUB
μ
€void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)( *28°@H b"sequential/max_pooling2d_1/MaxPoolh
u ΐ¨B

Κvoid fft2d_c2r_32x32<float, false, true, 0u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)@ ΐ*28¨@HHPbsequential/conv2d_3/ReluhuZUB
ή
void fft2d_r2c_32x32<float, false, 0u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28¨@HHPbsequential/conv2d_2/ReluhuZUB
€
εvoid precomputed_convolve_sgemm<float, 1024, 5, 5, 4, 3, 3, 1, false>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, bool, float const*, float const*, int*)@$*2H8 @ H bsequential/conv2d_3/ReluhuZUB

Κvoid fft2d_c2r_32x32<float, false, true, 0u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)@ ΐ*28 @HHHbsequential/conv2d_2/ReluhuZUB
Ί
~void cudnn::winograd::generateWinogradTilesKernel<0, float, float>(cudnn::winograd::GenerateWinogradTilesParams<float, float>)(D* 28@H bsequential/conv2d_4/ReluhuZU·B

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148t_nt_v1~*28@Hbsequential/conv2d_5/ReluhuMUB
ξ
©sm80_xmma_fprop_implicit_gemm_indexed_wo_smem_tf32f32_tf32f32_f32_nhwckrsc_nhwc_tilesize128x32x64_stage1_warpsize4x1x1_g1_tensor16x8x8_alignc8_execute_kernel_cudnn_infer  *2b8@HPXbsequential/conv2d_1/Reluhu  ΘA
λ
€void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)(  * 28@H b"sequential/max_pooling2d_2/MaxPoolh
u  ΘB

Εvoid tensorflow::functor::RowReduceKernel<cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long>, float*, cub::Sum>(cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long>, float*, int, int, cub::Sum, std::iterator_traits<cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long> >::value_type)*28@H bsequential/dense_1/Softmaxh
u  ΘB

¨void tensorflow::functor::SwapDimension1And2InTensor3UsingTiles<unsigned int, 256, 32, 32, false>(unsigned int const*, tensorflow::functor::Dimension<3>, unsigned int*) !*28@H bJsequential/max_pooling2d_2/MaxPool-0-0-TransposeNCHWToNHWC-LayoutOptimizerh
u  ΘB
Δ
void cudnn::cnn::im2col4d_kernel<float, long>(cudnn::cnn::im2col4d_params, cudnnConvolutionStruct, cudnnTensorStruct, float const*, float*)#*28π@xHxbsequential/conv2d/Reluhu  ΘB
Ω
void splitKreduce_kernel<float, float, float, float>(cublasSplitKParams<float>, float const*, float const*, float*, float const*, float const*, float const*) *28π@HXbsequential/dense/MatMulh
u  ΘB
ΰ
£void tensorflow::functor::RowReduceKernel<float const*, float*, cub::Max>(float const*, float*, int, int, cub::Max, std::iterator_traits<float const*>::value_type) *28π@Hbsequential/dense_1/Softmaxh
u  ΘB
Υ
ηvoid Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorConversionOp<float, Eigen::TensorMap<Eigen::Tensor<unsigned char const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorConversionOp<float, Eigen::TensorMap<Eigen::Tensor<unsigned char const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long)*208θ@HbKsequential/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_float_Casth
uZUB
ΐ
void cudnn::winograd_nonfused::winogradForwardData9x9_5x5<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)8 ό*¨28ΰ@pHpbsequential/conv2d/Reluhu ΐsB

Tvoid tensorflow::BiasNHWCKernel<float>(int, float const*, float const*, float*, int)*28ΰ@Hbsequential/dense_1/BiasAddh
uZUB
½
void cudnn::winograd_nonfused::winogradForwardData4x4<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)@±*2@8ΰ@pHpbsequential/conv2d_3/ReluhuZUB

Tvoid tensorflow::BiasNHWCKernel<float>(int, float const*, float const*, float*, int)*28ΰ@Hbsequential/dense/BiasAddh
uZUB
U
ampere_sgemm_128x128_nnv*2$8Ψ@hHpbsequential/conv2d_4/ReluhuMUB
Χ
void Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_max_op<float const, float const, 1>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorCwiseNullaryOp<Eigen::internal::scalar_constant_op<float const>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_max_op<float const, float const, 1>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorCwiseNullaryOp<Eigen::internal::scalar_constant_op<float const>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const> const, Eigen::GpuDevice>, long)*28Ψ@Hbsequential/dense/Reluh
uZUB
Β
void cudnn::winograd_nonfused::winogradForwardOutput4x4<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)@*2@8Ψ@hHpbsequential/conv2d_3/ReluhuZUB

Nvoid cudnn::cnn::kern_precompute_indices<false>(int*, int, int, int, int, int)*	2 8Π@Hbsequential/conv2d_2/Reluhu  A

Nvoid cudnn::cnn::kern_precompute_indices<false>(int*, int, int, int, int, int)*2 8Π@Hbsequential/conv2d_1/ReluhugUΠA

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile244t_nt_v1*28Π@hHhbsequential/conv2d_2/ReluhugUA

`void fft2d_r2c_64x64<float, true>(float2*, float const*, int, int, int, int, int, int, int, int)@ B*2 8Έ@XH`bsequential/conv2d_1/ReluhuZUB
ή
void fft2d_r2c_32x32<float, false, 1u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28 @PHPbsequential/conv2d_5/ReluhuZUB

Κvoid fft2d_c2r_32x32<float, false, true, 1u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)= ΐ*2 8 @PHPbsequential/conv2d_5/ReluhuZUB
Λ
void fft2d_c2r_64x64<float, false, true>(float*, float2*, int, int, int, int, int, int, int, int, int, int, float, float, int, float*, float*)@ B*28 @PHPbsequential/conv2d/ReluhuZUB
Ν
void fft2d_c2r_64x64<float, false, true>(float*, float2*, int, int, int, int, int, int, int, int, int, int, float, float, int, float*, float*)@ B*28 @PHPbsequential/conv2d_1/ReluhuZUB
ξ
©sm80_xmma_fprop_implicit_gemm_indexed_wo_smem_tf32f32_tf32f32_f32_nhwckrsc_nhwc_tilesize128x32x64_stage1_warpsize4x1x1_g1_tensor16x8x8_alignc4_execute_kernel_cudnn_infer  *28@HPXbsequential/conv2d_3/Reluhu  ΘA
½
void cudnn::winograd_nonfused::winogradForwardData4x4<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)@±*2 8@HHPbsequential/conv2d_2/ReluhuZUB
ή
void fft2d_r2c_32x32<float, false, 1u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28@HHPbsequential/conv2d_4/ReluhuZUB
ν
©sm80_xmma_fprop_implicit_gemm_indexed_wo_smem_tf32f32_tf32f32_f32_nhwckrsc_nhwc_tilesize128x16x32_stage1_warpsize4x1x1_g1_tensor16x8x8_alignc4_execute_kernel_cudnn_infer^  *28@HPXbsequential/conv2d_4/Reluhu³ͺ&B

Κvoid fft2d_c2r_32x32<float, false, true, 1u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)= ΐ*28@HHHbsequential/conv2d_4/ReluhuZUB

Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2@8@@HHbsequential/conv2d_5/Reluhu  A
ν
©sm80_xmma_fprop_implicit_gemm_indexed_wo_smem_tf32f32_tf32f32_f32_nhwckrsc_nhwc_tilesize128x16x64_stage1_warpsize4x1x1_g1_tensor16x8x8_alignc4_execute_kernel_cudnn_infer\  *28@HPXbsequential/conv2d_5/Reluhu³ͺ&B
Ϋ
void fft2d_r2c_32x32<float, false, 5u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*28@@H@bsequential/conv2d/ReluhuZUB

`void fft2d_r2c_64x64<float, true>(float2*, float const*, int, int, int, int, int, int, int, int)@ B*2 8x@8H@bsequential/conv2d/ReluhuZUB
ά
 void internal::region_transform_ABC_val<int, 32, 32, false, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > > >(internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math)0B* 2B8x@8H@bsequential/conv2d_1/Reluhu  ΘA
Ϊ
 void internal::region_transform_ABC_val<int, 32, 32, false, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > > >(internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math)0B* 2B8p@8H8bsequential/conv2d/Reluhu  ΘA
ά
 void internal::region_transform_ABC_val<int, 32, 32, false, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > > >(internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math)0B* 2B8h@0H8bsequential/conv2d_1/Reluhu  ΘA
λ
©sm80_xmma_fprop_implicit_gemm_indexed_wo_smem_tf32f32_tf32f32_f32_nhwckrsc_nhwc_tilesize128x32x64_stage1_warpsize4x1x1_g1_tensor16x8x8_alignc4_execute_kernel_cudnn_infer  *28`@`H`PXbsequential/conv2d_2/Reluhu  ΘA
Ε
void fft2d_c2r_16x16<float, false>(float*, float2*, int, int, int, int, int, int, int, int, int, int, float, float, int, float*, float*)( D*28`@0H0bsequential/conv2d_4/Reluhu  ΘB

`void fft2d_r2c_64x64<float, true>(float2*, float const*, int, int, int, int, int, int, int, int)@ B*28`@0H0bsequential/conv2d/ReluhuZUB

Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2@@8X@(H0bsequential/conv2d_3/Reluhu  A

Zvoid fft2d_r2c_16x16<float>(float2*, float const*, int, int, int, int, int, int, int, int)( ΐL*28P@(H(bsequential/conv2d_5/Reluhu  ΘB
Ό
void cudnn::winograd_nonfused::winogradForwardData4x4<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)@±*2@8P@(H(bsequential/conv2d_4/ReluhuZUB
Α
void cudnn::winograd_nonfused::winogradForwardOutput4x4<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)@*2@8P@(H(bsequential/conv2d_4/ReluhuZUB
Ε
void fft2d_c2r_16x16<float, false>(float*, float2*, int, int, int, int, int, int, int, int, int, int, float, float, int, float*, float*)( D*2 8P@(H(bsequential/conv2d_5/Reluhu  ΘB

Zvoid fft2d_r2c_16x16<float>(float2*, float const*, int, int, int, int, int, int, int, int)( ΐL*28P@(H(bsequential/conv2d_4/Reluhu  ΘB
Ϊ
 void internal::region_transform_ABC_val<int, 32, 32, false, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > > >(internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math)0B* 2B8P@(H(bsequential/conv2d/Reluhu  ΘA
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*2q8H@HHHbsequential/conv2d_1/Reluhu  ΘB
Ή
~void cudnn::winograd::generateWinogradTilesKernel<0, float, float>(cudnn::winograd::GenerateWinogradTilesParams<float, float>)(D* 28H@ H(bsequential/conv2d_5/ReluhuZU·B
Ώ
void cudnn::winograd_nonfused::winogradForwardFilter4x4<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(H* 28@@ H bsequential/conv2d_3/Reluhu  ΘB
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)0>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)"!*2b8@@@H@bsequential/conv2d_1/Reluhu  ΘB
Ώ
void cudnn::winograd_nonfused::winogradForwardFilter4x4<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(H* 28@@ H bsequential/conv2d_4/Reluhu  ΘB
Δ
void cudnn::winograd_nonfused::winogradForwardFilter9x9_5x5<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(*@2 8@@ H bsequential/conv2d_1/Reluhu³ͺXB

Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2@ 8@@ H bsequential/conv2d_2/Reluhu  A
Ώ
void cudnn::winograd_nonfused::winogradForwardFilter4x4<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(H* 288@H bsequential/conv2d_2/Reluhu  ΘB
Β
void cudnn::winograd_nonfused::winogradForwardFilter9x9_5x5<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(*@2 88@H bsequential/conv2d/Reluhu³ͺXB

Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2  88@H bsequential/conv2d_1/ReluhugUΠA
Ϊ
 void internal::region_transform_ABC_val<int, 32, 32, false, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > > >(internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math, internal::TransformParamsABC<float2, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2 const, int>, internal::Tile_Col<int, 32> >, internal::TiledMatrixStridedBatch<internal::RawData<float2, int>, internal::Tile_Col<int, 32> > >::Math)0B* 2B88@H bsequential/conv2d/Reluhu  ΘA
~
Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2 80@Hbsequential/conv2d/ReluhugUΠA
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)0>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)"!*28(@(H(bsequential/conv2d_3/Reluhu  ΘB
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)0>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)"!*28(@(H(bsequential/conv2d_2/Reluhu  ΘB
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*28(@(H(bsequential/conv2d_3/Reluhu  ΘB
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*28 @ H bsequential/conv2d_5/Reluhu  ΘB
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)0>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)"!*28 @ H bsequential/conv2d_5/Reluhu  ΘB
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*2 8 @ H bsequential/conv2d_1/Reluhu  ΘB
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*2@8 @ H bsequential/conv2d_2/Reluhu  ΘB
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*2@8 @ H bsequential/conv2d_3/Reluhu  ΘB
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*2@8 @ H bsequential/conv2d_4/Reluhu  ΘB
Ψ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*28 @ H bsequential/conv2d_5/Reluhu  ΘB
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*28 @ H bsequential/conv2d_4/Reluhu  ΘB
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*28 @ H bsequential/conv2d_2/Reluhu  ΘB
Χ
void cudnn::ops::nhwcToNchwKernel<float, float, float, true, false, (cudnnKernelDataType_t)0>(cudnn::ops::nhwc2nchw_params_t<float>, float const*, float*)(!*28 @ H bsequential/conv2d_5/Reluhu  ΘB
Χ
void cudnn::ops::nhwcToNchwKernel<float, float, float, true, false, (cudnnKernelDataType_t)0>(cudnn::ops::nhwc2nchw_params_t<float>, float const*, float*)(!*28 @ H bsequential/conv2d_2/Reluhu  ΘB
Χ
void cudnn::ops::nhwcToNchwKernel<float, float, float, true, false, (cudnnKernelDataType_t)0>(cudnn::ops::nhwc2nchw_params_t<float>, float const*, float*)(!*2b8 @ H bsequential/conv2d_1/Reluhu  ΘB

avoid cask_cudnn_infer::computeOffsetsKernel<false, false>(cask_cudnn_infer::ComputeOffsetsParams)*28@Hbsequential/conv2d_5/Reluhu  ΘB
Χ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)0>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)"!*28@Hbsequential/conv2d_4/Reluhu  ΘB
Χ
void cudnn::ops::nhwcToNchwKernel<float, float, float, true, false, (cudnnKernelDataType_t)0>(cudnn::ops::nhwc2nchw_params_t<float>, float const*, float*)(!*28@Hbsequential/conv2d_4/Reluhu  ΘB
Χ
void cudnn::ops::nhwcToNchwKernel<float, float, float, true, false, (cudnnKernelDataType_t)0>(cudnn::ops::nhwc2nchw_params_t<float>, float const*, float*)(!*28@Hbsequential/conv2d_3/Reluhu  ΘB

avoid cask_cudnn_infer::computeOffsetsKernel<false, false>(cask_cudnn_infer::ComputeOffsetsParams)*28@Hbsequential/conv2d_4/Reluhu  ΘB

Nvoid cudnn::cnn::kern_precompute_indices<false>(int*, int, int, int, int, int)*	2@8@Hbsequential/conv2d_3/Reluhu  A

W
ampere_gcgemm_32x32_nt`*@2 8θΏ@°Hθbsequential/conv2d_1/Reluhxu  ΘA

Κvoid fft2d_c2r_32x32<float, false, true, 0u, false, false>(float*, float2 const*, int, int, int, int, int, int, int, int, int, float, float, cudnn::reduced_divisor, bool, float*, float*, int2, int, int)@ ΐ*2@8ΘΈ@¨Hθbsequential/conv2d_1/ReluhxuZUB
α
void fft2d_r2c_32x32<float, false, 0u, false>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*2@8ΐ@ H°bsequential/conv2d_1/ReluhxuZUB

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148t_nt_v1~*2@8Θ~@H¨bsequential/conv2d_3/ReluhuMUB

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148t_nt_v1~*2@8ΐu@θHbsequential/conv2d_2/ReluhuMUB
o
1cudnn_infer_ampere_scudnn_128x32_relu_small_nn_v1**@28¨f@¨Hΐbsequential/conv2d/ReluhuMUB
μ
€void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)( *ΰ2 8ΰ;@ψHb sequential/max_pooling2d/MaxPoolhu  ―B
V
ampere_gcgemm_64x32_tn~*28°@pHbsequential/conv2d_4/ReluhuMUB
U
ampere_sgemm_128x128_nnv*2$8@hHxbsequential/conv2d_5/ReluhuMUB
έ
void fft2d_r2c_32x32<float, false, 5u, true>(float2*, float const*, int, int, int, int, int, int, int, int, int, cudnn::reduced_divisor, bool, int2, int, int)@ ΐ*2@8°@`Hpbsequential/conv2d_1/ReluhuZUB

Zvoid fft2d_r2c_16x16<float>(float2*, float const*, int, int, int, int, int, int, int, int)( ΐL*2@8ΰ@PHhbsequential/conv2d_4/Reluhu  ΘB
μ
€void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)( *2 8 @XH`b"sequential/max_pooling2d_1/MaxPoolhu ΐ¨B
Δ
void cutlass::Kernel<cutlass_80_tensorop_s1688gemm_64x64_16x6_nn_align4>(cutlass_80_tensorop_s1688gemm_64x64_16x6_nn_align4::Params)^ *28@@HHXbsequential/dense/MatMulh#ugUA
Α
void cutlass::Kernel<cutlass_80_tensorop_s1688gemm_64x64_32x6_nn_align4>(cutlass_80_tensorop_s1688gemm_64x64_32x6_nn_align4::Params)d *28ΰ@8HHXbsequential/dense_1/MatMulh#
Ξ
­void tensorflow::functor::SwapDimension1And2InTensor3UsingTiles<unsigned char, 1024, 1024, 2, false>(unsigned char const*, tensorflow::functor::Dimension<3>, unsigned char*) *28Π@@HPbzsequential/conv2d/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_uint8_Conv2D-0-TransposeNHWCToNCHW-LayoutOptimizerhuZUB
ο
©sm80_xmma_fprop_implicit_gemm_indexed_wo_smem_tf32f32_tf32f32_f32_nhwckrsc_nhwc_tilesize128x32x64_stage1_warpsize4x1x1_g1_tensor16x8x8_alignc8_execute_kernel_cudnn_infer  *2Δ8Θ@ H°PXbsequential/conv2d_1/Reluhu  ΘA
Γ
void cudnn::winograd_nonfused::winogradForwardOutput4x4<float, float>(cudnn::winograd_nonfused::WinogradOutputParams<float, float>)@*28Ψ@@HHbsequential/conv2d_5/ReluhuZUB
Η
void fft2d_c2r_16x16<float, false>(float*, float2*, int, int, int, int, int, int, int, int, int, int, float, float, int, float*, float*)( D*28Έ@@HHbsequential/conv2d_4/Reluhu  ΘB

Zvoid fft2d_r2c_16x16<float>(float2*, float const*, int, int, int, int, int, int, int, int)( ΐL*2 8ψ@8HHbsequential/conv2d_4/Reluhu  ΘB

Hvoid flip_filter<float, float>(float*, float const*, int, int, int, int)$*2@@8
@(H0bsequential/conv2d_4/Reluhu  A
ΐ
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*2H8¨	@ H(bsequential/conv2d_5/Reluh#uZUB

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148t_nt_v1~*28	@θHθbsequential/conv2d_3/ReluhuMUB
ΐ
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*2$8	@ H(bsequential/conv2d_3/Reluh#uZUB
ΐ
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*28Ψ@H(bsequential/conv2d_1/Reluh#uZUB
ΐ
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*28Ψ@H(bsequential/conv2d_2/Reluh#uZUB
ΐ
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*2$8Π@H bsequential/conv2d_4/Reluh#uZUB
Υ
ηvoid Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorConversionOp<float, Eigen::TensorMap<Eigen::Tensor<unsigned char const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorConversionOp<float, Eigen::TensorMap<Eigen::Tensor<unsigned char const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long)*2~8ΐ@ H(bKsequential/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_float_CasthuZUB
Ξ
void tensorflow::(anonymous namespace)::GenerateNormalizedProb<float, float, 4>(float const*, float const*, float const*, float*, int, int, bool) *28@ H(bsequential/dense_1/Softmaxhu  ΘB
Ύ
void tensorflow::functor::ShuffleInTensor3Simple<float, 2, 1, 0, false>(int, float const*, tensorflow::functor::Dimension<3>, float*)*28θ@H bsequential/conv2d/Reluh#uZUB
½
void cudnn::winograd_nonfused::winogradForwardData4x4<float, float>(cudnn::winograd_nonfused::WinogradDataParams<float, float>)@±*2@8ΰ@ H(bsequential/conv2d_5/ReluhuZUB
Έ
ϊvoid implicit_convolve_sgemm<float, float, 1024, 5, 5, 3, 3, 3, 1, false, false, true>(int, int, int, float const*, int, float*, float const*, kernel_conv_params, unsigned long long, int, float, float, int, float const*, float const*, bool, int, int)?*28¨@ΈHΐbsequential/conv2d/ReluhuZUB
λ
€void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)(  * 2 8@H b"sequential/max_pooling2d_2/MaxPoolhu  ΘB
Ί
~void cudnn::winograd::generateWinogradTilesKernel<0, float, float>(cudnn::winograd::GenerateWinogradTilesParams<float, float>)(D* 28Θ@Hbsequential/conv2d_2/Reluh#uZU·B
Ί
~void cudnn::winograd::generateWinogradTilesKernel<0, float, float>(cudnn::winograd::GenerateWinogradTilesParams<float, float>)(D* 28Θ@Hbsequential/conv2d_3/Reluh#uZU·B

¨void tensorflow::functor::SwapDimension1And2InTensor3UsingTiles<unsigned int, 256, 32, 32, false>(unsigned int const*, tensorflow::functor::Dimension<3>, unsigned int*) !*28°@H bJsequential/max_pooling2d_2/MaxPool-0-0-TransposeNCHWToNHWC-LayoutOptimizerhu  ΘB

Εvoid tensorflow::functor::RowReduceKernel<cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long>, float*, cub::Sum>(cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long>, float*, int, int, cub::Sum, std::iterator_traits<cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long> >::value_type)*28°@H bsequential/dense_1/Softmaxhu  ΘB
ΐ
void cudnn::winograd_nonfused::winogradForwardFilter4x4<float, float>(cudnn::winograd_nonfused::WinogradFilterParams<float, float>)(H* 28¨@H bsequential/conv2d_5/Reluhu  ΘB

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148t_nt_v1~*28π@Hbsequential/conv2d_2/ReluhuMUB

Ωvoid Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<long, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_sum_op<long const, long const>, Eigen::TensorMap<Eigen::Tensor<long, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorMap<Eigen::Tensor<long const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<long, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_sum_op<long const, long const>, Eigen::TensorMap<Eigen::Tensor<long, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorMap<Eigen::Tensor<long const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long)*28θ@HbAssignAddVariableOph#uZUB
ΰ
£void tensorflow::functor::RowReduceKernel<float const*, float*, cub::Max>(float const*, float*, int, int, cub::Max, std::iterator_traits<float const*>::value_type) *28ΰ@H bsequential/dense_1/Softmaxhu  ΘB
Ω
void splitKreduce_kernel<float, float, float, float>(cublasSplitKParams<float>, float const*, float const*, float*, float const*, float const*, float const*) *2@8Ψ@H Xbsequential/dense/MatMulhu  ΘB
Χ
void Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_max_op<float const, float const, 1>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorCwiseNullaryOp<Eigen::internal::scalar_constant_op<float const>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_max_op<float const, float const, 1>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorCwiseNullaryOp<Eigen::internal::scalar_constant_op<float const>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const> const, Eigen::GpuDevice>, long)*28Π@Hbsequential/dense/ReluhuZUB

avoid cask_cudnn_infer::computeOffsetsKernel<false, false>(cask_cudnn_infer::ComputeOffsetsParams)*28Θ@H bsequential/conv2d/Reluhu  ΘB

Tvoid tensorflow::BiasNHWCKernel<float>(int, float const*, float const*, float*, int)*28Έ@Hbsequential/dense/BiasAddhuZUB

Tvoid tensorflow::BiasNHWCKernel<float>(int, float const*, float const*, float*, int)*28@Hbsequential/dense_1/BiasAddhuZUB

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148t_nt_v1~*2 8@Hbsequential/conv2d_5/ReluhuMUB

Hcudnn_infer_ampere_scudnn_winograd_128x128_ldg1_ldg4_relu_tile148n_nt_v1*28π@xHbsequential/conv2d_4/ReluhugUA
Ψ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)0>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)"!*2b8@`Hhbsequential/conv2d_1/Reluhu  ΘB
Ψ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*2q8Θ@@HHbsequential/conv2d_1/Reluhu  ΘB
Ψ
void cudnn::ops::nhwcToNchwKernel<float, float, float, true, false, (cudnnKernelDataType_t)0>(cudnn::ops::nhwc2nchw_params_t<float>, float const*, float*)(!*2b8@0H8bsequential/conv2d_1/Reluhu  ΘB
κ
€void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)( *ΰ28Θ@(H(b sequential/max_pooling2d/MaxPoolhu  ―B
μ
€void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)( *28 @ H b"sequential/max_pooling2d_1/MaxPoolhu ΐ¨B
Ψ
void cudnn::ops::nchwToNhwcKernel<float, float, float, false, true, (cudnnKernelDataType_t)2>(cudnn::ops::nchw2nhwc_params_t<float>, float const*, float*)!!*2 8 @ H bsequential/conv2d_1/Reluhu  ΘB
Ξ
void tensorflow::(anonymous namespace)::GenerateNormalizedProb<float, float, 4>(float const*, float const*, float const*, float*, int, int, bool) *28 @ H bsequential/dense_1/Softmaxhu  ΘB
Ν
­void tensorflow::functor::SwapDimension1And2InTensor3UsingTiles<unsigned char, 1024, 1024, 2, false>(unsigned char const*, tensorflow::functor::Dimension<3>, unsigned char*) *2@8 @ H bzsequential/conv2d/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_uint8_Conv2D-0-TransposeNHWCToNCHW-LayoutOptimizerhuZUB
Υ
ηvoid Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorConversionOp<float, Eigen::TensorMap<Eigen::Tensor<unsigned char const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorConversionOp<float, Eigen::TensorMap<Eigen::Tensor<unsigned char const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const, Eigen::GpuDevice>, long)*2`8@H bKsequential/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_float_CasthuZUB
ί
£void tensorflow::functor::RowReduceKernel<float const*, float*, cub::Max>(float const*, float*, int, int, cub::Max, std::iterator_traits<float const*>::value_type) *28x@Hbsequential/dense_1/Softmaxhu  ΘB
κ
€void cudnn::ops::pooling_fw_4d_kernel<float, float, cudnn::maxpooling_func<float, float, (cudnnNanPropagation_t)0>, (cudnnPoolingMode_t)0, false>(cudnnTensorStruct, float const*, cudnnTensorStruct, float*, cudnnPoolingStruct, float, float, int, cudnn::reduced_divisor, cudnn::reduced_divisor)(  * 28x@Hb"sequential/max_pooling2d_2/MaxPoolhu  ΘB
Ψ
void splitKreduce_kernel<float, float, float, float>(cublasSplitKParams<float>, float const*, float const*, float*, float const*, float const*, float const*) *28x@HXbsequential/dense/MatMulhu  ΘB

Εvoid tensorflow::functor::RowReduceKernel<cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long>, float*, cub::Sum>(cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long>, float*, int, int, cub::Sum, std::iterator_traits<cub::TransformInputIterator<float, tensorflow::(anonymous namespace)::SubtractAndExpFunctor<float, float>, cub::CountingInputIterator<int, long>, long> >::value_type)*28x@Hbsequential/dense_1/Softmaxhu  ΘB

¨void tensorflow::functor::SwapDimension1And2InTensor3UsingTiles<unsigned int, 256, 32, 32, false>(unsigned int const*, tensorflow::functor::Dimension<3>, unsigned int*) !*2 8x@HbJsequential/max_pooling2d_2/MaxPool-0-0-TransposeNCHWToNHWC-LayoutOptimizerhu  ΘB
Φ
void Eigen::internal::EigenMetaKernel<Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_max_op<float const, float const, 1>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorCwiseNullaryOp<Eigen::internal::scalar_constant_op<float const>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const> const, Eigen::GpuDevice>, long>(Eigen::TensorEvaluator<Eigen::TensorAssignOp<Eigen::TensorMap<Eigen::Tensor<float, 1, 1, long>, 16, Eigen::MakePointer>, Eigen::TensorCwiseBinaryOp<Eigen::internal::scalar_max_op<float const, float const, 1>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const, Eigen::TensorCwiseNullaryOp<Eigen::internal::scalar_constant_op<float const>, Eigen::TensorMap<Eigen::Tensor<float const, 1, 1, long>, 16, Eigen::MakePointer> const> const> const> const, Eigen::GpuDevice>, long)*28h@Hbsequential/dense/ReluhuZUB
Ή
~void cudnn::winograd::generateWinogradTilesKernel<0, float, float>(cudnn::winograd::GenerateWinogradTilesParams<float, float>)(D* 28h@Hbsequential/conv2d_5/ReluhuZU·B

Tvoid tensorflow::BiasNHWCKernel<float>(int, float const*, float const*, float*, int)*28h@Hbsequential/dense_1/BiasAddhuZUB
Ή
~void cudnn::winograd::generateWinogradTilesKernel<0, float, float>(cudnn::winograd::GenerateWinogradTilesParams<float, float>)(D* 28`@Hbsequential/conv2d_4/ReluhuZU·B

Tvoid tensorflow::BiasNHWCKernel<float>(int, float const*, float const*, float*, int)*28`@Hbsequential/dense/BiasAddhuZUB
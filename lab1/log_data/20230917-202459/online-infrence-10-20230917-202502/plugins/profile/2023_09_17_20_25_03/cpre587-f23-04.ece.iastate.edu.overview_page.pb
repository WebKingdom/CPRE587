�,$	U�e��?8$���?Ct	4�?!̙�
}��?$	Y�Y���?%�G���?�k���?!�q @"|
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails;ZI+����?*�T��?1�!�����?A�8�Վ�\?I��ECƣ�?Y?74e��?r2"|
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails;�G��5��?s�<G�d?1�W<�H��?A�q����_?IR���T��?Y0�б�?r4"|
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails;b/���?t#,*�tr?1t^c����?A����[?I��r-Z��?Y6��Ϸ�?r6"|
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails;̙�
}��?@�j��g?1��N�6�?A�J=By_?If/�N�?Yv�����?r8"}
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails<
.s��/�?�zj��u?1�.�����?A���_vO^?I'1���?YKs+��X�?r10"}
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails<�ٮ���?Έ���c?1`r��ZC�?A�J���>\?I4H�S��?Y�W��ȑ?r12"}
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails<.�|��"�?ޏ�/��h?1(�$���?A[|
��Z?I��TO��?YNc{-轑?r14"}
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails<Ct	4�?��2Wu?1�� �> �?A5)�^�X?IX�����?Y�e��a��?r16*	��x�L�@2d
-Iterator::Root::FiniteTake::BatchV2::Prefetch
�gs�@!u5����;@)�gs�@1u5����;@:Preprocessing2x
@Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch������@!��^2|J2@)�����@1��^2|J2@:Preprocessing2T
Iterator::Root::ParallelMapV2
W
�\��@!6�UL�H1@)W
�\��@16�UL�H1@:Preprocessing2m
6Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle�\��Xc@!?Ϥ�e;@)$����@1�<��:6"@:Preprocessing2�
QIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch::MemoryCacheImpl� 7�C�?!SG|=@) 7�C�?1SG|=@:Preprocessing2E
Iterator::RootW�I��+@!�3�J@)��,
�(�?1��"��P@:Preprocessing2k
4Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat��m����?!;�D[�@)H������?1S�M)�@:Preprocessing2�
MIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch::MemoryCache��G7�@!�DrZ�O#@)�����?1�
�ۘ�@:Preprocessing2o
8Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch� �rh��?!q+��?)� �rh��?1q+��?:Preprocessing2Z
#Iterator::Root::FiniteTake::BatchV2
g׽�I@!�����:=@)ol�`q�?1��w�#s�?:Preprocessing2e
.Iterator::Root::ParallelMapV2::Zip[0]::FlatMap8ӅX��?!d.~�8�@)2����?1�c�����?:Preprocessing2Q
Iterator::Root::FiniteTake�i��&[@!,�j��B>@)[(����?1Æ����?:Preprocessing2t
=Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::MapR�(�1�?!r�j���?)%�)� ��?1;���Q�?:Preprocessing2�
KIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat��N��D�?!o�S�5�?)5��-</�?1�:�k^*�?:Preprocessing2Y
"Iterator::Root::ParallelMapV2::Zipٱ���@!7���k6!@)�I}Yک�?1 �S���?:Preprocessing2u
>Iterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate�we���?!#)�~Z��?)ZEh�ɕ?1b��A$�?:Preprocessing2�
RIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat::Range��j�Tq?!�{Hv���?)��j�Tq?1�{Hv���?:Preprocessing2w
@Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor	���q�jm?!��7��c�?)���q�jm?1��7��c�?:Preprocessing2�
MIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[1]::FromTensorɯb��c?!��rׂ?)ɯb��c?1��rׂ?:Preprocessing2�
NIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�óU?!���YEt?)�óU?1���YEt?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 1.5% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"�79.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9�r%4��?I�Ae��	T@Q9��:O2@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
$	5���{?gM��s^�?Έ���c?!*�T��?	!       "$	-#���)�?�����%q?��N�6�?!(�$���?*	!       2$	�3�9A�\?Sl�w j$?5)�^�X?!�q����_?:$	�aot�?��M/*c�?X�����?!f/�N�?B	!       J$	>���6�?�n�~fn??74e��?!�e��a��?R	!       Z$	>���6�?�n�~fn??74e��?!�e��a��?b	!       JGPUY�r%4��?b q�Ae��	T@y9��:O2@�":
sequential/conv2d_1/Relu_FusedConv2D����?!����?":
sequential/conv2d_5/Relu_FusedConv2D��pI@�?!Foï��?":
sequential/conv2d_3/Relu_FusedConv2D��z���?!����R��?":
sequential/conv2d_4/Relu_FusedConv2Dޯ��s��?!Ro�����?":
sequential/conv2d_2/Relu_FusedConv2D	@@྇�?!Sw��N�?"8
sequential/conv2d/Relu_FusedConv2D��f�u�?!��r:J�?"5
sequential/dense/MatMulMatMul��oJ{��?!�����?0"7
sequential/dense_1/SoftmaxSoftmax�ޫ���?!	l$'�M�?"7
sequential/dense_1/MatMulMatMul\R*��M�?!/翹��?0"<
AssignAddVariableOpAssignAddVariableOp!��'l;�?!�#!�T�?Q      Y@Y�')��W@a��oM�@qR���R@"�
device�Your program is NOT input-bound because only 1.5% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
high�79.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*�Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb�75.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 
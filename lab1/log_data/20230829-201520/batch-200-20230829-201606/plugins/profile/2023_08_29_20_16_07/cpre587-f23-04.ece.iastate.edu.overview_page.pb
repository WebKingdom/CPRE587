�!  *	dfffW�@2e
-Iterator::Root::FiniteTake::BatchV2::Prefetch�H�3�9A(@!�F��;�>@)H�3�9A(@1�F��;�>@:Preprocessing2n
6Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle��<L��%@!��`��;@)�Ƕ8�@1�߆�Pu,@:Preprocessing2x
@Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch��i���R@!��:���*@)�i���R@1��:���*@:Preprocessing2T
Iterator::Root::ParallelMapV2#�5@!B��?(@)�5@1B��?(@:Preprocessing2Z
#Iterator::Root::FiniteTake::BatchV2Tƿ�d0@!�\t۱D@)�9���@1�Vd���%@:Preprocessing2e
.Iterator::Root::ParallelMapV2::Zip[0]::FlatMap�g���
@!K���� @)��0�Q@1�����@:Preprocessing2�
QIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch::MemoryCacheImpl��a�� ��?! km@)�a�� ��?1 km@:Preprocessing2�
MIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch::MemoryCache��q��=@!��$���@)2�#ـ�?1���m��@:Preprocessing2E
Iterator::Root)��ۻU6@!^`=��0L@)Y"��g�?1��<� @:Preprocessing2o
8Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::PrefetchϠ���?!FXdJ��?)Ϡ���?1FXdJ��?:Preprocessing2Q
Iterator::Root::FiniteTake¤����0@!qc�X� E@)I-�LN��?1��*���?:Preprocessing2k
4Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeatKU�ҵ?!�	dr��?)n��Sr�?1�q-#��?:Preprocessing2t
=Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map���-��?!Mi<Tsq�?)6<�R�!�?1���4R��?:Preprocessing2�
KIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeatF^���?!/�s���?)�z����?1_�����?:Preprocessing2Y
"Iterator::Root::ParallelMapV2::Zip��G�)@!@v�?^�!@)%;6�?1Gs��me�?:Preprocessing2u
>Iterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate�7M�p�?!—X��?)���M+�?1�����?:Preprocessing2�
NIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice{���`�?!w�/����?){���`�?1w�/����?:Preprocessing2w
@Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor�>9
�?!��[�y�?)�>9
�?1��[�y�?:Preprocessing2�
RIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat::Range�cyW=`n?![��-,�?)�cyW=`n?1[��-,�?:Preprocessing2�
MIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[1]::FromTensor"nN%@U?!��t!7�j?)"nN%@U?1��t!7�j?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysisk
unknownTNo step time measured. Therefore we cannot tell where the performance bottleneck is.no*noZno#You may skip the rest of this page.BZ
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown
  " * 2 : B J R Z b JGPUb��No step marker observed and hence the step time is unknown. This may happen if (1) training steps are not instrumented (e.g., if you are not using Keras) or (2) the profiling duration is shorter than the step time. For (1), you need to add step instrumentation; for (2), you may try to profile longer.Y      Y@qu
4�xz%@"�
unknownTNo step time measured. Therefore we cannot tell where the performance bottleneck is.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2M
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono2no:
Refer to the TF2 Profiler FAQb�10.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B��No step marker observed and hence the step time is unknown. This may happen if (1) training steps are not instrumented (e.g., if you are not using Keras) or (2) the profiling duration is shorter than the step time. For (1), you need to add step instrumentation; for (2), you may try to profile longer.
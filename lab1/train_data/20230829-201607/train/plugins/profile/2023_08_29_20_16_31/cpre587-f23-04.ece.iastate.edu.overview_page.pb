�&  *X9��v�U@n�t�Ǹ@2a
*Iterator::Root::MapAndBatch::ParallelMapV2 ���Wy
@!���I@)���Wy
@1���I@:Preprocessing2�
]Iterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl::Prefetch::ParallelMapV2f�2�}��?!����"6@)f�2�}��?1����"6@:Preprocessing2�
}Iterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl::Prefetch::ParallelMapV2::MemoryCacheImpl::ParallelMapV2
�i�� �?!ǒ���!.@)
�i�� �?1ǒ���!.@:Preprocessing2{
DIterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl��`�
��?!V���@)�t"�T3�?1	�h�o�?:Preprocessing2�
�Iterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl::Prefetch::ParallelMapV2::MemoryCacheImpl::ParallelMapV2::AssertCardinality��I��?!a"�'��@)5a���?1���1c�?:Preprocessing2�
�Iterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl::Prefetch::ParallelMapV2::MemoryCacheImpl::ParallelMapV2::AssertCardinality::ParallelInterleaveV4������?!C�/U�Z�?)������?1C�/U�Z�?:Preprocessing2�
nIterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl::Prefetch::ParallelMapV2::MemoryCacheImpl�R��?!\�]�W0@)��N]��?1�_�p}b�?:Preprocessing2�
NIterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl::Prefetch�$>w���?!H5�:d�?)�$>w���?1H5�:d�?:Preprocessing2�
�Iterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl::Prefetch::ParallelMapV2::MemoryCacheImpl::ParallelMapV2::AssertCardinality::ParallelInterleaveV4[1]::FlatMap[0]::TFRecord�GW��?!Z��+-�?)�GW��?1Z��+-�?:Advanced file read2j
3Iterator::Root::MapAndBatch::ParallelMapV2::Shuffle��{�P�?!�(�mo@)O崧䜨?1��r����?:Preprocessing2�
�Iterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl::Prefetch::ParallelMapV2::MemoryCacheImpl::ParallelMapV2::AssertCardinality::ParallelInterleaveV4[0]::FlatMap[0]::TFRecord���t �?!�;j�?)���t �?1�;j�?:Advanced file read2�
�Iterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl::Prefetch::ParallelMapV2::MemoryCacheImpl::ParallelMapV2::AssertCardinality::ParallelInterleaveV4[0]::FlatMap��>s֧�?!:D10�?)��%�ɞ?1���-���?:Preprocessing2�
jIterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl::Prefetch::ParallelMapV2::MemoryCache���G�?!ÉȤ��0@)9B���?1����}�?:Preprocessing2w
@Iterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCache�y��w)�?!RbK�wt@)ްmQf��?1�'��J��?:Preprocessing2�
�Iterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl::Prefetch::ParallelMapV2::MemoryCacheImpl::ParallelMapV2::AssertCardinality::ParallelInterleaveV4[1]::FlatMap~ƅ!Y�?!�0����?)���_���?1t�ٯ��?:Preprocessing2R
Iterator::Root::MapAndBatch�n�����?!X� kM?�?)�n�����?1X� kM?�?:Preprocessing2E
Iterator::Root��q�߅�?!rL����?)
j�֍�?15�@3g��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysisk
unknownTNo step time measured. Therefore we cannot tell where the performance bottleneck is.no*noZno#You may skip the rest of this page.BZ
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown
  " * 2 : B J R Z b JGPUb��No step marker observed and hence the step time is unknown. This may happen if (1) training steps are not instrumented (e.g., if you are not using Keras) or (2) the profiling duration is shorter than the step time. For (1), you need to add step instrumentation; for (2), you may try to profile longer.Y      Y@q7�Q�?"�
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
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B��No step marker observed and hence the step time is unknown. This may happen if (1) training steps are not instrumented (e.g., if you are not using Keras) or (2) the profiling duration is shorter than the step time. For (1), you need to add step instrumentation; for (2), you may try to profile longer.
  *k�t��F�@)      �=2e
-Iterator::Root::FiniteTake::BatchV2::Prefetch��ʾ+�;3@!Ƴ��@@)�ʾ+�;3@1Ƴ��@@:Preprocessing2x
@Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch�a���p#@!y�� \�0@)a���p#@1y�� \�0@:Preprocessing2n
6Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle���-</a1@!�h��>@) �O��@1�T��*u*@:Preprocessing2e
.Iterator::Root::ParallelMapV2::Zip[0]::FlatMap�t><K�@!�����@+@)�Gܦ@1F6����'@:Preprocessing2T
Iterator::Root::ParallelMapV2#�?F@!M+ �G� @)�?F@1M+ �G� @:Preprocessing2Z
#Iterator::Root::FiniteTake::BatchV2�-����7@!�N-K�`D@)ҌE��y@1Sٜĉ-@:Preprocessing2�
QIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch::MemoryCacheImpl��Zd;�?!�a���<@)�Zd;�?1�a���<@:Preprocessing2�
MIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch::MemoryCache�Q�f��@!��+&�2@)�-s�,f�?1�z��~Q�?:Preprocessing2o
8Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetchvk����?!$� �VE�?)vk����?1$� �VE�?:Preprocessing2E
Iterator::Root)�0&���=@!�F��I@)���y0�?1����[��?:Preprocessing2Q
Iterator::Root::FiniteTake0�Qd��7@!!�I��D@)�b�0��?1K�!Gt�?:Preprocessing2w
@Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor-y���8�?!.U�3���?)y���8�?1.U�3���?:Preprocessing2t
=Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map�&N�w(�?!(�s���?)����?��?1S[�E�P�?:Preprocessing2Y
"Iterator::Root::ParallelMapV2::Zip-&��H� @!TEg�s-@)T���f�?1\V�;P�?:Preprocessing2k
4Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat!ɬ��v�?!�GN_e�?)����0��?1n:���?:Preprocessing2u
>Iterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateɫs�^�?!�jXI���?)?o*Ral�?1�j�?E�?:Preprocessing2�
KIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat���_��?!S���Y�?)O��C�?16�A �?:Preprocessing2�
NIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice��x]�?!a*6�v,�?)��x]�?1a*6�v,�?:Preprocessing2�
RIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat::Rangex{�%�?!�D�]le�?)x{�%�?1�D�]le�?:Preprocessing2�
MIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[1]::FromTensor���b('z?!ų����?)���b('z?1ų����?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysisk
unknownTNo step time measured. Therefore we cannot tell where the performance bottleneck is.no*noZno#You may skip the rest of this page.BZ
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown
  " * 2 : B J R Z b JGPUb��No step marker observed and hence the step time is unknown. This may happen if (1) training steps are not instrumented (e.g., if you are not using Keras) or (2) the profiling duration is shorter than the step time. For (1), you need to add step instrumentation; for (2), you may try to profile longer.
  *	䥛�T�@2T
Iterator::Root::ParallelMapV2dz�΅�`P@!�Ɏ: �P@)z�΅�`P@1�Ɏ: �P@:Preprocessing2d
-Iterator::Root::FiniteTake::BatchV2::Prefetchd����9@!K�7���@)����9@1K�7���@:Preprocessing2Z
#Iterator::Root::FiniteTake::BatchV2d��0E��*@!}\z%Z+@)�����@1���h�@:Preprocessing2F
Iterator::Root�S!���U@!�Q�
�U@)��b�T@1T7�и�@:Preprocessing2m
6Iterator::Root::FiniteTake::BatchV2::Prefetch::Shufflee�W�f,j@!����@)����%@1���g@:Preprocessing2x
@Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch����1��@!��,��@)���1��@1��,��@:Preprocessing2o
8Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch����CB�?!z�(&ʠ�?)����CB�?1z�(&ʠ�?:Preprocessing2�
QIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch::MemoryCacheImpl�EH�ξ��?!sN�\�?�?)EH�ξ��?1sN�\�?�?:Preprocessing2e
.Iterator::Root::ParallelMapV2::Zip[0]::FlatMap����@!l}8�@)�PMI���?1G�?O�?:Preprocessing2�
MIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch::MemoryCache�L�;�� @!�mJT�V @)��3��p�?1�ח��?:Preprocessing2Q
Iterator::Root::FiniteTakee� ����+@!�s��vg,@)<P�<���?1^u���?:Preprocessing2t
=Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::MapV�����?!o�¼�6�?)�m��fc�?1��\���?:Preprocessing2�
KIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat�Y���и?!��;�5�?)�O��5�?1��!e^��?:Preprocessing2Y
"Iterator::Root::ParallelMapV2::Zip$�/L�
�@!֛��b�@)V�F�?�?1�8����?:Preprocessing2u
>Iterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatee�P3���?!�yǴ��?)`���Y�?1ż��ȴ�?:Preprocessing2k
4Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat�d�?!3)q�TT�?)1�Zd�?1��}�ӛ?:Preprocessing2�
RIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat::Range�L��~ބ?!�_0�N3�?)�L��~ބ?1�_0�N3�?:Preprocessing2�
MIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[1]::FromTensor�v1�t�s?!�Hu�s?)�v1�t�s?1�Hu�s?:Preprocessing2w
@Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor�Op��s?!����Ss?)�Op��s?1����Ss?:Preprocessing2�
NIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice��-�k?!_�s:�l?)��-�k?1_�s:�l?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysisk
unknownTNo step time measured. Therefore we cannot tell where the performance bottleneck is.no*noZno#You may skip the rest of this page.BZ
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown
  " * 2 : B J R Z b JGPUb��No step marker observed and hence the step time is unknown. This may happen if (1) training steps are not instrumented (e.g., if you are not using Keras) or (2) the profiling duration is shorter than the step time. For (1), you need to add step instrumentation; for (2), you may try to profile longer.
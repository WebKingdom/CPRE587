	j�drj@j�drj@!j�drj@      ��!       "h
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails'j�drj@b.�ܘ?1�n�;2V@I�wD��@r0*	gffff�@2a
*Iterator::Root::MapAndBatch::ParallelMapV2 �\�&��?!\�Q,�vN@)�\�&��?1\�Q,�vN@:Preprocessing2w
@Iterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCache >+N��?!�vtHF;4@)����?1���8FB,@:Preprocessing2j
3Iterator::Root::MapAndBatch::ParallelMapV2::Shuffle �[�tY�?!rř>�@@)������?10(~i�A+@:Preprocessing2{
DIterator::Root::MapAndBatch::ParallelMapV2::Shuffle::MemoryCacheImpl mt�Oq�?!����h@)mt�Oq�?1����h@:Preprocessing2R
Iterator::Root::MapAndBatcha�HZ֍?!V���@)a�HZ֍?1V���@:Preprocessing2E
Iterator::Root]n0�a��?!������@)YP�i4�?1�_���@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.high"�48.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIC�_z�H@Q���UI@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	b.�ܘ?b.�ܘ?!b.�ܘ?      ��!       "	�n�;2V@�n�;2V@!�n�;2V@*      ��!       2      ��!       :	�wD��@�wD��@!�wD��@B      ��!       J      ��!       R      ��!       Z      ��!       b      ��!       JGPUb qC�_z�H@y���UI@
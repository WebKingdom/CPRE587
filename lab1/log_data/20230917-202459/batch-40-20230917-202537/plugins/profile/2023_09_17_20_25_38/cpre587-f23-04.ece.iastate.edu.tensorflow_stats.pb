"�P
DDeviceIDLE"IDLE1�$A�%AA�$A�%AQ�׋����?Y�׋����?�Unknown
~Device_FusedConv2D"sequential/conv2d_1/Relu(l1ffff���@9�)F�a@Affff���@I�)F�a@Q�6�� f�?Y��K��x�?�Unknown�C��#}�?
~Device_FusedConv2D"sequential/conv2d_3/Relu(41T㥛�	�@9[���Aa@AT㥛�	�@I[���Aa@Q��MOX�?Y��\a��?�Unknown��}P+�"e?
tDevice_FusedConv2D"sequential/conv2d_2/Relu(41�$�׸@9$|̞��^@A�$�׸@I$|̞��^@Qm�}�#�?Y��T5�
�?�Unknown
rDevice_FusedConv2D"sequential/conv2d/Relu(21��ʡ�C�@9A��h:�]@A��ʡ�C�@IA��h:�]@Q���1-�?Y��#K�?�Unknown
~Device_FusedConv2D"sequential/conv2d_4/Relu(61u��,�@9,ޡv\w[@Au��,�@I,ޡv\w[@Q����?Y�GR��?�Unknown�:cR+h?
~Device_FusedConv2D"sequential/conv2d_5/Relu(41��x��[�@9��n̈́[@A��x��[�@I��n̈́[@Q�m���~?Y�D�q���?�Unknown����S�g?
wDeviceMaxPool" sequential/max_pooling2d/MaxPool(21F���ԡ�@9-`���2@AF���ԡ�@I-`���2@Q^���qT?Y05�j��?�Unknown
m	DeviceMatMul"sequential/dense/MatMul(21�x�&1��@9�>�'I�'@A�x�&1��@I�>�'I�'@Qrww4A�I?YS�k��?�Unknown
q
DeviceSoftmax"sequential/dense_1/Softmax(211�Z�@9�.9��%@A1�Z�@I�.9��%@Q*Q"K>�G?Y��
N��?�Unknown
gDevice_Send"IteratorGetNext/_1()1㥛� �@9*"D��]*@A㥛� �@I*"D��]*@Q�l2�NG?Y̶!�!��?�Unknown
oDeviceMatMul"sequential/dense_1/MatMul(21��/�xy@9�(�[ZM @A��/�xy@I�(�[ZM @Q�7�'�A?Y������?�Unknown
yDeviceMaxPool""sequential/max_pooling2d_1/MaxPool(21�l����w@9�a��h�@A�l����w@I�a��h�@Qwv��܃@?Y�g=����?�Unknown
�Device	Transpose"zsequential/conv2d/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_uint8_Conv2D-0-TransposeNHWCToNCHW-LayoutOptimizer(21���x�zt@9�wg�6@A���x�zt@I�wg�6@Q�3��B<?YSH��/��?�Unknown
�DeviceCast"Ksequential/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_float_Cast(21     �i@9�z�G�@A     �i@I�z�G�@Q	��g��1?YRC%�m��?�Unknown
vDeviceAssignAddVariableOp"AssignAddVariableOp(2133333�i@9?5^�I�@A33333�i@I?5^�I�@Q0u� �1?Y��By���?�Unknown
yDeviceMaxPool""sequential/max_pooling2d_2/MaxPool(21��ʡEf@9�"��@A��ʡEf@I�"��@QT��Ի.?Yx#�6���?�Unknown
�Device	Transpose"Jsequential/max_pooling2d_2/MaxPool-0-0-TransposeNCHWToNHWC-LayoutOptimizer(215^�I�d@9ɫs��
@A5^�I�d@Iɫs��
@QE��,?Yɇ0�c��?�Unknown
oDeviceBiasAdd"sequential/dense/BiasAdd(21�����Mb@9<���m@A�����Mb@I<���m@Q��RB)?YH������?�Unknown
iDeviceRelu"sequential/dense/Relu(21+�-b@9�7��C@A+�-b@I�7��C@Qhʖ��)?Y�)U#���?�Unknown
qDeviceBiasAdd"sequential/dense_1/BiasAdd(21�n���a@9��"�@A�n���a@I��"�@Q��8�(?Y]����?�Unknown
cDeviceConcatV2"ConcatV2(21T㥛� `@9Mۿ�Ҥ@AT㥛� `@IMۿ�Ҥ@Q���eA&?Y��1v��?�Unknown�
gDevice_Recv"IteratorGetNext/_2(	1ˡE���H@9|:��7@AˡE���H@I|:��7@Qt���Y>?Y      �?�Unknown
BHostIDLE"IDLE1��xI�sOAA��xI�sOAa���nv*�?i���nv*�?�Unknown
iHostMakeIterator"MakeIterator(1-���H�A9��$ؔ!�@A�Z��AIY�J�6�@a�����?i�QY��?�Unknown�
rHostDataset"Iterator::Root::ParallelMapV2(21�K7�Ѧ�@92��*Fn@A�K7�Ѧ�@I2��*Fn@a�q�C�f?iX5����?�Unknown
mHostDeleteIterator"DeleteIterator(1��Q���@9i�)�%}@A��Q���@Ii�)�%}@a��>%F�f?i��Z�=��?�Unknown�
�HostDataset"-Iterator::Root::FiniteTake::BatchV2::Prefetch(�1��nCֽ@9C����@A��nCֽ@IC����@a�O���\?i�dߌ��?�Unknown
xHostDataset"#Iterator::Root::FiniteTake::BatchV2(1}?5^
X�@9��s�/܀@Am����ٶ@Iݘ���?m@au7����U?i�!;2���?�Unknown
�HostDataset"6Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle(�1��(\/��@9)\���8#@A�t��״@I�M�@a��O�}�S?i��$���?�Unknown
�HostDataset"@Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch(�1�v����@98R(�U�@A�v����@I8R(�U�@a�}�RR?ipW�S���?�Unknown
c HostDataset"Iterator::Root(L1��"��)�@9�`	�x@Ash��<Ѯ@I�ޢ���I@aG(��M?is!t���?�Unknown
e!Host_Send"IteratorGetNext/_1(21�rh��@�@9t{Ic4K@A�rh��@�@It{Ic4K@a�@�KybD?iCǝ&��?�Unknown
�"HostDataset"QIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch::MemoryCacheImpl(�1�O��n�@9���ȍX�?A�O��n�@I���ȍX�?a�rKq�	4?i�5֧��?�Unknown
a#HostConcatV2"ConcatV2(1d;�O���@9W�[�NH@Ad;�O���@IW�[�NH@a@�)�62?ir:����?�Unknown�
�$HostDataset"MIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch::MemoryCache(�1�v���Z�@9Φ�����?Ad;�O���@Iƀ���?aާ��pW.?i-|D&���?�Unknown
w%HostAnonymousIteratorV2"AnonymousIteratorV2(1�C�l癄@9�z�q�Z9@A�C�l癄@I�z�q�Z9@aX�3UG�#?iiϹJ��?�Unknown�
�&HostDataset"8Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch(1Zd;�O=�@9Zd;�O=S@AZd;�O=�@IZd;�O=S@a�6�^�s"?i̻��7��?�Unknown
�'HostDataset".Iterator::Root::ParallelMapV2::Zip[0]::FlatMap(1��/]o�@9�#���Y@A;�O���@IOԿ�H@a�g>?OX!?i���M��?�Unknown
o(HostIteratorGetNext"IteratorGetNext(L1u��>�@9:a�|-�g@A��"��{�@I��c|r@a�[>e�� ?i�J^Y��?�Unknown�
o)HostDataset"Iterator::Root::FiniteTake(1������@9,����@AP��nt@I'_D��(@ab?k��@?i��e���?�Unknown
k*HostRepeatDataset"RepeatDataset(21NbX9�o@9��G��0@ANbX9�o@I��G��0@a���[B?iQnl��?�Unknown�
q+HostAssignVariableOp"AssignVariableOp(1q=
ףLo@9���$@Aq=
ףLo@I���$@a���]
?i$�9����?�Unknown�
y,HostParallelMapDatasetV2"ParallelMapDatasetV2(1V-��l@9���It"@AV-��l@I���It"@aN���?i���!S��?�Unknown�
m-HostOptionsDataset"OptionsDataset(1�$��ok@9�ŧ �!@A�$��ok@I�ŧ �!@a�G!lP
?iZ|c���?�Unknown�
^.HostGatherV2"GatherV2(1�MbX�j@97�A`��Q@A�MbX�j@I7�A`��Q@a@O�	?i�F#��?�Unknown
e/Host
MapDataset"
MapDataset(1��ʡE�e@9j�@+0�@A��ʡE�e@Ij�@+0�@aJ��3�?i�d��v��?�Unknown�
m0HostFlatMapDataset"FlatMapDataset(1���K�e@9����@A���K�e@I����@aH{g� �?i���.���?�Unknown�
�1HostDataset"=Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map(1��ʡAg@9��ʡAG@A7�A`�b@I7�A`�B@a{�[�W?i�*{���?�Unknown
o2HostPrefetchDataset"PrefetchDataset(1L7�A`ua@9� �X@AL7�A`ua@I� �X@a�ा ?iN��R��?�Unknown�
m3HostReadVariableOp"ReadVariableOp(1^�Ia@9��hW!�@A^�Ia@I��hW!�@a!n��g ?i��'���?�Unknown�
e4Host
ZipDataset"
ZipDataset(1��x�&�^@9Q��C��@A��x�&�^@IQ��C��@ag�G���>iKߑ���?�Unknown�
k5HostTensorDataset"TensorDataset(1`��"��]@9vyE��T@A`��"��]@IvyE��T@a:]���>i�G���?�Unknown�
i6HostRangeDataset"RangeDataset(1���Ko\@9Q�Lۿ2@A���Ko\@IQ�Lۿ2@asl��E�>i�0_A?��?�Unknown�
X7HostRange"range(1�l����L@9��E�>@A�l����L@I��E�>@a��Q�KW�>i���Z��?�Unknown
m8HostBatchDatasetV2"BatchDatasetV2(1����MC@9����MC@A����MC@I����MC@a�J(�W;�>i!
�l��?�Unknown�
�9HostDataset"KIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat(1m����D@9m����$@A�VB@I�V"@a��_P�>i�i"$~��?�Unknown
w:HostDataset""Iterator::Root::ParallelMapV2::Zip((1�C�l猔@9x��#�p@@A-���6A@I{�/L���?a�� }��>i�o�����?�Unknown
�;HostDataset">Iterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate(1w��/�H@9�)g~@Aj�t�@@IT㥛�`@a&�Ɲ���>iھa���?�Unknown
�<HostDataset"4Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat(1��v��zB@9�`���@AP��nC?@I���a�@a'�X���>iLP���?�Unknown
a=HostIdentity"Identity(1���S�4@9��խ���?A���S�4@I��խ���?a��rN��>i?sQ����?�Unknown�
�>HostDataset"NIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice(1bX9��.@9bX9���?AbX9��.@IbX9���?aZ\ �I�>i�՘L���?�Unknown
g?HostPlaceholder"Placeholder/_2(1/�$�+@9/�$�@A/�$�+@I/�$�@a7IM|��>iu����?�Unknown
Z@HostSlice"Slice_1(1������(@9������@A������(@I������@a�!�����>i��z����?�Unknown
�AHostParallelInterleaveDatasetV4"ParallelInterleaveDatasetV4/_10(1ˡE���#@9ˡE���#@AˡE���#@IˡE���#@a+T�,�>iL������?�Unknown
gBHostTakeDataset"TakeDataset(1�K7�A�#@9�K7�A�#@A�K7�A�#@I�K7�A�#@aۥl���>iSI]@���?�Unknown�
uCHostTensorSliceDataset"TensorSliceDataset/_4(1��C�lg@9��C�lg@A��C�lg@I��C�lg@a�:���>i��4���?�Unknown
XDHostSlice"Slice(1NbX94@9NbX94@ANbX94@INbX94@a��vl���>iI������?�Unknown
gEHostPlaceholder"Placeholder/_1(1���K�@9���K�
@A���K�@I���K�
@a���G���>i:������?�Unknown
gFHostPlaceholder"Placeholder/_3(1��/�$@9��/�$	@A��/�$@I��/�$	@a\^Ͱ�>i������?�Unknown
gGHostPlaceholder"Placeholder/_0(1��K7��@9��K7��@A��K7��@I��K7��@a���vl��>i��a����?�Unknown
nHHostCacheDatasetV2"CacheDatasetV2/_18(1y�&1�@9y�&1�@Ay�&1�@Iy�&1�@as��C��>i������?�Unknown
rIHostTensorSliceDataset"TensorSliceDataset(1�t��@9�t��@A�t��@I�t��@aG����>iʄ���?�Unknown
�JHostDataset"@Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor(1bX9��@9��y�):�?AbX9��@I��y�):�?a���^;ڵ>i��@���?�Unknown
rKHostConcatenateDataset"ConcatenateDataset(1#��~j<@9#��~j<@A#��~j<@I#��~j<@a�0���S�>i�G�����?�Unknown
rLHostShuffleDatasetV3"ShuffleDatasetV3/_25(1u�V�@9u�V�@Au�V�@Iu�V�@a#������>i�8����?�Unknown
�MHostDataset"RIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat::Range(1�v��/@9�v��/�?A�v��/@I�v��/�?a���`Q�>i�UJ
���?�Unknown
nNHostOptionsDataset"OptionsDataset/_13(1�����@9�����@A�����@I�����@aW-?����>iaU�����?�Unknown
zOHostParallelMapDatasetV2"ParallelMapDatasetV2/_15(1�C�l�{@9�C�l�{@A�C�l�{@I�C�l�{@a�9����>i�n�����?�Unknown
nPHostBatchDatasetV2"BatchDatasetV2/_30(1'1�Z@9'1�Z@A'1�Z@I'1�Z@a'C*�m�>i;IO����?�Unknown
�QHostDataset"MIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[1]::FromTensor(1���x�&@9���x�&�?A���x�&@I���x�&�?a㠩Xcs�>i�~�����?�Unknown
pRHostPrefetchDataset"PrefetchDataset/_20(1��Q� @9��Q� @A��Q� @I��Q� @a=&���>i'u����?�Unknown
pSHostPrefetchDataset"PrefetchDataset/_27(1�������?9�������?A�������?I�������?ab{?��c�>iq�����?�Unknown
�THostAssertCardinalityDataset"AssertCardinalityDataset/_12(1��C�l��?9��C�l��?A��C�l��?I��C�l��?a���:�>i��mJ���?�Unknown
hUHostTakeDataset"TakeDataset/_32(1D�l����?9D�l����?AD�l����?ID�l����?a�1�M��>i�������?�Unknown*�O
~Device_FusedConv2D"sequential/conv2d_1/Relu(l1ffff���@9�)F�a@Affff���@I�)F�a@Q(��x��?Y(��x��?�Unknown�C��#}�?
~Device_FusedConv2D"sequential/conv2d_3/Relu(41T㥛�	�@9[���Aa@AT㥛�	�@I[���Aa@Q�:-�N��?Ynj�K ��?�Unknown��}P+�"e?
tDevice_FusedConv2D"sequential/conv2d_2/Relu(41�$�׸@9$|̞��^@A�$�׸@I$|̞��^@Qf�~���?Y���q��?�Unknown
rDevice_FusedConv2D"sequential/conv2d/Relu(21��ʡ�C�@9A��h:�]@A��ʡ�C�@IA��h:�]@Q������?Y�������?�Unknown
~Device_FusedConv2D"sequential/conv2d_4/Relu(61u��,�@9,ޡv\w[@Au��,�@I,ޡv\w[@QZ�"{��?Y�a_�?�?�Unknown�:cR+h?
~Device_FusedConv2D"sequential/conv2d_5/Relu(41��x��[�@9��n̈́[@A��x��[�@I��n̈́[@Qw!�iF��?Y�L,!��?�Unknown����S�g?
wDeviceMaxPool" sequential/max_pooling2d/MaxPool(21F���ԡ�@9-`���2@AF���ԡ�@I-`���2@Q4K	��?Y�_�4=g�?�Unknown
mDeviceMatMul"sequential/dense/MatMul(21�x�&1��@9�>�'I�'@A�x�&1��@I�>�'I�'@Q��A_���?Y�e*���?�Unknown
q	DeviceSoftmax"sequential/dense_1/Softmax(211�Z�@9�.9��%@A1�Z�@I�.9��%@Q�����?Y#�sl��?�Unknown
g
Device_Send"IteratorGetNext/_1()1㥛� �@9*"D��]*@A㥛� �@I*"D��]*@Q�֔ ���?Y�u\�r�?�Unknown
oDeviceMatMul"sequential/dense_1/MatMul(21��/�xy@9�(�[ZM @A��/�xy@I�(�[ZM @Q�~���<�?Yy�-�ȳ�?�Unknown
yDeviceMaxPool""sequential/max_pooling2d_1/MaxPool(21�l����w@9�a��h�@A�l����w@I�a��h�@Q]�R��~?Y=����?�Unknown
�Device	Transpose"zsequential/conv2d/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_uint8_Conv2D-0-TransposeNHWCToNCHW-LayoutOptimizer(21���x�zt@9�wg�6@A���x�zt@I�wg�6@QE�Uz?YI�9(	%�?�Unknown
�DeviceCast"Ksequential/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_float_Cast(21     �i@9�z�G�@A     �i@I�z�G�@Q9��E>�p?Y�Ť)F�?�Unknown
vDeviceAssignAddVariableOp"AssignAddVariableOp(2133333�i@9?5^�I�@A33333�i@I?5^�I�@Q��B�U{p?Y��kP g�?�Unknown
yDeviceMaxPool""sequential/max_pooling2d_2/MaxPool(21��ʡEf@9�"��@A��ʡEf@I�"��@Q4]�.�dl?Y��2���?�Unknown
�Device	Transpose"Jsequential/max_pooling2d_2/MaxPool-0-0-TransposeNCHWToNHWC-LayoutOptimizer(215^�I�d@9ɫs��
@A5^�I�d@Iɫs��
@Q�|#A�j?Yc>�sH��?�Unknown
oDeviceBiasAdd"sequential/dense/BiasAdd(21�����Mb@9<���m@A�����Mb@I<���m@Q5�@�Ug?Y���M���?�Unknown
iDeviceRelu"sequential/dense/Relu(21+�-b@9�7��C@A+�-b@I�7��C@Q�?V?,g?Y�Tl���?�Unknown
qDeviceBiasAdd"sequential/dense_1/BiasAdd(21�n���a@9��"�@A�n���a@I��"�@Q,Y�t��f?Y1��,y��?�Unknown
cDeviceConcatV2"ConcatV2(21T㥛� `@9Mۿ�Ҥ@AT㥛� `@IMۿ�Ҥ@Q�N���d?Y@H1���?�Unknown�
gDevice_Recv"IteratorGetNext/_2(	1ˡE���H@9|:��7@AˡE���H@I|:��7@Q_�:��O?Y     �?�Unknown
iHostMakeIterator"MakeIterator(1-���H�A9��$ؔ!�@A�Z��AIY�J�6�@aw~���?iw~���?�Unknown�
rHostDataset"Iterator::Root::ParallelMapV2(21�K7�Ѧ�@92��*Fn@A�K7�Ѧ�@I2��*Fn@a�q�r��?i����n�?�Unknown
mHostDeleteIterator"DeleteIterator(1��Q���@9i�)�%}@A��Q���@Ii�)�%}@a�L���?iB
}�$��?�Unknown�
�HostDataset"-Iterator::Root::FiniteTake::BatchV2::Prefetch(�1��nCֽ@9C����@A��nCֽ@IC����@a��F~4�?i��|���?�Unknown
xHostDataset"#Iterator::Root::FiniteTake::BatchV2(1}?5^
X�@9��s�/܀@Am����ٶ@Iݘ���?m@abr��?i=�L����?�Unknown
�HostDataset"6Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle(�1��(\/��@9)\���8#@A�t��״@I�M�@a�x��J̕?i�I1[`�?�Unknown
�HostDataset"@Iterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch(�1�v����@98R(�U�@A�v����@I8R(�U�@a��	����?i���3 �?�Unknown
cHostDataset"Iterator::Root(L1��"��)�@9�`	�x@Ash��<Ѯ@I�ޢ���I@a(|�}�?iq�h���?�Unknown
eHost_Send"IteratorGetNext/_1(21�rh��@�@9t{Ic4K@A�rh��@�@It{Ic4K@a���h:�?i�
̐��?�Unknown
� HostDataset"QIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch::MemoryCacheImpl(�1�O��n�@9���ȍX�?A�O��n�@I���ȍX�?a++"c��u?iO���?�Unknown
a!HostConcatV2"ConcatV2(1d;�O���@9W�[�NH@Ad;�O���@IW�[�NH@a w�s?i ���t-�?�Unknown�
�"HostDataset"MIterator::Root::FiniteTake::BatchV2::Prefetch::Shuffle::Prefetch::MemoryCache(�1�v���Z�@9Φ�����?Ad;�O���@Iƀ���?a�I��p?i)!��N�?�Unknown
w#HostAnonymousIteratorV2"AnonymousIteratorV2(1�C�l癄@9�z�q�Z9@A�C�l癄@I�z�q�Z9@a<��e��e?i�Ārd�?�Unknown�
�$HostDataset"8Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch(1Zd;�O=�@9Zd;�O=S@AZd;�O=�@IZd;�O=S@a=q&d?i6��5x�?�Unknown
�%HostDataset".Iterator::Root::ParallelMapV2::Zip[0]::FlatMap(1��/]o�@9�#���Y@A;�O���@IOԿ�H@aIx{��b?i2��v��?�Unknown
o&HostIteratorGetNext"IteratorGetNext(L1u��>�@9:a�|-�g@A��"��{�@I��c|r@a�#��5Ib?iVU��h��?�Unknown�
o'HostDataset"Iterator::Root::FiniteTake(1������@9,����@AP��nt@I'_D��(@aT�l���T?i�z��?�Unknown
k(HostRepeatDataset"RepeatDataset(21NbX9�o@9��G��0@ANbX9�o@I��G��0@aYF�DP?i��ԩ'��?�Unknown�
q)HostAssignVariableOp"AssignVariableOp(1q=
ףLo@9���$@Aq=
ףLo@I���$@a��T�^P?i�8�V��?�Unknown�
y*HostParallelMapDatasetV2"ParallelMapDatasetV2(1V-��l@9���It"@AV-��l@I���It"@a�Y1�)(N?it�����?�Unknown�
m+HostOptionsDataset"OptionsDataset(1�$��ok@9�ŧ �!@A�$��ok@I�ŧ �!@a.h󃡱L?iN�
��?�Unknown�
^,HostGatherV2"GatherV2(1�MbX�j@97�A`��Q@A�MbX�j@I7�A`��Q@a!(��"L?iܲ'��?�Unknown
e-Host
MapDataset"
MapDataset(1��ʡE�e@9j�@+0�@A��ʡE�e@Ij�@+0�@aYC�S�F?i��Ǫ���?�Unknown�
m.HostFlatMapDataset"FlatMapDataset(1���K�e@9����@A���K�e@I����@a1�v�3�F?iMu�7p��?�Unknown�
�/HostDataset"=Iterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map(1��ʡAg@9��ʡAG@A7�A`�b@I7�A`�B@aH�"$�B?iO2��*��?�Unknown
o0HostPrefetchDataset"PrefetchDataset(1L7�A`ua@9� �X@AL7�A`ua@I� �X@af_>�NBB?i�b���?�Unknown�
m1HostReadVariableOp"ReadVariableOp(1^�Ia@9��hW!�@A^�Ia@I��hW!�@a&vĔ��A?i3G4��?�Unknown�
e2Host
ZipDataset"
ZipDataset(1��x�&�^@9Q��C��@A��x�&�^@IQ��C��@a�Q\2@?i%u[�@��?�Unknown�
k3HostTensorDataset"TensorDataset(1`��"��]@9vyE��T@A`��"��]@IvyE��T@a�6���'??ilk�%��?�Unknown�
i4HostRangeDataset"RangeDataset(1���Ko\@9Q�Lۿ2@A���Ko\@IQ�Lۿ2@aO��`�=?i�1���?�Unknown�
X5HostRange"range(1�l����L@9��E�>@A�l����L@I��E�>@a�7O1G�-?ir��5���?�Unknown
m6HostBatchDatasetV2"BatchDatasetV2(1����MC@9����MC@A����MC@I����MC@aK��Qo�#?i���L���?�Unknown�
�7HostDataset"KIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat(1m����D@9m����$@A�VB@I�V"@a-f���"?ifї[&��?�Unknown
w8HostDataset""Iterator::Root::ParallelMapV2::Zip((1�C�l猔@9x��#�p@@A-���6A@I{�/L���?a�N�� "?i���fF��?�Unknown
�9HostDataset">Iterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate(1w��/�H@9�)g~@Aj�t�@@IT㥛�`@aԩ���� ?i�yr�R��?�Unknown
�:HostDataset"4Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat(1��v��zB@9�`���@AP��nC?@I���a�@a�2S�Y ?i�.�CX��?�Unknown
a;HostIdentity"Identity(1���S�4@9��խ���?A���S�4@I��խ���?a��.�?i�����?�Unknown�
�<HostDataset"NIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice(1bX9��.@9bX9���?AbX9��.@IbX9���?a����?i`������?�Unknown
g=HostPlaceholder"Placeholder/_2(1/�$�+@9/�$�@A/�$�+@I/�$�@a�6F�kS?iyV9���?�Unknown
Z>HostSlice"Slice_1(1������(@9������@A������(@I������@a�>�!K�	?in�e�^��?�Unknown
�?HostParallelInterleaveDatasetV4"ParallelInterleaveDatasetV4/_10(1ˡE���#@9ˡE���#@AˡE���#@IˡE���#@a�^��?i�=❲��?�Unknown
g@HostTakeDataset"TakeDataset(1�K7�A�#@9�K7�A�#@A�K7�A�#@I�K7�A�#@a�dI��?i	�f���?�Unknown�
uAHostTensorSliceDataset"TensorSliceDataset/_4(1��C�lg@9��C�lg@A��C�lg@I��C�lg@a]Tl ?i�hF��?�Unknown
XBHostSlice"Slice(1NbX94@9NbX94@ANbX94@INbX94@a��';@Q ?i�߀����?�Unknown
gCHostPlaceholder"Placeholder/_1(1���K�@9���K�
@A���K�@I���K�
@a�x����>i�
J����?�Unknown
gDHostPlaceholder"Placeholder/_3(1��/�$@9��/�$	@A��/�$@I��/�$	@aSc-L�>ioeN'���?�Unknown
gEHostPlaceholder"Placeholder/_0(1��K7��@9��K7��@A��K7��@I��K7��@a��G ��>i���'��?�Unknown
nFHostCacheDatasetV2"CacheDatasetV2/_18(1y�&1�@9y�&1�@Ay�&1�@Iy�&1�@a�*����>id�ZsY��?�Unknown
rGHostTensorSliceDataset"TensorSliceDataset(1�t��@9�t��@A�t��@I�t��@a�K����>i��}7���?�Unknown
�HHostDataset"@Iterator::Root::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor(1bX9��@9��y�):�?AbX9��@I��y�):�?a�	J|%��>i]��߸��?�Unknown
rIHostConcatenateDataset"ConcatenateDataset(1#��~j<@9#��~j<@A#��~j<@I#��~j<@a�'�mA�>io��b���?�Unknown
rJHostShuffleDatasetV3"ShuffleDatasetV3/_25(1u�V�@9u�V�@Au�V�@Iu�V�@a�vI,]��>iO]y��?�Unknown
�KHostDataset"RIterator::Root::ParallelMapV2::Zip[0]::FlatMap::Prefetch::Map::FiniteRepeat::Range(1�v��/@9�v��/�?A�v��/@I�v��/�?a�����'�>i,��@��?�Unknown
nLHostOptionsDataset"OptionsDataset/_13(1�����@9�����@A�����@I�����@a�֕Xs��>i<��Yl��?�Unknown
zMHostParallelMapDatasetV2"ParallelMapDatasetV2/_15(1�C�l�{@9�C�l�{@A�C�l�{@I�C�l�{@a|��G�`�>im���?�Unknown
nNHostBatchDatasetV2"BatchDatasetV2/_30(1'1�Z@9'1�Z@A'1�Z@I'1�Z@a���c��>i�gٴ��?�Unknown
�OHostDataset"MIterator::Root::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[1]::FromTensor(1���x�&@9���x�&�?A���x�&@I���x�&�?a�|�>��>i�������?�Unknown
pPHostPrefetchDataset"PrefetchDataset/_20(1��Q� @9��Q� @A��Q� @I��Q� @at?@t���>i�+�����?�Unknown
pQHostPrefetchDataset"PrefetchDataset/_27(1�������?9�������?A�������?I�������?a�F����>i� ���?�Unknown
�RHostAssertCardinalityDataset"AssertCardinalityDataset/_12(1��C�l��?9��C�l��?A��C�l��?I��C�l��?a]ą_ �>i�:����?�Unknown
hSHostTakeDataset"TakeDataset/_32(1D�l����?9D�l����?AD�l����?ID�l����?aZB����>i�������?�Unknown2Nvidia GPU (Ampere)
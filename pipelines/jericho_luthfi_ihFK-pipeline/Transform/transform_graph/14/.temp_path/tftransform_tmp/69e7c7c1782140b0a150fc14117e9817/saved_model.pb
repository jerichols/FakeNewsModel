Şb
Ô
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ł
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
ź
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
s
Substr	
input
pos"T
len"T

output"
Ttype:
2	"+
unitstringBYTE:
BYTE	UTF8_CHAR"serve*2.10.12v2.10.0-76-gfdfc646704c8óB
y
serving_default_inputsPlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0	*
shape:˙˙˙˙˙˙˙˙˙
s
serving_default_inputs_1Placeholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
a
serving_default_inputs_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
{
serving_default_inputs_3Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
{
serving_default_inputs_4Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0	*
shape:˙˙˙˙˙˙˙˙˙
{
serving_default_inputs_5Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
š
PartitionedCallPartitionedCallserving_default_inputsserving_default_inputs_1serving_default_inputs_2serving_default_inputs_3serving_default_inputs_4serving_default_inputs_5*
Tin

2			*
Tout
2	*
_collective_manager_ids
 *;
_output_shapes)
':˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_1350

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ę
valueŔB˝ Bś

created_variables
	resources
trackable_objects
initializers

assets
transform_fn

signatures* 
* 
* 
* 
* 
* 
* 

serving_default* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCallStatefulPartitionedCallsaver_filenameConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__traced_save_1379

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_restore_1389Á2

j
__inference__traced_save_1379
file_prefix
savev2_const

identity_1˘MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHo
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B °
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
Ń


"__inference_signature_wrapper_1350

inputs	
inputs_1
inputs_2	
inputs_3
inputs_4	
inputs_5
identity

identity_1	Ż
PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5*
Tin

2			*
Tout
2	*;
_output_shapes)
':˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 * 
fR
__inference_pruned_1336a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_1IdentityPartitionedCall:output:1*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:MI
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_1:D@

_output_shapes
:
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_3:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_4:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_5


__inference_pruned_1336

inputs	
inputs_1
inputs_2	
inputs_3
inputs_4	
inputs_5
identity

identity_1	\
SparseToDense/default_valueConst*
_output_shapes
: *
dtype0*
valueB B L

Substr/posConst*
_output_shapes
: *
dtype0*
value	B : M

Substr/lenConst*
_output_shapes
: *
dtype0*
value
B :^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"˙˙˙˙   Q
inputs_copyIdentityinputs*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙H
inputs_2_copyIdentityinputs_2*
T0	*
_output_shapes
:Q
inputs_1_copyIdentityinputs_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙Ő
SparseToDenseSparseToDenseinputs_copy:output:0inputs_2_copy:output:0inputs_1_copy:output:0$SparseToDense/default_value:output:0*
T0*
Tindices0	*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙c
StringLowerStringLowerSparseToDense:dense:0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
SubstrSubstrStringLower:output:0Substr/pos:output:0Substr/len:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙n
ReshapeReshapeSubstr:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙U
inputs_4_copyIdentityinputs_4*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`

Identity_1Identityinputs_4_copy:output:0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*t
_input_shapesc
a:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙::˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:- )
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:)%
#
_output_shapes
:˙˙˙˙˙˙˙˙˙: 

_output_shapes
::-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
F
 __inference__traced_restore_1389
file_prefix

identity_1
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHr
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B Ł
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"/device:CPU:0*
_output_shapes
 X
IdentityIdentityfile_prefix^NoOp"/device:CPU:0*
T0*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"ľ	J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_defaultí
9
inputs/
serving_default_inputs:0	˙˙˙˙˙˙˙˙˙
9
inputs_1-
serving_default_inputs_1:0˙˙˙˙˙˙˙˙˙
0
inputs_2$
serving_default_inputs_2:0	
=
inputs_31
serving_default_inputs_3:0˙˙˙˙˙˙˙˙˙
=
inputs_41
serving_default_inputs_4:0	˙˙˙˙˙˙˙˙˙
=
inputs_51
serving_default_inputs_5:0˙˙˙˙˙˙˙˙˙4
Body_xf)
PartitionedCall:0˙˙˙˙˙˙˙˙˙4
Label_xf(
PartitionedCall:1	˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:ü

created_variables
	resources
trackable_objects
initializers

assets
transform_fn

signatures"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
WBU
__inference_pruned_1336inputsinputs_1inputs_2inputs_3inputs_4inputs_5
,
serving_default"
signature_map
řBő
"__inference_signature_wrapper_1350inputsinputs_1inputs_2inputs_3inputs_4inputs_5"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
__inference_pruned_1336ç˘ü
ô˘đ
íŞé
J
BodyB?'˘$
ú˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
SparseTensorSpec 
5
Headline)&
inputs/Headline˙˙˙˙˙˙˙˙˙
/
Label&#
inputs/Label˙˙˙˙˙˙˙˙˙	
3
ďťżURLs(%
inputs/ďťżURLs˙˙˙˙˙˙˙˙˙
Ş "bŞ_
-
Body_xf"
Body_xf˙˙˙˙˙˙˙˙˙
.
Label_xf"
Label_xf˙˙˙˙˙˙˙˙˙	Š
"__inference_signature_wrapper_1350˘
˘ 
Ş
*
inputs 
inputs˙˙˙˙˙˙˙˙˙	
*
inputs_1
inputs_1˙˙˙˙˙˙˙˙˙
!
inputs_2
inputs_2	
.
inputs_3"
inputs_3˙˙˙˙˙˙˙˙˙
.
inputs_4"
inputs_4˙˙˙˙˙˙˙˙˙	
.
inputs_5"
inputs_5˙˙˙˙˙˙˙˙˙"bŞ_
-
Body_xf"
Body_xf˙˙˙˙˙˙˙˙˙
.
Label_xf"
Label_xf˙˙˙˙˙˙˙˙˙	
�
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.12v2.4.1-0-g85c8b2a817f8��
}
dense_326/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*!
shared_namedense_326/kernel
v
$dense_326/kernel/Read/ReadVariableOpReadVariableOpdense_326/kernel*
_output_shapes
:	�*
dtype0
u
dense_326/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_326/bias
n
"dense_326/bias/Read/ReadVariableOpReadVariableOpdense_326/bias*
_output_shapes	
:�*
dtype0
}
dense_327/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*!
shared_namedense_327/kernel
v
$dense_327/kernel/Read/ReadVariableOpReadVariableOpdense_327/kernel*
_output_shapes
:	�
*
dtype0
t
dense_327/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_327/bias
m
"dense_327/bias/Read/ReadVariableOpReadVariableOpdense_327/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
Adam/dense_326/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/dense_326/kernel/m
�
+Adam/dense_326/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_326/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/dense_326/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_326/bias/m
|
)Adam/dense_326/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_326/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_327/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*(
shared_nameAdam/dense_327/kernel/m
�
+Adam/dense_327/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_327/kernel/m*
_output_shapes
:	�
*
dtype0
�
Adam/dense_327/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_327/bias/m
{
)Adam/dense_327/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_327/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_326/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/dense_326/kernel/v
�
+Adam/dense_326/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_326/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/dense_326/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_326/bias/v
|
)Adam/dense_326/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_326/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_327/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
*(
shared_nameAdam/dense_327/kernel/v
�
+Adam/dense_327/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_327/kernel/v*
_output_shapes
:	�
*
dtype0
�
Adam/dense_327/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_327/bias/v
{
)Adam/dense_327/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_327/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
�!
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*� 
value� B�  B� 
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
	optimizer
regularization_losses
	variables
trainable_variables
		keras_api


signatures
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
�
iter

 beta_1

!beta_2
	"decay
#learning_ratemHmImJmKvLvMvNvO
 

0
1
2
3

0
1
2
3
�
$layer_regularization_losses
%layer_metrics

&layers
regularization_losses
	variables
'metrics
(non_trainable_variables
trainable_variables
 
 
 
 
�
)layer_regularization_losses
*layer_metrics

+layers
regularization_losses
	variables
,metrics
-non_trainable_variables
trainable_variables
\Z
VARIABLE_VALUEdense_326/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_326/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
.layer_regularization_losses
/layer_metrics

0layers
regularization_losses
	variables
1metrics
2non_trainable_variables
trainable_variables
\Z
VARIABLE_VALUEdense_327/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_327/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
3layer_regularization_losses
4layer_metrics

5layers
regularization_losses
	variables
6metrics
7non_trainable_variables
trainable_variables
 
 
 
�
8layer_regularization_losses
9layer_metrics

:layers
regularization_losses
	variables
;metrics
<non_trainable_variables
trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
2
3

=0
>1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	?total
	@count
A	variables
B	keras_api
D
	Ctotal
	Dcount
E
_fn_kwargs
F	variables
G	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

A	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1

F	variables
}
VARIABLE_VALUEAdam/dense_326/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_326/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_327/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_327/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_326/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_326/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_327/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_327/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
 serving_default_lambda_163_inputPlaceholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_lambda_163_inputdense_326/kerneldense_326/biasdense_327/kerneldense_327/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_4692419
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_326/kernel/Read/ReadVariableOp"dense_326/bias/Read/ReadVariableOp$dense_327/kernel/Read/ReadVariableOp"dense_327/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_326/kernel/m/Read/ReadVariableOp)Adam/dense_326/bias/m/Read/ReadVariableOp+Adam/dense_327/kernel/m/Read/ReadVariableOp)Adam/dense_327/bias/m/Read/ReadVariableOp+Adam/dense_326/kernel/v/Read/ReadVariableOp)Adam/dense_326/bias/v/Read/ReadVariableOp+Adam/dense_327/kernel/v/Read/ReadVariableOp)Adam/dense_327/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_4692794
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_326/kerneldense_326/biasdense_327/kerneldense_327/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_326/kernel/mAdam/dense_326/bias/mAdam/dense_327/kernel/mAdam/dense_327/bias/mAdam/dense_326/kernel/vAdam/dense_326/bias/vAdam/dense_327/kernel/vAdam/dense_327/bias/v*!
Tin
2*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_4692867�
�
�
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692385

inputs
dense_326_4692373
dense_326_4692375
dense_327_4692378
dense_327_4692380
identity��!dense_326/StatefulPartitionedCall�!dense_327/StatefulPartitionedCall�
lambda_163/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_163_layer_call_and_return_conditional_losses_46921932
lambda_163/PartitionedCall�
!dense_326/StatefulPartitionedCallStatefulPartitionedCall#lambda_163/PartitionedCall:output:0dense_326_4692373dense_326_4692375*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_326_layer_call_and_return_conditional_losses_46922372#
!dense_326/StatefulPartitionedCall�
!dense_327/StatefulPartitionedCallStatefulPartitionedCall*dense_326/StatefulPartitionedCall:output:0dense_327_4692378dense_327_4692380*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_327_layer_call_and_return_conditional_losses_46922832#
!dense_327/StatefulPartitionedCall�
reshape_163/PartitionedCallPartitionedCall*dense_327/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_163_layer_call_and_return_conditional_losses_46923122
reshape_163/PartitionedCall�
IdentityIdentity$reshape_163/PartitionedCall:output:0"^dense_326/StatefulPartitionedCall"^dense_327/StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2F
!dense_326/StatefulPartitionedCall!dense_326/StatefulPartitionedCall2F
!dense_327/StatefulPartitionedCall!dense_327/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
+__inference_dense_326_layer_call_fn_4692651

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_326_layer_call_and_return_conditional_losses_46922372
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
c
G__inference_lambda_163_layer_call_and_return_conditional_losses_4692185

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    2
strided_slice/stack�
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack_1�
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2�
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask2
strided_slicen
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
� 
�
F__inference_dense_326_layer_call_and_return_conditional_losses_4692642

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
0__inference_sequential_163_layer_call_fn_4692572

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_163_layer_call_and_return_conditional_losses_46923562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_lambda_163_layer_call_fn_4692611

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_163_layer_call_and_return_conditional_losses_46921932
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�w
�
"__inference__wrapped_model_4692173
lambda_163_input>
:sequential_163_dense_326_tensordot_readvariableop_resource<
8sequential_163_dense_326_biasadd_readvariableop_resource>
:sequential_163_dense_327_tensordot_readvariableop_resource<
8sequential_163_dense_327_biasadd_readvariableop_resource
identity��/sequential_163/dense_326/BiasAdd/ReadVariableOp�1sequential_163/dense_326/Tensordot/ReadVariableOp�/sequential_163/dense_327/BiasAdd/ReadVariableOp�1sequential_163/dense_327/Tensordot/ReadVariableOp�
-sequential_163/lambda_163/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    2/
-sequential_163/lambda_163/strided_slice/stack�
/sequential_163/lambda_163/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            21
/sequential_163/lambda_163/strided_slice/stack_1�
/sequential_163/lambda_163/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/sequential_163/lambda_163/strided_slice/stack_2�
'sequential_163/lambda_163/strided_sliceStridedSlicelambda_163_input6sequential_163/lambda_163/strided_slice/stack:output:08sequential_163/lambda_163/strided_slice/stack_1:output:08sequential_163/lambda_163/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask2)
'sequential_163/lambda_163/strided_slice�
1sequential_163/dense_326/Tensordot/ReadVariableOpReadVariableOp:sequential_163_dense_326_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype023
1sequential_163/dense_326/Tensordot/ReadVariableOp�
'sequential_163/dense_326/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2)
'sequential_163/dense_326/Tensordot/axes�
'sequential_163/dense_326/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2)
'sequential_163/dense_326/Tensordot/free�
(sequential_163/dense_326/Tensordot/ShapeShape0sequential_163/lambda_163/strided_slice:output:0*
T0*
_output_shapes
:2*
(sequential_163/dense_326/Tensordot/Shape�
0sequential_163/dense_326/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_163/dense_326/Tensordot/GatherV2/axis�
+sequential_163/dense_326/Tensordot/GatherV2GatherV21sequential_163/dense_326/Tensordot/Shape:output:00sequential_163/dense_326/Tensordot/free:output:09sequential_163/dense_326/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+sequential_163/dense_326/Tensordot/GatherV2�
2sequential_163/dense_326/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2sequential_163/dense_326/Tensordot/GatherV2_1/axis�
-sequential_163/dense_326/Tensordot/GatherV2_1GatherV21sequential_163/dense_326/Tensordot/Shape:output:00sequential_163/dense_326/Tensordot/axes:output:0;sequential_163/dense_326/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-sequential_163/dense_326/Tensordot/GatherV2_1�
(sequential_163/dense_326/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_163/dense_326/Tensordot/Const�
'sequential_163/dense_326/Tensordot/ProdProd4sequential_163/dense_326/Tensordot/GatherV2:output:01sequential_163/dense_326/Tensordot/Const:output:0*
T0*
_output_shapes
: 2)
'sequential_163/dense_326/Tensordot/Prod�
*sequential_163/dense_326/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_163/dense_326/Tensordot/Const_1�
)sequential_163/dense_326/Tensordot/Prod_1Prod6sequential_163/dense_326/Tensordot/GatherV2_1:output:03sequential_163/dense_326/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2+
)sequential_163/dense_326/Tensordot/Prod_1�
.sequential_163/dense_326/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_163/dense_326/Tensordot/concat/axis�
)sequential_163/dense_326/Tensordot/concatConcatV20sequential_163/dense_326/Tensordot/free:output:00sequential_163/dense_326/Tensordot/axes:output:07sequential_163/dense_326/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2+
)sequential_163/dense_326/Tensordot/concat�
(sequential_163/dense_326/Tensordot/stackPack0sequential_163/dense_326/Tensordot/Prod:output:02sequential_163/dense_326/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2*
(sequential_163/dense_326/Tensordot/stack�
,sequential_163/dense_326/Tensordot/transpose	Transpose0sequential_163/lambda_163/strided_slice:output:02sequential_163/dense_326/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������2.
,sequential_163/dense_326/Tensordot/transpose�
*sequential_163/dense_326/Tensordot/ReshapeReshape0sequential_163/dense_326/Tensordot/transpose:y:01sequential_163/dense_326/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2,
*sequential_163/dense_326/Tensordot/Reshape�
)sequential_163/dense_326/Tensordot/MatMulMatMul3sequential_163/dense_326/Tensordot/Reshape:output:09sequential_163/dense_326/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)sequential_163/dense_326/Tensordot/MatMul�
*sequential_163/dense_326/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2,
*sequential_163/dense_326/Tensordot/Const_2�
0sequential_163/dense_326/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_163/dense_326/Tensordot/concat_1/axis�
+sequential_163/dense_326/Tensordot/concat_1ConcatV24sequential_163/dense_326/Tensordot/GatherV2:output:03sequential_163/dense_326/Tensordot/Const_2:output:09sequential_163/dense_326/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2-
+sequential_163/dense_326/Tensordot/concat_1�
"sequential_163/dense_326/TensordotReshape3sequential_163/dense_326/Tensordot/MatMul:product:04sequential_163/dense_326/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2$
"sequential_163/dense_326/Tensordot�
/sequential_163/dense_326/BiasAdd/ReadVariableOpReadVariableOp8sequential_163_dense_326_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_163/dense_326/BiasAdd/ReadVariableOp�
 sequential_163/dense_326/BiasAddBiasAdd+sequential_163/dense_326/Tensordot:output:07sequential_163/dense_326/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2"
 sequential_163/dense_326/BiasAdd�
sequential_163/dense_326/ReluRelu)sequential_163/dense_326/BiasAdd:output:0*
T0*,
_output_shapes
:����������2
sequential_163/dense_326/Relu�
1sequential_163/dense_327/Tensordot/ReadVariableOpReadVariableOp:sequential_163_dense_327_tensordot_readvariableop_resource*
_output_shapes
:	�
*
dtype023
1sequential_163/dense_327/Tensordot/ReadVariableOp�
'sequential_163/dense_327/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2)
'sequential_163/dense_327/Tensordot/axes�
'sequential_163/dense_327/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2)
'sequential_163/dense_327/Tensordot/free�
(sequential_163/dense_327/Tensordot/ShapeShape+sequential_163/dense_326/Relu:activations:0*
T0*
_output_shapes
:2*
(sequential_163/dense_327/Tensordot/Shape�
0sequential_163/dense_327/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_163/dense_327/Tensordot/GatherV2/axis�
+sequential_163/dense_327/Tensordot/GatherV2GatherV21sequential_163/dense_327/Tensordot/Shape:output:00sequential_163/dense_327/Tensordot/free:output:09sequential_163/dense_327/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+sequential_163/dense_327/Tensordot/GatherV2�
2sequential_163/dense_327/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2sequential_163/dense_327/Tensordot/GatherV2_1/axis�
-sequential_163/dense_327/Tensordot/GatherV2_1GatherV21sequential_163/dense_327/Tensordot/Shape:output:00sequential_163/dense_327/Tensordot/axes:output:0;sequential_163/dense_327/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-sequential_163/dense_327/Tensordot/GatherV2_1�
(sequential_163/dense_327/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_163/dense_327/Tensordot/Const�
'sequential_163/dense_327/Tensordot/ProdProd4sequential_163/dense_327/Tensordot/GatherV2:output:01sequential_163/dense_327/Tensordot/Const:output:0*
T0*
_output_shapes
: 2)
'sequential_163/dense_327/Tensordot/Prod�
*sequential_163/dense_327/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_163/dense_327/Tensordot/Const_1�
)sequential_163/dense_327/Tensordot/Prod_1Prod6sequential_163/dense_327/Tensordot/GatherV2_1:output:03sequential_163/dense_327/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2+
)sequential_163/dense_327/Tensordot/Prod_1�
.sequential_163/dense_327/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_163/dense_327/Tensordot/concat/axis�
)sequential_163/dense_327/Tensordot/concatConcatV20sequential_163/dense_327/Tensordot/free:output:00sequential_163/dense_327/Tensordot/axes:output:07sequential_163/dense_327/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2+
)sequential_163/dense_327/Tensordot/concat�
(sequential_163/dense_327/Tensordot/stackPack0sequential_163/dense_327/Tensordot/Prod:output:02sequential_163/dense_327/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2*
(sequential_163/dense_327/Tensordot/stack�
,sequential_163/dense_327/Tensordot/transpose	Transpose+sequential_163/dense_326/Relu:activations:02sequential_163/dense_327/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������2.
,sequential_163/dense_327/Tensordot/transpose�
*sequential_163/dense_327/Tensordot/ReshapeReshape0sequential_163/dense_327/Tensordot/transpose:y:01sequential_163/dense_327/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2,
*sequential_163/dense_327/Tensordot/Reshape�
)sequential_163/dense_327/Tensordot/MatMulMatMul3sequential_163/dense_327/Tensordot/Reshape:output:09sequential_163/dense_327/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2+
)sequential_163/dense_327/Tensordot/MatMul�
*sequential_163/dense_327/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
2,
*sequential_163/dense_327/Tensordot/Const_2�
0sequential_163/dense_327/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_163/dense_327/Tensordot/concat_1/axis�
+sequential_163/dense_327/Tensordot/concat_1ConcatV24sequential_163/dense_327/Tensordot/GatherV2:output:03sequential_163/dense_327/Tensordot/Const_2:output:09sequential_163/dense_327/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2-
+sequential_163/dense_327/Tensordot/concat_1�
"sequential_163/dense_327/TensordotReshape3sequential_163/dense_327/Tensordot/MatMul:product:04sequential_163/dense_327/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������
2$
"sequential_163/dense_327/Tensordot�
/sequential_163/dense_327/BiasAdd/ReadVariableOpReadVariableOp8sequential_163_dense_327_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype021
/sequential_163/dense_327/BiasAdd/ReadVariableOp�
 sequential_163/dense_327/BiasAddBiasAdd+sequential_163/dense_327/Tensordot:output:07sequential_163/dense_327/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������
2"
 sequential_163/dense_327/BiasAdd�
 sequential_163/reshape_163/ShapeShape)sequential_163/dense_327/BiasAdd:output:0*
T0*
_output_shapes
:2"
 sequential_163/reshape_163/Shape�
.sequential_163/reshape_163/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_163/reshape_163/strided_slice/stack�
0sequential_163/reshape_163/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_163/reshape_163/strided_slice/stack_1�
0sequential_163/reshape_163/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_163/reshape_163/strided_slice/stack_2�
(sequential_163/reshape_163/strided_sliceStridedSlice)sequential_163/reshape_163/Shape:output:07sequential_163/reshape_163/strided_slice/stack:output:09sequential_163/reshape_163/strided_slice/stack_1:output:09sequential_163/reshape_163/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_163/reshape_163/strided_slice�
*sequential_163/reshape_163/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_163/reshape_163/Reshape/shape/1�
*sequential_163/reshape_163/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_163/reshape_163/Reshape/shape/2�
(sequential_163/reshape_163/Reshape/shapePack1sequential_163/reshape_163/strided_slice:output:03sequential_163/reshape_163/Reshape/shape/1:output:03sequential_163/reshape_163/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2*
(sequential_163/reshape_163/Reshape/shape�
"sequential_163/reshape_163/ReshapeReshape)sequential_163/dense_327/BiasAdd:output:01sequential_163/reshape_163/Reshape/shape:output:0*
T0*+
_output_shapes
:���������2$
"sequential_163/reshape_163/Reshape�
IdentityIdentity+sequential_163/reshape_163/Reshape:output:00^sequential_163/dense_326/BiasAdd/ReadVariableOp2^sequential_163/dense_326/Tensordot/ReadVariableOp0^sequential_163/dense_327/BiasAdd/ReadVariableOp2^sequential_163/dense_327/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2b
/sequential_163/dense_326/BiasAdd/ReadVariableOp/sequential_163/dense_326/BiasAdd/ReadVariableOp2f
1sequential_163/dense_326/Tensordot/ReadVariableOp1sequential_163/dense_326/Tensordot/ReadVariableOp2b
/sequential_163/dense_327/BiasAdd/ReadVariableOp/sequential_163/dense_327/BiasAdd/ReadVariableOp2f
1sequential_163/dense_327/Tensordot/ReadVariableOp1sequential_163/dense_327/Tensordot/ReadVariableOp:^ Z
,
_output_shapes
:����������
*
_user_specified_namelambda_163_input
�]
�
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692559

inputs/
+dense_326_tensordot_readvariableop_resource-
)dense_326_biasadd_readvariableop_resource/
+dense_327_tensordot_readvariableop_resource-
)dense_327_biasadd_readvariableop_resource
identity�� dense_326/BiasAdd/ReadVariableOp�"dense_326/Tensordot/ReadVariableOp� dense_327/BiasAdd/ReadVariableOp�"dense_327/Tensordot/ReadVariableOp�
lambda_163/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    2 
lambda_163/strided_slice/stack�
 lambda_163/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2"
 lambda_163/strided_slice/stack_1�
 lambda_163/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2"
 lambda_163/strided_slice/stack_2�
lambda_163/strided_sliceStridedSliceinputs'lambda_163/strided_slice/stack:output:0)lambda_163/strided_slice/stack_1:output:0)lambda_163/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask2
lambda_163/strided_slice�
"dense_326/Tensordot/ReadVariableOpReadVariableOp+dense_326_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"dense_326/Tensordot/ReadVariableOp~
dense_326/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_326/Tensordot/axes�
dense_326/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_326/Tensordot/free�
dense_326/Tensordot/ShapeShape!lambda_163/strided_slice:output:0*
T0*
_output_shapes
:2
dense_326/Tensordot/Shape�
!dense_326/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_326/Tensordot/GatherV2/axis�
dense_326/Tensordot/GatherV2GatherV2"dense_326/Tensordot/Shape:output:0!dense_326/Tensordot/free:output:0*dense_326/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_326/Tensordot/GatherV2�
#dense_326/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_326/Tensordot/GatherV2_1/axis�
dense_326/Tensordot/GatherV2_1GatherV2"dense_326/Tensordot/Shape:output:0!dense_326/Tensordot/axes:output:0,dense_326/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_326/Tensordot/GatherV2_1�
dense_326/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_326/Tensordot/Const�
dense_326/Tensordot/ProdProd%dense_326/Tensordot/GatherV2:output:0"dense_326/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_326/Tensordot/Prod�
dense_326/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_326/Tensordot/Const_1�
dense_326/Tensordot/Prod_1Prod'dense_326/Tensordot/GatherV2_1:output:0$dense_326/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_326/Tensordot/Prod_1�
dense_326/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_326/Tensordot/concat/axis�
dense_326/Tensordot/concatConcatV2!dense_326/Tensordot/free:output:0!dense_326/Tensordot/axes:output:0(dense_326/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_326/Tensordot/concat�
dense_326/Tensordot/stackPack!dense_326/Tensordot/Prod:output:0#dense_326/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_326/Tensordot/stack�
dense_326/Tensordot/transpose	Transpose!lambda_163/strided_slice:output:0#dense_326/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������2
dense_326/Tensordot/transpose�
dense_326/Tensordot/ReshapeReshape!dense_326/Tensordot/transpose:y:0"dense_326/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_326/Tensordot/Reshape�
dense_326/Tensordot/MatMulMatMul$dense_326/Tensordot/Reshape:output:0*dense_326/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_326/Tensordot/MatMul�
dense_326/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
dense_326/Tensordot/Const_2�
!dense_326/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_326/Tensordot/concat_1/axis�
dense_326/Tensordot/concat_1ConcatV2%dense_326/Tensordot/GatherV2:output:0$dense_326/Tensordot/Const_2:output:0*dense_326/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_326/Tensordot/concat_1�
dense_326/TensordotReshape$dense_326/Tensordot/MatMul:product:0%dense_326/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2
dense_326/Tensordot�
 dense_326/BiasAdd/ReadVariableOpReadVariableOp)dense_326_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 dense_326/BiasAdd/ReadVariableOp�
dense_326/BiasAddBiasAdddense_326/Tensordot:output:0(dense_326/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
dense_326/BiasAdd{
dense_326/ReluReludense_326/BiasAdd:output:0*
T0*,
_output_shapes
:����������2
dense_326/Relu�
"dense_327/Tensordot/ReadVariableOpReadVariableOp+dense_327_tensordot_readvariableop_resource*
_output_shapes
:	�
*
dtype02$
"dense_327/Tensordot/ReadVariableOp~
dense_327/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_327/Tensordot/axes�
dense_327/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_327/Tensordot/free�
dense_327/Tensordot/ShapeShapedense_326/Relu:activations:0*
T0*
_output_shapes
:2
dense_327/Tensordot/Shape�
!dense_327/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_327/Tensordot/GatherV2/axis�
dense_327/Tensordot/GatherV2GatherV2"dense_327/Tensordot/Shape:output:0!dense_327/Tensordot/free:output:0*dense_327/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_327/Tensordot/GatherV2�
#dense_327/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_327/Tensordot/GatherV2_1/axis�
dense_327/Tensordot/GatherV2_1GatherV2"dense_327/Tensordot/Shape:output:0!dense_327/Tensordot/axes:output:0,dense_327/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_327/Tensordot/GatherV2_1�
dense_327/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_327/Tensordot/Const�
dense_327/Tensordot/ProdProd%dense_327/Tensordot/GatherV2:output:0"dense_327/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_327/Tensordot/Prod�
dense_327/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_327/Tensordot/Const_1�
dense_327/Tensordot/Prod_1Prod'dense_327/Tensordot/GatherV2_1:output:0$dense_327/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_327/Tensordot/Prod_1�
dense_327/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_327/Tensordot/concat/axis�
dense_327/Tensordot/concatConcatV2!dense_327/Tensordot/free:output:0!dense_327/Tensordot/axes:output:0(dense_327/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_327/Tensordot/concat�
dense_327/Tensordot/stackPack!dense_327/Tensordot/Prod:output:0#dense_327/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_327/Tensordot/stack�
dense_327/Tensordot/transpose	Transposedense_326/Relu:activations:0#dense_327/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������2
dense_327/Tensordot/transpose�
dense_327/Tensordot/ReshapeReshape!dense_327/Tensordot/transpose:y:0"dense_327/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_327/Tensordot/Reshape�
dense_327/Tensordot/MatMulMatMul$dense_327/Tensordot/Reshape:output:0*dense_327/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_327/Tensordot/MatMul�
dense_327/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
2
dense_327/Tensordot/Const_2�
!dense_327/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_327/Tensordot/concat_1/axis�
dense_327/Tensordot/concat_1ConcatV2%dense_327/Tensordot/GatherV2:output:0$dense_327/Tensordot/Const_2:output:0*dense_327/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_327/Tensordot/concat_1�
dense_327/TensordotReshape$dense_327/Tensordot/MatMul:product:0%dense_327/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������
2
dense_327/Tensordot�
 dense_327/BiasAdd/ReadVariableOpReadVariableOp)dense_327_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_327/BiasAdd/ReadVariableOp�
dense_327/BiasAddBiasAdddense_327/Tensordot:output:0(dense_327/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������
2
dense_327/BiasAddp
reshape_163/ShapeShapedense_327/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_163/Shape�
reshape_163/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_163/strided_slice/stack�
!reshape_163/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_163/strided_slice/stack_1�
!reshape_163/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_163/strided_slice/stack_2�
reshape_163/strided_sliceStridedSlicereshape_163/Shape:output:0(reshape_163/strided_slice/stack:output:0*reshape_163/strided_slice/stack_1:output:0*reshape_163/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_163/strided_slice|
reshape_163/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_163/Reshape/shape/1|
reshape_163/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_163/Reshape/shape/2�
reshape_163/Reshape/shapePack"reshape_163/strided_slice:output:0$reshape_163/Reshape/shape/1:output:0$reshape_163/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_163/Reshape/shape�
reshape_163/ReshapeReshapedense_327/BiasAdd:output:0"reshape_163/Reshape/shape:output:0*
T0*+
_output_shapes
:���������2
reshape_163/Reshape�
IdentityIdentityreshape_163/Reshape:output:0!^dense_326/BiasAdd/ReadVariableOp#^dense_326/Tensordot/ReadVariableOp!^dense_327/BiasAdd/ReadVariableOp#^dense_327/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2D
 dense_326/BiasAdd/ReadVariableOp dense_326/BiasAdd/ReadVariableOp2H
"dense_326/Tensordot/ReadVariableOp"dense_326/Tensordot/ReadVariableOp2D
 dense_327/BiasAdd/ReadVariableOp dense_327/BiasAdd/ReadVariableOp2H
"dense_327/Tensordot/ReadVariableOp"dense_327/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
+__inference_dense_327_layer_call_fn_4692690

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_327_layer_call_and_return_conditional_losses_46922832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :����������::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
H__inference_reshape_163_layer_call_and_return_conditional_losses_4692312

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
0__inference_sequential_163_layer_call_fn_4692367
lambda_163_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllambda_163_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_163_layer_call_and_return_conditional_losses_46923562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
,
_output_shapes
:����������
*
_user_specified_namelambda_163_input
�
�
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692337
lambda_163_input
dense_326_4692325
dense_326_4692327
dense_327_4692330
dense_327_4692332
identity��!dense_326/StatefulPartitionedCall�!dense_327/StatefulPartitionedCall�
lambda_163/PartitionedCallPartitionedCalllambda_163_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_163_layer_call_and_return_conditional_losses_46921932
lambda_163/PartitionedCall�
!dense_326/StatefulPartitionedCallStatefulPartitionedCall#lambda_163/PartitionedCall:output:0dense_326_4692325dense_326_4692327*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_326_layer_call_and_return_conditional_losses_46922372#
!dense_326/StatefulPartitionedCall�
!dense_327/StatefulPartitionedCallStatefulPartitionedCall*dense_326/StatefulPartitionedCall:output:0dense_327_4692330dense_327_4692332*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_327_layer_call_and_return_conditional_losses_46922832#
!dense_327/StatefulPartitionedCall�
reshape_163/PartitionedCallPartitionedCall*dense_327/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_163_layer_call_and_return_conditional_losses_46923122
reshape_163/PartitionedCall�
IdentityIdentity$reshape_163/PartitionedCall:output:0"^dense_326/StatefulPartitionedCall"^dense_327/StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2F
!dense_326/StatefulPartitionedCall!dense_326/StatefulPartitionedCall2F
!dense_327/StatefulPartitionedCall!dense_327/StatefulPartitionedCall:^ Z
,
_output_shapes
:����������
*
_user_specified_namelambda_163_input
�
d
H__inference_reshape_163_layer_call_and_return_conditional_losses_4692703

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapes
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�Z
�

#__inference__traced_restore_4692867
file_prefix%
!assignvariableop_dense_326_kernel%
!assignvariableop_1_dense_326_bias'
#assignvariableop_2_dense_327_kernel%
!assignvariableop_3_dense_327_bias 
assignvariableop_4_adam_iter"
assignvariableop_5_adam_beta_1"
assignvariableop_6_adam_beta_2!
assignvariableop_7_adam_decay)
%assignvariableop_8_adam_learning_rate
assignvariableop_9_total
assignvariableop_10_count
assignvariableop_11_total_1
assignvariableop_12_count_1/
+assignvariableop_13_adam_dense_326_kernel_m-
)assignvariableop_14_adam_dense_326_bias_m/
+assignvariableop_15_adam_dense_327_kernel_m-
)assignvariableop_16_adam_dense_327_bias_m/
+assignvariableop_17_adam_dense_326_kernel_v-
)assignvariableop_18_adam_dense_326_bias_v/
+assignvariableop_19_adam_dense_327_kernel_v-
)assignvariableop_20_adam_dense_327_bias_v
identity_22��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp!assignvariableop_dense_326_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_326_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_327_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_327_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_dense_326_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_dense_326_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_dense_327_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_327_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_326_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_326_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_327_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_327_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21�
Identity_22IdentityIdentity_21:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_22"#
identity_22Identity_22:output:0*i
_input_shapesX
V: :::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692356

inputs
dense_326_4692344
dense_326_4692346
dense_327_4692349
dense_327_4692351
identity��!dense_326/StatefulPartitionedCall�!dense_327/StatefulPartitionedCall�
lambda_163/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_163_layer_call_and_return_conditional_losses_46921852
lambda_163/PartitionedCall�
!dense_326/StatefulPartitionedCallStatefulPartitionedCall#lambda_163/PartitionedCall:output:0dense_326_4692344dense_326_4692346*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_326_layer_call_and_return_conditional_losses_46922372#
!dense_326/StatefulPartitionedCall�
!dense_327/StatefulPartitionedCallStatefulPartitionedCall*dense_326/StatefulPartitionedCall:output:0dense_327_4692349dense_327_4692351*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_327_layer_call_and_return_conditional_losses_46922832#
!dense_327/StatefulPartitionedCall�
reshape_163/PartitionedCallPartitionedCall*dense_327/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_163_layer_call_and_return_conditional_losses_46923122
reshape_163/PartitionedCall�
IdentityIdentity$reshape_163/PartitionedCall:output:0"^dense_326/StatefulPartitionedCall"^dense_327/StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2F
!dense_326/StatefulPartitionedCall!dense_326/StatefulPartitionedCall2F
!dense_327/StatefulPartitionedCall!dense_327/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_lambda_163_layer_call_and_return_conditional_losses_4692593

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    2
strided_slice/stack�
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack_1�
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2�
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask2
strided_slicen
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
F__inference_dense_327_layer_call_and_return_conditional_losses_4692283

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:����������2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������
2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������
2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�3
�
 __inference__traced_save_4692794
file_prefix/
+savev2_dense_326_kernel_read_readvariableop-
)savev2_dense_326_bias_read_readvariableop/
+savev2_dense_327_kernel_read_readvariableop-
)savev2_dense_327_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_326_kernel_m_read_readvariableop4
0savev2_adam_dense_326_bias_m_read_readvariableop6
2savev2_adam_dense_327_kernel_m_read_readvariableop4
0savev2_adam_dense_327_bias_m_read_readvariableop6
2savev2_adam_dense_326_kernel_v_read_readvariableop4
0savev2_adam_dense_326_bias_v_read_readvariableop6
2savev2_adam_dense_327_kernel_v_read_readvariableop4
0savev2_adam_dense_327_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_326_kernel_read_readvariableop)savev2_dense_326_bias_read_readvariableop+savev2_dense_327_kernel_read_readvariableop)savev2_dense_327_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_326_kernel_m_read_readvariableop0savev2_adam_dense_326_bias_m_read_readvariableop2savev2_adam_dense_327_kernel_m_read_readvariableop0savev2_adam_dense_327_bias_m_read_readvariableop2savev2_adam_dense_326_kernel_v_read_readvariableop0savev2_adam_dense_326_bias_v_read_readvariableop2savev2_adam_dense_327_kernel_v_read_readvariableop0savev2_adam_dense_327_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
: :	�:�:	�
:
: : : : : : : : : :	�:�:	�
:
:	�:�:	�
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�
: 

_output_shapes
:
:%!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�
: 

_output_shapes
:
:

_output_shapes
: 
�
�
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692321
lambda_163_input
dense_326_4692248
dense_326_4692250
dense_327_4692294
dense_327_4692296
identity��!dense_326/StatefulPartitionedCall�!dense_327/StatefulPartitionedCall�
lambda_163/PartitionedCallPartitionedCalllambda_163_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_163_layer_call_and_return_conditional_losses_46921852
lambda_163/PartitionedCall�
!dense_326/StatefulPartitionedCallStatefulPartitionedCall#lambda_163/PartitionedCall:output:0dense_326_4692248dense_326_4692250*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_326_layer_call_and_return_conditional_losses_46922372#
!dense_326/StatefulPartitionedCall�
!dense_327/StatefulPartitionedCallStatefulPartitionedCall*dense_326/StatefulPartitionedCall:output:0dense_327_4692294dense_327_4692296*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_327_layer_call_and_return_conditional_losses_46922832#
!dense_327/StatefulPartitionedCall�
reshape_163/PartitionedCallPartitionedCall*dense_327/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_163_layer_call_and_return_conditional_losses_46923122
reshape_163/PartitionedCall�
IdentityIdentity$reshape_163/PartitionedCall:output:0"^dense_326/StatefulPartitionedCall"^dense_327/StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2F
!dense_326/StatefulPartitionedCall!dense_326/StatefulPartitionedCall2F
!dense_327/StatefulPartitionedCall!dense_327/StatefulPartitionedCall:^ Z
,
_output_shapes
:����������
*
_user_specified_namelambda_163_input
�
I
-__inference_reshape_163_layer_call_fn_4692708

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_163_layer_call_and_return_conditional_losses_46923122
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������
:S O
+
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
0__inference_sequential_163_layer_call_fn_4692396
lambda_163_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllambda_163_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_163_layer_call_and_return_conditional_losses_46923852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
,
_output_shapes
:����������
*
_user_specified_namelambda_163_input
�
�
%__inference_signature_wrapper_4692419
lambda_163_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllambda_163_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_46921732
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
,
_output_shapes
:����������
*
_user_specified_namelambda_163_input
�
c
G__inference_lambda_163_layer_call_and_return_conditional_losses_4692193

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    2
strided_slice/stack�
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack_1�
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2�
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask2
strided_slicen
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
0__inference_sequential_163_layer_call_fn_4692585

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_163_layer_call_and_return_conditional_losses_46923852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
F__inference_dense_327_layer_call_and_return_conditional_losses_4692681

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�
*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:����������2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������
2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������
2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_lambda_163_layer_call_fn_4692606

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lambda_163_layer_call_and_return_conditional_losses_46921852
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�]
�
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692489

inputs/
+dense_326_tensordot_readvariableop_resource-
)dense_326_biasadd_readvariableop_resource/
+dense_327_tensordot_readvariableop_resource-
)dense_327_biasadd_readvariableop_resource
identity�� dense_326/BiasAdd/ReadVariableOp�"dense_326/Tensordot/ReadVariableOp� dense_327/BiasAdd/ReadVariableOp�"dense_327/Tensordot/ReadVariableOp�
lambda_163/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    2 
lambda_163/strided_slice/stack�
 lambda_163/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2"
 lambda_163/strided_slice/stack_1�
 lambda_163/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2"
 lambda_163/strided_slice/stack_2�
lambda_163/strided_sliceStridedSliceinputs'lambda_163/strided_slice/stack:output:0)lambda_163/strided_slice/stack_1:output:0)lambda_163/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask2
lambda_163/strided_slice�
"dense_326/Tensordot/ReadVariableOpReadVariableOp+dense_326_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"dense_326/Tensordot/ReadVariableOp~
dense_326/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_326/Tensordot/axes�
dense_326/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_326/Tensordot/free�
dense_326/Tensordot/ShapeShape!lambda_163/strided_slice:output:0*
T0*
_output_shapes
:2
dense_326/Tensordot/Shape�
!dense_326/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_326/Tensordot/GatherV2/axis�
dense_326/Tensordot/GatherV2GatherV2"dense_326/Tensordot/Shape:output:0!dense_326/Tensordot/free:output:0*dense_326/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_326/Tensordot/GatherV2�
#dense_326/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_326/Tensordot/GatherV2_1/axis�
dense_326/Tensordot/GatherV2_1GatherV2"dense_326/Tensordot/Shape:output:0!dense_326/Tensordot/axes:output:0,dense_326/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_326/Tensordot/GatherV2_1�
dense_326/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_326/Tensordot/Const�
dense_326/Tensordot/ProdProd%dense_326/Tensordot/GatherV2:output:0"dense_326/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_326/Tensordot/Prod�
dense_326/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_326/Tensordot/Const_1�
dense_326/Tensordot/Prod_1Prod'dense_326/Tensordot/GatherV2_1:output:0$dense_326/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_326/Tensordot/Prod_1�
dense_326/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_326/Tensordot/concat/axis�
dense_326/Tensordot/concatConcatV2!dense_326/Tensordot/free:output:0!dense_326/Tensordot/axes:output:0(dense_326/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_326/Tensordot/concat�
dense_326/Tensordot/stackPack!dense_326/Tensordot/Prod:output:0#dense_326/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_326/Tensordot/stack�
dense_326/Tensordot/transpose	Transpose!lambda_163/strided_slice:output:0#dense_326/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������2
dense_326/Tensordot/transpose�
dense_326/Tensordot/ReshapeReshape!dense_326/Tensordot/transpose:y:0"dense_326/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_326/Tensordot/Reshape�
dense_326/Tensordot/MatMulMatMul$dense_326/Tensordot/Reshape:output:0*dense_326/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_326/Tensordot/MatMul�
dense_326/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
dense_326/Tensordot/Const_2�
!dense_326/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_326/Tensordot/concat_1/axis�
dense_326/Tensordot/concat_1ConcatV2%dense_326/Tensordot/GatherV2:output:0$dense_326/Tensordot/Const_2:output:0*dense_326/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_326/Tensordot/concat_1�
dense_326/TensordotReshape$dense_326/Tensordot/MatMul:product:0%dense_326/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2
dense_326/Tensordot�
 dense_326/BiasAdd/ReadVariableOpReadVariableOp)dense_326_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 dense_326/BiasAdd/ReadVariableOp�
dense_326/BiasAddBiasAdddense_326/Tensordot:output:0(dense_326/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
dense_326/BiasAdd{
dense_326/ReluReludense_326/BiasAdd:output:0*
T0*,
_output_shapes
:����������2
dense_326/Relu�
"dense_327/Tensordot/ReadVariableOpReadVariableOp+dense_327_tensordot_readvariableop_resource*
_output_shapes
:	�
*
dtype02$
"dense_327/Tensordot/ReadVariableOp~
dense_327/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_327/Tensordot/axes�
dense_327/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_327/Tensordot/free�
dense_327/Tensordot/ShapeShapedense_326/Relu:activations:0*
T0*
_output_shapes
:2
dense_327/Tensordot/Shape�
!dense_327/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_327/Tensordot/GatherV2/axis�
dense_327/Tensordot/GatherV2GatherV2"dense_327/Tensordot/Shape:output:0!dense_327/Tensordot/free:output:0*dense_327/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_327/Tensordot/GatherV2�
#dense_327/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_327/Tensordot/GatherV2_1/axis�
dense_327/Tensordot/GatherV2_1GatherV2"dense_327/Tensordot/Shape:output:0!dense_327/Tensordot/axes:output:0,dense_327/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_327/Tensordot/GatherV2_1�
dense_327/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_327/Tensordot/Const�
dense_327/Tensordot/ProdProd%dense_327/Tensordot/GatherV2:output:0"dense_327/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_327/Tensordot/Prod�
dense_327/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_327/Tensordot/Const_1�
dense_327/Tensordot/Prod_1Prod'dense_327/Tensordot/GatherV2_1:output:0$dense_327/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_327/Tensordot/Prod_1�
dense_327/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_327/Tensordot/concat/axis�
dense_327/Tensordot/concatConcatV2!dense_327/Tensordot/free:output:0!dense_327/Tensordot/axes:output:0(dense_327/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_327/Tensordot/concat�
dense_327/Tensordot/stackPack!dense_327/Tensordot/Prod:output:0#dense_327/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_327/Tensordot/stack�
dense_327/Tensordot/transpose	Transposedense_326/Relu:activations:0#dense_327/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������2
dense_327/Tensordot/transpose�
dense_327/Tensordot/ReshapeReshape!dense_327/Tensordot/transpose:y:0"dense_327/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_327/Tensordot/Reshape�
dense_327/Tensordot/MatMulMatMul$dense_327/Tensordot/Reshape:output:0*dense_327/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_327/Tensordot/MatMul�
dense_327/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
2
dense_327/Tensordot/Const_2�
!dense_327/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_327/Tensordot/concat_1/axis�
dense_327/Tensordot/concat_1ConcatV2%dense_327/Tensordot/GatherV2:output:0$dense_327/Tensordot/Const_2:output:0*dense_327/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_327/Tensordot/concat_1�
dense_327/TensordotReshape$dense_327/Tensordot/MatMul:product:0%dense_327/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������
2
dense_327/Tensordot�
 dense_327/BiasAdd/ReadVariableOpReadVariableOp)dense_327_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_327/BiasAdd/ReadVariableOp�
dense_327/BiasAddBiasAdddense_327/Tensordot:output:0(dense_327/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������
2
dense_327/BiasAddp
reshape_163/ShapeShapedense_327/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_163/Shape�
reshape_163/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_163/strided_slice/stack�
!reshape_163/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_163/strided_slice/stack_1�
!reshape_163/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_163/strided_slice/stack_2�
reshape_163/strided_sliceStridedSlicereshape_163/Shape:output:0(reshape_163/strided_slice/stack:output:0*reshape_163/strided_slice/stack_1:output:0*reshape_163/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_163/strided_slice|
reshape_163/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_163/Reshape/shape/1|
reshape_163/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_163/Reshape/shape/2�
reshape_163/Reshape/shapePack"reshape_163/strided_slice:output:0$reshape_163/Reshape/shape/1:output:0$reshape_163/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_163/Reshape/shape�
reshape_163/ReshapeReshapedense_327/BiasAdd:output:0"reshape_163/Reshape/shape:output:0*
T0*+
_output_shapes
:���������2
reshape_163/Reshape�
IdentityIdentityreshape_163/Reshape:output:0!^dense_326/BiasAdd/ReadVariableOp#^dense_326/Tensordot/ReadVariableOp!^dense_327/BiasAdd/ReadVariableOp#^dense_327/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2D
 dense_326/BiasAdd/ReadVariableOp dense_326/BiasAdd/ReadVariableOp2H
"dense_326/Tensordot/ReadVariableOp"dense_326/Tensordot/ReadVariableOp2D
 dense_327/BiasAdd/ReadVariableOp dense_327/BiasAdd/ReadVariableOp2H
"dense_327/Tensordot/ReadVariableOp"dense_327/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_lambda_163_layer_call_and_return_conditional_losses_4692601

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    2
strided_slice/stack�
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack_1�
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2�
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask2
strided_slicen
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:���������2

Identity"
identityIdentity:output:0*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
� 
�
F__inference_dense_326_layer_call_and_return_conditional_losses_4692237

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis�
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis�
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const�
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1�
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis�
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat�
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack�
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������2
Tensordot/transpose�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
Tensordot/Reshape�
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis�
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
R
lambda_163_input>
"serving_default_lambda_163_input:0����������C
reshape_1634
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�$
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
	optimizer
regularization_losses
	variables
trainable_variables
		keras_api


signatures
*P&call_and_return_all_conditional_losses
Q__call__
R_default_save_signature"�"
_tf_keras_sequential�"{"class_name": "Sequential", "name": "sequential_163", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_163", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 300, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lambda_163_input"}}, {"class_name": "Lambda", "config": {"name": "lambda_163", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAUAAABDAAAAcxoAAAB8AGQAZACFAmQCZACFAmQAZACFAmYDGQBTACkDTukB\nAAAA6f////+pACkB2gF4cgMAAAByAwAAAPofPGlweXRob24taW5wdXQtODYtMGIwZmRlMTkzZDM1\nPtoIPGxhbWJkYT4OAAAAcwAAAAA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}, {"class_name": "Dense", "config": {"name": "dense_326", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_327", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_163", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 2]}}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 300, 2]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_163", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 300, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lambda_163_input"}}, {"class_name": "Lambda", "config": {"name": "lambda_163", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAUAAABDAAAAcxoAAAB8AGQAZACFAmQCZACFAmQAZACFAmYDGQBTACkDTukB\nAAAA6f////+pACkB2gF4cgMAAAByAwAAAPofPGlweXRob24taW5wdXQtODYtMGIwZmRlMTkzZDM1\nPtoIPGxhbWJkYT4OAAAAcwAAAAA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}, {"class_name": "Dense", "config": {"name": "dense_326", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_327", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_163", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 2]}}}]}}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error"}}, "metrics": [[{"class_name": "MeanAbsoluteError", "config": {"name": "mean_absolute_error", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�
regularization_losses
	variables
trainable_variables
	keras_api
*S&call_and_return_all_conditional_losses
T__call__"�
_tf_keras_layer�{"class_name": "Lambda", "name": "lambda_163", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lambda_163", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAUAAABDAAAAcxoAAAB8AGQAZACFAmQCZACFAmQAZACFAmYDGQBTACkDTukB\nAAAA6f////+pACkB2gF4cgMAAAByAwAAAPofPGlweXRob24taW5wdXQtODYtMGIwZmRlMTkzZDM1\nPtoIPGxhbWJkYT4OAAAAcwAAAAA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
�

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*U&call_and_return_all_conditional_losses
V__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_326", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_326", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 2]}}
�

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*W&call_and_return_all_conditional_losses
X__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_327", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_327", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 512]}}
�
regularization_losses
	variables
trainable_variables
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"�
_tf_keras_layer�{"class_name": "Reshape", "name": "reshape_163", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_163", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [5, 2]}}}
�
iter

 beta_1

!beta_2
	"decay
#learning_ratemHmImJmKvLvMvNvO"
	optimizer
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
�
$layer_regularization_losses
%layer_metrics

&layers
regularization_losses
	variables
'metrics
(non_trainable_variables
trainable_variables
Q__call__
R_default_save_signature
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
,
[serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
)layer_regularization_losses
*layer_metrics

+layers
regularization_losses
	variables
,metrics
-non_trainable_variables
trainable_variables
T__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
#:!	�2dense_326/kernel
:�2dense_326/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
.layer_regularization_losses
/layer_metrics

0layers
regularization_losses
	variables
1metrics
2non_trainable_variables
trainable_variables
V__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
#:!	�
2dense_327/kernel
:
2dense_327/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
3layer_regularization_losses
4layer_metrics

5layers
regularization_losses
	variables
6metrics
7non_trainable_variables
trainable_variables
X__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
8layer_regularization_losses
9layer_metrics

:layers
regularization_losses
	variables
;metrics
<non_trainable_variables
trainable_variables
Z__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
	?total
	@count
A	variables
B	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
�
	Ctotal
	Dcount
E
_fn_kwargs
F	variables
G	keras_api"�
_tf_keras_metric�{"class_name": "MeanAbsoluteError", "name": "mean_absolute_error", "dtype": "float32", "config": {"name": "mean_absolute_error", "dtype": "float32"}}
:  (2total
:  (2count
.
?0
@1"
trackable_list_wrapper
-
A	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
C0
D1"
trackable_list_wrapper
-
F	variables"
_generic_user_object
(:&	�2Adam/dense_326/kernel/m
": �2Adam/dense_326/bias/m
(:&	�
2Adam/dense_327/kernel/m
!:
2Adam/dense_327/bias/m
(:&	�2Adam/dense_326/kernel/v
": �2Adam/dense_326/bias/v
(:&	�
2Adam/dense_327/kernel/v
!:
2Adam/dense_327/bias/v
�2�
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692337
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692559
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692489
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692321�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
0__inference_sequential_163_layer_call_fn_4692572
0__inference_sequential_163_layer_call_fn_4692585
0__inference_sequential_163_layer_call_fn_4692396
0__inference_sequential_163_layer_call_fn_4692367�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
"__inference__wrapped_model_4692173�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *4�1
/�,
lambda_163_input����������
�2�
G__inference_lambda_163_layer_call_and_return_conditional_losses_4692601
G__inference_lambda_163_layer_call_and_return_conditional_losses_4692593�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_lambda_163_layer_call_fn_4692611
,__inference_lambda_163_layer_call_fn_4692606�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_dense_326_layer_call_and_return_conditional_losses_4692642�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_dense_326_layer_call_fn_4692651�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_dense_327_layer_call_and_return_conditional_losses_4692681�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_dense_327_layer_call_fn_4692690�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_reshape_163_layer_call_and_return_conditional_losses_4692703�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_reshape_163_layer_call_fn_4692708�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_4692419lambda_163_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
"__inference__wrapped_model_4692173�>�;
4�1
/�,
lambda_163_input����������
� "=�:
8
reshape_163)�&
reshape_163����������
F__inference_dense_326_layer_call_and_return_conditional_losses_4692642e3�0
)�&
$�!
inputs���������
� "*�'
 �
0����������
� �
+__inference_dense_326_layer_call_fn_4692651X3�0
)�&
$�!
inputs���������
� "������������
F__inference_dense_327_layer_call_and_return_conditional_losses_4692681e4�1
*�'
%�"
inputs����������
� ")�&
�
0���������

� �
+__inference_dense_327_layer_call_fn_4692690X4�1
*�'
%�"
inputs����������
� "����������
�
G__inference_lambda_163_layer_call_and_return_conditional_losses_4692593i<�9
2�/
%�"
inputs����������

 
p
� ")�&
�
0���������
� �
G__inference_lambda_163_layer_call_and_return_conditional_losses_4692601i<�9
2�/
%�"
inputs����������

 
p 
� ")�&
�
0���������
� �
,__inference_lambda_163_layer_call_fn_4692606\<�9
2�/
%�"
inputs����������

 
p
� "�����������
,__inference_lambda_163_layer_call_fn_4692611\<�9
2�/
%�"
inputs����������

 
p 
� "�����������
H__inference_reshape_163_layer_call_and_return_conditional_losses_4692703`3�0
)�&
$�!
inputs���������

� ")�&
�
0���������
� �
-__inference_reshape_163_layer_call_fn_4692708S3�0
)�&
$�!
inputs���������

� "�����������
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692321yF�C
<�9
/�,
lambda_163_input����������
p

 
� ")�&
�
0���������
� �
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692337yF�C
<�9
/�,
lambda_163_input����������
p 

 
� ")�&
�
0���������
� �
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692489o<�9
2�/
%�"
inputs����������
p

 
� ")�&
�
0���������
� �
K__inference_sequential_163_layer_call_and_return_conditional_losses_4692559o<�9
2�/
%�"
inputs����������
p 

 
� ")�&
�
0���������
� �
0__inference_sequential_163_layer_call_fn_4692367lF�C
<�9
/�,
lambda_163_input����������
p

 
� "�����������
0__inference_sequential_163_layer_call_fn_4692396lF�C
<�9
/�,
lambda_163_input����������
p 

 
� "�����������
0__inference_sequential_163_layer_call_fn_4692572b<�9
2�/
%�"
inputs����������
p

 
� "�����������
0__inference_sequential_163_layer_call_fn_4692585b<�9
2�/
%�"
inputs����������
p 

 
� "�����������
%__inference_signature_wrapper_4692419�R�O
� 
H�E
C
lambda_163_input/�,
lambda_163_input����������"=�:
8
reshape_163)�&
reshape_163���������
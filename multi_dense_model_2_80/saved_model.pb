��
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
dense_356/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*!
shared_namedense_356/kernel
v
$dense_356/kernel/Read/ReadVariableOpReadVariableOpdense_356/kernel*
_output_shapes
:	�*
dtype0
u
dense_356/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_356/bias
n
"dense_356/bias/Read/ReadVariableOpReadVariableOpdense_356/bias*
_output_shapes	
:�*
dtype0
~
dense_357/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_namedense_357/kernel
w
$dense_357/kernel/Read/ReadVariableOpReadVariableOpdense_357/kernel* 
_output_shapes
:
��*
dtype0
u
dense_357/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_357/bias
n
"dense_357/bias/Read/ReadVariableOpReadVariableOpdense_357/bias*
_output_shapes	
:�*
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
Adam/dense_356/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/dense_356/kernel/m
�
+Adam/dense_356/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_356/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/dense_356/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_356/bias/m
|
)Adam/dense_356/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_356/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_357/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_357/kernel/m
�
+Adam/dense_357/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_357/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/dense_357/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_357/bias/m
|
)Adam/dense_357/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_357/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_356/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/dense_356/kernel/v
�
+Adam/dense_356/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_356/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/dense_356/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_356/bias/v
|
)Adam/dense_356/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_356/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_357/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameAdam/dense_357/kernel/v
�
+Adam/dense_357/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_357/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/dense_357/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/dense_357/bias/v
|
)Adam/dense_357/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_357/bias/v*
_output_shapes	
:�*
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
VARIABLE_VALUEdense_356/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_356/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_357/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_357/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_356/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_356/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_357/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_357/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_356/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_356/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_357/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_357/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
 serving_default_lambda_178_inputPlaceholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCall serving_default_lambda_178_inputdense_356/kerneldense_356/biasdense_357/kerneldense_357/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������P*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_5163760
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_356/kernel/Read/ReadVariableOp"dense_356/bias/Read/ReadVariableOp$dense_357/kernel/Read/ReadVariableOp"dense_357/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_356/kernel/m/Read/ReadVariableOp)Adam/dense_356/bias/m/Read/ReadVariableOp+Adam/dense_357/kernel/m/Read/ReadVariableOp)Adam/dense_357/bias/m/Read/ReadVariableOp+Adam/dense_356/kernel/v/Read/ReadVariableOp)Adam/dense_356/bias/v/Read/ReadVariableOp+Adam/dense_357/kernel/v/Read/ReadVariableOp)Adam/dense_357/bias/v/Read/ReadVariableOpConst*"
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
 __inference__traced_save_5164135
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_356/kerneldense_356/biasdense_357/kerneldense_357/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_356/kernel/mAdam/dense_356/bias/mAdam/dense_357/kernel/mAdam/dense_357/bias/mAdam/dense_356/kernel/vAdam/dense_356/bias/vAdam/dense_357/kernel/vAdam/dense_357/bias/v*!
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
#__inference__traced_restore_5164208��
� 
�
F__inference_dense_356_layer_call_and_return_conditional_losses_5163578

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
�
d
H__inference_reshape_178_layer_call_and_return_conditional_losses_5163653

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
value	B :P2
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
:���������P2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
� 
�
F__inference_dense_356_layer_call_and_return_conditional_losses_5163983

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
�
�
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163662
lambda_178_input
dense_356_5163589
dense_356_5163591
dense_357_5163635
dense_357_5163637
identity��!dense_356/StatefulPartitionedCall�!dense_357/StatefulPartitionedCall�
lambda_178/PartitionedCallPartitionedCalllambda_178_input*
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
G__inference_lambda_178_layer_call_and_return_conditional_losses_51635262
lambda_178/PartitionedCall�
!dense_356/StatefulPartitionedCallStatefulPartitionedCall#lambda_178/PartitionedCall:output:0dense_356_5163589dense_356_5163591*
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
F__inference_dense_356_layer_call_and_return_conditional_losses_51635782#
!dense_356/StatefulPartitionedCall�
!dense_357/StatefulPartitionedCallStatefulPartitionedCall*dense_356/StatefulPartitionedCall:output:0dense_357_5163635dense_357_5163637*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_357_layer_call_and_return_conditional_losses_51636242#
!dense_357/StatefulPartitionedCall�
reshape_178/PartitionedCallPartitionedCall*dense_357/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_178_layer_call_and_return_conditional_losses_51636532
reshape_178/PartitionedCall�
IdentityIdentity$reshape_178/PartitionedCall:output:0"^dense_356/StatefulPartitionedCall"^dense_357/StatefulPartitionedCall*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2F
!dense_356/StatefulPartitionedCall!dense_356/StatefulPartitionedCall2F
!dense_357/StatefulPartitionedCall!dense_357/StatefulPartitionedCall:^ Z
,
_output_shapes
:����������
*
_user_specified_namelambda_178_input
�
�
0__inference_sequential_178_layer_call_fn_5163708
lambda_178_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllambda_178_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������P*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_178_layer_call_and_return_conditional_losses_51636972
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
,
_output_shapes
:����������
*
_user_specified_namelambda_178_input
�
�
0__inference_sequential_178_layer_call_fn_5163737
lambda_178_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllambda_178_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������P*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_178_layer_call_and_return_conditional_losses_51637262
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
,
_output_shapes
:����������
*
_user_specified_namelambda_178_input
�w
�
"__inference__wrapped_model_5163514
lambda_178_input>
:sequential_178_dense_356_tensordot_readvariableop_resource<
8sequential_178_dense_356_biasadd_readvariableop_resource>
:sequential_178_dense_357_tensordot_readvariableop_resource<
8sequential_178_dense_357_biasadd_readvariableop_resource
identity��/sequential_178/dense_356/BiasAdd/ReadVariableOp�1sequential_178/dense_356/Tensordot/ReadVariableOp�/sequential_178/dense_357/BiasAdd/ReadVariableOp�1sequential_178/dense_357/Tensordot/ReadVariableOp�
-sequential_178/lambda_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    2/
-sequential_178/lambda_178/strided_slice/stack�
/sequential_178/lambda_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            21
/sequential_178/lambda_178/strided_slice/stack_1�
/sequential_178/lambda_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         21
/sequential_178/lambda_178/strided_slice/stack_2�
'sequential_178/lambda_178/strided_sliceStridedSlicelambda_178_input6sequential_178/lambda_178/strided_slice/stack:output:08sequential_178/lambda_178/strided_slice/stack_1:output:08sequential_178/lambda_178/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask2)
'sequential_178/lambda_178/strided_slice�
1sequential_178/dense_356/Tensordot/ReadVariableOpReadVariableOp:sequential_178_dense_356_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype023
1sequential_178/dense_356/Tensordot/ReadVariableOp�
'sequential_178/dense_356/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2)
'sequential_178/dense_356/Tensordot/axes�
'sequential_178/dense_356/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2)
'sequential_178/dense_356/Tensordot/free�
(sequential_178/dense_356/Tensordot/ShapeShape0sequential_178/lambda_178/strided_slice:output:0*
T0*
_output_shapes
:2*
(sequential_178/dense_356/Tensordot/Shape�
0sequential_178/dense_356/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_178/dense_356/Tensordot/GatherV2/axis�
+sequential_178/dense_356/Tensordot/GatherV2GatherV21sequential_178/dense_356/Tensordot/Shape:output:00sequential_178/dense_356/Tensordot/free:output:09sequential_178/dense_356/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+sequential_178/dense_356/Tensordot/GatherV2�
2sequential_178/dense_356/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2sequential_178/dense_356/Tensordot/GatherV2_1/axis�
-sequential_178/dense_356/Tensordot/GatherV2_1GatherV21sequential_178/dense_356/Tensordot/Shape:output:00sequential_178/dense_356/Tensordot/axes:output:0;sequential_178/dense_356/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-sequential_178/dense_356/Tensordot/GatherV2_1�
(sequential_178/dense_356/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_178/dense_356/Tensordot/Const�
'sequential_178/dense_356/Tensordot/ProdProd4sequential_178/dense_356/Tensordot/GatherV2:output:01sequential_178/dense_356/Tensordot/Const:output:0*
T0*
_output_shapes
: 2)
'sequential_178/dense_356/Tensordot/Prod�
*sequential_178/dense_356/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_178/dense_356/Tensordot/Const_1�
)sequential_178/dense_356/Tensordot/Prod_1Prod6sequential_178/dense_356/Tensordot/GatherV2_1:output:03sequential_178/dense_356/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2+
)sequential_178/dense_356/Tensordot/Prod_1�
.sequential_178/dense_356/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_178/dense_356/Tensordot/concat/axis�
)sequential_178/dense_356/Tensordot/concatConcatV20sequential_178/dense_356/Tensordot/free:output:00sequential_178/dense_356/Tensordot/axes:output:07sequential_178/dense_356/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2+
)sequential_178/dense_356/Tensordot/concat�
(sequential_178/dense_356/Tensordot/stackPack0sequential_178/dense_356/Tensordot/Prod:output:02sequential_178/dense_356/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2*
(sequential_178/dense_356/Tensordot/stack�
,sequential_178/dense_356/Tensordot/transpose	Transpose0sequential_178/lambda_178/strided_slice:output:02sequential_178/dense_356/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������2.
,sequential_178/dense_356/Tensordot/transpose�
*sequential_178/dense_356/Tensordot/ReshapeReshape0sequential_178/dense_356/Tensordot/transpose:y:01sequential_178/dense_356/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2,
*sequential_178/dense_356/Tensordot/Reshape�
)sequential_178/dense_356/Tensordot/MatMulMatMul3sequential_178/dense_356/Tensordot/Reshape:output:09sequential_178/dense_356/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)sequential_178/dense_356/Tensordot/MatMul�
*sequential_178/dense_356/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2,
*sequential_178/dense_356/Tensordot/Const_2�
0sequential_178/dense_356/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_178/dense_356/Tensordot/concat_1/axis�
+sequential_178/dense_356/Tensordot/concat_1ConcatV24sequential_178/dense_356/Tensordot/GatherV2:output:03sequential_178/dense_356/Tensordot/Const_2:output:09sequential_178/dense_356/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2-
+sequential_178/dense_356/Tensordot/concat_1�
"sequential_178/dense_356/TensordotReshape3sequential_178/dense_356/Tensordot/MatMul:product:04sequential_178/dense_356/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2$
"sequential_178/dense_356/Tensordot�
/sequential_178/dense_356/BiasAdd/ReadVariableOpReadVariableOp8sequential_178_dense_356_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_178/dense_356/BiasAdd/ReadVariableOp�
 sequential_178/dense_356/BiasAddBiasAdd+sequential_178/dense_356/Tensordot:output:07sequential_178/dense_356/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2"
 sequential_178/dense_356/BiasAdd�
sequential_178/dense_356/ReluRelu)sequential_178/dense_356/BiasAdd:output:0*
T0*,
_output_shapes
:����������2
sequential_178/dense_356/Relu�
1sequential_178/dense_357/Tensordot/ReadVariableOpReadVariableOp:sequential_178_dense_357_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype023
1sequential_178/dense_357/Tensordot/ReadVariableOp�
'sequential_178/dense_357/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2)
'sequential_178/dense_357/Tensordot/axes�
'sequential_178/dense_357/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2)
'sequential_178/dense_357/Tensordot/free�
(sequential_178/dense_357/Tensordot/ShapeShape+sequential_178/dense_356/Relu:activations:0*
T0*
_output_shapes
:2*
(sequential_178/dense_357/Tensordot/Shape�
0sequential_178/dense_357/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_178/dense_357/Tensordot/GatherV2/axis�
+sequential_178/dense_357/Tensordot/GatherV2GatherV21sequential_178/dense_357/Tensordot/Shape:output:00sequential_178/dense_357/Tensordot/free:output:09sequential_178/dense_357/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2-
+sequential_178/dense_357/Tensordot/GatherV2�
2sequential_178/dense_357/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2sequential_178/dense_357/Tensordot/GatherV2_1/axis�
-sequential_178/dense_357/Tensordot/GatherV2_1GatherV21sequential_178/dense_357/Tensordot/Shape:output:00sequential_178/dense_357/Tensordot/axes:output:0;sequential_178/dense_357/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-sequential_178/dense_357/Tensordot/GatherV2_1�
(sequential_178/dense_357/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_178/dense_357/Tensordot/Const�
'sequential_178/dense_357/Tensordot/ProdProd4sequential_178/dense_357/Tensordot/GatherV2:output:01sequential_178/dense_357/Tensordot/Const:output:0*
T0*
_output_shapes
: 2)
'sequential_178/dense_357/Tensordot/Prod�
*sequential_178/dense_357/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_178/dense_357/Tensordot/Const_1�
)sequential_178/dense_357/Tensordot/Prod_1Prod6sequential_178/dense_357/Tensordot/GatherV2_1:output:03sequential_178/dense_357/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2+
)sequential_178/dense_357/Tensordot/Prod_1�
.sequential_178/dense_357/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_178/dense_357/Tensordot/concat/axis�
)sequential_178/dense_357/Tensordot/concatConcatV20sequential_178/dense_357/Tensordot/free:output:00sequential_178/dense_357/Tensordot/axes:output:07sequential_178/dense_357/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2+
)sequential_178/dense_357/Tensordot/concat�
(sequential_178/dense_357/Tensordot/stackPack0sequential_178/dense_357/Tensordot/Prod:output:02sequential_178/dense_357/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2*
(sequential_178/dense_357/Tensordot/stack�
,sequential_178/dense_357/Tensordot/transpose	Transpose+sequential_178/dense_356/Relu:activations:02sequential_178/dense_357/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������2.
,sequential_178/dense_357/Tensordot/transpose�
*sequential_178/dense_357/Tensordot/ReshapeReshape0sequential_178/dense_357/Tensordot/transpose:y:01sequential_178/dense_357/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2,
*sequential_178/dense_357/Tensordot/Reshape�
)sequential_178/dense_357/Tensordot/MatMulMatMul3sequential_178/dense_357/Tensordot/Reshape:output:09sequential_178/dense_357/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2+
)sequential_178/dense_357/Tensordot/MatMul�
*sequential_178/dense_357/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2,
*sequential_178/dense_357/Tensordot/Const_2�
0sequential_178/dense_357/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0sequential_178/dense_357/Tensordot/concat_1/axis�
+sequential_178/dense_357/Tensordot/concat_1ConcatV24sequential_178/dense_357/Tensordot/GatherV2:output:03sequential_178/dense_357/Tensordot/Const_2:output:09sequential_178/dense_357/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2-
+sequential_178/dense_357/Tensordot/concat_1�
"sequential_178/dense_357/TensordotReshape3sequential_178/dense_357/Tensordot/MatMul:product:04sequential_178/dense_357/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2$
"sequential_178/dense_357/Tensordot�
/sequential_178/dense_357/BiasAdd/ReadVariableOpReadVariableOp8sequential_178_dense_357_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_178/dense_357/BiasAdd/ReadVariableOp�
 sequential_178/dense_357/BiasAddBiasAdd+sequential_178/dense_357/Tensordot:output:07sequential_178/dense_357/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2"
 sequential_178/dense_357/BiasAdd�
 sequential_178/reshape_178/ShapeShape)sequential_178/dense_357/BiasAdd:output:0*
T0*
_output_shapes
:2"
 sequential_178/reshape_178/Shape�
.sequential_178/reshape_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_178/reshape_178/strided_slice/stack�
0sequential_178/reshape_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_178/reshape_178/strided_slice/stack_1�
0sequential_178/reshape_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_178/reshape_178/strided_slice/stack_2�
(sequential_178/reshape_178/strided_sliceStridedSlice)sequential_178/reshape_178/Shape:output:07sequential_178/reshape_178/strided_slice/stack:output:09sequential_178/reshape_178/strided_slice/stack_1:output:09sequential_178/reshape_178/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_178/reshape_178/strided_slice�
*sequential_178/reshape_178/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2,
*sequential_178/reshape_178/Reshape/shape/1�
*sequential_178/reshape_178/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_178/reshape_178/Reshape/shape/2�
(sequential_178/reshape_178/Reshape/shapePack1sequential_178/reshape_178/strided_slice:output:03sequential_178/reshape_178/Reshape/shape/1:output:03sequential_178/reshape_178/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2*
(sequential_178/reshape_178/Reshape/shape�
"sequential_178/reshape_178/ReshapeReshape)sequential_178/dense_357/BiasAdd:output:01sequential_178/reshape_178/Reshape/shape:output:0*
T0*+
_output_shapes
:���������P2$
"sequential_178/reshape_178/Reshape�
IdentityIdentity+sequential_178/reshape_178/Reshape:output:00^sequential_178/dense_356/BiasAdd/ReadVariableOp2^sequential_178/dense_356/Tensordot/ReadVariableOp0^sequential_178/dense_357/BiasAdd/ReadVariableOp2^sequential_178/dense_357/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2b
/sequential_178/dense_356/BiasAdd/ReadVariableOp/sequential_178/dense_356/BiasAdd/ReadVariableOp2f
1sequential_178/dense_356/Tensordot/ReadVariableOp1sequential_178/dense_356/Tensordot/ReadVariableOp2b
/sequential_178/dense_357/BiasAdd/ReadVariableOp/sequential_178/dense_357/BiasAdd/ReadVariableOp2f
1sequential_178/dense_357/Tensordot/ReadVariableOp1sequential_178/dense_357/Tensordot/ReadVariableOp:^ Z
,
_output_shapes
:����������
*
_user_specified_namelambda_178_input
�
�
%__inference_signature_wrapper_5163760
lambda_178_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllambda_178_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������P*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_51635142
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
,
_output_shapes
:����������
*
_user_specified_namelambda_178_input
�Z
�

#__inference__traced_restore_5164208
file_prefix%
!assignvariableop_dense_356_kernel%
!assignvariableop_1_dense_356_bias'
#assignvariableop_2_dense_357_kernel%
!assignvariableop_3_dense_357_bias 
assignvariableop_4_adam_iter"
assignvariableop_5_adam_beta_1"
assignvariableop_6_adam_beta_2!
assignvariableop_7_adam_decay)
%assignvariableop_8_adam_learning_rate
assignvariableop_9_total
assignvariableop_10_count
assignvariableop_11_total_1
assignvariableop_12_count_1/
+assignvariableop_13_adam_dense_356_kernel_m-
)assignvariableop_14_adam_dense_356_bias_m/
+assignvariableop_15_adam_dense_357_kernel_m-
)assignvariableop_16_adam_dense_357_bias_m/
+assignvariableop_17_adam_dense_356_kernel_v-
)assignvariableop_18_adam_dense_356_bias_v/
+assignvariableop_19_adam_dense_357_kernel_v-
)assignvariableop_20_adam_dense_357_bias_v
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_356_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_356_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_357_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_357_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_dense_356_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_dense_356_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_dense_357_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_357_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_356_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_356_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_357_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_357_bias_vIdentity_20:output:0"/device:CPU:0*
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
�
�
+__inference_dense_357_layer_call_fn_5164031

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
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_357_layer_call_and_return_conditional_losses_51636242
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:����������2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :����������::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_lambda_178_layer_call_fn_5163952

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
G__inference_lambda_178_layer_call_and_return_conditional_losses_51635342
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
�
c
G__inference_lambda_178_layer_call_and_return_conditional_losses_5163934

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
�
c
G__inference_lambda_178_layer_call_and_return_conditional_losses_5163534

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
�
H
,__inference_lambda_178_layer_call_fn_5163947

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
G__inference_lambda_178_layer_call_and_return_conditional_losses_51635262
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
�
�
F__inference_dense_357_layer_call_and_return_conditional_losses_5164022

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
��*
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
T0*(
_output_shapes
:����������2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
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
:����������2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:����������2

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
 __inference__traced_save_5164135
file_prefix/
+savev2_dense_356_kernel_read_readvariableop-
)savev2_dense_356_bias_read_readvariableop/
+savev2_dense_357_kernel_read_readvariableop-
)savev2_dense_357_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_356_kernel_m_read_readvariableop4
0savev2_adam_dense_356_bias_m_read_readvariableop6
2savev2_adam_dense_357_kernel_m_read_readvariableop4
0savev2_adam_dense_357_bias_m_read_readvariableop6
2savev2_adam_dense_356_kernel_v_read_readvariableop4
0savev2_adam_dense_356_bias_v_read_readvariableop6
2savev2_adam_dense_357_kernel_v_read_readvariableop4
0savev2_adam_dense_357_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_356_kernel_read_readvariableop)savev2_dense_356_bias_read_readvariableop+savev2_dense_357_kernel_read_readvariableop)savev2_dense_357_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_356_kernel_m_read_readvariableop0savev2_adam_dense_356_bias_m_read_readvariableop2savev2_adam_dense_357_kernel_m_read_readvariableop0savev2_adam_dense_357_bias_m_read_readvariableop2savev2_adam_dense_356_kernel_v_read_readvariableop0savev2_adam_dense_356_bias_v_read_readvariableop2savev2_adam_dense_357_kernel_v_read_readvariableop0savev2_adam_dense_357_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
�: :	�:�:
��:�: : : : : : : : : :	�:�:
��:�:	�:�:
��:�: 2(
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
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:
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
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:

_output_shapes
: 
�
�
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163678
lambda_178_input
dense_356_5163666
dense_356_5163668
dense_357_5163671
dense_357_5163673
identity��!dense_356/StatefulPartitionedCall�!dense_357/StatefulPartitionedCall�
lambda_178/PartitionedCallPartitionedCalllambda_178_input*
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
G__inference_lambda_178_layer_call_and_return_conditional_losses_51635342
lambda_178/PartitionedCall�
!dense_356/StatefulPartitionedCallStatefulPartitionedCall#lambda_178/PartitionedCall:output:0dense_356_5163666dense_356_5163668*
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
F__inference_dense_356_layer_call_and_return_conditional_losses_51635782#
!dense_356/StatefulPartitionedCall�
!dense_357/StatefulPartitionedCallStatefulPartitionedCall*dense_356/StatefulPartitionedCall:output:0dense_357_5163671dense_357_5163673*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_357_layer_call_and_return_conditional_losses_51636242#
!dense_357/StatefulPartitionedCall�
reshape_178/PartitionedCallPartitionedCall*dense_357/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_178_layer_call_and_return_conditional_losses_51636532
reshape_178/PartitionedCall�
IdentityIdentity$reshape_178/PartitionedCall:output:0"^dense_356/StatefulPartitionedCall"^dense_357/StatefulPartitionedCall*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2F
!dense_356/StatefulPartitionedCall!dense_356/StatefulPartitionedCall2F
!dense_357/StatefulPartitionedCall!dense_357/StatefulPartitionedCall:^ Z
,
_output_shapes
:����������
*
_user_specified_namelambda_178_input
�
�
+__inference_dense_356_layer_call_fn_5163992

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
F__inference_dense_356_layer_call_and_return_conditional_losses_51635782
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
�
�
0__inference_sequential_178_layer_call_fn_5163913

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
:���������P*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_178_layer_call_and_return_conditional_losses_51636972
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������P2

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
F__inference_dense_357_layer_call_and_return_conditional_losses_5163624

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
��*
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
T0*(
_output_shapes
:����������2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
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
:����������2
	Tensordot�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:����������2

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
�]
�
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163830

inputs/
+dense_356_tensordot_readvariableop_resource-
)dense_356_biasadd_readvariableop_resource/
+dense_357_tensordot_readvariableop_resource-
)dense_357_biasadd_readvariableop_resource
identity�� dense_356/BiasAdd/ReadVariableOp�"dense_356/Tensordot/ReadVariableOp� dense_357/BiasAdd/ReadVariableOp�"dense_357/Tensordot/ReadVariableOp�
lambda_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    2 
lambda_178/strided_slice/stack�
 lambda_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2"
 lambda_178/strided_slice/stack_1�
 lambda_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2"
 lambda_178/strided_slice/stack_2�
lambda_178/strided_sliceStridedSliceinputs'lambda_178/strided_slice/stack:output:0)lambda_178/strided_slice/stack_1:output:0)lambda_178/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask2
lambda_178/strided_slice�
"dense_356/Tensordot/ReadVariableOpReadVariableOp+dense_356_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"dense_356/Tensordot/ReadVariableOp~
dense_356/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_356/Tensordot/axes�
dense_356/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_356/Tensordot/free�
dense_356/Tensordot/ShapeShape!lambda_178/strided_slice:output:0*
T0*
_output_shapes
:2
dense_356/Tensordot/Shape�
!dense_356/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_356/Tensordot/GatherV2/axis�
dense_356/Tensordot/GatherV2GatherV2"dense_356/Tensordot/Shape:output:0!dense_356/Tensordot/free:output:0*dense_356/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_356/Tensordot/GatherV2�
#dense_356/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_356/Tensordot/GatherV2_1/axis�
dense_356/Tensordot/GatherV2_1GatherV2"dense_356/Tensordot/Shape:output:0!dense_356/Tensordot/axes:output:0,dense_356/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_356/Tensordot/GatherV2_1�
dense_356/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_356/Tensordot/Const�
dense_356/Tensordot/ProdProd%dense_356/Tensordot/GatherV2:output:0"dense_356/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_356/Tensordot/Prod�
dense_356/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_356/Tensordot/Const_1�
dense_356/Tensordot/Prod_1Prod'dense_356/Tensordot/GatherV2_1:output:0$dense_356/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_356/Tensordot/Prod_1�
dense_356/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_356/Tensordot/concat/axis�
dense_356/Tensordot/concatConcatV2!dense_356/Tensordot/free:output:0!dense_356/Tensordot/axes:output:0(dense_356/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_356/Tensordot/concat�
dense_356/Tensordot/stackPack!dense_356/Tensordot/Prod:output:0#dense_356/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_356/Tensordot/stack�
dense_356/Tensordot/transpose	Transpose!lambda_178/strided_slice:output:0#dense_356/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������2
dense_356/Tensordot/transpose�
dense_356/Tensordot/ReshapeReshape!dense_356/Tensordot/transpose:y:0"dense_356/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_356/Tensordot/Reshape�
dense_356/Tensordot/MatMulMatMul$dense_356/Tensordot/Reshape:output:0*dense_356/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_356/Tensordot/MatMul�
dense_356/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
dense_356/Tensordot/Const_2�
!dense_356/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_356/Tensordot/concat_1/axis�
dense_356/Tensordot/concat_1ConcatV2%dense_356/Tensordot/GatherV2:output:0$dense_356/Tensordot/Const_2:output:0*dense_356/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_356/Tensordot/concat_1�
dense_356/TensordotReshape$dense_356/Tensordot/MatMul:product:0%dense_356/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2
dense_356/Tensordot�
 dense_356/BiasAdd/ReadVariableOpReadVariableOp)dense_356_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 dense_356/BiasAdd/ReadVariableOp�
dense_356/BiasAddBiasAdddense_356/Tensordot:output:0(dense_356/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
dense_356/BiasAdd{
dense_356/ReluReludense_356/BiasAdd:output:0*
T0*,
_output_shapes
:����������2
dense_356/Relu�
"dense_357/Tensordot/ReadVariableOpReadVariableOp+dense_357_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype02$
"dense_357/Tensordot/ReadVariableOp~
dense_357/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_357/Tensordot/axes�
dense_357/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_357/Tensordot/free�
dense_357/Tensordot/ShapeShapedense_356/Relu:activations:0*
T0*
_output_shapes
:2
dense_357/Tensordot/Shape�
!dense_357/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_357/Tensordot/GatherV2/axis�
dense_357/Tensordot/GatherV2GatherV2"dense_357/Tensordot/Shape:output:0!dense_357/Tensordot/free:output:0*dense_357/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_357/Tensordot/GatherV2�
#dense_357/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_357/Tensordot/GatherV2_1/axis�
dense_357/Tensordot/GatherV2_1GatherV2"dense_357/Tensordot/Shape:output:0!dense_357/Tensordot/axes:output:0,dense_357/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_357/Tensordot/GatherV2_1�
dense_357/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_357/Tensordot/Const�
dense_357/Tensordot/ProdProd%dense_357/Tensordot/GatherV2:output:0"dense_357/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_357/Tensordot/Prod�
dense_357/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_357/Tensordot/Const_1�
dense_357/Tensordot/Prod_1Prod'dense_357/Tensordot/GatherV2_1:output:0$dense_357/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_357/Tensordot/Prod_1�
dense_357/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_357/Tensordot/concat/axis�
dense_357/Tensordot/concatConcatV2!dense_357/Tensordot/free:output:0!dense_357/Tensordot/axes:output:0(dense_357/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_357/Tensordot/concat�
dense_357/Tensordot/stackPack!dense_357/Tensordot/Prod:output:0#dense_357/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_357/Tensordot/stack�
dense_357/Tensordot/transpose	Transposedense_356/Relu:activations:0#dense_357/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������2
dense_357/Tensordot/transpose�
dense_357/Tensordot/ReshapeReshape!dense_357/Tensordot/transpose:y:0"dense_357/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_357/Tensordot/Reshape�
dense_357/Tensordot/MatMulMatMul$dense_357/Tensordot/Reshape:output:0*dense_357/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_357/Tensordot/MatMul�
dense_357/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
dense_357/Tensordot/Const_2�
!dense_357/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_357/Tensordot/concat_1/axis�
dense_357/Tensordot/concat_1ConcatV2%dense_357/Tensordot/GatherV2:output:0$dense_357/Tensordot/Const_2:output:0*dense_357/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_357/Tensordot/concat_1�
dense_357/TensordotReshape$dense_357/Tensordot/MatMul:product:0%dense_357/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2
dense_357/Tensordot�
 dense_357/BiasAdd/ReadVariableOpReadVariableOp)dense_357_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 dense_357/BiasAdd/ReadVariableOp�
dense_357/BiasAddBiasAdddense_357/Tensordot:output:0(dense_357/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
dense_357/BiasAddp
reshape_178/ShapeShapedense_357/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_178/Shape�
reshape_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_178/strided_slice/stack�
!reshape_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_178/strided_slice/stack_1�
!reshape_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_178/strided_slice/stack_2�
reshape_178/strided_sliceStridedSlicereshape_178/Shape:output:0(reshape_178/strided_slice/stack:output:0*reshape_178/strided_slice/stack_1:output:0*reshape_178/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_178/strided_slice|
reshape_178/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2
reshape_178/Reshape/shape/1|
reshape_178/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_178/Reshape/shape/2�
reshape_178/Reshape/shapePack"reshape_178/strided_slice:output:0$reshape_178/Reshape/shape/1:output:0$reshape_178/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_178/Reshape/shape�
reshape_178/ReshapeReshapedense_357/BiasAdd:output:0"reshape_178/Reshape/shape:output:0*
T0*+
_output_shapes
:���������P2
reshape_178/Reshape�
IdentityIdentityreshape_178/Reshape:output:0!^dense_356/BiasAdd/ReadVariableOp#^dense_356/Tensordot/ReadVariableOp!^dense_357/BiasAdd/ReadVariableOp#^dense_357/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2D
 dense_356/BiasAdd/ReadVariableOp dense_356/BiasAdd/ReadVariableOp2H
"dense_356/Tensordot/ReadVariableOp"dense_356/Tensordot/ReadVariableOp2D
 dense_357/BiasAdd/ReadVariableOp dense_357/BiasAdd/ReadVariableOp2H
"dense_357/Tensordot/ReadVariableOp"dense_357/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163697

inputs
dense_356_5163685
dense_356_5163687
dense_357_5163690
dense_357_5163692
identity��!dense_356/StatefulPartitionedCall�!dense_357/StatefulPartitionedCall�
lambda_178/PartitionedCallPartitionedCallinputs*
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
G__inference_lambda_178_layer_call_and_return_conditional_losses_51635262
lambda_178/PartitionedCall�
!dense_356/StatefulPartitionedCallStatefulPartitionedCall#lambda_178/PartitionedCall:output:0dense_356_5163685dense_356_5163687*
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
F__inference_dense_356_layer_call_and_return_conditional_losses_51635782#
!dense_356/StatefulPartitionedCall�
!dense_357/StatefulPartitionedCallStatefulPartitionedCall*dense_356/StatefulPartitionedCall:output:0dense_357_5163690dense_357_5163692*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_357_layer_call_and_return_conditional_losses_51636242#
!dense_357/StatefulPartitionedCall�
reshape_178/PartitionedCallPartitionedCall*dense_357/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_178_layer_call_and_return_conditional_losses_51636532
reshape_178/PartitionedCall�
IdentityIdentity$reshape_178/PartitionedCall:output:0"^dense_356/StatefulPartitionedCall"^dense_357/StatefulPartitionedCall*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2F
!dense_356/StatefulPartitionedCall!dense_356/StatefulPartitionedCall2F
!dense_357/StatefulPartitionedCall!dense_357/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_lambda_178_layer_call_and_return_conditional_losses_5163942

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
0__inference_sequential_178_layer_call_fn_5163926

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
:���������P*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_178_layer_call_and_return_conditional_losses_51637262
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
G__inference_lambda_178_layer_call_and_return_conditional_losses_5163526

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
�]
�
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163900

inputs/
+dense_356_tensordot_readvariableop_resource-
)dense_356_biasadd_readvariableop_resource/
+dense_357_tensordot_readvariableop_resource-
)dense_357_biasadd_readvariableop_resource
identity�� dense_356/BiasAdd/ReadVariableOp�"dense_356/Tensordot/ReadVariableOp� dense_357/BiasAdd/ReadVariableOp�"dense_357/Tensordot/ReadVariableOp�
lambda_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    ����    2 
lambda_178/strided_slice/stack�
 lambda_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            2"
 lambda_178/strided_slice/stack_1�
 lambda_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2"
 lambda_178/strided_slice/stack_2�
lambda_178/strided_sliceStridedSliceinputs'lambda_178/strided_slice/stack:output:0)lambda_178/strided_slice/stack_1:output:0)lambda_178/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:���������*

begin_mask*
end_mask2
lambda_178/strided_slice�
"dense_356/Tensordot/ReadVariableOpReadVariableOp+dense_356_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"dense_356/Tensordot/ReadVariableOp~
dense_356/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_356/Tensordot/axes�
dense_356/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_356/Tensordot/free�
dense_356/Tensordot/ShapeShape!lambda_178/strided_slice:output:0*
T0*
_output_shapes
:2
dense_356/Tensordot/Shape�
!dense_356/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_356/Tensordot/GatherV2/axis�
dense_356/Tensordot/GatherV2GatherV2"dense_356/Tensordot/Shape:output:0!dense_356/Tensordot/free:output:0*dense_356/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_356/Tensordot/GatherV2�
#dense_356/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_356/Tensordot/GatherV2_1/axis�
dense_356/Tensordot/GatherV2_1GatherV2"dense_356/Tensordot/Shape:output:0!dense_356/Tensordot/axes:output:0,dense_356/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_356/Tensordot/GatherV2_1�
dense_356/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_356/Tensordot/Const�
dense_356/Tensordot/ProdProd%dense_356/Tensordot/GatherV2:output:0"dense_356/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_356/Tensordot/Prod�
dense_356/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_356/Tensordot/Const_1�
dense_356/Tensordot/Prod_1Prod'dense_356/Tensordot/GatherV2_1:output:0$dense_356/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_356/Tensordot/Prod_1�
dense_356/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_356/Tensordot/concat/axis�
dense_356/Tensordot/concatConcatV2!dense_356/Tensordot/free:output:0!dense_356/Tensordot/axes:output:0(dense_356/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_356/Tensordot/concat�
dense_356/Tensordot/stackPack!dense_356/Tensordot/Prod:output:0#dense_356/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_356/Tensordot/stack�
dense_356/Tensordot/transpose	Transpose!lambda_178/strided_slice:output:0#dense_356/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������2
dense_356/Tensordot/transpose�
dense_356/Tensordot/ReshapeReshape!dense_356/Tensordot/transpose:y:0"dense_356/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_356/Tensordot/Reshape�
dense_356/Tensordot/MatMulMatMul$dense_356/Tensordot/Reshape:output:0*dense_356/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_356/Tensordot/MatMul�
dense_356/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
dense_356/Tensordot/Const_2�
!dense_356/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_356/Tensordot/concat_1/axis�
dense_356/Tensordot/concat_1ConcatV2%dense_356/Tensordot/GatherV2:output:0$dense_356/Tensordot/Const_2:output:0*dense_356/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_356/Tensordot/concat_1�
dense_356/TensordotReshape$dense_356/Tensordot/MatMul:product:0%dense_356/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2
dense_356/Tensordot�
 dense_356/BiasAdd/ReadVariableOpReadVariableOp)dense_356_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 dense_356/BiasAdd/ReadVariableOp�
dense_356/BiasAddBiasAdddense_356/Tensordot:output:0(dense_356/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
dense_356/BiasAdd{
dense_356/ReluReludense_356/BiasAdd:output:0*
T0*,
_output_shapes
:����������2
dense_356/Relu�
"dense_357/Tensordot/ReadVariableOpReadVariableOp+dense_357_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype02$
"dense_357/Tensordot/ReadVariableOp~
dense_357/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_357/Tensordot/axes�
dense_357/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_357/Tensordot/free�
dense_357/Tensordot/ShapeShapedense_356/Relu:activations:0*
T0*
_output_shapes
:2
dense_357/Tensordot/Shape�
!dense_357/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_357/Tensordot/GatherV2/axis�
dense_357/Tensordot/GatherV2GatherV2"dense_357/Tensordot/Shape:output:0!dense_357/Tensordot/free:output:0*dense_357/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_357/Tensordot/GatherV2�
#dense_357/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_357/Tensordot/GatherV2_1/axis�
dense_357/Tensordot/GatherV2_1GatherV2"dense_357/Tensordot/Shape:output:0!dense_357/Tensordot/axes:output:0,dense_357/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_357/Tensordot/GatherV2_1�
dense_357/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_357/Tensordot/Const�
dense_357/Tensordot/ProdProd%dense_357/Tensordot/GatherV2:output:0"dense_357/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_357/Tensordot/Prod�
dense_357/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_357/Tensordot/Const_1�
dense_357/Tensordot/Prod_1Prod'dense_357/Tensordot/GatherV2_1:output:0$dense_357/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_357/Tensordot/Prod_1�
dense_357/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_357/Tensordot/concat/axis�
dense_357/Tensordot/concatConcatV2!dense_357/Tensordot/free:output:0!dense_357/Tensordot/axes:output:0(dense_357/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_357/Tensordot/concat�
dense_357/Tensordot/stackPack!dense_357/Tensordot/Prod:output:0#dense_357/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_357/Tensordot/stack�
dense_357/Tensordot/transpose	Transposedense_356/Relu:activations:0#dense_357/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������2
dense_357/Tensordot/transpose�
dense_357/Tensordot/ReshapeReshape!dense_357/Tensordot/transpose:y:0"dense_357/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������2
dense_357/Tensordot/Reshape�
dense_357/Tensordot/MatMulMatMul$dense_357/Tensordot/Reshape:output:0*dense_357/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_357/Tensordot/MatMul�
dense_357/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�2
dense_357/Tensordot/Const_2�
!dense_357/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_357/Tensordot/concat_1/axis�
dense_357/Tensordot/concat_1ConcatV2%dense_357/Tensordot/GatherV2:output:0$dense_357/Tensordot/Const_2:output:0*dense_357/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_357/Tensordot/concat_1�
dense_357/TensordotReshape$dense_357/Tensordot/MatMul:product:0%dense_357/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������2
dense_357/Tensordot�
 dense_357/BiasAdd/ReadVariableOpReadVariableOp)dense_357_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 dense_357/BiasAdd/ReadVariableOp�
dense_357/BiasAddBiasAdddense_357/Tensordot:output:0(dense_357/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������2
dense_357/BiasAddp
reshape_178/ShapeShapedense_357/BiasAdd:output:0*
T0*
_output_shapes
:2
reshape_178/Shape�
reshape_178/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2!
reshape_178/strided_slice/stack�
!reshape_178/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_178/strided_slice/stack_1�
!reshape_178/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!reshape_178/strided_slice/stack_2�
reshape_178/strided_sliceStridedSlicereshape_178/Shape:output:0(reshape_178/strided_slice/stack:output:0*reshape_178/strided_slice/stack_1:output:0*reshape_178/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_178/strided_slice|
reshape_178/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :P2
reshape_178/Reshape/shape/1|
reshape_178/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_178/Reshape/shape/2�
reshape_178/Reshape/shapePack"reshape_178/strided_slice:output:0$reshape_178/Reshape/shape/1:output:0$reshape_178/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:2
reshape_178/Reshape/shape�
reshape_178/ReshapeReshapedense_357/BiasAdd:output:0"reshape_178/Reshape/shape:output:0*
T0*+
_output_shapes
:���������P2
reshape_178/Reshape�
IdentityIdentityreshape_178/Reshape:output:0!^dense_356/BiasAdd/ReadVariableOp#^dense_356/Tensordot/ReadVariableOp!^dense_357/BiasAdd/ReadVariableOp#^dense_357/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2D
 dense_356/BiasAdd/ReadVariableOp dense_356/BiasAdd/ReadVariableOp2H
"dense_356/Tensordot/ReadVariableOp"dense_356/Tensordot/ReadVariableOp2D
 dense_357/BiasAdd/ReadVariableOp dense_357/BiasAdd/ReadVariableOp2H
"dense_357/Tensordot/ReadVariableOp"dense_357/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163726

inputs
dense_356_5163714
dense_356_5163716
dense_357_5163719
dense_357_5163721
identity��!dense_356/StatefulPartitionedCall�!dense_357/StatefulPartitionedCall�
lambda_178/PartitionedCallPartitionedCallinputs*
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
G__inference_lambda_178_layer_call_and_return_conditional_losses_51635342
lambda_178/PartitionedCall�
!dense_356/StatefulPartitionedCallStatefulPartitionedCall#lambda_178/PartitionedCall:output:0dense_356_5163714dense_356_5163716*
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
F__inference_dense_356_layer_call_and_return_conditional_losses_51635782#
!dense_356/StatefulPartitionedCall�
!dense_357/StatefulPartitionedCallStatefulPartitionedCall*dense_356/StatefulPartitionedCall:output:0dense_357_5163719dense_357_5163721*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_357_layer_call_and_return_conditional_losses_51636242#
!dense_357/StatefulPartitionedCall�
reshape_178/PartitionedCallPartitionedCall*dense_357/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_178_layer_call_and_return_conditional_losses_51636532
reshape_178/PartitionedCall�
IdentityIdentity$reshape_178/PartitionedCall:output:0"^dense_356/StatefulPartitionedCall"^dense_357/StatefulPartitionedCall*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:����������::::2F
!dense_356/StatefulPartitionedCall!dense_356/StatefulPartitionedCall2F
!dense_357/StatefulPartitionedCall!dense_357/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
H__inference_reshape_178_layer_call_and_return_conditional_losses_5164044

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
value	B :P2
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
:���������P2	
Reshapeh
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
I
-__inference_reshape_178_layer_call_fn_5164049

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
:���������P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_reshape_178_layer_call_and_return_conditional_losses_51636532
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������P2

Identity"
identityIdentity:output:0*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
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
lambda_178_input>
"serving_default_lambda_178_input:0����������C
reshape_1784
StatefulPartitionedCall:0���������Ptensorflow/serving/predict:��
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
_tf_keras_sequential�"{"class_name": "Sequential", "name": "sequential_178", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_178", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 300, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lambda_178_input"}}, {"class_name": "Lambda", "config": {"name": "lambda_178", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAUAAABDAAAAcxoAAAB8AGQAZACFAmQCZACFAmQAZACFAmYDGQBTACkDTukB\nAAAA6f////+pACkB2gF4cgMAAAByAwAAAPofPGlweXRob24taW5wdXQtODYtMGIwZmRlMTkzZDM1\nPtoIPGxhbWJkYT4OAAAAcwAAAAA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}, {"class_name": "Dense", "config": {"name": "dense_356", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_357", "trainable": true, "dtype": "float32", "units": 160, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_178", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [80, 2]}}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 300, 2]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_178", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 300, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lambda_178_input"}}, {"class_name": "Lambda", "config": {"name": "lambda_178", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAUAAABDAAAAcxoAAAB8AGQAZACFAmQCZACFAmQAZACFAmYDGQBTACkDTukB\nAAAA6f////+pACkB2gF4cgMAAAByAwAAAPofPGlweXRob24taW5wdXQtODYtMGIwZmRlMTkzZDM1\nPtoIPGxhbWJkYT4OAAAAcwAAAAA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}, {"class_name": "Dense", "config": {"name": "dense_356", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_357", "trainable": true, "dtype": "float32", "units": 160, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_178", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [80, 2]}}}]}}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error"}}, "metrics": [[{"class_name": "MeanAbsoluteError", "config": {"name": "mean_absolute_error", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�
regularization_losses
	variables
trainable_variables
	keras_api
*S&call_and_return_all_conditional_losses
T__call__"�
_tf_keras_layer�{"class_name": "Lambda", "name": "lambda_178", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lambda_178", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAUAAABDAAAAcxoAAAB8AGQAZACFAmQCZACFAmQAZACFAmYDGQBTACkDTukB\nAAAA6f////+pACkB2gF4cgMAAAByAwAAAPofPGlweXRob24taW5wdXQtODYtMGIwZmRlMTkzZDM1\nPtoIPGxhbWJkYT4OAAAAcwAAAAA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
�

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*U&call_and_return_all_conditional_losses
V__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_356", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_356", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 2]}}
�

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*W&call_and_return_all_conditional_losses
X__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_357", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_357", "trainable": true, "dtype": "float32", "units": 160, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 512]}}
�
regularization_losses
	variables
trainable_variables
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"�
_tf_keras_layer�{"class_name": "Reshape", "name": "reshape_178", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_178", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [80, 2]}}}
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
#:!	�2dense_356/kernel
:�2dense_356/bias
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
$:"
��2dense_357/kernel
:�2dense_357/bias
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
(:&	�2Adam/dense_356/kernel/m
": �2Adam/dense_356/bias/m
):'
��2Adam/dense_357/kernel/m
": �2Adam/dense_357/bias/m
(:&	�2Adam/dense_356/kernel/v
": �2Adam/dense_356/bias/v
):'
��2Adam/dense_357/kernel/v
": �2Adam/dense_357/bias/v
�2�
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163662
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163678
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163830
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163900�
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
0__inference_sequential_178_layer_call_fn_5163737
0__inference_sequential_178_layer_call_fn_5163926
0__inference_sequential_178_layer_call_fn_5163913
0__inference_sequential_178_layer_call_fn_5163708�
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
"__inference__wrapped_model_5163514�
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
lambda_178_input����������
�2�
G__inference_lambda_178_layer_call_and_return_conditional_losses_5163942
G__inference_lambda_178_layer_call_and_return_conditional_losses_5163934�
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
,__inference_lambda_178_layer_call_fn_5163952
,__inference_lambda_178_layer_call_fn_5163947�
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
F__inference_dense_356_layer_call_and_return_conditional_losses_5163983�
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
+__inference_dense_356_layer_call_fn_5163992�
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
F__inference_dense_357_layer_call_and_return_conditional_losses_5164022�
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
+__inference_dense_357_layer_call_fn_5164031�
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
H__inference_reshape_178_layer_call_and_return_conditional_losses_5164044�
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
-__inference_reshape_178_layer_call_fn_5164049�
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
%__inference_signature_wrapper_5163760lambda_178_input"�
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
"__inference__wrapped_model_5163514�>�;
4�1
/�,
lambda_178_input����������
� "=�:
8
reshape_178)�&
reshape_178���������P�
F__inference_dense_356_layer_call_and_return_conditional_losses_5163983e3�0
)�&
$�!
inputs���������
� "*�'
 �
0����������
� �
+__inference_dense_356_layer_call_fn_5163992X3�0
)�&
$�!
inputs���������
� "������������
F__inference_dense_357_layer_call_and_return_conditional_losses_5164022f4�1
*�'
%�"
inputs����������
� "*�'
 �
0����������
� �
+__inference_dense_357_layer_call_fn_5164031Y4�1
*�'
%�"
inputs����������
� "������������
G__inference_lambda_178_layer_call_and_return_conditional_losses_5163934i<�9
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
G__inference_lambda_178_layer_call_and_return_conditional_losses_5163942i<�9
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
,__inference_lambda_178_layer_call_fn_5163947\<�9
2�/
%�"
inputs����������

 
p
� "�����������
,__inference_lambda_178_layer_call_fn_5163952\<�9
2�/
%�"
inputs����������

 
p 
� "�����������
H__inference_reshape_178_layer_call_and_return_conditional_losses_5164044a4�1
*�'
%�"
inputs����������
� ")�&
�
0���������P
� �
-__inference_reshape_178_layer_call_fn_5164049T4�1
*�'
%�"
inputs����������
� "����������P�
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163662yF�C
<�9
/�,
lambda_178_input����������
p

 
� ")�&
�
0���������P
� �
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163678yF�C
<�9
/�,
lambda_178_input����������
p 

 
� ")�&
�
0���������P
� �
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163830o<�9
2�/
%�"
inputs����������
p

 
� ")�&
�
0���������P
� �
K__inference_sequential_178_layer_call_and_return_conditional_losses_5163900o<�9
2�/
%�"
inputs����������
p 

 
� ")�&
�
0���������P
� �
0__inference_sequential_178_layer_call_fn_5163708lF�C
<�9
/�,
lambda_178_input����������
p

 
� "����������P�
0__inference_sequential_178_layer_call_fn_5163737lF�C
<�9
/�,
lambda_178_input����������
p 

 
� "����������P�
0__inference_sequential_178_layer_call_fn_5163913b<�9
2�/
%�"
inputs����������
p

 
� "����������P�
0__inference_sequential_178_layer_call_fn_5163926b<�9
2�/
%�"
inputs����������
p 

 
� "����������P�
%__inference_signature_wrapper_5163760�R�O
� 
H�E
C
lambda_178_input/�,
lambda_178_input����������"=�:
8
reshape_178)�&
reshape_178���������P
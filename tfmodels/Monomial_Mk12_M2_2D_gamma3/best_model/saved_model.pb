�8
��
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
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
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
T
CheckNumerics
tensor"T
output"T"
Ttype:
2"
messagestring�
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
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
@
Softplus
features"T
activations"T"
Ttype:
2
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
executor_typestring ��
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
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
 �"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��5
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
�
layer_input/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*#
shared_namelayer_input/kernel
z
&layer_input/kernel/Read/ReadVariableOpReadVariableOplayer_input/kernel*
_output_shapes
:	�*
dtype0
y
layer_input/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*!
shared_namelayer_input/bias
r
$layer_input/bias/Read/ReadVariableOpReadVariableOplayer_input/bias*
_output_shapes	
:�*
dtype0
�
block_0_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameblock_0_layer_0/kernel
�
*block_0_layer_0/kernel/Read/ReadVariableOpReadVariableOpblock_0_layer_0/kernel* 
_output_shapes
:
��*
dtype0
�
block_0_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameblock_0_layer_0/bias
z
(block_0_layer_0/bias/Read/ReadVariableOpReadVariableOpblock_0_layer_0/bias*
_output_shapes	
:�*
dtype0
�
block_1_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameblock_1_layer_0/kernel
�
*block_1_layer_0/kernel/Read/ReadVariableOpReadVariableOpblock_1_layer_0/kernel* 
_output_shapes
:
��*
dtype0
�
block_1_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameblock_1_layer_0/bias
z
(block_1_layer_0/bias/Read/ReadVariableOpReadVariableOpblock_1_layer_0/bias*
_output_shapes	
:�*
dtype0
�
block_2_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameblock_2_layer_0/kernel
�
*block_2_layer_0/kernel/Read/ReadVariableOpReadVariableOpblock_2_layer_0/kernel* 
_output_shapes
:
��*
dtype0
�
block_2_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameblock_2_layer_0/bias
z
(block_2_layer_0/bias/Read/ReadVariableOpReadVariableOpblock_2_layer_0/bias*
_output_shapes	
:�*
dtype0
�
block_3_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameblock_3_layer_0/kernel
�
*block_3_layer_0/kernel/Read/ReadVariableOpReadVariableOpblock_3_layer_0/kernel* 
_output_shapes
:
��*
dtype0
�
block_3_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameblock_3_layer_0/bias
z
(block_3_layer_0/bias/Read/ReadVariableOpReadVariableOpblock_3_layer_0/bias*
_output_shapes	
:�*
dtype0
�
block_4_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameblock_4_layer_0/kernel
�
*block_4_layer_0/kernel/Read/ReadVariableOpReadVariableOpblock_4_layer_0/kernel* 
_output_shapes
:
��*
dtype0
�
block_4_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameblock_4_layer_0/bias
z
(block_4_layer_0/bias/Read/ReadVariableOpReadVariableOpblock_4_layer_0/bias*
_output_shapes	
:�*
dtype0
�
block_5_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameblock_5_layer_0/kernel
�
*block_5_layer_0/kernel/Read/ReadVariableOpReadVariableOpblock_5_layer_0/kernel* 
_output_shapes
:
��*
dtype0
�
block_5_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameblock_5_layer_0/bias
z
(block_5_layer_0/bias/Read/ReadVariableOpReadVariableOpblock_5_layer_0/bias*
_output_shapes	
:�*
dtype0
�
dense_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_namedense_output/kernel
|
'dense_output/kernel/Read/ReadVariableOpReadVariableOpdense_output/kernel*
_output_shapes
:	�*
dtype0
z
dense_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namedense_output/bias
s
%dense_output/bias/Read/ReadVariableOpReadVariableOpdense_output/bias*
_output_shapes
:*
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
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_5
[
total_5/Read/ReadVariableOpReadVariableOptotal_5*
_output_shapes
: *
dtype0
b
count_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0
b
total_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_6
[
total_6/Read/ReadVariableOpReadVariableOptotal_6*
_output_shapes
: *
dtype0
b
count_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_6
[
count_6/Read/ReadVariableOpReadVariableOpcount_6*
_output_shapes
: *
dtype0
b
total_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_7
[
total_7/Read/ReadVariableOpReadVariableOptotal_7*
_output_shapes
: *
dtype0
b
count_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_7
[
count_7/Read/ReadVariableOpReadVariableOpcount_7*
_output_shapes
: *
dtype0
b
total_8VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_8
[
total_8/Read/ReadVariableOpReadVariableOptotal_8*
_output_shapes
: *
dtype0
b
count_8VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_8
[
count_8/Read/ReadVariableOpReadVariableOpcount_8*
_output_shapes
: *
dtype0
b
total_9VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_9
[
total_9/Read/ReadVariableOpReadVariableOptotal_9*
_output_shapes
: *
dtype0
b
count_9VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_9
[
count_9/Read/ReadVariableOpReadVariableOpcount_9*
_output_shapes
: *
dtype0
�
Adam/layer_input/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�**
shared_nameAdam/layer_input/kernel/m
�
-Adam/layer_input/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer_input/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/layer_input/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameAdam/layer_input/bias/m
�
+Adam/layer_input/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer_input/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/block_0_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/block_0_layer_0/kernel/m
�
1Adam/block_0_layer_0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/block_0_layer_0/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/block_0_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/block_0_layer_0/bias/m
�
/Adam/block_0_layer_0/bias/m/Read/ReadVariableOpReadVariableOpAdam/block_0_layer_0/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/block_1_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/block_1_layer_0/kernel/m
�
1Adam/block_1_layer_0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/block_1_layer_0/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/block_1_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/block_1_layer_0/bias/m
�
/Adam/block_1_layer_0/bias/m/Read/ReadVariableOpReadVariableOpAdam/block_1_layer_0/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/block_2_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/block_2_layer_0/kernel/m
�
1Adam/block_2_layer_0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/block_2_layer_0/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/block_2_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/block_2_layer_0/bias/m
�
/Adam/block_2_layer_0/bias/m/Read/ReadVariableOpReadVariableOpAdam/block_2_layer_0/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/block_3_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/block_3_layer_0/kernel/m
�
1Adam/block_3_layer_0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/block_3_layer_0/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/block_3_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/block_3_layer_0/bias/m
�
/Adam/block_3_layer_0/bias/m/Read/ReadVariableOpReadVariableOpAdam/block_3_layer_0/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/block_4_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/block_4_layer_0/kernel/m
�
1Adam/block_4_layer_0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/block_4_layer_0/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/block_4_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/block_4_layer_0/bias/m
�
/Adam/block_4_layer_0/bias/m/Read/ReadVariableOpReadVariableOpAdam/block_4_layer_0/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/block_5_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/block_5_layer_0/kernel/m
�
1Adam/block_5_layer_0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/block_5_layer_0/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/block_5_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/block_5_layer_0/bias/m
�
/Adam/block_5_layer_0/bias/m/Read/ReadVariableOpReadVariableOpAdam/block_5_layer_0/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nameAdam/dense_output/kernel/m
�
.Adam/dense_output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_output/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/dense_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/dense_output/bias/m
�
,Adam/dense_output/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_output/bias/m*
_output_shapes
:*
dtype0
�
Adam/layer_input/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�**
shared_nameAdam/layer_input/kernel/v
�
-Adam/layer_input/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer_input/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/layer_input/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameAdam/layer_input/bias/v
�
+Adam/layer_input/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer_input/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/block_0_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/block_0_layer_0/kernel/v
�
1Adam/block_0_layer_0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/block_0_layer_0/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/block_0_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/block_0_layer_0/bias/v
�
/Adam/block_0_layer_0/bias/v/Read/ReadVariableOpReadVariableOpAdam/block_0_layer_0/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/block_1_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/block_1_layer_0/kernel/v
�
1Adam/block_1_layer_0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/block_1_layer_0/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/block_1_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/block_1_layer_0/bias/v
�
/Adam/block_1_layer_0/bias/v/Read/ReadVariableOpReadVariableOpAdam/block_1_layer_0/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/block_2_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/block_2_layer_0/kernel/v
�
1Adam/block_2_layer_0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/block_2_layer_0/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/block_2_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/block_2_layer_0/bias/v
�
/Adam/block_2_layer_0/bias/v/Read/ReadVariableOpReadVariableOpAdam/block_2_layer_0/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/block_3_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/block_3_layer_0/kernel/v
�
1Adam/block_3_layer_0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/block_3_layer_0/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/block_3_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/block_3_layer_0/bias/v
�
/Adam/block_3_layer_0/bias/v/Read/ReadVariableOpReadVariableOpAdam/block_3_layer_0/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/block_4_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/block_4_layer_0/kernel/v
�
1Adam/block_4_layer_0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/block_4_layer_0/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/block_4_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/block_4_layer_0/bias/v
�
/Adam/block_4_layer_0/bias/v/Read/ReadVariableOpReadVariableOpAdam/block_4_layer_0/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/block_5_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameAdam/block_5_layer_0/kernel/v
�
1Adam/block_5_layer_0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/block_5_layer_0/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/block_5_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameAdam/block_5_layer_0/bias/v
�
/Adam/block_5_layer_0/bias/v/Read/ReadVariableOpReadVariableOpAdam/block_5_layer_0/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nameAdam/dense_output/kernel/v
�
.Adam/dense_output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_output/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/dense_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/dense_output/bias/v
�
,Adam/dense_output/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_output/bias/v*
_output_shapes
:*
dtype0
�6
ConstConst*
_output_shapes
:	�*
dtype0*�6
value�6B�6	�"�6      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?���Ō��?�]���?�/�&ʽ?��^Gi�?���ؚ�?"��B�?"��B�?���ؚ�?��^Gi�?�/�&ʽ?�]���?���Ō��?���Ō����]�����/�&ʽ���^Giÿ���ؚƿ"��Bȿ#��Bȿ���ؚƿ��^Giÿ�/�&ʽ��]�������Ō����PVh��?V�j��?�6�_���?��(����?��3��C�?R�`���?R�`���?��3��C�?��(����?�6�_���?X�j��?QVh��?�PVh���T�j�Ŀ�6�_��п��(���տ��3��CٿR�`��ۿS�`��ۿ��3��Cٿ��(���տ�6�_��пS�j�Ŀ�PVh���f�~��R�?��ƊeB�?�\�����?
�˪�3�?��;����?��}�?�?��}�?�?��;����?
�˪�3�?�\�����?��ƊeB�?y�~��R�?n�~��R����ƊeBϿ�\����ؿ	�˪�3࿘�;������}�?���}�?俘�;�����˪�3࿆\����ؿ��ƊeBϿk�~��R�����]�?g8;���?�̵z��?>�`� ��?�9~����?��d-���?��d-���?�9~����?>�`� ��?�̵z��?h8;���?���]�?���]��e8;��ӿ�̵z�߿<�`� �俟9~���翢�d-��鿣�d-��鿠9~����B�`� ���̵z�߿d8;��ӿ���]������s�?A��Q��?0c�cY�?˃؂��?���W�}�?�C�<���?�C�<���?���W�}�?˃؂��?2c�cY�?C��Q��?����s�?����s��?��Q�ֿ0c�cY�Ƀ؂�����W�}��C�<�����C�<�������W�}�Ѓ؂��2c�cY�=��Q�ֿ����s����h��?�N�C�L�?+rt�S�?�b^�/�?=��W�T�?j�e��y�?j�e��y�?>��W�T�?�b^�/�?+rt�S�?�N�C�L�?��h��?��h����N�C�Lؿ+rt�S㿉b^�/�>��W�T��j�e��y�k�e��y�?��W�T���b^�/�+rt�S㿘N�C�Lؿ��h���"��B�?���ؚ�?��^Gi�?�/�&ʽ?�]���?���Ō��?���Ō���]�����/�&ʽ���^Giÿ���ؚƿ"��Bȿ"��Bȿ���ؚƿ��^Giÿ�/�&ʽ�]�������Ō������Ō��?{]���?�/�&ʽ?��^Gi�?���ؚ�?"��B�?R�`���?��3��C�?��(����?�6�_���?W�j��?�PVh��?�PVh���R�j�Ŀ�6�_��п��(���տ��3��CٿR�`��ۿR�`��ۿ��3��Cٿ��(���տ�6�_��пR�j�Ŀ�PVh����PVh��?M�j��?�6�_���?��(����?��3��C�?R�`���?��}�?�?��;����?
�˪�3�?�\�����?��ƊeB�?l�~��R�?g�~��R����ƊeBϿ�\����ؿ
�˪�3࿗�;������}�?���}�?俘�;����
�˪�3࿆\����ؿ��ƊeBϿh�~��R��W�~��R�?��ƊeB�?z\�����?	�˪�3�?��;����?��}�?�?��d-���?�9~����?>�`� ��?�̵z��?h8;���?���]�?���]��c8;��ӿ�̵z�߿=�`� �俞9~���翢�d-��鿢�d-��鿟9~����>�`� ���̵z�߿c8;��ӿ	���]������]�?^8;���?�̵z��?<�`� ��?�9~����?��d-���?�C�<���?���W�}�?˃؂��?0c�cY�?B��Q��?����s�?����s��<��Q�ֿ0c�cY�ʃ؂�����W�}��C�<�����C�<�������W�}�˃؂��2c�cY�<��Q�ֿ����s������s�?7��Q��?*c�cY�?Ƀ؂��?���W�}�?�C�<���?j�e��y�?=��W�T�?�b^�/�?+rt�S�?�N�C�L�?��h��?��h����N�C�Lؿ+rt�S㿊b^�/�=��W�T��j�e��y�j�e��y�>��W�T���b^�/�+rt�S㿗N�C�Lؿ��h�����h��?�N�C�L�?+rt�S�?�b^�/�?>��W�T�?j�e��y�?�vGfD?��I���u?(��U��?b����?�϶o��?�����c�?�����c�?�϶o��?b����?.��U��?��I���u?�vGfD?�vGfD?��I���u?(��U��?b����?�϶o��?�����c�?�����c�?�϶o��?b����?.��U��?��I���u?�vGfD?%�s-.{i?�c��`�?H[�!R�?P�D��j�?M-�5f��?��a���?��a���?O-�5f��?P�D��j�?M[�!R�?��c��`�?S�s-.{i?:�s-.{i?�c��`�?H[�!R�?K�D��j�?O-�5f��?��a���?��a���?P-�5f��?[�D��j�?M[�!R�?�c��`�?1�s-.{i?�ck|?ҫ��.��?��@qQ�?�S$�g�?h��;?�?:S�6���?:S�6���?h��;?�?�S$�g�?��@qQ�?ث��.��?C�ck|?%�ck|?̫��.��?��@qQ�?�S$�g�?h��;?�?:S�6���?<S�6���?h��;?�?�S$�g�?��@qQ�?ȫ��.��?�ck|?I�8�2ۆ?v��?%�O���?Iɮuc�?��(�]��?Lw�Κ�?Lw�Κ�?��(�]��?Iɮuc�?+�O���?y��?s�8�2ۆ?^�8�2ۆ?q��?%�O���?Dɮuc�?��(�]��?Lw�Κ�?Mw�Κ�?�(�]��?Sɮuc�?+�O���?o��?U�8�2ۆ?��a�+�?&
wh}5�?Z6,�>��?C?C�j�?�;�?��?�)�!�2�?�)�!�2�?�;�?��?C?C�j�?^6,�>��?)
wh}5�?��a�+�?��a�+�?#
wh}5�?Z6,�>��?@?C�j�?�;�?��?�)�!�2�?�)�!�2�?�;�?��?J?C�j�?^6,�>��?!
wh}5�?��a�+�?��� ,�?���e�s�?W�Q�X�?]�A��?Oʼi���?Y��$��?Y��$��?Pʼi���?]�A��?[�Q�X�?���e�s�?�� ,�?�� ,�?���e�s�?W�Q�X�?]�A��?Pʼi���?Y��$��?
Y��$��?Rʼi���?$]�A��?[�Q�X�?���e�s�?��� ,�?�[�%^s?K^d��t�?b����?b����?L^d��t�?�[�%^s?�[�%^s�F^d��t��b�����c�����N^d��t���[�%^s��[�%^s?K^d��t�?b����?b����?F^d��t�?�[�%^s?�[�%^s�B^d��t��_�����b�����H^d��t���[�%^s��,�1�?O�~�G��?S��b���?S��b���?P�~�G��?�,�1�?�,�1��M�~�G���S��b����U��b����Q�~�G���$�,�1���,�1�?N�~�G��?S��b���?T��b���?M�~�G��?�,�1�?��,�1��J�~�G���O��b����T��b����N�~�G����,�1���Y����?�rl$n�?�Hf�-�?�Hf�-�?�rl$n�?�Y����?�Y������rl$n¿�Hf�-ɿ�Hf�-ɿ�rl$n¿�Y������Y����?�rl$n�?�Hf�-�?�Hf�-�?�rl$n�?�Y����?�Y������rl$n¿�Hf�-ɿ�Hf�-ɿ�rl$n¿�Y�����j�>���?�JL����?듩�a?�?듩�a?�?�JL����?r�>���?l�>�����JL���Ϳ듩�a?Կ쓩�a?Կ�JL���Ϳ~�>����t�>���?�JL����?듩�a?�?듩�a?�?�JL����?n�>���?^�>�����JL���Ϳ蓩�a?Կ듩�a?Կ�JL���Ϳp�>����T��d���?\�����?r�J�@��?r�J�@��?]�����?]��d���?V��d����Y����ӿr�J�@�ڿt�J�@�ڿ^����ӿn��d����a��d���?[�����?r�J�@��?s�J�@��?Y�����?X��d���?C��d����U����ӿo�J�@�ڿs�J�@�ڿZ����ӿ\��d�����:c�M�?ؓHP�E�?H�с�l�?H�с�l�?ؓHP�E�?�:c�M�?�:c�M��ԓHP�EֿH�с�l޿J�с�l޿ٓHP�Eֿ�:c�M���:c�M�?דHP�E�?H�с�l�?I�с�l�?ԓHP�E�?�:c�M�?�:c�M��ϓHP�EֿC�с�l޿I�с�l޿ՓHP�Eֿ�:c�M�������c�?�϶o��?b����?(��U��?��I���u?�vGfD?�vGfD?��I���u?(��U��?	b����?�϶o��?�����c�?�����c�?�϶o��?b����?.��U��?��I���u?�vGfD?�vGfD?��I���u?��U��?b����?�϶o��?�����c�?��a���?M-�5f��?P�D��j�?H[�!R�?��c��`�?5�s-.{i?(�s-.{i?�c��`�?H[�!R�?M�D��j�?M-�5f��?��a���?��a���?O-�5f��?P�D��j�?M[�!R�?�c��`�?,�s-.{i?�s-.{i?݇c��`�?<[�!R�?K�D��j�?O-�5f��?��a���?:S�6���?h��;?�?�S$�g�?��@qQ�?ԫ��.��? �ck|?�ck|?ƫ��.��?��@qQ�?�S$�g�?h��;?�?:S�6���?:S�6���?h��;?�?�S$�g�?��@qQ�?ƫ��.��?�ck|?�ck|?����.��?���@qQ�?�S$�g�?h��;?�?:S�6���?Lw�Κ�?��(�]��?Iɮuc�?%�O���?y��?X�8�2ۆ?M�8�2ۆ?l��?%�O���?Gɮuc�?��(�]��?Lw�Κ�?Lw�Κ�?��(�]��?Iɮuc�?+�O���?l��?P�8�2ۆ?,�8�2ۆ?`��?�O���?Dɮuc�?��(�]��?Lw�Κ�?�)�!�2�?�;�?��?C?C�j�?Z6,�>��?(
wh}5�?��a�+�?��a�+�?
wh}5�?Z6,�>��?A?C�j�?�;�?��?�)�!�2�?�)�!�2�?�;�?��?C?C�j�?^6,�>��?
wh}5�?��a�+�?��a�+�?
wh}5�?L6,�>��?@?C�j�?�;�?��?�)�!�2�?Y��$��?Oʼi���?]�A��?W�Q�X�?���e�s�?��� ,�?��� ,�?���e�s�?W�Q�X�?]�A��?Oʼi���?Y��$��?Y��$��?Pʼi���?]�A��?[�Q�X�?���e�s�?��� ,�?��� ,�?���e�s�?F�Q�X�?]�A��?Pʼi���?Y��$��?
�	
Const_1Const*
_output_shapes
:	�*
dtype0*�	
value�	B�		�"�	[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?[w��4Ky?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?���a'��?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?yc�u�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?�%/N�;�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?A�"2L�?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?!�ѯ��?
�
Const_2Const*
_output_shapes

:*
dtype0*I
value@B>"0        ����MbP?����MbP?����MbP?����MbP?����MbP?

NoOpNoOp
�t
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*�t
value�tB�t B�t
�

core_model
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api

signatures
�
	layer-0

layer_with_weights-0

layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
layer-8
layer_with_weights-3
layer-9
layer-10
layer-11
layer_with_weights-4
layer-12
layer-13
layer-14
layer_with_weights-5
layer-15
layer-16
layer-17
layer_with_weights-6
layer-18
layer-19
layer_with_weights-7
layer-20
	variables
trainable_variables
 regularization_losses
!	keras_api
�
"iter

#beta_1

$beta_2
	%decay
&learning_rate'm�(m�)m�*m�+m�,m�-m�.m�/m�0m�1m�2m�3m�4m�5m�6m�'v�(v�)v�*v�+v�,v�-v�.v�/v�0v�1v�2v�3v�4v�5v�6v�
 
v
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615
v
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615
 
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
 
 
h

'kernel
(bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api

@	keras_api
h

)kernel
*bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
R
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api

I	keras_api
h

+kernel
,bias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
R
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api

R	keras_api
h

-kernel
.bias
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
R
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api

[	keras_api
h

/kernel
0bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
R
`	variables
atrainable_variables
bregularization_losses
c	keras_api

d	keras_api
h

1kernel
2bias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
R
i	variables
jtrainable_variables
kregularization_losses
l	keras_api

m	keras_api
h

3kernel
4bias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
R
r	variables
strainable_variables
tregularization_losses
u	keras_api
h

5kernel
6bias
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
v
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615
v
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615
 
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
 regularization_losses
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
NL
VARIABLE_VALUElayer_input/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUElayer_input/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEblock_0_layer_0/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock_0_layer_0/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEblock_1_layer_0/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock_1_layer_0/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEblock_2_layer_0/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock_2_layer_0/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEblock_3_layer_0/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock_3_layer_0/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEblock_4_layer_0/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEblock_4_layer_0/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEblock_5_layer_0/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEblock_5_layer_0/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdense_output/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEdense_output/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
 

0
O
0
�1
�2
�3
�4
�5
�6
�7
�8
�9
 
 

'0
(1

'0
(1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
 

)0
*1

)0
*1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
 

+0
,1

+0
,1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
 

-0
.1

-0
.1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
 

/0
01

/0
01
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
\	variables
]trainable_variables
^regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
 

10
21

10
21
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
 

30
41

30
41
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
r	variables
strainable_variables
tregularization_losses

50
61

50
61
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
 
�
	0

1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
 
 
 
8

�total

�count
�	variables
�	keras_api
8

�total

�count
�	variables
�	keras_api
8

�total

�count
�	variables
�	keras_api
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
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
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_54keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_54keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_64keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_64keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_74keras_api/metrics/7/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_74keras_api/metrics/7/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_84keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_84keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_94keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_94keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
qo
VARIABLE_VALUEAdam/layer_input/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/layer_input/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/block_0_layer_0/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/block_0_layer_0/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/block_1_layer_0/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/block_1_layer_0/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/block_2_layer_0/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/block_2_layer_0/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/block_3_layer_0/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/block_3_layer_0/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/block_4_layer_0/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/block_4_layer_0/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/block_5_layer_0/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/block_5_layer_0/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dense_output/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEAdam/dense_output/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEAdam/layer_input/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/layer_input/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/block_0_layer_0/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/block_0_layer_0/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/block_1_layer_0/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/block_1_layer_0/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/block_2_layer_0/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/block_2_layer_0/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/block_3_layer_0/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/block_3_layer_0/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/block_4_layer_0/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/block_4_layer_0/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/block_5_layer_0/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/block_5_layer_0/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dense_output/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUEAdam/dense_output/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1layer_input/kernellayer_input/biasblock_0_layer_0/kernelblock_0_layer_0/biasblock_1_layer_0/kernelblock_1_layer_0/biasblock_2_layer_0/kernelblock_2_layer_0/biasblock_3_layer_0/kernelblock_3_layer_0/biasblock_4_layer_0/kernelblock_4_layer_0/biasblock_5_layer_0/kernelblock_5_layer_0/biasdense_output/kerneldense_output/biasConstConst_1Const_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� */
f*R(
&__inference_signature_wrapper_58476342
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp&layer_input/kernel/Read/ReadVariableOp$layer_input/bias/Read/ReadVariableOp*block_0_layer_0/kernel/Read/ReadVariableOp(block_0_layer_0/bias/Read/ReadVariableOp*block_1_layer_0/kernel/Read/ReadVariableOp(block_1_layer_0/bias/Read/ReadVariableOp*block_2_layer_0/kernel/Read/ReadVariableOp(block_2_layer_0/bias/Read/ReadVariableOp*block_3_layer_0/kernel/Read/ReadVariableOp(block_3_layer_0/bias/Read/ReadVariableOp*block_4_layer_0/kernel/Read/ReadVariableOp(block_4_layer_0/bias/Read/ReadVariableOp*block_5_layer_0/kernel/Read/ReadVariableOp(block_5_layer_0/bias/Read/ReadVariableOp'dense_output/kernel/Read/ReadVariableOp%dense_output/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOptotal_6/Read/ReadVariableOpcount_6/Read/ReadVariableOptotal_7/Read/ReadVariableOpcount_7/Read/ReadVariableOptotal_8/Read/ReadVariableOpcount_8/Read/ReadVariableOptotal_9/Read/ReadVariableOpcount_9/Read/ReadVariableOp-Adam/layer_input/kernel/m/Read/ReadVariableOp+Adam/layer_input/bias/m/Read/ReadVariableOp1Adam/block_0_layer_0/kernel/m/Read/ReadVariableOp/Adam/block_0_layer_0/bias/m/Read/ReadVariableOp1Adam/block_1_layer_0/kernel/m/Read/ReadVariableOp/Adam/block_1_layer_0/bias/m/Read/ReadVariableOp1Adam/block_2_layer_0/kernel/m/Read/ReadVariableOp/Adam/block_2_layer_0/bias/m/Read/ReadVariableOp1Adam/block_3_layer_0/kernel/m/Read/ReadVariableOp/Adam/block_3_layer_0/bias/m/Read/ReadVariableOp1Adam/block_4_layer_0/kernel/m/Read/ReadVariableOp/Adam/block_4_layer_0/bias/m/Read/ReadVariableOp1Adam/block_5_layer_0/kernel/m/Read/ReadVariableOp/Adam/block_5_layer_0/bias/m/Read/ReadVariableOp.Adam/dense_output/kernel/m/Read/ReadVariableOp,Adam/dense_output/bias/m/Read/ReadVariableOp-Adam/layer_input/kernel/v/Read/ReadVariableOp+Adam/layer_input/bias/v/Read/ReadVariableOp1Adam/block_0_layer_0/kernel/v/Read/ReadVariableOp/Adam/block_0_layer_0/bias/v/Read/ReadVariableOp1Adam/block_1_layer_0/kernel/v/Read/ReadVariableOp/Adam/block_1_layer_0/bias/v/Read/ReadVariableOp1Adam/block_2_layer_0/kernel/v/Read/ReadVariableOp/Adam/block_2_layer_0/bias/v/Read/ReadVariableOp1Adam/block_3_layer_0/kernel/v/Read/ReadVariableOp/Adam/block_3_layer_0/bias/v/Read/ReadVariableOp1Adam/block_4_layer_0/kernel/v/Read/ReadVariableOp/Adam/block_4_layer_0/bias/v/Read/ReadVariableOp1Adam/block_5_layer_0/kernel/v/Read/ReadVariableOp/Adam/block_5_layer_0/bias/v/Read/ReadVariableOp.Adam/dense_output/kernel/v/Read/ReadVariableOp,Adam/dense_output/bias/v/Read/ReadVariableOpConst_3*V
TinO
M2K	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__traced_save_58478472
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelayer_input/kernellayer_input/biasblock_0_layer_0/kernelblock_0_layer_0/biasblock_1_layer_0/kernelblock_1_layer_0/biasblock_2_layer_0/kernelblock_2_layer_0/biasblock_3_layer_0/kernelblock_3_layer_0/biasblock_4_layer_0/kernelblock_4_layer_0/biasblock_5_layer_0/kernelblock_5_layer_0/biasdense_output/kerneldense_output/biastotalcounttotal_1count_1total_2count_2total_3count_3total_4count_4total_5count_5total_6count_6total_7count_7total_8count_8total_9count_9Adam/layer_input/kernel/mAdam/layer_input/bias/mAdam/block_0_layer_0/kernel/mAdam/block_0_layer_0/bias/mAdam/block_1_layer_0/kernel/mAdam/block_1_layer_0/bias/mAdam/block_2_layer_0/kernel/mAdam/block_2_layer_0/bias/mAdam/block_3_layer_0/kernel/mAdam/block_3_layer_0/bias/mAdam/block_4_layer_0/kernel/mAdam/block_4_layer_0/bias/mAdam/block_5_layer_0/kernel/mAdam/block_5_layer_0/bias/mAdam/dense_output/kernel/mAdam/dense_output/bias/mAdam/layer_input/kernel/vAdam/layer_input/bias/vAdam/block_0_layer_0/kernel/vAdam/block_0_layer_0/bias/vAdam/block_1_layer_0/kernel/vAdam/block_1_layer_0/bias/vAdam/block_2_layer_0/kernel/vAdam/block_2_layer_0/bias/vAdam/block_3_layer_0/kernel/vAdam/block_3_layer_0/bias/vAdam/block_4_layer_0/kernel/vAdam/block_4_layer_0/bias/vAdam/block_5_layer_0/kernel/vAdam/block_5_layer_0/bias/vAdam/dense_output/kernel/vAdam/dense_output/bias/v*U
TinN
L2J*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference__traced_restore_58478701��2
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58476810
xT
Aresnet_entropy_closure_layer_input_matmul_readvariableop_resource:	�Q
Bresnet_entropy_closure_layer_input_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_3_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_3_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_4_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_4_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_5_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_5_layer_0_biasadd_readvariableop_resource:	�U
Bresnet_entropy_closure_dense_output_matmul_readvariableop_resource:	�Q
Cresnet_entropy_closure_dense_output_biasadd_readvariableop_resource:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp�:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp�9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp�9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp�8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�checked�	checked_1�5dense_output/kernel/Regularizer/Square/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOpReadVariableOpAresnet_entropy_closure_layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
)ResNet_entropy_closure/layer_input/MatMulMatMulx@ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOpReadVariableOpBresnet_entropy_closure_layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*ResNet_entropy_closure/layer_input/BiasAddBiasAdd3ResNet_entropy_closure/layer_input/MatMul:product:0AResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0ResNet_entropy_closure/tf.math.softplus/SoftplusSoftplus3ResNet_entropy_closure/layer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_0_layer_0/MatMulMatMul>ResNet_entropy_closure/tf.math.softplus/Softplus:activations:0DResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_0_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_0_layer_0/MatMul:product:0EResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
ResNet_entropy_closure/add/addAddV23ResNet_entropy_closure/layer_input/BiasAdd:output:07ResNet_entropy_closure/block_0_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
2ResNet_entropy_closure/tf.math.softplus_1/SoftplusSoftplus"ResNet_entropy_closure/add/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_1_layer_0/MatMulMatMul@ResNet_entropy_closure/tf.math.softplus_1/Softplus:activations:0DResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_1_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_1_layer_0/MatMul:product:0EResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_1/addAddV2"ResNet_entropy_closure/add/add:z:07ResNet_entropy_closure/block_1_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
2ResNet_entropy_closure/tf.math.softplus_2/SoftplusSoftplus$ResNet_entropy_closure/add_1/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_2_layer_0/MatMulMatMul@ResNet_entropy_closure/tf.math.softplus_2/Softplus:activations:0DResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_2_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_2_layer_0/MatMul:product:0EResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_2/addAddV2$ResNet_entropy_closure/add_1/add:z:07ResNet_entropy_closure/block_2_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
2ResNet_entropy_closure/tf.math.softplus_3/SoftplusSoftplus$ResNet_entropy_closure/add_2/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_3_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_3_layer_0/MatMulMatMul@ResNet_entropy_closure/tf.math.softplus_3/Softplus:activations:0DResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_3_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_3_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_3_layer_0/MatMul:product:0EResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_3/addAddV2$ResNet_entropy_closure/add_2/add:z:07ResNet_entropy_closure/block_3_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
2ResNet_entropy_closure/tf.math.softplus_4/SoftplusSoftplus$ResNet_entropy_closure/add_3/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_4_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_4_layer_0/MatMulMatMul@ResNet_entropy_closure/tf.math.softplus_4/Softplus:activations:0DResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_4_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_4_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_4_layer_0/MatMul:product:0EResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_4/addAddV2$ResNet_entropy_closure/add_3/add:z:07ResNet_entropy_closure/block_4_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
2ResNet_entropy_closure/tf.math.softplus_5/SoftplusSoftplus$ResNet_entropy_closure/add_4/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_5_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_5_layer_0/MatMulMatMul@ResNet_entropy_closure/tf.math.softplus_5/Softplus:activations:0DResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_5_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_5_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_5_layer_0/MatMul:product:0EResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_5/addAddV2$ResNet_entropy_closure/add_4/add:z:07ResNet_entropy_closure/block_5_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOpReadVariableOpBresnet_entropy_closure_dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*ResNet_entropy_closure/dense_output/MatMulMatMul$ResNet_entropy_closure/add_5/add:z:0AResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOpReadVariableOpCresnet_entropy_closure_dense_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
+ResNet_entropy_closure/dense_output/BiasAddBiasAdd4ResNet_entropy_closure/dense_output/MatMul:product:0BResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������s
ones_like/ShapeShape4ResNet_entropy_closure/dense_output/BiasAdd:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:����������
Egradient_tape/ResNet_entropy_closure/dense_output/BiasAdd/BiasAddGradBiasAddGradones_like:output:0*
T0*
_output_shapes
:�
?gradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMulMatMulones_like:output:0AResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Agradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMul_1MatMul$ResNet_entropy_closure/add_5/add:z:0ones_like:output:0*
T0*
_output_shapes
:	�*
transpose_a(�
4gradient_tape/ResNet_entropy_closure/add_5/add/ShapeShape$ResNet_entropy_closure/add_4/add:z:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_5/add/Shape_1Shape7ResNet_entropy_closure/block_5_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/ResNet_entropy_closure/add_5/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/ResNet_entropy_closure/add_5/add/Shape:output:0?gradient_tape/ResNet_entropy_closure/add_5/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/ResNet_entropy_closure/add_5/add/SumSumIgradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMul:product:0Igradient_tape/ResNet_entropy_closure/add_5/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_5/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_5/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_5/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_5/add/Sum_1SumIgradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMul:product:0Igradient_tape/ResNet_entropy_closure/add_5/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_5/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_5/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_5/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_5_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_5/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_5_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_5/add/Reshape_1:output:0DResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_5_layer_0/MatMul/MatMul_1MatMul@ResNet_entropy_closure/tf.math.softplus_5/Softplus:activations:0Agradient_tape/ResNet_entropy_closure/add_5/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
?gradient_tape/ResNet_entropy_closure/tf.math.softplus_5/SigmoidSigmoid$ResNet_entropy_closure/add_4/add:z:0*
T0*(
_output_shapes
:�����������
;gradient_tape/ResNet_entropy_closure/tf.math.softplus_5/mulMulLgradient_tape/ResNet_entropy_closure/block_5_layer_0/MatMul/MatMul:product:0Cgradient_tape/ResNet_entropy_closure/tf.math.softplus_5/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
AddNAddN?gradient_tape/ResNet_entropy_closure/add_5/add/Reshape:output:0?gradient_tape/ResNet_entropy_closure/tf.math.softplus_5/mul:z:0*
N*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_4/add/ShapeShape$ResNet_entropy_closure/add_3/add:z:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_4/add/Shape_1Shape7ResNet_entropy_closure/block_4_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/ResNet_entropy_closure/add_4/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/ResNet_entropy_closure/add_4/add/Shape:output:0?gradient_tape/ResNet_entropy_closure/add_4/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/ResNet_entropy_closure/add_4/add/SumSum
AddN:sum:0Igradient_tape/ResNet_entropy_closure/add_4/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_4/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_4/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_4/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_4/add/Sum_1Sum
AddN:sum:0Igradient_tape/ResNet_entropy_closure/add_4/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_4/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_4/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_4/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_4_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_4/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_4_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_4/add/Reshape_1:output:0DResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_4_layer_0/MatMul/MatMul_1MatMul@ResNet_entropy_closure/tf.math.softplus_4/Softplus:activations:0Agradient_tape/ResNet_entropy_closure/add_4/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
?gradient_tape/ResNet_entropy_closure/tf.math.softplus_4/SigmoidSigmoid$ResNet_entropy_closure/add_3/add:z:0*
T0*(
_output_shapes
:�����������
;gradient_tape/ResNet_entropy_closure/tf.math.softplus_4/mulMulLgradient_tape/ResNet_entropy_closure/block_4_layer_0/MatMul/MatMul:product:0Cgradient_tape/ResNet_entropy_closure/tf.math.softplus_4/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
AddN_1AddN?gradient_tape/ResNet_entropy_closure/add_4/add/Reshape:output:0?gradient_tape/ResNet_entropy_closure/tf.math.softplus_4/mul:z:0*
N*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_3/add/ShapeShape$ResNet_entropy_closure/add_2/add:z:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_3/add/Shape_1Shape7ResNet_entropy_closure/block_3_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/ResNet_entropy_closure/add_3/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/ResNet_entropy_closure/add_3/add/Shape:output:0?gradient_tape/ResNet_entropy_closure/add_3/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/ResNet_entropy_closure/add_3/add/SumSumAddN_1:sum:0Igradient_tape/ResNet_entropy_closure/add_3/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_3/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_3/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_3/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_3/add/Sum_1SumAddN_1:sum:0Igradient_tape/ResNet_entropy_closure/add_3/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_3/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_3/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_3/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_3_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_3/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_3_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_3/add/Reshape_1:output:0DResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_3_layer_0/MatMul/MatMul_1MatMul@ResNet_entropy_closure/tf.math.softplus_3/Softplus:activations:0Agradient_tape/ResNet_entropy_closure/add_3/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
?gradient_tape/ResNet_entropy_closure/tf.math.softplus_3/SigmoidSigmoid$ResNet_entropy_closure/add_2/add:z:0*
T0*(
_output_shapes
:�����������
;gradient_tape/ResNet_entropy_closure/tf.math.softplus_3/mulMulLgradient_tape/ResNet_entropy_closure/block_3_layer_0/MatMul/MatMul:product:0Cgradient_tape/ResNet_entropy_closure/tf.math.softplus_3/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
AddN_2AddN?gradient_tape/ResNet_entropy_closure/add_3/add/Reshape:output:0?gradient_tape/ResNet_entropy_closure/tf.math.softplus_3/mul:z:0*
N*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_2/add/ShapeShape$ResNet_entropy_closure/add_1/add:z:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_2/add/Shape_1Shape7ResNet_entropy_closure/block_2_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/ResNet_entropy_closure/add_2/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/ResNet_entropy_closure/add_2/add/Shape:output:0?gradient_tape/ResNet_entropy_closure/add_2/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/ResNet_entropy_closure/add_2/add/SumSumAddN_2:sum:0Igradient_tape/ResNet_entropy_closure/add_2/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_2/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_2/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_2/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_2/add/Sum_1SumAddN_2:sum:0Igradient_tape/ResNet_entropy_closure/add_2/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_2/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_2/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_2_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1:output:0DResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMul_1MatMul@ResNet_entropy_closure/tf.math.softplus_2/Softplus:activations:0Agradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
?gradient_tape/ResNet_entropy_closure/tf.math.softplus_2/SigmoidSigmoid$ResNet_entropy_closure/add_1/add:z:0*
T0*(
_output_shapes
:�����������
;gradient_tape/ResNet_entropy_closure/tf.math.softplus_2/mulMulLgradient_tape/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMul:product:0Cgradient_tape/ResNet_entropy_closure/tf.math.softplus_2/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
AddN_3AddN?gradient_tape/ResNet_entropy_closure/add_2/add/Reshape:output:0?gradient_tape/ResNet_entropy_closure/tf.math.softplus_2/mul:z:0*
N*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_1/add/ShapeShape"ResNet_entropy_closure/add/add:z:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_1/add/Shape_1Shape7ResNet_entropy_closure/block_1_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/ResNet_entropy_closure/add_1/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/ResNet_entropy_closure/add_1/add/Shape:output:0?gradient_tape/ResNet_entropy_closure/add_1/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/ResNet_entropy_closure/add_1/add/SumSumAddN_3:sum:0Igradient_tape/ResNet_entropy_closure/add_1/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_1/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_1/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_1/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_1/add/Sum_1SumAddN_3:sum:0Igradient_tape/ResNet_entropy_closure/add_1/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_1/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_1/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_1_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1:output:0DResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMul_1MatMul@ResNet_entropy_closure/tf.math.softplus_1/Softplus:activations:0Agradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
?gradient_tape/ResNet_entropy_closure/tf.math.softplus_1/SigmoidSigmoid"ResNet_entropy_closure/add/add:z:0*
T0*(
_output_shapes
:�����������
;gradient_tape/ResNet_entropy_closure/tf.math.softplus_1/mulMulLgradient_tape/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMul:product:0Cgradient_tape/ResNet_entropy_closure/tf.math.softplus_1/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
AddN_4AddN?gradient_tape/ResNet_entropy_closure/add_1/add/Reshape:output:0?gradient_tape/ResNet_entropy_closure/tf.math.softplus_1/mul:z:0*
N*
T0*(
_output_shapes
:�����������
2gradient_tape/ResNet_entropy_closure/add/add/ShapeShape3ResNet_entropy_closure/layer_input/BiasAdd:output:0*
T0*
_output_shapes
:�
4gradient_tape/ResNet_entropy_closure/add/add/Shape_1Shape7ResNet_entropy_closure/block_0_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Bgradient_tape/ResNet_entropy_closure/add/add/BroadcastGradientArgsBroadcastGradientArgs;gradient_tape/ResNet_entropy_closure/add/add/Shape:output:0=gradient_tape/ResNet_entropy_closure/add/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
0gradient_tape/ResNet_entropy_closure/add/add/SumSumAddN_4:sum:0Ggradient_tape/ResNet_entropy_closure/add/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
4gradient_tape/ResNet_entropy_closure/add/add/ReshapeReshape9gradient_tape/ResNet_entropy_closure/add/add/Sum:output:0;gradient_tape/ResNet_entropy_closure/add/add/Shape:output:0*
T0*(
_output_shapes
:�����������
2gradient_tape/ResNet_entropy_closure/add/add/Sum_1SumAddN_4:sum:0Ggradient_tape/ResNet_entropy_closure/add/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add/add/Reshape_1Reshape;gradient_tape/ResNet_entropy_closure/add/add/Sum_1:output:0=gradient_tape/ResNet_entropy_closure/add/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_0_layer_0/BiasAdd/BiasAddGradBiasAddGrad?gradient_tape/ResNet_entropy_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMulMatMul?gradient_tape/ResNet_entropy_closure/add/add/Reshape_1:output:0DResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMul_1MatMul>ResNet_entropy_closure/tf.math.softplus/Softplus:activations:0?gradient_tape/ResNet_entropy_closure/add/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
=gradient_tape/ResNet_entropy_closure/tf.math.softplus/SigmoidSigmoid3ResNet_entropy_closure/layer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
9gradient_tape/ResNet_entropy_closure/tf.math.softplus/mulMulLgradient_tape/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMul:product:0Agradient_tape/ResNet_entropy_closure/tf.math.softplus/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
AddN_5AddN=gradient_tape/ResNet_entropy_closure/add/add/Reshape:output:0=gradient_tape/ResNet_entropy_closure/tf.math.softplus/mul:z:0*
N*
T0*(
_output_shapes
:�����������
Dgradient_tape/ResNet_entropy_closure/layer_input/BiasAdd/BiasAddGradBiasAddGradAddN_5:sum:0*
T0*
_output_shapes	
:��
>gradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMulMatMulAddN_5:sum:0@ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
@gradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMul_1MatMulxAddN_5:sum:0*
T0*
_output_shapes
:	�*
transpose_a(�
CastCastHgradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMul:product:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 5), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceunknownstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskX
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:X
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: T
Tensordot/ShapeShapecheckedandclipped:z:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	Transposecheckedandclipped:z:0Tensordot/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*(
_output_shapes
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB: H
Tensordot_1/ShapeShapeExp:y:0*
T0*
_output_shapes
:[
Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/GatherV2GatherV2Tensordot_1/Shape:output:0Tensordot_1/free:output:0"Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/GatherV2_1GatherV2Tensordot_1/Shape:output:0Tensordot_1/axes:output:0$Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_1/ProdProdTensordot_1/GatherV2:output:0Tensordot_1/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_1/Prod_1ProdTensordot_1/GatherV2_1:output:0Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/concatConcatV2Tensordot_1/free:output:0Tensordot_1/axes:output:0 Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_1/stackPackTensordot_1/Prod:output:0Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot_1/transpose	TransposeExp:y:0Tensordot_1/concat:output:0*
T0*(
_output_shapes
:�����������
Tensordot_1/ReshapeReshapeTensordot_1/transpose:y:0Tensordot_1/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_1/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_1/transpose_1	Transposetensordot_1_b%Tensordot_1/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
Tensordot_1/MatMulMatMulTensordot_1/Reshape:output:0Tensordot_1/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/concat_1ConcatV2Tensordot_1/GatherV2:output:0Tensordot_1/Const_2:output:0"Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_1ReshapeTensordot_1/MatMul:product:0Tensordot_1/concat_1:output:0*
T0*'
_output_shapes
:���������R
LogLogTensordot_1:output:0*
T0*'
_output_shapes
:���������E
NegNegLog:y:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2Neg:y:0Cast:y:0concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
Tensordot_2/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_2/freeConst*
_output_shapes
:*
dtype0*
valueB: X
Tensordot_2/ShapeShapecheckedandclipped_1:z:0*
T0*
_output_shapes
:[
Tensordot_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/GatherV2GatherV2Tensordot_2/Shape:output:0Tensordot_2/free:output:0"Tensordot_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_2/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/GatherV2_1GatherV2Tensordot_2/Shape:output:0Tensordot_2/axes:output:0$Tensordot_2/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_2/ProdProdTensordot_2/GatherV2:output:0Tensordot_2/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_2/Prod_1ProdTensordot_2/GatherV2_1:output:0Tensordot_2/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/concatConcatV2Tensordot_2/free:output:0Tensordot_2/axes:output:0 Tensordot_2/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_2/stackPackTensordot_2/Prod:output:0Tensordot_2/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot_2/transpose	Transposecheckedandclipped_1:z:0Tensordot_2/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
Tensordot_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/concat_1ConcatV2Tensordot_2/GatherV2:output:0Tensordot_2/Const_2:output:0"Tensordot_2/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_2ReshapeTensordot_2/MatMul:product:0Tensordot_2/concat_1:output:0*
T0*(
_output_shapes
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskZ
Tensordot_3/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_3/freeConst*
_output_shapes
:*
dtype0*
valueB: H
Tensordot_3/ShapeShapeMul:z:0*
T0*
_output_shapes
:[
Tensordot_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/GatherV2GatherV2Tensordot_3/Shape:output:0Tensordot_3/free:output:0"Tensordot_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_3/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/GatherV2_1GatherV2Tensordot_3/Shape:output:0Tensordot_3/axes:output:0$Tensordot_3/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_3/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_3/ProdProdTensordot_3/GatherV2:output:0Tensordot_3/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_3/Prod_1ProdTensordot_3/GatherV2_1:output:0Tensordot_3/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/concatConcatV2Tensordot_3/free:output:0Tensordot_3/axes:output:0 Tensordot_3/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_3/stackPackTensordot_3/Prod:output:0Tensordot_3/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot_3/transpose	TransposeMul:z:0Tensordot_3/concat:output:0*
T0*(
_output_shapes
:�����������
Tensordot_3/ReshapeReshapeTensordot_3/transpose:y:0Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_3/transpose_1	Transposestrided_slice_1:output:0%Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
Tensordot_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/concat_1ConcatV2Tensordot_3/GatherV2:output:0Tensordot_3/Const_2:output:0"Tensordot_3/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_3ReshapeTensordot_3/MatMul:product:0Tensordot_3/concat_1:output:0*
T0*'
_output_shapes
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAresnet_entropy_closure_layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpBresnet_entropy_closure_layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_3_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_3_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_4_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_4_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_5_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_5_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBresnet_entropy_closure_dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentity4ResNet_entropy_closure/dense_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������

Identity_1IdentityHgradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMul:product:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp>^ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp;^ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp:^ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:^ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp9^ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp^checked
^checked_16^dense_output/kernel/Regularizer/Square/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2~
=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp2x
:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp2v
9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp2v
9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp2t
8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2
checkedchecked2
	checked_1	checked_12n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:J F
'
_output_shapes
:���������

_user_specified_namex:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
9__inference_ResNet_entropy_closure_layer_call_fn_58477311

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58473571o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
M__inference_block_5_layer_0_layer_call_and_return_conditional_losses_58473444

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
K__forward_block_4_layer_0_layer_call_and_return_conditional_losses_58474430
inputs_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *}
backward_function_nameca__inference___backward_block_4_layer_0_layer_call_and_return_conditional_losses_58474418_5847443120
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
9__inference_ResNet_entropy_closure_layer_call_fn_58477348

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58473913o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
9__inference_ResNet_entropy_closure_layer_call_fn_58473606
input_1
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58473571o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
&__inference_signature_wrapper_58476342
input_1
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:

unknown_15

unknown_16

unknown_17
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference__wrapped_model_58473201o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
��
�
!__inference__traced_save_58478472
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop1
-savev2_layer_input_kernel_read_readvariableop/
+savev2_layer_input_bias_read_readvariableop5
1savev2_block_0_layer_0_kernel_read_readvariableop3
/savev2_block_0_layer_0_bias_read_readvariableop5
1savev2_block_1_layer_0_kernel_read_readvariableop3
/savev2_block_1_layer_0_bias_read_readvariableop5
1savev2_block_2_layer_0_kernel_read_readvariableop3
/savev2_block_2_layer_0_bias_read_readvariableop5
1savev2_block_3_layer_0_kernel_read_readvariableop3
/savev2_block_3_layer_0_bias_read_readvariableop5
1savev2_block_4_layer_0_kernel_read_readvariableop3
/savev2_block_4_layer_0_bias_read_readvariableop5
1savev2_block_5_layer_0_kernel_read_readvariableop3
/savev2_block_5_layer_0_bias_read_readvariableop2
.savev2_dense_output_kernel_read_readvariableop0
,savev2_dense_output_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_5_read_readvariableop&
"savev2_count_5_read_readvariableop&
"savev2_total_6_read_readvariableop&
"savev2_count_6_read_readvariableop&
"savev2_total_7_read_readvariableop&
"savev2_count_7_read_readvariableop&
"savev2_total_8_read_readvariableop&
"savev2_count_8_read_readvariableop&
"savev2_total_9_read_readvariableop&
"savev2_count_9_read_readvariableop8
4savev2_adam_layer_input_kernel_m_read_readvariableop6
2savev2_adam_layer_input_bias_m_read_readvariableop<
8savev2_adam_block_0_layer_0_kernel_m_read_readvariableop:
6savev2_adam_block_0_layer_0_bias_m_read_readvariableop<
8savev2_adam_block_1_layer_0_kernel_m_read_readvariableop:
6savev2_adam_block_1_layer_0_bias_m_read_readvariableop<
8savev2_adam_block_2_layer_0_kernel_m_read_readvariableop:
6savev2_adam_block_2_layer_0_bias_m_read_readvariableop<
8savev2_adam_block_3_layer_0_kernel_m_read_readvariableop:
6savev2_adam_block_3_layer_0_bias_m_read_readvariableop<
8savev2_adam_block_4_layer_0_kernel_m_read_readvariableop:
6savev2_adam_block_4_layer_0_bias_m_read_readvariableop<
8savev2_adam_block_5_layer_0_kernel_m_read_readvariableop:
6savev2_adam_block_5_layer_0_bias_m_read_readvariableop9
5savev2_adam_dense_output_kernel_m_read_readvariableop7
3savev2_adam_dense_output_bias_m_read_readvariableop8
4savev2_adam_layer_input_kernel_v_read_readvariableop6
2savev2_adam_layer_input_bias_v_read_readvariableop<
8savev2_adam_block_0_layer_0_kernel_v_read_readvariableop:
6savev2_adam_block_0_layer_0_bias_v_read_readvariableop<
8savev2_adam_block_1_layer_0_kernel_v_read_readvariableop:
6savev2_adam_block_1_layer_0_bias_v_read_readvariableop<
8savev2_adam_block_2_layer_0_kernel_v_read_readvariableop:
6savev2_adam_block_2_layer_0_bias_v_read_readvariableop<
8savev2_adam_block_3_layer_0_kernel_v_read_readvariableop:
6savev2_adam_block_3_layer_0_bias_v_read_readvariableop<
8savev2_adam_block_4_layer_0_kernel_v_read_readvariableop:
6savev2_adam_block_4_layer_0_bias_v_read_readvariableop<
8savev2_adam_block_5_layer_0_kernel_v_read_readvariableop:
6savev2_adam_block_5_layer_0_bias_v_read_readvariableop9
5savev2_adam_dense_output_kernel_v_read_readvariableop7
3savev2_adam_dense_output_bias_v_read_readvariableop
savev2_const_3

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:J*
dtype0*� 
value� B� JB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:J*
dtype0*�
value�B�JB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop-savev2_layer_input_kernel_read_readvariableop+savev2_layer_input_bias_read_readvariableop1savev2_block_0_layer_0_kernel_read_readvariableop/savev2_block_0_layer_0_bias_read_readvariableop1savev2_block_1_layer_0_kernel_read_readvariableop/savev2_block_1_layer_0_bias_read_readvariableop1savev2_block_2_layer_0_kernel_read_readvariableop/savev2_block_2_layer_0_bias_read_readvariableop1savev2_block_3_layer_0_kernel_read_readvariableop/savev2_block_3_layer_0_bias_read_readvariableop1savev2_block_4_layer_0_kernel_read_readvariableop/savev2_block_4_layer_0_bias_read_readvariableop1savev2_block_5_layer_0_kernel_read_readvariableop/savev2_block_5_layer_0_bias_read_readvariableop.savev2_dense_output_kernel_read_readvariableop,savev2_dense_output_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop"savev2_total_7_read_readvariableop"savev2_count_7_read_readvariableop"savev2_total_8_read_readvariableop"savev2_count_8_read_readvariableop"savev2_total_9_read_readvariableop"savev2_count_9_read_readvariableop4savev2_adam_layer_input_kernel_m_read_readvariableop2savev2_adam_layer_input_bias_m_read_readvariableop8savev2_adam_block_0_layer_0_kernel_m_read_readvariableop6savev2_adam_block_0_layer_0_bias_m_read_readvariableop8savev2_adam_block_1_layer_0_kernel_m_read_readvariableop6savev2_adam_block_1_layer_0_bias_m_read_readvariableop8savev2_adam_block_2_layer_0_kernel_m_read_readvariableop6savev2_adam_block_2_layer_0_bias_m_read_readvariableop8savev2_adam_block_3_layer_0_kernel_m_read_readvariableop6savev2_adam_block_3_layer_0_bias_m_read_readvariableop8savev2_adam_block_4_layer_0_kernel_m_read_readvariableop6savev2_adam_block_4_layer_0_bias_m_read_readvariableop8savev2_adam_block_5_layer_0_kernel_m_read_readvariableop6savev2_adam_block_5_layer_0_bias_m_read_readvariableop5savev2_adam_dense_output_kernel_m_read_readvariableop3savev2_adam_dense_output_bias_m_read_readvariableop4savev2_adam_layer_input_kernel_v_read_readvariableop2savev2_adam_layer_input_bias_v_read_readvariableop8savev2_adam_block_0_layer_0_kernel_v_read_readvariableop6savev2_adam_block_0_layer_0_bias_v_read_readvariableop8savev2_adam_block_1_layer_0_kernel_v_read_readvariableop6savev2_adam_block_1_layer_0_bias_v_read_readvariableop8savev2_adam_block_2_layer_0_kernel_v_read_readvariableop6savev2_adam_block_2_layer_0_bias_v_read_readvariableop8savev2_adam_block_3_layer_0_kernel_v_read_readvariableop6savev2_adam_block_3_layer_0_bias_v_read_readvariableop8savev2_adam_block_4_layer_0_kernel_v_read_readvariableop6savev2_adam_block_4_layer_0_bias_v_read_readvariableop8savev2_adam_block_5_layer_0_kernel_v_read_readvariableop6savev2_adam_block_5_layer_0_bias_v_read_readvariableop5savev2_adam_dense_output_kernel_v_read_readvariableop3savev2_adam_dense_output_bias_v_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *X
dtypesN
L2J	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : : : :	�:�:
��:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�:: : : : : : : : : : : : : : : : : : : : :	�:�:
��:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�::	�:�:
��:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!	

_output_shapes	
:�:&
"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :%*!

_output_shapes
:	�:!+

_output_shapes	
:�:&,"
 
_output_shapes
:
��:!-

_output_shapes	
:�:&."
 
_output_shapes
:
��:!/

_output_shapes	
:�:&0"
 
_output_shapes
:
��:!1

_output_shapes	
:�:&2"
 
_output_shapes
:
��:!3

_output_shapes	
:�:&4"
 
_output_shapes
:
��:!5

_output_shapes	
:�:&6"
 
_output_shapes
:
��:!7

_output_shapes	
:�:%8!

_output_shapes
:	�: 9

_output_shapes
::%:!

_output_shapes
:	�:!;

_output_shapes	
:�:&<"
 
_output_shapes
:
��:!=

_output_shapes	
:�:&>"
 
_output_shapes
:
��:!?

_output_shapes	
:�:&@"
 
_output_shapes
:
��:!A

_output_shapes	
:�:&B"
 
_output_shapes
:
��:!C

_output_shapes	
:�:&D"
 
_output_shapes
:
��:!E

_output_shapes	
:�:&F"
 
_output_shapes
:
��:!G

_output_shapes	
:�:%H!

_output_shapes
:	�: I

_output_shapes
::J

_output_shapes
: 
�
T
(__inference_add_1_layer_call_fn_58477803
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_1_layer_call_and_return_conditional_losses_58473308a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
a__inference___backward_block_4_layer_0_layer_call_and_return_conditional_losses_58474418_58474431
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������u
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes	
:��
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*(
_output_shapes
:����������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0* 
_output_shapes
:
��*
transpose_a(o
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*(
_output_shapes
:����������k

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0* 
_output_shapes
:
��i

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������:
��:����������*f
forward_function_nameMK__forward_block_4_layer_0_layer_call_and_return_conditional_losses_58474430:. *
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������
�
�
M__inference_block_2_layer_0_layer_call_and_return_conditional_losses_58473333

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
m
C__inference_add_2_layer_call_and_return_conditional_losses_58473345

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58473913

inputs'
layer_input_58473770:	�#
layer_input_58473772:	�,
block_0_layer_0_58473776:
��'
block_0_layer_0_58473778:	�,
block_1_layer_0_58473783:
��'
block_1_layer_0_58473785:	�,
block_2_layer_0_58473790:
��'
block_2_layer_0_58473792:	�,
block_3_layer_0_58473797:
��'
block_3_layer_0_58473799:	�,
block_4_layer_0_58473804:
��'
block_4_layer_0_58473806:	�,
block_5_layer_0_58473811:
��'
block_5_layer_0_58473813:	�(
dense_output_58473817:	�#
dense_output_58473819:
identity��'block_0_layer_0/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_1_layer_0/StatefulPartitionedCall�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_2_layer_0/StatefulPartitionedCall�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_3_layer_0/StatefulPartitionedCall�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_4_layer_0/StatefulPartitionedCall�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_5_layer_0/StatefulPartitionedCall�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�$dense_output/StatefulPartitionedCall�5dense_output/kernel/Regularizer/Square/ReadVariableOp�#layer_input/StatefulPartitionedCall�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
#layer_input/StatefulPartitionedCallStatefulPartitionedCallinputslayer_input_58473770layer_input_58473772*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_layer_input_layer_call_and_return_conditional_losses_58473230�
tf.math.softplus/SoftplusSoftplus,layer_input/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_0_layer_0/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0block_0_layer_0_58473776block_0_layer_0_58473778*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_0_layer_0_layer_call_and_return_conditional_losses_58473259�
add/PartitionedCallPartitionedCall,layer_input/StatefulPartitionedCall:output:00block_0_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_add_layer_call_and_return_conditional_losses_58473271x
tf.math.softplus_1/SoftplusSoftplusadd/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_1_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0block_1_layer_0_58473783block_1_layer_0_58473785*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_1_layer_0_layer_call_and_return_conditional_losses_58473296�
add_1/PartitionedCallPartitionedCalladd/PartitionedCall:output:00block_1_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_1_layer_call_and_return_conditional_losses_58473308z
tf.math.softplus_2/SoftplusSoftplusadd_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_2_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0block_2_layer_0_58473790block_2_layer_0_58473792*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_2_layer_0_layer_call_and_return_conditional_losses_58473333�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:00block_2_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_2_layer_call_and_return_conditional_losses_58473345z
tf.math.softplus_3/SoftplusSoftplusadd_2/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_3_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_3/Softplus:activations:0block_3_layer_0_58473797block_3_layer_0_58473799*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_3_layer_0_layer_call_and_return_conditional_losses_58473370�
add_3/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:00block_3_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_3_layer_call_and_return_conditional_losses_58473382z
tf.math.softplus_4/SoftplusSoftplusadd_3/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_4_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_4/Softplus:activations:0block_4_layer_0_58473804block_4_layer_0_58473806*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_4_layer_0_layer_call_and_return_conditional_losses_58473407�
add_4/PartitionedCallPartitionedCalladd_3/PartitionedCall:output:00block_4_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_4_layer_call_and_return_conditional_losses_58473419z
tf.math.softplus_5/SoftplusSoftplusadd_4/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_5_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_5/Softplus:activations:0block_5_layer_0_58473811block_5_layer_0_58473813*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_5_layer_0_layer_call_and_return_conditional_losses_58473444�
add_5/PartitionedCallPartitionedCalladd_4/PartitionedCall:output:00block_5_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_5_layer_call_and_return_conditional_losses_58473456�
$dense_output/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0dense_output_58473817dense_output_58473819*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_dense_output_layer_call_and_return_conditional_losses_58473474�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_58473770*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_58473772*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_58473776* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_58473778*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_58473783* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_58473785*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_58473790* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_58473792*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_3_layer_0_58473797* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_3_layer_0_58473799*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_4_layer_0_58473804* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_4_layer_0_58473806*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_5_layer_0_58473811* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_5_layer_0_58473813*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_output_58473817*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: |
IdentityIdentity-dense_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp(^block_0_layer_0/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_1_layer_0/StatefulPartitionedCall7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_2_layer_0/StatefulPartitionedCall7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_3_layer_0/StatefulPartitionedCall7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_4_layer_0/StatefulPartitionedCall7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_5_layer_0/StatefulPartitionedCall7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp%^dense_output/StatefulPartitionedCall6^dense_output/kernel/Regularizer/Square/ReadVariableOp$^layer_input/StatefulPartitionedCall3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2R
'block_0_layer_0/StatefulPartitionedCall'block_0_layer_0/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_1_layer_0/StatefulPartitionedCall'block_1_layer_0/StatefulPartitionedCall2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_2_layer_0/StatefulPartitionedCall'block_2_layer_0/StatefulPartitionedCall2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_3_layer_0/StatefulPartitionedCall'block_3_layer_0/StatefulPartitionedCall2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_4_layer_0/StatefulPartitionedCall'block_4_layer_0/StatefulPartitionedCall2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_5_layer_0/StatefulPartitionedCall'block_5_layer_0/StatefulPartitionedCall2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2J
#layer_input/StatefulPartitionedCall#layer_input/StatefulPartitionedCall2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
M__inference_block_5_layer_0_layer_call_and_return_conditional_losses_58478017

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
K__forward_block_0_layer_0_layer_call_and_return_conditional_losses_58474626
inputs_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *}
backward_function_nameca__inference___backward_block_0_layer_0_layer_call_and_return_conditional_losses_58474614_5847462720
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_58478082J
;layer_input_bias_regularizer_square_readvariableop_resource:	�
identity��2layer_input/bias/Regularizer/Square/ReadVariableOp�
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOp;layer_input_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$layer_input/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^layer_input/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp
�
�
0__inference_sobolev_model_layer_call_fn_58475581
input_1
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:

unknown_15

unknown_16

unknown_17
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58475489o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
W__inference___backward_add_5_layer_call_and_return_conditional_losses_58474345_58474362
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������g
gradients/add_grad/ShapeShapegradients_add_grad_shape_inputs*
T0*
_output_shapes
:m
gradients/add_grad/Shape_1Shape#gradients_add_grad_shape_1_inputs_1*
T0*
_output_shapes
:�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/add_grad/Shape:output:0#gradients/add_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/add_grad/SumSumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sum:output:0!gradients/add_grad/Shape:output:0*
T0*(
_output_shapes
:�����������
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*(
_output_shapes
:����������l
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*(
_output_shapes
:����������p

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������*\
forward_function_nameCA__forward_add_5_layer_call_and_return_conditional_losses_58474361:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������
�
�
M__inference_block_0_layer_0_layer_call_and_return_conditional_losses_58477742

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
W__inference___backward_add_1_layer_call_and_return_conditional_losses_58474541_58474558
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������g
gradients/add_grad/ShapeShapegradients_add_grad_shape_inputs*
T0*
_output_shapes
:m
gradients/add_grad/Shape_1Shape#gradients_add_grad_shape_1_inputs_1*
T0*
_output_shapes
:�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/add_grad/Shape:output:0#gradients/add_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/add_grad/SumSumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sum:output:0!gradients/add_grad/Shape:output:0*
T0*(
_output_shapes
:�����������
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*(
_output_shapes
:����������l
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*(
_output_shapes
:����������p

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������*\
forward_function_nameCA__forward_add_1_layer_call_and_return_conditional_losses_58474557:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������
�
�
K__forward_block_1_layer_0_layer_call_and_return_conditional_losses_58474577
inputs_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *}
backward_function_nameca__inference___backward_block_1_layer_0_layer_call_and_return_conditional_losses_58474565_5847457820
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
h__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58475081_58475219
placeholder\
Xgradients_dense_output_statefulpartitionedcall_grad_dense_output_statefulpartitionedcall^
Zgradients_dense_output_statefulpartitionedcall_grad_dense_output_statefulpartitionedcall_1>
:gradients_add_5_partitionedcall_grad_add_5_partitionedcall@
<gradients_add_5_partitionedcall_grad_add_5_partitionedcall_1b
^gradients_block_5_layer_0_statefulpartitionedcall_grad_block_5_layer_0_statefulpartitionedcalld
`gradients_block_5_layer_0_statefulpartitionedcall_grad_block_5_layer_0_statefulpartitionedcall_1L
Hgradients_tf_math_softplus_5_softplus_grad_sigmoid_add_4_partitionedcall>
:gradients_add_4_partitionedcall_grad_add_4_partitionedcall@
<gradients_add_4_partitionedcall_grad_add_4_partitionedcall_1b
^gradients_block_4_layer_0_statefulpartitionedcall_grad_block_4_layer_0_statefulpartitionedcalld
`gradients_block_4_layer_0_statefulpartitionedcall_grad_block_4_layer_0_statefulpartitionedcall_1L
Hgradients_tf_math_softplus_4_softplus_grad_sigmoid_add_3_partitionedcall>
:gradients_add_3_partitionedcall_grad_add_3_partitionedcall@
<gradients_add_3_partitionedcall_grad_add_3_partitionedcall_1b
^gradients_block_3_layer_0_statefulpartitionedcall_grad_block_3_layer_0_statefulpartitionedcalld
`gradients_block_3_layer_0_statefulpartitionedcall_grad_block_3_layer_0_statefulpartitionedcall_1L
Hgradients_tf_math_softplus_3_softplus_grad_sigmoid_add_2_partitionedcall>
:gradients_add_2_partitionedcall_grad_add_2_partitionedcall@
<gradients_add_2_partitionedcall_grad_add_2_partitionedcall_1b
^gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcalld
`gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcall_1L
Hgradients_tf_math_softplus_2_softplus_grad_sigmoid_add_1_partitionedcall>
:gradients_add_1_partitionedcall_grad_add_1_partitionedcall@
<gradients_add_1_partitionedcall_grad_add_1_partitionedcall_1b
^gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcalld
`gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcall_1J
Fgradients_tf_math_softplus_1_softplus_grad_sigmoid_add_partitionedcall:
6gradients_add_partitionedcall_grad_add_partitionedcall<
8gradients_add_partitionedcall_grad_add_partitionedcall_1b
^gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcalld
`gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcall_1X
Tgradients_tf_math_softplus_softplus_grad_sigmoid_layer_input_statefulpartitionedcallZ
Vgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcall\
Xgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcall_1
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:����������
Cgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallgradients/grad_ys_0:output:0Xgradients_dense_output_statefulpartitionedcall_grad_dense_output_statefulpartitionedcallZgradients_dense_output_statefulpartitionedcall_grad_dense_output_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:����������:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *g
fbR`
^__inference___backward_dense_output_layer_call_and_return_conditional_losses_58474324_58474337�
4gradients/add_5/PartitionedCall_grad/PartitionedCallPartitionedCallLgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCall:output:0:gradients_add_5_partitionedcall_grad_add_5_partitionedcall<gradients_add_5_partitionedcall_grad_add_5_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference___backward_add_5_layer_call_and_return_conditional_losses_58474345_58474362�
Fgradients/block_5_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_5/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_5_layer_0_statefulpartitionedcall_grad_block_5_layer_0_statefulpartitionedcall`gradients_block_5_layer_0_statefulpartitionedcall_grad_block_5_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_block_5_layer_0_layer_call_and_return_conditional_losses_58474369_58474382�
2gradients/tf.math.softplus_5/Softplus_grad/SigmoidSigmoidHgradients_tf_math_softplus_5_softplus_grad_sigmoid_add_4_partitionedcall*
T0*(
_output_shapes
:�����������
.gradients/tf.math.softplus_5/Softplus_grad/mulMulOgradients/block_5_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_5/Softplus_grad/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gradients/AddNAddN=gradients/add_5/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.math.softplus_5/Softplus_grad/mul:z:0*
N*
T0*G
_class=
;9loc:@gradients/add_5/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
4gradients/add_4/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN:sum:0:gradients_add_4_partitionedcall_grad_add_4_partitionedcall<gradients_add_4_partitionedcall_grad_add_4_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference___backward_add_4_layer_call_and_return_conditional_losses_58474394_58474411�
Fgradients/block_4_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_4/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_4_layer_0_statefulpartitionedcall_grad_block_4_layer_0_statefulpartitionedcall`gradients_block_4_layer_0_statefulpartitionedcall_grad_block_4_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_block_4_layer_0_layer_call_and_return_conditional_losses_58474418_58474431�
2gradients/tf.math.softplus_4/Softplus_grad/SigmoidSigmoidHgradients_tf_math_softplus_4_softplus_grad_sigmoid_add_3_partitionedcall*
T0*(
_output_shapes
:�����������
.gradients/tf.math.softplus_4/Softplus_grad/mulMulOgradients/block_4_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_4/Softplus_grad/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gradients/AddN_1AddN=gradients/add_4/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.math.softplus_4/Softplus_grad/mul:z:0*
N*
T0*G
_class=
;9loc:@gradients/add_4/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
4gradients/add_3/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_1:sum:0:gradients_add_3_partitionedcall_grad_add_3_partitionedcall<gradients_add_3_partitionedcall_grad_add_3_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference___backward_add_3_layer_call_and_return_conditional_losses_58474443_58474460�
Fgradients/block_3_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_3/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_3_layer_0_statefulpartitionedcall_grad_block_3_layer_0_statefulpartitionedcall`gradients_block_3_layer_0_statefulpartitionedcall_grad_block_3_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_block_3_layer_0_layer_call_and_return_conditional_losses_58474467_58474480�
2gradients/tf.math.softplus_3/Softplus_grad/SigmoidSigmoidHgradients_tf_math_softplus_3_softplus_grad_sigmoid_add_2_partitionedcall*
T0*(
_output_shapes
:�����������
.gradients/tf.math.softplus_3/Softplus_grad/mulMulOgradients/block_3_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_3/Softplus_grad/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gradients/AddN_2AddN=gradients/add_3/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.math.softplus_3/Softplus_grad/mul:z:0*
N*
T0*G
_class=
;9loc:@gradients/add_3/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
4gradients/add_2/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_2:sum:0:gradients_add_2_partitionedcall_grad_add_2_partitionedcall<gradients_add_2_partitionedcall_grad_add_2_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference___backward_add_2_layer_call_and_return_conditional_losses_58474492_58474509�
Fgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_2/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcall`gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_block_2_layer_0_layer_call_and_return_conditional_losses_58474516_58474529�
2gradients/tf.math.softplus_2/Softplus_grad/SigmoidSigmoidHgradients_tf_math_softplus_2_softplus_grad_sigmoid_add_1_partitionedcall*
T0*(
_output_shapes
:�����������
.gradients/tf.math.softplus_2/Softplus_grad/mulMulOgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_2/Softplus_grad/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gradients/AddN_3AddN=gradients/add_2/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.math.softplus_2/Softplus_grad/mul:z:0*
N*
T0*G
_class=
;9loc:@gradients/add_2/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
4gradients/add_1/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_3:sum:0:gradients_add_1_partitionedcall_grad_add_1_partitionedcall<gradients_add_1_partitionedcall_grad_add_1_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference___backward_add_1_layer_call_and_return_conditional_losses_58474541_58474558�
Fgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_1/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcall`gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_block_1_layer_0_layer_call_and_return_conditional_losses_58474565_58474578�
2gradients/tf.math.softplus_1/Softplus_grad/SigmoidSigmoidFgradients_tf_math_softplus_1_softplus_grad_sigmoid_add_partitionedcall*
T0*(
_output_shapes
:�����������
.gradients/tf.math.softplus_1/Softplus_grad/mulMulOgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_1/Softplus_grad/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gradients/AddN_4AddN=gradients/add_1/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.math.softplus_1/Softplus_grad/mul:z:0*
N*
T0*G
_class=
;9loc:@gradients/add_1/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
2gradients/add/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_4:sum:06gradients_add_partitionedcall_grad_add_partitionedcall8gradients_add_partitionedcall_grad_add_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference___backward_add_layer_call_and_return_conditional_losses_58474590_58474607�
Fgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall;gradients/add/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcall`gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_block_0_layer_0_layer_call_and_return_conditional_losses_58474614_58474627�
0gradients/tf.math.softplus/Softplus_grad/SigmoidSigmoidTgradients_tf_math_softplus_softplus_grad_sigmoid_layer_input_statefulpartitionedcall*
T0*(
_output_shapes
:�����������
,gradients/tf.math.softplus/Softplus_grad/mulMulOgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:04gradients/tf.math.softplus/Softplus_grad/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gradients/AddN_5AddN;gradients/add/PartitionedCall_grad/PartitionedCall:output:00gradients/tf.math.softplus/Softplus_grad/mul:z:0*
N*
T0*E
_class;
97loc:@gradients/add/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
Bgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_5:sum:0Vgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcallXgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:���������:	�:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *f
faR_
]__inference___backward_layer_input_layer_call_and_return_conditional_losses_58474639_58474652�
IdentityIdentityKgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCall:output:0*
T0*'
_output_shapes
:����������

Identity_1IdentityKgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	��

Identity_2IdentityKgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_3IdentityOgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���

Identity_4IdentityOgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_5IdentityOgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���

Identity_6IdentityOgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_7IdentityOgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���

Identity_8IdentityOgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_9IdentityOgradients/block_3_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���
Identity_10IdentityOgradients/block_3_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��
Identity_11IdentityOgradients/block_4_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���
Identity_12IdentityOgradients/block_4_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��
Identity_13IdentityOgradients/block_5_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���
Identity_14IdentityOgradients/block_5_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��
Identity_15IdentityLgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	��
Identity_16IdentityLgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:	�:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:	�:���������*m
forward_function_nameTR__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58475218:- )
'
_output_shapes
:���������:%!

_output_shapes
:	�:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.	*
(
_output_shapes
:����������:&
"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:. *
(
_output_shapes
:����������:%!!

_output_shapes
:	�:-")
'
_output_shapes
:���������
�
m
C__inference_add_5_layer_call_and_return_conditional_losses_58473456

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
9__inference_ResNet_entropy_closure_layer_call_fn_58473985
input_1
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58473913o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
A__forward_add_5_layer_call_and_return_conditional_losses_58474361
inputs_0

inputs_1_0
identity

inputs
inputs_1U
addAddV2inputs_0
inputs_1_0*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������*s
backward_function_nameYW__inference___backward_add_5_layer_call_and_return_conditional_losses_58474345_58474362:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
W__inference___backward_add_3_layer_call_and_return_conditional_losses_58474443_58474460
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������g
gradients/add_grad/ShapeShapegradients_add_grad_shape_inputs*
T0*
_output_shapes
:m
gradients/add_grad/Shape_1Shape#gradients_add_grad_shape_1_inputs_1*
T0*
_output_shapes
:�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/add_grad/Shape:output:0#gradients/add_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/add_grad/SumSumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sum:output:0!gradients/add_grad/Shape:output:0*
T0*(
_output_shapes
:�����������
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*(
_output_shapes
:����������l
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*(
_output_shapes
:����������p

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������*\
forward_function_nameCA__forward_add_3_layer_call_and_return_conditional_losses_58474459:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������
�
o
C__inference_add_1_layer_call_and_return_conditional_losses_58477809
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
2__inference_block_4_layer_0_layer_call_fn_58477940

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_4_layer_0_layer_call_and_return_conditional_losses_58473407p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�,
$__inference__traced_restore_58478701
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: 8
%assignvariableop_5_layer_input_kernel:	�2
#assignvariableop_6_layer_input_bias:	�=
)assignvariableop_7_block_0_layer_0_kernel:
��6
'assignvariableop_8_block_0_layer_0_bias:	�=
)assignvariableop_9_block_1_layer_0_kernel:
��7
(assignvariableop_10_block_1_layer_0_bias:	�>
*assignvariableop_11_block_2_layer_0_kernel:
��7
(assignvariableop_12_block_2_layer_0_bias:	�>
*assignvariableop_13_block_3_layer_0_kernel:
��7
(assignvariableop_14_block_3_layer_0_bias:	�>
*assignvariableop_15_block_4_layer_0_kernel:
��7
(assignvariableop_16_block_4_layer_0_bias:	�>
*assignvariableop_17_block_5_layer_0_kernel:
��7
(assignvariableop_18_block_5_layer_0_bias:	�:
'assignvariableop_19_dense_output_kernel:	�3
%assignvariableop_20_dense_output_bias:#
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: %
assignvariableop_25_total_2: %
assignvariableop_26_count_2: %
assignvariableop_27_total_3: %
assignvariableop_28_count_3: %
assignvariableop_29_total_4: %
assignvariableop_30_count_4: %
assignvariableop_31_total_5: %
assignvariableop_32_count_5: %
assignvariableop_33_total_6: %
assignvariableop_34_count_6: %
assignvariableop_35_total_7: %
assignvariableop_36_count_7: %
assignvariableop_37_total_8: %
assignvariableop_38_count_8: %
assignvariableop_39_total_9: %
assignvariableop_40_count_9: @
-assignvariableop_41_adam_layer_input_kernel_m:	�:
+assignvariableop_42_adam_layer_input_bias_m:	�E
1assignvariableop_43_adam_block_0_layer_0_kernel_m:
��>
/assignvariableop_44_adam_block_0_layer_0_bias_m:	�E
1assignvariableop_45_adam_block_1_layer_0_kernel_m:
��>
/assignvariableop_46_adam_block_1_layer_0_bias_m:	�E
1assignvariableop_47_adam_block_2_layer_0_kernel_m:
��>
/assignvariableop_48_adam_block_2_layer_0_bias_m:	�E
1assignvariableop_49_adam_block_3_layer_0_kernel_m:
��>
/assignvariableop_50_adam_block_3_layer_0_bias_m:	�E
1assignvariableop_51_adam_block_4_layer_0_kernel_m:
��>
/assignvariableop_52_adam_block_4_layer_0_bias_m:	�E
1assignvariableop_53_adam_block_5_layer_0_kernel_m:
��>
/assignvariableop_54_adam_block_5_layer_0_bias_m:	�A
.assignvariableop_55_adam_dense_output_kernel_m:	�:
,assignvariableop_56_adam_dense_output_bias_m:@
-assignvariableop_57_adam_layer_input_kernel_v:	�:
+assignvariableop_58_adam_layer_input_bias_v:	�E
1assignvariableop_59_adam_block_0_layer_0_kernel_v:
��>
/assignvariableop_60_adam_block_0_layer_0_bias_v:	�E
1assignvariableop_61_adam_block_1_layer_0_kernel_v:
��>
/assignvariableop_62_adam_block_1_layer_0_bias_v:	�E
1assignvariableop_63_adam_block_2_layer_0_kernel_v:
��>
/assignvariableop_64_adam_block_2_layer_0_bias_v:	�E
1assignvariableop_65_adam_block_3_layer_0_kernel_v:
��>
/assignvariableop_66_adam_block_3_layer_0_bias_v:	�E
1assignvariableop_67_adam_block_4_layer_0_kernel_v:
��>
/assignvariableop_68_adam_block_4_layer_0_bias_v:	�E
1assignvariableop_69_adam_block_5_layer_0_kernel_v:
��>
/assignvariableop_70_adam_block_5_layer_0_bias_v:	�A
.assignvariableop_71_adam_dense_output_kernel_v:	�:
,assignvariableop_72_adam_dense_output_bias_v:
identity_74��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_8�AssignVariableOp_9�!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:J*
dtype0*� 
value� B� JB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:J*
dtype0*�
value�B�JB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*X
dtypesN
L2J	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp%assignvariableop_5_layer_input_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_layer_input_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp)assignvariableop_7_block_0_layer_0_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp'assignvariableop_8_block_0_layer_0_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp)assignvariableop_9_block_1_layer_0_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp(assignvariableop_10_block_1_layer_0_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp*assignvariableop_11_block_2_layer_0_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp(assignvariableop_12_block_2_layer_0_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp*assignvariableop_13_block_3_layer_0_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp(assignvariableop_14_block_3_layer_0_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp*assignvariableop_15_block_4_layer_0_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp(assignvariableop_16_block_4_layer_0_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp*assignvariableop_17_block_5_layer_0_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp(assignvariableop_18_block_5_layer_0_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp'assignvariableop_19_dense_output_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp%assignvariableop_20_dense_output_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_2Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_2Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_3Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_3Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_4Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_4Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_5Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_5Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_6Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_6Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_7Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_7Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_total_8Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpassignvariableop_38_count_8Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_9Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_9Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp-assignvariableop_41_adam_layer_input_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_layer_input_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp1assignvariableop_43_adam_block_0_layer_0_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp/assignvariableop_44_adam_block_0_layer_0_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp1assignvariableop_45_adam_block_1_layer_0_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp/assignvariableop_46_adam_block_1_layer_0_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp1assignvariableop_47_adam_block_2_layer_0_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp/assignvariableop_48_adam_block_2_layer_0_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp1assignvariableop_49_adam_block_3_layer_0_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp/assignvariableop_50_adam_block_3_layer_0_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp1assignvariableop_51_adam_block_4_layer_0_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp/assignvariableop_52_adam_block_4_layer_0_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp1assignvariableop_53_adam_block_5_layer_0_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp/assignvariableop_54_adam_block_5_layer_0_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp.assignvariableop_55_adam_dense_output_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp,assignvariableop_56_adam_dense_output_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp-assignvariableop_57_adam_layer_input_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp+assignvariableop_58_adam_layer_input_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp1assignvariableop_59_adam_block_0_layer_0_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp/assignvariableop_60_adam_block_0_layer_0_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp1assignvariableop_61_adam_block_1_layer_0_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp/assignvariableop_62_adam_block_1_layer_0_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp1assignvariableop_63_adam_block_2_layer_0_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp/assignvariableop_64_adam_block_2_layer_0_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp1assignvariableop_65_adam_block_3_layer_0_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp/assignvariableop_66_adam_block_3_layer_0_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp1assignvariableop_67_adam_block_4_layer_0_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp/assignvariableop_68_adam_block_4_layer_0_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp1assignvariableop_69_adam_block_5_layer_0_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp/assignvariableop_70_adam_block_5_layer_0_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp.assignvariableop_71_adam_dense_output_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp,assignvariableop_72_adam_dense_output_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_73Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_74IdentityIdentity_73:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_74Identity_74:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
k
A__inference_add_layer_call_and_return_conditional_losses_58473271

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__forward_layer_input_layer_call_and_return_conditional_losses_58474651
inputs_01
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : *y
backward_function_name_]__inference___backward_layer_input_layer_call_and_return_conditional_losses_58474639_5847465220
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
M__inference_block_1_layer_0_layer_call_and_return_conditional_losses_58477797

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58477656

inputs=
*layer_input_matmul_readvariableop_resource:	�:
+layer_input_biasadd_readvariableop_resource:	�B
.block_0_layer_0_matmul_readvariableop_resource:
��>
/block_0_layer_0_biasadd_readvariableop_resource:	�B
.block_1_layer_0_matmul_readvariableop_resource:
��>
/block_1_layer_0_biasadd_readvariableop_resource:	�B
.block_2_layer_0_matmul_readvariableop_resource:
��>
/block_2_layer_0_biasadd_readvariableop_resource:	�B
.block_3_layer_0_matmul_readvariableop_resource:
��>
/block_3_layer_0_biasadd_readvariableop_resource:	�B
.block_4_layer_0_matmul_readvariableop_resource:
��>
/block_4_layer_0_biasadd_readvariableop_resource:	�B
.block_5_layer_0_matmul_readvariableop_resource:
��>
/block_5_layer_0_biasadd_readvariableop_resource:	�>
+dense_output_matmul_readvariableop_resource:	�:
,dense_output_biasadd_readvariableop_resource:
identity��&block_0_layer_0/BiasAdd/ReadVariableOp�%block_0_layer_0/MatMul/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_1_layer_0/BiasAdd/ReadVariableOp�%block_1_layer_0/MatMul/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_2_layer_0/BiasAdd/ReadVariableOp�%block_2_layer_0/MatMul/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_3_layer_0/BiasAdd/ReadVariableOp�%block_3_layer_0/MatMul/ReadVariableOp�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_4_layer_0/BiasAdd/ReadVariableOp�%block_4_layer_0/MatMul/ReadVariableOp�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_5_layer_0/BiasAdd/ReadVariableOp�%block_5_layer_0/MatMul/ReadVariableOp�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�#dense_output/BiasAdd/ReadVariableOp�"dense_output/MatMul/ReadVariableOp�5dense_output/kernel/Regularizer/Square/ReadVariableOp�"layer_input/BiasAdd/ReadVariableOp�!layer_input/MatMul/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
!layer_input/MatMul/ReadVariableOpReadVariableOp*layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
layer_input/MatMulMatMulinputs)layer_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"layer_input/BiasAdd/ReadVariableOpReadVariableOp+layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_input/BiasAddBiasAddlayer_input/MatMul:product:0*layer_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������v
tf.math.softplus/SoftplusSoftpluslayer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%block_0_layer_0/MatMul/ReadVariableOpReadVariableOp.block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_0_layer_0/MatMulMatMul'tf.math.softplus/Softplus:activations:0-block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_0_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_0_layer_0/BiasAddBiasAdd block_0_layer_0/MatMul:product:0.block_0_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
add/addAddV2layer_input/BiasAdd:output:0 block_0_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������g
tf.math.softplus_1/SoftplusSoftplusadd/add:z:0*
T0*(
_output_shapes
:�����������
%block_1_layer_0/MatMul/ReadVariableOpReadVariableOp.block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_1_layer_0/MatMulMatMul)tf.math.softplus_1/Softplus:activations:0-block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_1_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_1_layer_0/BiasAddBiasAdd block_1_layer_0/MatMul:product:0.block_1_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
	add_1/addAddV2add/add:z:0 block_1_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������i
tf.math.softplus_2/SoftplusSoftplusadd_1/add:z:0*
T0*(
_output_shapes
:�����������
%block_2_layer_0/MatMul/ReadVariableOpReadVariableOp.block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_2_layer_0/MatMulMatMul)tf.math.softplus_2/Softplus:activations:0-block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_2_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_2_layer_0/BiasAddBiasAdd block_2_layer_0/MatMul:product:0.block_2_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������v
	add_2/addAddV2add_1/add:z:0 block_2_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������i
tf.math.softplus_3/SoftplusSoftplusadd_2/add:z:0*
T0*(
_output_shapes
:�����������
%block_3_layer_0/MatMul/ReadVariableOpReadVariableOp.block_3_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_3_layer_0/MatMulMatMul)tf.math.softplus_3/Softplus:activations:0-block_3_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_3_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_3_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_3_layer_0/BiasAddBiasAdd block_3_layer_0/MatMul:product:0.block_3_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������v
	add_3/addAddV2add_2/add:z:0 block_3_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������i
tf.math.softplus_4/SoftplusSoftplusadd_3/add:z:0*
T0*(
_output_shapes
:�����������
%block_4_layer_0/MatMul/ReadVariableOpReadVariableOp.block_4_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_4_layer_0/MatMulMatMul)tf.math.softplus_4/Softplus:activations:0-block_4_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_4_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_4_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_4_layer_0/BiasAddBiasAdd block_4_layer_0/MatMul:product:0.block_4_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������v
	add_4/addAddV2add_3/add:z:0 block_4_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������i
tf.math.softplus_5/SoftplusSoftplusadd_4/add:z:0*
T0*(
_output_shapes
:�����������
%block_5_layer_0/MatMul/ReadVariableOpReadVariableOp.block_5_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_5_layer_0/MatMulMatMul)tf.math.softplus_5/Softplus:activations:0-block_5_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_5_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_5_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_5_layer_0/BiasAddBiasAdd block_5_layer_0/MatMul:product:0.block_5_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������v
	add_5/addAddV2add_4/add:z:0 block_5_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
"dense_output/MatMul/ReadVariableOpReadVariableOp+dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_output/MatMulMatMuladd_5/add:z:0*dense_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#dense_output/BiasAdd/ReadVariableOpReadVariableOp,dense_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_output/BiasAddBiasAdddense_output/MatMul:product:0+dense_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOp+layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp/block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp/block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp/block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.block_3_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp/block_3_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.block_4_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp/block_4_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.block_5_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp/block_5_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: l
IdentityIdentitydense_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^block_0_layer_0/BiasAdd/ReadVariableOp&^block_0_layer_0/MatMul/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_1_layer_0/BiasAdd/ReadVariableOp&^block_1_layer_0/MatMul/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_2_layer_0/BiasAdd/ReadVariableOp&^block_2_layer_0/MatMul/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_3_layer_0/BiasAdd/ReadVariableOp&^block_3_layer_0/MatMul/ReadVariableOp7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_4_layer_0/BiasAdd/ReadVariableOp&^block_4_layer_0/MatMul/ReadVariableOp7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_5_layer_0/BiasAdd/ReadVariableOp&^block_5_layer_0/MatMul/ReadVariableOp7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp$^dense_output/BiasAdd/ReadVariableOp#^dense_output/MatMul/ReadVariableOp6^dense_output/kernel/Regularizer/Square/ReadVariableOp#^layer_input/BiasAdd/ReadVariableOp"^layer_input/MatMul/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2P
&block_0_layer_0/BiasAdd/ReadVariableOp&block_0_layer_0/BiasAdd/ReadVariableOp2N
%block_0_layer_0/MatMul/ReadVariableOp%block_0_layer_0/MatMul/ReadVariableOp2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2P
&block_1_layer_0/BiasAdd/ReadVariableOp&block_1_layer_0/BiasAdd/ReadVariableOp2N
%block_1_layer_0/MatMul/ReadVariableOp%block_1_layer_0/MatMul/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2P
&block_2_layer_0/BiasAdd/ReadVariableOp&block_2_layer_0/BiasAdd/ReadVariableOp2N
%block_2_layer_0/MatMul/ReadVariableOp%block_2_layer_0/MatMul/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2P
&block_3_layer_0/BiasAdd/ReadVariableOp&block_3_layer_0/BiasAdd/ReadVariableOp2N
%block_3_layer_0/MatMul/ReadVariableOp%block_3_layer_0/MatMul/ReadVariableOp2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2P
&block_4_layer_0/BiasAdd/ReadVariableOp&block_4_layer_0/BiasAdd/ReadVariableOp2N
%block_4_layer_0/MatMul/ReadVariableOp%block_4_layer_0/MatMul/ReadVariableOp2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2P
&block_5_layer_0/BiasAdd/ReadVariableOp&block_5_layer_0/BiasAdd/ReadVariableOp2N
%block_5_layer_0/MatMul/ReadVariableOp%block_5_layer_0/MatMul/ReadVariableOp2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2J
#dense_output/BiasAdd/ReadVariableOp#dense_output/BiasAdd/ReadVariableOp2H
"dense_output/MatMul/ReadVariableOp"dense_output/MatMul/ReadVariableOp2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2H
"layer_input/BiasAdd/ReadVariableOp"layer_input/BiasAdd/ReadVariableOp2F
!layer_input/MatMul/ReadVariableOp!layer_input/MatMul/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_11_58478192N
?block_4_layer_0_bias_regularizer_square_readvariableop_resource:	�
identity��6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp?block_4_layer_0_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentity(block_4_layer_0/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp
�
�
__inference_loss_fn_14_58478225Q
>dense_output_kernel_regularizer_square_readvariableop_resource:	�
identity��5dense_output/kernel/Regularizer/Square/ReadVariableOp�
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp>dense_output_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: e
IdentityIdentity'dense_output/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ~
NoOpNoOp6^dense_output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp
�
�
J__inference_dense_output_layer_call_and_return_conditional_losses_58478060

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�5dense_output/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp6^dense_output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
K__forward_block_2_layer_0_layer_call_and_return_conditional_losses_58474528
inputs_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *}
backward_function_nameca__inference___backward_block_2_layer_0_layer_call_and_return_conditional_losses_58474516_5847452920
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
M__inference_block_4_layer_0_layer_call_and_return_conditional_losses_58477962

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
T
(__inference_add_2_layer_call_fn_58477858
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_2_layer_call_and_return_conditional_losses_58473345a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
I__inference_layer_input_layer_call_and_return_conditional_losses_58477699

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
a__inference___backward_block_3_layer_0_layer_call_and_return_conditional_losses_58474467_58474480
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������u
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes	
:��
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*(
_output_shapes
:����������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0* 
_output_shapes
:
��*
transpose_a(o
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*(
_output_shapes
:����������k

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0* 
_output_shapes
:
��i

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������:
��:����������*f
forward_function_nameMK__forward_block_3_layer_0_layer_call_and_return_conditional_losses_58474479:. *
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������
�
�
A__forward_add_4_layer_call_and_return_conditional_losses_58474410
inputs_0

inputs_1_0
identity

inputs
inputs_1U
addAddV2inputs_0
inputs_1_0*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������*s
backward_function_nameYW__inference___backward_add_4_layer_call_and_return_conditional_losses_58474394_58474411:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_7_58478148N
?block_2_layer_0_bias_regularizer_square_readvariableop_resource:	�
identity��6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp?block_2_layer_0_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentity(block_2_layer_0/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp
�
�
J__inference_dense_output_layer_call_and_return_conditional_losses_58473474

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�5dense_output/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp6^dense_output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
o
C__inference_add_4_layer_call_and_return_conditional_losses_58477974
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
__inference_loss_fn_12_58478203U
Ablock_5_layer_0_kernel_regularizer_square_readvariableop_resource:
��
identity��8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAblock_5_layer_0_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*block_5_layer_0/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp
�
�
__inference_loss_fn_13_58478214N
?block_5_layer_0_bias_regularizer_square_readvariableop_resource:	�
identity��6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp?block_5_layer_0_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentity(block_5_layer_0/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58477184
xT
Aresnet_entropy_closure_layer_input_matmul_readvariableop_resource:	�Q
Bresnet_entropy_closure_layer_input_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_3_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_3_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_4_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_4_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_5_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_5_layer_0_biasadd_readvariableop_resource:	�U
Bresnet_entropy_closure_dense_output_matmul_readvariableop_resource:	�Q
Cresnet_entropy_closure_dense_output_biasadd_readvariableop_resource:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp�:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp�9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp�9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp�8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�checked�	checked_1�5dense_output/kernel/Regularizer/Square/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOpReadVariableOpAresnet_entropy_closure_layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
)ResNet_entropy_closure/layer_input/MatMulMatMulx@ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOpReadVariableOpBresnet_entropy_closure_layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*ResNet_entropy_closure/layer_input/BiasAddBiasAdd3ResNet_entropy_closure/layer_input/MatMul:product:0AResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0ResNet_entropy_closure/tf.math.softplus/SoftplusSoftplus3ResNet_entropy_closure/layer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_0_layer_0/MatMulMatMul>ResNet_entropy_closure/tf.math.softplus/Softplus:activations:0DResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_0_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_0_layer_0/MatMul:product:0EResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
ResNet_entropy_closure/add/addAddV23ResNet_entropy_closure/layer_input/BiasAdd:output:07ResNet_entropy_closure/block_0_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
2ResNet_entropy_closure/tf.math.softplus_1/SoftplusSoftplus"ResNet_entropy_closure/add/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_1_layer_0/MatMulMatMul@ResNet_entropy_closure/tf.math.softplus_1/Softplus:activations:0DResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_1_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_1_layer_0/MatMul:product:0EResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_1/addAddV2"ResNet_entropy_closure/add/add:z:07ResNet_entropy_closure/block_1_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
2ResNet_entropy_closure/tf.math.softplus_2/SoftplusSoftplus$ResNet_entropy_closure/add_1/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_2_layer_0/MatMulMatMul@ResNet_entropy_closure/tf.math.softplus_2/Softplus:activations:0DResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_2_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_2_layer_0/MatMul:product:0EResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_2/addAddV2$ResNet_entropy_closure/add_1/add:z:07ResNet_entropy_closure/block_2_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
2ResNet_entropy_closure/tf.math.softplus_3/SoftplusSoftplus$ResNet_entropy_closure/add_2/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_3_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_3_layer_0/MatMulMatMul@ResNet_entropy_closure/tf.math.softplus_3/Softplus:activations:0DResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_3_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_3_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_3_layer_0/MatMul:product:0EResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_3/addAddV2$ResNet_entropy_closure/add_2/add:z:07ResNet_entropy_closure/block_3_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
2ResNet_entropy_closure/tf.math.softplus_4/SoftplusSoftplus$ResNet_entropy_closure/add_3/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_4_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_4_layer_0/MatMulMatMul@ResNet_entropy_closure/tf.math.softplus_4/Softplus:activations:0DResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_4_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_4_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_4_layer_0/MatMul:product:0EResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_4/addAddV2$ResNet_entropy_closure/add_3/add:z:07ResNet_entropy_closure/block_4_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
2ResNet_entropy_closure/tf.math.softplus_5/SoftplusSoftplus$ResNet_entropy_closure/add_4/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_5_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_5_layer_0/MatMulMatMul@ResNet_entropy_closure/tf.math.softplus_5/Softplus:activations:0DResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_5_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_5_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_5_layer_0/MatMul:product:0EResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_5/addAddV2$ResNet_entropy_closure/add_4/add:z:07ResNet_entropy_closure/block_5_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOpReadVariableOpBresnet_entropy_closure_dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*ResNet_entropy_closure/dense_output/MatMulMatMul$ResNet_entropy_closure/add_5/add:z:0AResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOpReadVariableOpCresnet_entropy_closure_dense_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
+ResNet_entropy_closure/dense_output/BiasAddBiasAdd4ResNet_entropy_closure/dense_output/MatMul:product:0BResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������s
ones_like/ShapeShape4ResNet_entropy_closure/dense_output/BiasAdd:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:����������
Egradient_tape/ResNet_entropy_closure/dense_output/BiasAdd/BiasAddGradBiasAddGradones_like:output:0*
T0*
_output_shapes
:�
?gradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMulMatMulones_like:output:0AResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Agradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMul_1MatMul$ResNet_entropy_closure/add_5/add:z:0ones_like:output:0*
T0*
_output_shapes
:	�*
transpose_a(�
4gradient_tape/ResNet_entropy_closure/add_5/add/ShapeShape$ResNet_entropy_closure/add_4/add:z:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_5/add/Shape_1Shape7ResNet_entropy_closure/block_5_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/ResNet_entropy_closure/add_5/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/ResNet_entropy_closure/add_5/add/Shape:output:0?gradient_tape/ResNet_entropy_closure/add_5/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/ResNet_entropy_closure/add_5/add/SumSumIgradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMul:product:0Igradient_tape/ResNet_entropy_closure/add_5/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_5/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_5/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_5/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_5/add/Sum_1SumIgradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMul:product:0Igradient_tape/ResNet_entropy_closure/add_5/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_5/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_5/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_5/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_5_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_5/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_5_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_5/add/Reshape_1:output:0DResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_5_layer_0/MatMul/MatMul_1MatMul@ResNet_entropy_closure/tf.math.softplus_5/Softplus:activations:0Agradient_tape/ResNet_entropy_closure/add_5/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
?gradient_tape/ResNet_entropy_closure/tf.math.softplus_5/SigmoidSigmoid$ResNet_entropy_closure/add_4/add:z:0*
T0*(
_output_shapes
:�����������
;gradient_tape/ResNet_entropy_closure/tf.math.softplus_5/mulMulLgradient_tape/ResNet_entropy_closure/block_5_layer_0/MatMul/MatMul:product:0Cgradient_tape/ResNet_entropy_closure/tf.math.softplus_5/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
AddNAddN?gradient_tape/ResNet_entropy_closure/add_5/add/Reshape:output:0?gradient_tape/ResNet_entropy_closure/tf.math.softplus_5/mul:z:0*
N*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_4/add/ShapeShape$ResNet_entropy_closure/add_3/add:z:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_4/add/Shape_1Shape7ResNet_entropy_closure/block_4_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/ResNet_entropy_closure/add_4/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/ResNet_entropy_closure/add_4/add/Shape:output:0?gradient_tape/ResNet_entropy_closure/add_4/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/ResNet_entropy_closure/add_4/add/SumSum
AddN:sum:0Igradient_tape/ResNet_entropy_closure/add_4/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_4/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_4/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_4/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_4/add/Sum_1Sum
AddN:sum:0Igradient_tape/ResNet_entropy_closure/add_4/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_4/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_4/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_4/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_4_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_4/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_4_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_4/add/Reshape_1:output:0DResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_4_layer_0/MatMul/MatMul_1MatMul@ResNet_entropy_closure/tf.math.softplus_4/Softplus:activations:0Agradient_tape/ResNet_entropy_closure/add_4/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
?gradient_tape/ResNet_entropy_closure/tf.math.softplus_4/SigmoidSigmoid$ResNet_entropy_closure/add_3/add:z:0*
T0*(
_output_shapes
:�����������
;gradient_tape/ResNet_entropy_closure/tf.math.softplus_4/mulMulLgradient_tape/ResNet_entropy_closure/block_4_layer_0/MatMul/MatMul:product:0Cgradient_tape/ResNet_entropy_closure/tf.math.softplus_4/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
AddN_1AddN?gradient_tape/ResNet_entropy_closure/add_4/add/Reshape:output:0?gradient_tape/ResNet_entropy_closure/tf.math.softplus_4/mul:z:0*
N*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_3/add/ShapeShape$ResNet_entropy_closure/add_2/add:z:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_3/add/Shape_1Shape7ResNet_entropy_closure/block_3_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/ResNet_entropy_closure/add_3/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/ResNet_entropy_closure/add_3/add/Shape:output:0?gradient_tape/ResNet_entropy_closure/add_3/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/ResNet_entropy_closure/add_3/add/SumSumAddN_1:sum:0Igradient_tape/ResNet_entropy_closure/add_3/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_3/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_3/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_3/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_3/add/Sum_1SumAddN_1:sum:0Igradient_tape/ResNet_entropy_closure/add_3/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_3/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_3/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_3/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_3_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_3/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_3_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_3/add/Reshape_1:output:0DResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_3_layer_0/MatMul/MatMul_1MatMul@ResNet_entropy_closure/tf.math.softplus_3/Softplus:activations:0Agradient_tape/ResNet_entropy_closure/add_3/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
?gradient_tape/ResNet_entropy_closure/tf.math.softplus_3/SigmoidSigmoid$ResNet_entropy_closure/add_2/add:z:0*
T0*(
_output_shapes
:�����������
;gradient_tape/ResNet_entropy_closure/tf.math.softplus_3/mulMulLgradient_tape/ResNet_entropy_closure/block_3_layer_0/MatMul/MatMul:product:0Cgradient_tape/ResNet_entropy_closure/tf.math.softplus_3/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
AddN_2AddN?gradient_tape/ResNet_entropy_closure/add_3/add/Reshape:output:0?gradient_tape/ResNet_entropy_closure/tf.math.softplus_3/mul:z:0*
N*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_2/add/ShapeShape$ResNet_entropy_closure/add_1/add:z:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_2/add/Shape_1Shape7ResNet_entropy_closure/block_2_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/ResNet_entropy_closure/add_2/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/ResNet_entropy_closure/add_2/add/Shape:output:0?gradient_tape/ResNet_entropy_closure/add_2/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/ResNet_entropy_closure/add_2/add/SumSumAddN_2:sum:0Igradient_tape/ResNet_entropy_closure/add_2/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_2/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_2/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_2/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_2/add/Sum_1SumAddN_2:sum:0Igradient_tape/ResNet_entropy_closure/add_2/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_2/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_2/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_2_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1:output:0DResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMul_1MatMul@ResNet_entropy_closure/tf.math.softplus_2/Softplus:activations:0Agradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
?gradient_tape/ResNet_entropy_closure/tf.math.softplus_2/SigmoidSigmoid$ResNet_entropy_closure/add_1/add:z:0*
T0*(
_output_shapes
:�����������
;gradient_tape/ResNet_entropy_closure/tf.math.softplus_2/mulMulLgradient_tape/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMul:product:0Cgradient_tape/ResNet_entropy_closure/tf.math.softplus_2/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
AddN_3AddN?gradient_tape/ResNet_entropy_closure/add_2/add/Reshape:output:0?gradient_tape/ResNet_entropy_closure/tf.math.softplus_2/mul:z:0*
N*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_1/add/ShapeShape"ResNet_entropy_closure/add/add:z:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_1/add/Shape_1Shape7ResNet_entropy_closure/block_1_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/ResNet_entropy_closure/add_1/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/ResNet_entropy_closure/add_1/add/Shape:output:0?gradient_tape/ResNet_entropy_closure/add_1/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/ResNet_entropy_closure/add_1/add/SumSumAddN_3:sum:0Igradient_tape/ResNet_entropy_closure/add_1/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_1/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_1/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_1/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_1/add/Sum_1SumAddN_3:sum:0Igradient_tape/ResNet_entropy_closure/add_1/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_1/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_1/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_1_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1:output:0DResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMul_1MatMul@ResNet_entropy_closure/tf.math.softplus_1/Softplus:activations:0Agradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
?gradient_tape/ResNet_entropy_closure/tf.math.softplus_1/SigmoidSigmoid"ResNet_entropy_closure/add/add:z:0*
T0*(
_output_shapes
:�����������
;gradient_tape/ResNet_entropy_closure/tf.math.softplus_1/mulMulLgradient_tape/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMul:product:0Cgradient_tape/ResNet_entropy_closure/tf.math.softplus_1/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
AddN_4AddN?gradient_tape/ResNet_entropy_closure/add_1/add/Reshape:output:0?gradient_tape/ResNet_entropy_closure/tf.math.softplus_1/mul:z:0*
N*
T0*(
_output_shapes
:�����������
2gradient_tape/ResNet_entropy_closure/add/add/ShapeShape3ResNet_entropy_closure/layer_input/BiasAdd:output:0*
T0*
_output_shapes
:�
4gradient_tape/ResNet_entropy_closure/add/add/Shape_1Shape7ResNet_entropy_closure/block_0_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Bgradient_tape/ResNet_entropy_closure/add/add/BroadcastGradientArgsBroadcastGradientArgs;gradient_tape/ResNet_entropy_closure/add/add/Shape:output:0=gradient_tape/ResNet_entropy_closure/add/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
0gradient_tape/ResNet_entropy_closure/add/add/SumSumAddN_4:sum:0Ggradient_tape/ResNet_entropy_closure/add/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
4gradient_tape/ResNet_entropy_closure/add/add/ReshapeReshape9gradient_tape/ResNet_entropy_closure/add/add/Sum:output:0;gradient_tape/ResNet_entropy_closure/add/add/Shape:output:0*
T0*(
_output_shapes
:�����������
2gradient_tape/ResNet_entropy_closure/add/add/Sum_1SumAddN_4:sum:0Ggradient_tape/ResNet_entropy_closure/add/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add/add/Reshape_1Reshape;gradient_tape/ResNet_entropy_closure/add/add/Sum_1:output:0=gradient_tape/ResNet_entropy_closure/add/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_0_layer_0/BiasAdd/BiasAddGradBiasAddGrad?gradient_tape/ResNet_entropy_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMulMatMul?gradient_tape/ResNet_entropy_closure/add/add/Reshape_1:output:0DResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMul_1MatMul>ResNet_entropy_closure/tf.math.softplus/Softplus:activations:0?gradient_tape/ResNet_entropy_closure/add/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
=gradient_tape/ResNet_entropy_closure/tf.math.softplus/SigmoidSigmoid3ResNet_entropy_closure/layer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
9gradient_tape/ResNet_entropy_closure/tf.math.softplus/mulMulLgradient_tape/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMul:product:0Agradient_tape/ResNet_entropy_closure/tf.math.softplus/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
AddN_5AddN=gradient_tape/ResNet_entropy_closure/add/add/Reshape:output:0=gradient_tape/ResNet_entropy_closure/tf.math.softplus/mul:z:0*
N*
T0*(
_output_shapes
:�����������
Dgradient_tape/ResNet_entropy_closure/layer_input/BiasAdd/BiasAddGradBiasAddGradAddN_5:sum:0*
T0*
_output_shapes	
:��
>gradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMulMatMulAddN_5:sum:0@ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
@gradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMul_1MatMulxAddN_5:sum:0*
T0*
_output_shapes
:	�*
transpose_a(�
CastCastHgradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMul:product:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 5), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceunknownstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskX
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:X
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: T
Tensordot/ShapeShapecheckedandclipped:z:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	Transposecheckedandclipped:z:0Tensordot/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*(
_output_shapes
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB: H
Tensordot_1/ShapeShapeExp:y:0*
T0*
_output_shapes
:[
Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/GatherV2GatherV2Tensordot_1/Shape:output:0Tensordot_1/free:output:0"Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/GatherV2_1GatherV2Tensordot_1/Shape:output:0Tensordot_1/axes:output:0$Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_1/ProdProdTensordot_1/GatherV2:output:0Tensordot_1/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_1/Prod_1ProdTensordot_1/GatherV2_1:output:0Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/concatConcatV2Tensordot_1/free:output:0Tensordot_1/axes:output:0 Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_1/stackPackTensordot_1/Prod:output:0Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot_1/transpose	TransposeExp:y:0Tensordot_1/concat:output:0*
T0*(
_output_shapes
:�����������
Tensordot_1/ReshapeReshapeTensordot_1/transpose:y:0Tensordot_1/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_1/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_1/transpose_1	Transposetensordot_1_b%Tensordot_1/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
Tensordot_1/MatMulMatMulTensordot_1/Reshape:output:0Tensordot_1/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/concat_1ConcatV2Tensordot_1/GatherV2:output:0Tensordot_1/Const_2:output:0"Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_1ReshapeTensordot_1/MatMul:product:0Tensordot_1/concat_1:output:0*
T0*'
_output_shapes
:���������R
LogLogTensordot_1:output:0*
T0*'
_output_shapes
:���������E
NegNegLog:y:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2Neg:y:0Cast:y:0concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
Tensordot_2/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_2/freeConst*
_output_shapes
:*
dtype0*
valueB: X
Tensordot_2/ShapeShapecheckedandclipped_1:z:0*
T0*
_output_shapes
:[
Tensordot_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/GatherV2GatherV2Tensordot_2/Shape:output:0Tensordot_2/free:output:0"Tensordot_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_2/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/GatherV2_1GatherV2Tensordot_2/Shape:output:0Tensordot_2/axes:output:0$Tensordot_2/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_2/ProdProdTensordot_2/GatherV2:output:0Tensordot_2/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_2/Prod_1ProdTensordot_2/GatherV2_1:output:0Tensordot_2/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/concatConcatV2Tensordot_2/free:output:0Tensordot_2/axes:output:0 Tensordot_2/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_2/stackPackTensordot_2/Prod:output:0Tensordot_2/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot_2/transpose	Transposecheckedandclipped_1:z:0Tensordot_2/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
Tensordot_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/concat_1ConcatV2Tensordot_2/GatherV2:output:0Tensordot_2/Const_2:output:0"Tensordot_2/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_2ReshapeTensordot_2/MatMul:product:0Tensordot_2/concat_1:output:0*
T0*(
_output_shapes
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskZ
Tensordot_3/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_3/freeConst*
_output_shapes
:*
dtype0*
valueB: H
Tensordot_3/ShapeShapeMul:z:0*
T0*
_output_shapes
:[
Tensordot_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/GatherV2GatherV2Tensordot_3/Shape:output:0Tensordot_3/free:output:0"Tensordot_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_3/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/GatherV2_1GatherV2Tensordot_3/Shape:output:0Tensordot_3/axes:output:0$Tensordot_3/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_3/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_3/ProdProdTensordot_3/GatherV2:output:0Tensordot_3/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_3/Prod_1ProdTensordot_3/GatherV2_1:output:0Tensordot_3/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/concatConcatV2Tensordot_3/free:output:0Tensordot_3/axes:output:0 Tensordot_3/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_3/stackPackTensordot_3/Prod:output:0Tensordot_3/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot_3/transpose	TransposeMul:z:0Tensordot_3/concat:output:0*
T0*(
_output_shapes
:�����������
Tensordot_3/ReshapeReshapeTensordot_3/transpose:y:0Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_3/transpose_1	Transposestrided_slice_1:output:0%Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
Tensordot_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/concat_1ConcatV2Tensordot_3/GatherV2:output:0Tensordot_3/Const_2:output:0"Tensordot_3/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_3ReshapeTensordot_3/MatMul:product:0Tensordot_3/concat_1:output:0*
T0*'
_output_shapes
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAresnet_entropy_closure_layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpBresnet_entropy_closure_layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_3_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_3_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_4_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_4_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_5_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_5_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBresnet_entropy_closure_dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentity4ResNet_entropy_closure/dense_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������

Identity_1IdentityHgradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMul:product:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp>^ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp;^ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp:^ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:^ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp9^ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp^checked
^checked_16^dense_output/kernel/Regularizer/Square/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2~
=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp2x
:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp2v
9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp2v
9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp2t
8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2
checkedchecked2
	checked_1	checked_12n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:J F
'
_output_shapes
:���������

_user_specified_namex:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58476197
input_12
resnet_entropy_closure_58475892:	�.
resnet_entropy_closure_58475894:	�3
resnet_entropy_closure_58475896:
��.
resnet_entropy_closure_58475898:	�3
resnet_entropy_closure_58475900:
��.
resnet_entropy_closure_58475902:	�3
resnet_entropy_closure_58475904:
��.
resnet_entropy_closure_58475906:	�3
resnet_entropy_closure_58475908:
��.
resnet_entropy_closure_58475910:	�3
resnet_entropy_closure_58475912:
��.
resnet_entropy_closure_58475914:	�3
resnet_entropy_closure_58475916:
��.
resnet_entropy_closure_58475918:	�2
resnet_entropy_closure_58475920:	�-
resnet_entropy_closure_58475922:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��.ResNet_entropy_closure/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�checked�	checked_1�5dense_output/kernel/Regularizer/Square/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
.ResNet_entropy_closure/StatefulPartitionedCallStatefulPartitionedCallinput_1resnet_entropy_closure_58475892resnet_entropy_closure_58475894resnet_entropy_closure_58475896resnet_entropy_closure_58475898resnet_entropy_closure_58475900resnet_entropy_closure_58475902resnet_entropy_closure_58475904resnet_entropy_closure_58475906resnet_entropy_closure_58475908resnet_entropy_closure_58475910resnet_entropy_closure_58475912resnet_entropy_closure_58475914resnet_entropy_closure_58475916resnet_entropy_closure_58475918resnet_entropy_closure_58475920resnet_entropy_closure_58475922*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:	�:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:	�:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58475218v
ones_like/ShapeShape7ResNet_entropy_closure/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:����������
PartitionedCallPartitionedCallones_like:output:07ResNet_entropy_closure/StatefulPartitionedCall:output:17ResNet_entropy_closure/StatefulPartitionedCall:output:27ResNet_entropy_closure/StatefulPartitionedCall:output:37ResNet_entropy_closure/StatefulPartitionedCall:output:47ResNet_entropy_closure/StatefulPartitionedCall:output:57ResNet_entropy_closure/StatefulPartitionedCall:output:67ResNet_entropy_closure/StatefulPartitionedCall:output:77ResNet_entropy_closure/StatefulPartitionedCall:output:87ResNet_entropy_closure/StatefulPartitionedCall:output:98ResNet_entropy_closure/StatefulPartitionedCall:output:108ResNet_entropy_closure/StatefulPartitionedCall:output:118ResNet_entropy_closure/StatefulPartitionedCall:output:128ResNet_entropy_closure/StatefulPartitionedCall:output:138ResNet_entropy_closure/StatefulPartitionedCall:output:148ResNet_entropy_closure/StatefulPartitionedCall:output:158ResNet_entropy_closure/StatefulPartitionedCall:output:168ResNet_entropy_closure/StatefulPartitionedCall:output:178ResNet_entropy_closure/StatefulPartitionedCall:output:188ResNet_entropy_closure/StatefulPartitionedCall:output:198ResNet_entropy_closure/StatefulPartitionedCall:output:208ResNet_entropy_closure/StatefulPartitionedCall:output:218ResNet_entropy_closure/StatefulPartitionedCall:output:228ResNet_entropy_closure/StatefulPartitionedCall:output:238ResNet_entropy_closure/StatefulPartitionedCall:output:248ResNet_entropy_closure/StatefulPartitionedCall:output:258ResNet_entropy_closure/StatefulPartitionedCall:output:268ResNet_entropy_closure/StatefulPartitionedCall:output:278ResNet_entropy_closure/StatefulPartitionedCall:output:288ResNet_entropy_closure/StatefulPartitionedCall:output:298ResNet_entropy_closure/StatefulPartitionedCall:output:308ResNet_entropy_closure/StatefulPartitionedCall:output:318ResNet_entropy_closure/StatefulPartitionedCall:output:328ResNet_entropy_closure/StatefulPartitionedCall:output:338ResNet_entropy_closure/StatefulPartitionedCall:output:34*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:	�:�:
��:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58475081_58475219g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 5), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceunknownstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskX
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:X
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: T
Tensordot/ShapeShapecheckedandclipped:z:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	Transposecheckedandclipped:z:0Tensordot/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*(
_output_shapes
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB: H
Tensordot_1/ShapeShapeExp:y:0*
T0*
_output_shapes
:[
Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/GatherV2GatherV2Tensordot_1/Shape:output:0Tensordot_1/free:output:0"Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/GatherV2_1GatherV2Tensordot_1/Shape:output:0Tensordot_1/axes:output:0$Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_1/ProdProdTensordot_1/GatherV2:output:0Tensordot_1/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_1/Prod_1ProdTensordot_1/GatherV2_1:output:0Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/concatConcatV2Tensordot_1/free:output:0Tensordot_1/axes:output:0 Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_1/stackPackTensordot_1/Prod:output:0Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot_1/transpose	TransposeExp:y:0Tensordot_1/concat:output:0*
T0*(
_output_shapes
:�����������
Tensordot_1/ReshapeReshapeTensordot_1/transpose:y:0Tensordot_1/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_1/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_1/transpose_1	Transposetensordot_1_b%Tensordot_1/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
Tensordot_1/MatMulMatMulTensordot_1/Reshape:output:0Tensordot_1/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/concat_1ConcatV2Tensordot_1/GatherV2:output:0Tensordot_1/Const_2:output:0"Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_1ReshapeTensordot_1/MatMul:product:0Tensordot_1/concat_1:output:0*
T0*'
_output_shapes
:���������R
LogLogTensordot_1:output:0*
T0*'
_output_shapes
:���������E
NegNegLog:y:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2Neg:y:0Cast:y:0concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
Tensordot_2/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_2/freeConst*
_output_shapes
:*
dtype0*
valueB: X
Tensordot_2/ShapeShapecheckedandclipped_1:z:0*
T0*
_output_shapes
:[
Tensordot_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/GatherV2GatherV2Tensordot_2/Shape:output:0Tensordot_2/free:output:0"Tensordot_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_2/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/GatherV2_1GatherV2Tensordot_2/Shape:output:0Tensordot_2/axes:output:0$Tensordot_2/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_2/ProdProdTensordot_2/GatherV2:output:0Tensordot_2/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_2/Prod_1ProdTensordot_2/GatherV2_1:output:0Tensordot_2/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/concatConcatV2Tensordot_2/free:output:0Tensordot_2/axes:output:0 Tensordot_2/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_2/stackPackTensordot_2/Prod:output:0Tensordot_2/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot_2/transpose	Transposecheckedandclipped_1:z:0Tensordot_2/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
Tensordot_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/concat_1ConcatV2Tensordot_2/GatherV2:output:0Tensordot_2/Const_2:output:0"Tensordot_2/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_2ReshapeTensordot_2/MatMul:product:0Tensordot_2/concat_1:output:0*
T0*(
_output_shapes
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskZ
Tensordot_3/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_3/freeConst*
_output_shapes
:*
dtype0*
valueB: H
Tensordot_3/ShapeShapeMul:z:0*
T0*
_output_shapes
:[
Tensordot_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/GatherV2GatherV2Tensordot_3/Shape:output:0Tensordot_3/free:output:0"Tensordot_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_3/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/GatherV2_1GatherV2Tensordot_3/Shape:output:0Tensordot_3/axes:output:0$Tensordot_3/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_3/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_3/ProdProdTensordot_3/GatherV2:output:0Tensordot_3/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_3/Prod_1ProdTensordot_3/GatherV2_1:output:0Tensordot_3/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/concatConcatV2Tensordot_3/free:output:0Tensordot_3/axes:output:0 Tensordot_3/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_3/stackPackTensordot_3/Prod:output:0Tensordot_3/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot_3/transpose	TransposeMul:z:0Tensordot_3/concat:output:0*
T0*(
_output_shapes
:�����������
Tensordot_3/ReshapeReshapeTensordot_3/transpose:y:0Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_3/transpose_1	Transposestrided_slice_1:output:0%Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
Tensordot_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/concat_1ConcatV2Tensordot_3/GatherV2:output:0Tensordot_3/Const_2:output:0"Tensordot_3/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_3ReshapeTensordot_3/MatMul:product:0Tensordot_3/concat_1:output:0*
T0*'
_output_shapes
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475892*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475894*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475896* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475898*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475900* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475902*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475904* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475906*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475908* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475910*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475912* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475914*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475916* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475918*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475920*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentity7ResNet_entropy_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^ResNet_entropy_closure/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp^checked
^checked_16^dense_output/kernel/Regularizer/Square/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2`
.ResNet_entropy_closure/StatefulPartitionedCall.ResNet_entropy_closure/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2
checkedchecked2
	checked_1	checked_12n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
/__inference_dense_output_layer_call_fn_58478044

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_dense_output_layer_call_and_return_conditional_losses_58473474o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58475889
input_12
resnet_entropy_closure_58475584:	�.
resnet_entropy_closure_58475586:	�3
resnet_entropy_closure_58475588:
��.
resnet_entropy_closure_58475590:	�3
resnet_entropy_closure_58475592:
��.
resnet_entropy_closure_58475594:	�3
resnet_entropy_closure_58475596:
��.
resnet_entropy_closure_58475598:	�3
resnet_entropy_closure_58475600:
��.
resnet_entropy_closure_58475602:	�3
resnet_entropy_closure_58475604:
��.
resnet_entropy_closure_58475606:	�3
resnet_entropy_closure_58475608:
��.
resnet_entropy_closure_58475610:	�2
resnet_entropy_closure_58475612:	�-
resnet_entropy_closure_58475614:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��.ResNet_entropy_closure/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�checked�	checked_1�5dense_output/kernel/Regularizer/Square/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
.ResNet_entropy_closure/StatefulPartitionedCallStatefulPartitionedCallinput_1resnet_entropy_closure_58475584resnet_entropy_closure_58475586resnet_entropy_closure_58475588resnet_entropy_closure_58475590resnet_entropy_closure_58475592resnet_entropy_closure_58475594resnet_entropy_closure_58475596resnet_entropy_closure_58475598resnet_entropy_closure_58475600resnet_entropy_closure_58475602resnet_entropy_closure_58475604resnet_entropy_closure_58475606resnet_entropy_closure_58475608resnet_entropy_closure_58475610resnet_entropy_closure_58475612resnet_entropy_closure_58475614*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:	�:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:	�:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474677v
ones_like/ShapeShape7ResNet_entropy_closure/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:����������
PartitionedCallPartitionedCallones_like:output:07ResNet_entropy_closure/StatefulPartitionedCall:output:17ResNet_entropy_closure/StatefulPartitionedCall:output:27ResNet_entropy_closure/StatefulPartitionedCall:output:37ResNet_entropy_closure/StatefulPartitionedCall:output:47ResNet_entropy_closure/StatefulPartitionedCall:output:57ResNet_entropy_closure/StatefulPartitionedCall:output:67ResNet_entropy_closure/StatefulPartitionedCall:output:77ResNet_entropy_closure/StatefulPartitionedCall:output:87ResNet_entropy_closure/StatefulPartitionedCall:output:98ResNet_entropy_closure/StatefulPartitionedCall:output:108ResNet_entropy_closure/StatefulPartitionedCall:output:118ResNet_entropy_closure/StatefulPartitionedCall:output:128ResNet_entropy_closure/StatefulPartitionedCall:output:138ResNet_entropy_closure/StatefulPartitionedCall:output:148ResNet_entropy_closure/StatefulPartitionedCall:output:158ResNet_entropy_closure/StatefulPartitionedCall:output:168ResNet_entropy_closure/StatefulPartitionedCall:output:178ResNet_entropy_closure/StatefulPartitionedCall:output:188ResNet_entropy_closure/StatefulPartitionedCall:output:198ResNet_entropy_closure/StatefulPartitionedCall:output:208ResNet_entropy_closure/StatefulPartitionedCall:output:218ResNet_entropy_closure/StatefulPartitionedCall:output:228ResNet_entropy_closure/StatefulPartitionedCall:output:238ResNet_entropy_closure/StatefulPartitionedCall:output:248ResNet_entropy_closure/StatefulPartitionedCall:output:258ResNet_entropy_closure/StatefulPartitionedCall:output:268ResNet_entropy_closure/StatefulPartitionedCall:output:278ResNet_entropy_closure/StatefulPartitionedCall:output:288ResNet_entropy_closure/StatefulPartitionedCall:output:298ResNet_entropy_closure/StatefulPartitionedCall:output:308ResNet_entropy_closure/StatefulPartitionedCall:output:318ResNet_entropy_closure/StatefulPartitionedCall:output:328ResNet_entropy_closure/StatefulPartitionedCall:output:338ResNet_entropy_closure/StatefulPartitionedCall:output:34*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:	�:�:
��:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474320_58474678g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 5), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceunknownstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskX
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:X
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: T
Tensordot/ShapeShapecheckedandclipped:z:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	Transposecheckedandclipped:z:0Tensordot/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*(
_output_shapes
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB: H
Tensordot_1/ShapeShapeExp:y:0*
T0*
_output_shapes
:[
Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/GatherV2GatherV2Tensordot_1/Shape:output:0Tensordot_1/free:output:0"Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/GatherV2_1GatherV2Tensordot_1/Shape:output:0Tensordot_1/axes:output:0$Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_1/ProdProdTensordot_1/GatherV2:output:0Tensordot_1/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_1/Prod_1ProdTensordot_1/GatherV2_1:output:0Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/concatConcatV2Tensordot_1/free:output:0Tensordot_1/axes:output:0 Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_1/stackPackTensordot_1/Prod:output:0Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot_1/transpose	TransposeExp:y:0Tensordot_1/concat:output:0*
T0*(
_output_shapes
:�����������
Tensordot_1/ReshapeReshapeTensordot_1/transpose:y:0Tensordot_1/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_1/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_1/transpose_1	Transposetensordot_1_b%Tensordot_1/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
Tensordot_1/MatMulMatMulTensordot_1/Reshape:output:0Tensordot_1/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/concat_1ConcatV2Tensordot_1/GatherV2:output:0Tensordot_1/Const_2:output:0"Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_1ReshapeTensordot_1/MatMul:product:0Tensordot_1/concat_1:output:0*
T0*'
_output_shapes
:���������R
LogLogTensordot_1:output:0*
T0*'
_output_shapes
:���������E
NegNegLog:y:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2Neg:y:0Cast:y:0concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
Tensordot_2/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_2/freeConst*
_output_shapes
:*
dtype0*
valueB: X
Tensordot_2/ShapeShapecheckedandclipped_1:z:0*
T0*
_output_shapes
:[
Tensordot_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/GatherV2GatherV2Tensordot_2/Shape:output:0Tensordot_2/free:output:0"Tensordot_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_2/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/GatherV2_1GatherV2Tensordot_2/Shape:output:0Tensordot_2/axes:output:0$Tensordot_2/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_2/ProdProdTensordot_2/GatherV2:output:0Tensordot_2/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_2/Prod_1ProdTensordot_2/GatherV2_1:output:0Tensordot_2/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/concatConcatV2Tensordot_2/free:output:0Tensordot_2/axes:output:0 Tensordot_2/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_2/stackPackTensordot_2/Prod:output:0Tensordot_2/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot_2/transpose	Transposecheckedandclipped_1:z:0Tensordot_2/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
Tensordot_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/concat_1ConcatV2Tensordot_2/GatherV2:output:0Tensordot_2/Const_2:output:0"Tensordot_2/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_2ReshapeTensordot_2/MatMul:product:0Tensordot_2/concat_1:output:0*
T0*(
_output_shapes
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskZ
Tensordot_3/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_3/freeConst*
_output_shapes
:*
dtype0*
valueB: H
Tensordot_3/ShapeShapeMul:z:0*
T0*
_output_shapes
:[
Tensordot_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/GatherV2GatherV2Tensordot_3/Shape:output:0Tensordot_3/free:output:0"Tensordot_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_3/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/GatherV2_1GatherV2Tensordot_3/Shape:output:0Tensordot_3/axes:output:0$Tensordot_3/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_3/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_3/ProdProdTensordot_3/GatherV2:output:0Tensordot_3/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_3/Prod_1ProdTensordot_3/GatherV2_1:output:0Tensordot_3/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/concatConcatV2Tensordot_3/free:output:0Tensordot_3/axes:output:0 Tensordot_3/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_3/stackPackTensordot_3/Prod:output:0Tensordot_3/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot_3/transpose	TransposeMul:z:0Tensordot_3/concat:output:0*
T0*(
_output_shapes
:�����������
Tensordot_3/ReshapeReshapeTensordot_3/transpose:y:0Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_3/transpose_1	Transposestrided_slice_1:output:0%Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
Tensordot_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/concat_1ConcatV2Tensordot_3/GatherV2:output:0Tensordot_3/Const_2:output:0"Tensordot_3/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_3ReshapeTensordot_3/MatMul:product:0Tensordot_3/concat_1:output:0*
T0*'
_output_shapes
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475584*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475586*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475588* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475590*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475592* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475594*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475596* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475598*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475600* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475602*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475604* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475606*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475608* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475610*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475612*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentity7ResNet_entropy_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^ResNet_entropy_closure/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp^checked
^checked_16^dense_output/kernel/Regularizer/Square/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2`
.ResNet_entropy_closure/StatefulPartitionedCall.ResNet_entropy_closure/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2
checkedchecked2
	checked_1	checked_12n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
__inference_loss_fn_8_58478159U
Ablock_3_layer_0_kernel_regularizer_square_readvariableop_resource:
��
identity��8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAblock_3_layer_0_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*block_3_layer_0/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp
�
�
W__inference___backward_add_4_layer_call_and_return_conditional_losses_58474394_58474411
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������g
gradients/add_grad/ShapeShapegradients_add_grad_shape_inputs*
T0*
_output_shapes
:m
gradients/add_grad/Shape_1Shape#gradients_add_grad_shape_1_inputs_1*
T0*
_output_shapes
:�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/add_grad/Shape:output:0#gradients/add_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/add_grad/SumSumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sum:output:0!gradients/add_grad/Shape:output:0*
T0*(
_output_shapes
:�����������
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*(
_output_shapes
:����������l
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*(
_output_shapes
:����������p

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������*\
forward_function_nameCA__forward_add_4_layer_call_and_return_conditional_losses_58474410:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������
��
�
#__inference__wrapped_model_58473201
input_1b
Osobolev_model_resnet_entropy_closure_layer_input_matmul_readvariableop_resource:	�_
Psobolev_model_resnet_entropy_closure_layer_input_biasadd_readvariableop_resource:	�g
Ssobolev_model_resnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource:
��c
Tsobolev_model_resnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource:	�g
Ssobolev_model_resnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource:
��c
Tsobolev_model_resnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource:	�g
Ssobolev_model_resnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource:
��c
Tsobolev_model_resnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource:	�g
Ssobolev_model_resnet_entropy_closure_block_3_layer_0_matmul_readvariableop_resource:
��c
Tsobolev_model_resnet_entropy_closure_block_3_layer_0_biasadd_readvariableop_resource:	�g
Ssobolev_model_resnet_entropy_closure_block_4_layer_0_matmul_readvariableop_resource:
��c
Tsobolev_model_resnet_entropy_closure_block_4_layer_0_biasadd_readvariableop_resource:	�g
Ssobolev_model_resnet_entropy_closure_block_5_layer_0_matmul_readvariableop_resource:
��c
Tsobolev_model_resnet_entropy_closure_block_5_layer_0_biasadd_readvariableop_resource:	�c
Psobolev_model_resnet_entropy_closure_dense_output_matmul_readvariableop_resource:	�_
Qsobolev_model_resnet_entropy_closure_dense_output_biasadd_readvariableop_resource:
sobolev_model_58473079
sobolev_model_tensordot_1_b
sobolev_model_mul_1_x
identity

identity_1

identity_2��Ksobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp�Jsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp�Ksobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp�Jsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp�Ksobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp�Jsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp�Ksobolev_model/ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp�Jsobolev_model/ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp�Ksobolev_model/ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp�Jsobolev_model/ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp�Ksobolev_model/ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp�Jsobolev_model/ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp�Hsobolev_model/ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp�Gsobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp�Gsobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp�Fsobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp�sobolev_model/checked�sobolev_model/checked_1�
Fsobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOpReadVariableOpOsobolev_model_resnet_entropy_closure_layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
7sobolev_model/ResNet_entropy_closure/layer_input/MatMulMatMulinput_1Nsobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Gsobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOpReadVariableOpPsobolev_model_resnet_entropy_closure_layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8sobolev_model/ResNet_entropy_closure/layer_input/BiasAddBiasAddAsobolev_model/ResNet_entropy_closure/layer_input/MatMul:product:0Osobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
>sobolev_model/ResNet_entropy_closure/tf.math.softplus/SoftplusSoftplusAsobolev_model/ResNet_entropy_closure/layer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Jsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOpReadVariableOpSsobolev_model_resnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
;sobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMulMatMulLsobolev_model/ResNet_entropy_closure/tf.math.softplus/Softplus:activations:0Rsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ksobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOpReadVariableOpTsobolev_model_resnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<sobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAddBiasAddEsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul:product:0Ssobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,sobolev_model/ResNet_entropy_closure/add/addAddV2Asobolev_model/ResNet_entropy_closure/layer_input/BiasAdd:output:0Esobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
@sobolev_model/ResNet_entropy_closure/tf.math.softplus_1/SoftplusSoftplus0sobolev_model/ResNet_entropy_closure/add/add:z:0*
T0*(
_output_shapes
:�����������
Jsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOpReadVariableOpSsobolev_model_resnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
;sobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMulMatMulNsobolev_model/ResNet_entropy_closure/tf.math.softplus_1/Softplus:activations:0Rsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ksobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOpReadVariableOpTsobolev_model_resnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<sobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAddBiasAddEsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul:product:0Ssobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.sobolev_model/ResNet_entropy_closure/add_1/addAddV20sobolev_model/ResNet_entropy_closure/add/add:z:0Esobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
@sobolev_model/ResNet_entropy_closure/tf.math.softplus_2/SoftplusSoftplus2sobolev_model/ResNet_entropy_closure/add_1/add:z:0*
T0*(
_output_shapes
:�����������
Jsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOpReadVariableOpSsobolev_model_resnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
;sobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMulMatMulNsobolev_model/ResNet_entropy_closure/tf.math.softplus_2/Softplus:activations:0Rsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ksobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOpReadVariableOpTsobolev_model_resnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<sobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAddBiasAddEsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul:product:0Ssobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.sobolev_model/ResNet_entropy_closure/add_2/addAddV22sobolev_model/ResNet_entropy_closure/add_1/add:z:0Esobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
@sobolev_model/ResNet_entropy_closure/tf.math.softplus_3/SoftplusSoftplus2sobolev_model/ResNet_entropy_closure/add_2/add:z:0*
T0*(
_output_shapes
:�����������
Jsobolev_model/ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOpReadVariableOpSsobolev_model_resnet_entropy_closure_block_3_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
;sobolev_model/ResNet_entropy_closure/block_3_layer_0/MatMulMatMulNsobolev_model/ResNet_entropy_closure/tf.math.softplus_3/Softplus:activations:0Rsobolev_model/ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ksobolev_model/ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOpReadVariableOpTsobolev_model_resnet_entropy_closure_block_3_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<sobolev_model/ResNet_entropy_closure/block_3_layer_0/BiasAddBiasAddEsobolev_model/ResNet_entropy_closure/block_3_layer_0/MatMul:product:0Ssobolev_model/ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.sobolev_model/ResNet_entropy_closure/add_3/addAddV22sobolev_model/ResNet_entropy_closure/add_2/add:z:0Esobolev_model/ResNet_entropy_closure/block_3_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
@sobolev_model/ResNet_entropy_closure/tf.math.softplus_4/SoftplusSoftplus2sobolev_model/ResNet_entropy_closure/add_3/add:z:0*
T0*(
_output_shapes
:�����������
Jsobolev_model/ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOpReadVariableOpSsobolev_model_resnet_entropy_closure_block_4_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
;sobolev_model/ResNet_entropy_closure/block_4_layer_0/MatMulMatMulNsobolev_model/ResNet_entropy_closure/tf.math.softplus_4/Softplus:activations:0Rsobolev_model/ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ksobolev_model/ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOpReadVariableOpTsobolev_model_resnet_entropy_closure_block_4_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<sobolev_model/ResNet_entropy_closure/block_4_layer_0/BiasAddBiasAddEsobolev_model/ResNet_entropy_closure/block_4_layer_0/MatMul:product:0Ssobolev_model/ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.sobolev_model/ResNet_entropy_closure/add_4/addAddV22sobolev_model/ResNet_entropy_closure/add_3/add:z:0Esobolev_model/ResNet_entropy_closure/block_4_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
@sobolev_model/ResNet_entropy_closure/tf.math.softplus_5/SoftplusSoftplus2sobolev_model/ResNet_entropy_closure/add_4/add:z:0*
T0*(
_output_shapes
:�����������
Jsobolev_model/ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOpReadVariableOpSsobolev_model_resnet_entropy_closure_block_5_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
;sobolev_model/ResNet_entropy_closure/block_5_layer_0/MatMulMatMulNsobolev_model/ResNet_entropy_closure/tf.math.softplus_5/Softplus:activations:0Rsobolev_model/ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ksobolev_model/ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOpReadVariableOpTsobolev_model_resnet_entropy_closure_block_5_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<sobolev_model/ResNet_entropy_closure/block_5_layer_0/BiasAddBiasAddEsobolev_model/ResNet_entropy_closure/block_5_layer_0/MatMul:product:0Ssobolev_model/ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.sobolev_model/ResNet_entropy_closure/add_5/addAddV22sobolev_model/ResNet_entropy_closure/add_4/add:z:0Esobolev_model/ResNet_entropy_closure/block_5_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Gsobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOpReadVariableOpPsobolev_model_resnet_entropy_closure_dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
8sobolev_model/ResNet_entropy_closure/dense_output/MatMulMatMul2sobolev_model/ResNet_entropy_closure/add_5/add:z:0Osobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Hsobolev_model/ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOpReadVariableOpQsobolev_model_resnet_entropy_closure_dense_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
9sobolev_model/ResNet_entropy_closure/dense_output/BiasAddBiasAddBsobolev_model/ResNet_entropy_closure/dense_output/MatMul:product:0Psobolev_model/ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sobolev_model/ones_like/ShapeShapeBsobolev_model/ResNet_entropy_closure/dense_output/BiasAdd:output:0*
T0*
_output_shapes
:b
sobolev_model/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
sobolev_model/ones_likeFill&sobolev_model/ones_like/Shape:output:0&sobolev_model/ones_like/Const:output:0*
T0*'
_output_shapes
:����������
Sgradient_tape/sobolev_model/ResNet_entropy_closure/dense_output/BiasAdd/BiasAddGradBiasAddGrad sobolev_model/ones_like:output:0*
T0*
_output_shapes
:�
Mgradient_tape/sobolev_model/ResNet_entropy_closure/dense_output/MatMul/MatMulMatMul sobolev_model/ones_like:output:0Osobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Ogradient_tape/sobolev_model/ResNet_entropy_closure/dense_output/MatMul/MatMul_1MatMul2sobolev_model/ResNet_entropy_closure/add_5/add:z:0 sobolev_model/ones_like:output:0*
T0*
_output_shapes
:	�*
transpose_a(�
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/ShapeShape2sobolev_model/ResNet_entropy_closure/add_4/add:z:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Shape_1ShapeEsobolev_model/ResNet_entropy_closure/block_5_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/BroadcastGradientArgsBroadcastGradientArgsKgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Shape:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
@gradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/SumSumWgradient_tape/sobolev_model/ResNet_entropy_closure/dense_output/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/ReshapeReshapeIgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Sum:output:0Kgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Shape:output:0*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Sum_1SumWgradient_tape/sobolev_model/ResNet_entropy_closure/dense_output/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Reshape_1ReshapeKgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Sum_1:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Vgradient_tape/sobolev_model/ResNet_entropy_closure/block_5_layer_0/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Pgradient_tape/sobolev_model/ResNet_entropy_closure/block_5_layer_0/MatMul/MatMulMatMulOgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Reshape_1:output:0Rsobolev_model/ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/block_5_layer_0/MatMul/MatMul_1MatMulNsobolev_model/ResNet_entropy_closure/tf.math.softplus_5/Softplus:activations:0Ogradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
Mgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_5/SigmoidSigmoid2sobolev_model/ResNet_entropy_closure/add_4/add:z:0*
T0*(
_output_shapes
:�����������
Igradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_5/mulMulZgradient_tape/sobolev_model/ResNet_entropy_closure/block_5_layer_0/MatMul/MatMul:product:0Qgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_5/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
sobolev_model/AddNAddNMgradient_tape/sobolev_model/ResNet_entropy_closure/add_5/add/Reshape:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_5/mul:z:0*
N*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/ShapeShape2sobolev_model/ResNet_entropy_closure/add_3/add:z:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Shape_1ShapeEsobolev_model/ResNet_entropy_closure/block_4_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/BroadcastGradientArgsBroadcastGradientArgsKgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Shape:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
@gradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/SumSumsobolev_model/AddN:sum:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/ReshapeReshapeIgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Sum:output:0Kgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Shape:output:0*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Sum_1Sumsobolev_model/AddN:sum:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Reshape_1ReshapeKgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Sum_1:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Vgradient_tape/sobolev_model/ResNet_entropy_closure/block_4_layer_0/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Pgradient_tape/sobolev_model/ResNet_entropy_closure/block_4_layer_0/MatMul/MatMulMatMulOgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Reshape_1:output:0Rsobolev_model/ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/block_4_layer_0/MatMul/MatMul_1MatMulNsobolev_model/ResNet_entropy_closure/tf.math.softplus_4/Softplus:activations:0Ogradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
Mgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_4/SigmoidSigmoid2sobolev_model/ResNet_entropy_closure/add_3/add:z:0*
T0*(
_output_shapes
:�����������
Igradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_4/mulMulZgradient_tape/sobolev_model/ResNet_entropy_closure/block_4_layer_0/MatMul/MatMul:product:0Qgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_4/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
sobolev_model/AddN_1AddNMgradient_tape/sobolev_model/ResNet_entropy_closure/add_4/add/Reshape:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_4/mul:z:0*
N*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/ShapeShape2sobolev_model/ResNet_entropy_closure/add_2/add:z:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Shape_1ShapeEsobolev_model/ResNet_entropy_closure/block_3_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/BroadcastGradientArgsBroadcastGradientArgsKgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Shape:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
@gradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/SumSumsobolev_model/AddN_1:sum:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/ReshapeReshapeIgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Sum:output:0Kgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Shape:output:0*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Sum_1Sumsobolev_model/AddN_1:sum:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Reshape_1ReshapeKgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Sum_1:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Vgradient_tape/sobolev_model/ResNet_entropy_closure/block_3_layer_0/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Pgradient_tape/sobolev_model/ResNet_entropy_closure/block_3_layer_0/MatMul/MatMulMatMulOgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Reshape_1:output:0Rsobolev_model/ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/block_3_layer_0/MatMul/MatMul_1MatMulNsobolev_model/ResNet_entropy_closure/tf.math.softplus_3/Softplus:activations:0Ogradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
Mgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_3/SigmoidSigmoid2sobolev_model/ResNet_entropy_closure/add_2/add:z:0*
T0*(
_output_shapes
:�����������
Igradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_3/mulMulZgradient_tape/sobolev_model/ResNet_entropy_closure/block_3_layer_0/MatMul/MatMul:product:0Qgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_3/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
sobolev_model/AddN_2AddNMgradient_tape/sobolev_model/ResNet_entropy_closure/add_3/add/Reshape:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_3/mul:z:0*
N*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/ShapeShape2sobolev_model/ResNet_entropy_closure/add_1/add:z:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Shape_1ShapeEsobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/BroadcastGradientArgsBroadcastGradientArgsKgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Shape:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
@gradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/SumSumsobolev_model/AddN_2:sum:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/ReshapeReshapeIgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Sum:output:0Kgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Shape:output:0*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Sum_1Sumsobolev_model/AddN_2:sum:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Reshape_1ReshapeKgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Sum_1:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Vgradient_tape/sobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Pgradient_tape/sobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMulMatMulOgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Reshape_1:output:0Rsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMul_1MatMulNsobolev_model/ResNet_entropy_closure/tf.math.softplus_2/Softplus:activations:0Ogradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
Mgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_2/SigmoidSigmoid2sobolev_model/ResNet_entropy_closure/add_1/add:z:0*
T0*(
_output_shapes
:�����������
Igradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_2/mulMulZgradient_tape/sobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMul:product:0Qgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_2/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
sobolev_model/AddN_3AddNMgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Reshape:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_2/mul:z:0*
N*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/ShapeShape0sobolev_model/ResNet_entropy_closure/add/add:z:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Shape_1ShapeEsobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/BroadcastGradientArgsBroadcastGradientArgsKgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Shape:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
@gradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/SumSumsobolev_model/AddN_3:sum:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/ReshapeReshapeIgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Sum:output:0Kgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Shape:output:0*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Sum_1Sumsobolev_model/AddN_3:sum:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Reshape_1ReshapeKgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Sum_1:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Vgradient_tape/sobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Pgradient_tape/sobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMulMatMulOgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Reshape_1:output:0Rsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMul_1MatMulNsobolev_model/ResNet_entropy_closure/tf.math.softplus_1/Softplus:activations:0Ogradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
Mgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_1/SigmoidSigmoid0sobolev_model/ResNet_entropy_closure/add/add:z:0*
T0*(
_output_shapes
:�����������
Igradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_1/mulMulZgradient_tape/sobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMul:product:0Qgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_1/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
sobolev_model/AddN_4AddNMgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Reshape:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus_1/mul:z:0*
N*
T0*(
_output_shapes
:�����������
@gradient_tape/sobolev_model/ResNet_entropy_closure/add/add/ShapeShapeAsobolev_model/ResNet_entropy_closure/layer_input/BiasAdd:output:0*
T0*
_output_shapes
:�
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Shape_1ShapeEsobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd:output:0*
T0*
_output_shapes
:�
Pgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/BroadcastGradientArgsBroadcastGradientArgsIgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Shape:output:0Kgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
>gradient_tape/sobolev_model/ResNet_entropy_closure/add/add/SumSumsobolev_model/AddN_4:sum:0Ugradient_tape/sobolev_model/ResNet_entropy_closure/add/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/ReshapeReshapeGgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Sum:output:0Igradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Shape:output:0*
T0*(
_output_shapes
:�����������
@gradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Sum_1Sumsobolev_model/AddN_4:sum:0Ugradient_tape/sobolev_model/ResNet_entropy_closure/add/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Reshape_1ReshapeIgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Sum_1:output:0Kgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Vgradient_tape/sobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/BiasAddGradBiasAddGradMgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Pgradient_tape/sobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMulMatMulMgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Reshape_1:output:0Rsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMul_1MatMulLsobolev_model/ResNet_entropy_closure/tf.math.softplus/Softplus:activations:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
Kgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus/SigmoidSigmoidAsobolev_model/ResNet_entropy_closure/layer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Ggradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus/mulMulZgradient_tape/sobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMul:product:0Ogradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
sobolev_model/AddN_5AddNKgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Reshape:output:0Kgradient_tape/sobolev_model/ResNet_entropy_closure/tf.math.softplus/mul:z:0*
N*
T0*(
_output_shapes
:�����������
Rgradient_tape/sobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/BiasAddGradBiasAddGradsobolev_model/AddN_5:sum:0*
T0*
_output_shapes	
:��
Lgradient_tape/sobolev_model/ResNet_entropy_closure/layer_input/MatMul/MatMulMatMulsobolev_model/AddN_5:sum:0Nsobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Ngradient_tape/sobolev_model/ResNet_entropy_closure/layer_input/MatMul/MatMul_1MatMulinput_1sobolev_model/AddN_5:sum:0*
T0*
_output_shapes
:	�*
transpose_a(�
sobolev_model/CastCastVgradient_tape/sobolev_model/ResNet_entropy_closure/layer_input/MatMul/MatMul:product:0*

DstT0*

SrcT0*'
_output_shapes
:����������
sobolev_model/checkedCheckNumericssobolev_model/Cast:y:0*
T0*'
_output_shapes
:���������*r
messagegeinput tensor checking error at alpha = Tensor("sobolev_model/Cast:0", shape=(None, 5), dtype=float64)r
)sobolev_model/checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
'sobolev_model/checkedandclipped/MinimumMinimumsobolev_model/checked:output:02sobolev_model/checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������j
!sobolev_model/checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
sobolev_model/checkedandclippedMaximum+sobolev_model/checkedandclipped/Minimum:z:0*sobolev_model/checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������r
!sobolev_model/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#sobolev_model/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#sobolev_model/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
sobolev_model/strided_sliceStridedSlicesobolev_model_58473079*sobolev_model/strided_slice/stack:output:0,sobolev_model/strided_slice/stack_1:output:0,sobolev_model/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskf
sobolev_model/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:f
sobolev_model/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: p
sobolev_model/Tensordot/ShapeShape#sobolev_model/checkedandclipped:z:0*
T0*
_output_shapes
:g
%sobolev_model/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 sobolev_model/Tensordot/GatherV2GatherV2&sobolev_model/Tensordot/Shape:output:0%sobolev_model/Tensordot/free:output:0.sobolev_model/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'sobolev_model/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"sobolev_model/Tensordot/GatherV2_1GatherV2&sobolev_model/Tensordot/Shape:output:0%sobolev_model/Tensordot/axes:output:00sobolev_model/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
sobolev_model/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
sobolev_model/Tensordot/ProdProd)sobolev_model/Tensordot/GatherV2:output:0&sobolev_model/Tensordot/Const:output:0*
T0*
_output_shapes
: i
sobolev_model/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
sobolev_model/Tensordot/Prod_1Prod+sobolev_model/Tensordot/GatherV2_1:output:0(sobolev_model/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#sobolev_model/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
sobolev_model/Tensordot/concatConcatV2%sobolev_model/Tensordot/free:output:0%sobolev_model/Tensordot/axes:output:0,sobolev_model/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
sobolev_model/Tensordot/stackPack%sobolev_model/Tensordot/Prod:output:0'sobolev_model/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
!sobolev_model/Tensordot/transpose	Transpose#sobolev_model/checkedandclipped:z:0'sobolev_model/Tensordot/concat:output:0*
T0*'
_output_shapes
:����������
sobolev_model/Tensordot/ReshapeReshape%sobolev_model/Tensordot/transpose:y:0&sobolev_model/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
sobolev_model/Tensordot/MatMulMatMul(sobolev_model/Tensordot/Reshape:output:0$sobolev_model/strided_slice:output:0*
T0*(
_output_shapes
:����������j
sobolev_model/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�g
%sobolev_model/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 sobolev_model/Tensordot/concat_1ConcatV2)sobolev_model/Tensordot/GatherV2:output:0(sobolev_model/Tensordot/Const_2:output:0.sobolev_model/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sobolev_model/TensordotReshape(sobolev_model/Tensordot/MatMul:product:0)sobolev_model/Tensordot/concat_1:output:0*
T0*(
_output_shapes
:����������m
sobolev_model/ExpExp sobolev_model/Tensordot:output:0*
T0*(
_output_shapes
:����������h
sobolev_model/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:h
sobolev_model/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB: d
sobolev_model/Tensordot_1/ShapeShapesobolev_model/Exp:y:0*
T0*
_output_shapes
:i
'sobolev_model/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"sobolev_model/Tensordot_1/GatherV2GatherV2(sobolev_model/Tensordot_1/Shape:output:0'sobolev_model/Tensordot_1/free:output:00sobolev_model/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)sobolev_model/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$sobolev_model/Tensordot_1/GatherV2_1GatherV2(sobolev_model/Tensordot_1/Shape:output:0'sobolev_model/Tensordot_1/axes:output:02sobolev_model/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
sobolev_model/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
sobolev_model/Tensordot_1/ProdProd+sobolev_model/Tensordot_1/GatherV2:output:0(sobolev_model/Tensordot_1/Const:output:0*
T0*
_output_shapes
: k
!sobolev_model/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
 sobolev_model/Tensordot_1/Prod_1Prod-sobolev_model/Tensordot_1/GatherV2_1:output:0*sobolev_model/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: g
%sobolev_model/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 sobolev_model/Tensordot_1/concatConcatV2'sobolev_model/Tensordot_1/free:output:0'sobolev_model/Tensordot_1/axes:output:0.sobolev_model/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
sobolev_model/Tensordot_1/stackPack'sobolev_model/Tensordot_1/Prod:output:0)sobolev_model/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
#sobolev_model/Tensordot_1/transpose	Transposesobolev_model/Exp:y:0)sobolev_model/Tensordot_1/concat:output:0*
T0*(
_output_shapes
:�����������
!sobolev_model/Tensordot_1/ReshapeReshape'sobolev_model/Tensordot_1/transpose:y:0(sobolev_model/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:������������������{
*sobolev_model/Tensordot_1/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
%sobolev_model/Tensordot_1/transpose_1	Transposesobolev_model_tensordot_1_b3sobolev_model/Tensordot_1/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
 sobolev_model/Tensordot_1/MatMulMatMul*sobolev_model/Tensordot_1/Reshape:output:0)sobolev_model/Tensordot_1/transpose_1:y:0*
T0*'
_output_shapes
:���������k
!sobolev_model/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:i
'sobolev_model/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"sobolev_model/Tensordot_1/concat_1ConcatV2+sobolev_model/Tensordot_1/GatherV2:output:0*sobolev_model/Tensordot_1/Const_2:output:00sobolev_model/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sobolev_model/Tensordot_1Reshape*sobolev_model/Tensordot_1/MatMul:product:0+sobolev_model/Tensordot_1/concat_1:output:0*
T0*'
_output_shapes
:���������n
sobolev_model/LogLog"sobolev_model/Tensordot_1:output:0*
T0*'
_output_shapes
:���������a
sobolev_model/NegNegsobolev_model/Log:y:0*
T0*'
_output_shapes
:���������[
sobolev_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
sobolev_model/concatConcatV2sobolev_model/Neg:y:0sobolev_model/Cast:y:0"sobolev_model/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
sobolev_model/checked_1CheckNumericssobolev_model/concat:output:0^sobolev_model/checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errort
+sobolev_model/checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
)sobolev_model/checkedandclipped_1/MinimumMinimum sobolev_model/checked_1:output:04sobolev_model/checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������l
#sobolev_model/checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
!sobolev_model/checkedandclipped_1Maximum-sobolev_model/checkedandclipped_1/Minimum:z:0,sobolev_model/checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������h
sobolev_model/Tensordot_2/axesConst*
_output_shapes
:*
dtype0*
valueB:h
sobolev_model/Tensordot_2/freeConst*
_output_shapes
:*
dtype0*
valueB: t
sobolev_model/Tensordot_2/ShapeShape%sobolev_model/checkedandclipped_1:z:0*
T0*
_output_shapes
:i
'sobolev_model/Tensordot_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"sobolev_model/Tensordot_2/GatherV2GatherV2(sobolev_model/Tensordot_2/Shape:output:0'sobolev_model/Tensordot_2/free:output:00sobolev_model/Tensordot_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)sobolev_model/Tensordot_2/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$sobolev_model/Tensordot_2/GatherV2_1GatherV2(sobolev_model/Tensordot_2/Shape:output:0'sobolev_model/Tensordot_2/axes:output:02sobolev_model/Tensordot_2/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
sobolev_model/Tensordot_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
sobolev_model/Tensordot_2/ProdProd+sobolev_model/Tensordot_2/GatherV2:output:0(sobolev_model/Tensordot_2/Const:output:0*
T0*
_output_shapes
: k
!sobolev_model/Tensordot_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
 sobolev_model/Tensordot_2/Prod_1Prod-sobolev_model/Tensordot_2/GatherV2_1:output:0*sobolev_model/Tensordot_2/Const_1:output:0*
T0*
_output_shapes
: g
%sobolev_model/Tensordot_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 sobolev_model/Tensordot_2/concatConcatV2'sobolev_model/Tensordot_2/free:output:0'sobolev_model/Tensordot_2/axes:output:0.sobolev_model/Tensordot_2/concat/axis:output:0*
N*
T0*
_output_shapes
:�
sobolev_model/Tensordot_2/stackPack'sobolev_model/Tensordot_2/Prod:output:0)sobolev_model/Tensordot_2/Prod_1:output:0*
N*
T0*
_output_shapes
:�
#sobolev_model/Tensordot_2/transpose	Transpose%sobolev_model/checkedandclipped_1:z:0)sobolev_model/Tensordot_2/concat:output:0*
T0*'
_output_shapes
:����������
!sobolev_model/Tensordot_2/ReshapeReshape'sobolev_model/Tensordot_2/transpose:y:0(sobolev_model/Tensordot_2/stack:output:0*
T0*0
_output_shapes
:�������������������
 sobolev_model/Tensordot_2/MatMulMatMul*sobolev_model/Tensordot_2/Reshape:output:0sobolev_model_58473079*
T0*(
_output_shapes
:����������l
!sobolev_model/Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�i
'sobolev_model/Tensordot_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"sobolev_model/Tensordot_2/concat_1ConcatV2+sobolev_model/Tensordot_2/GatherV2:output:0*sobolev_model/Tensordot_2/Const_2:output:00sobolev_model/Tensordot_2/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sobolev_model/Tensordot_2Reshape*sobolev_model/Tensordot_2/MatMul:product:0+sobolev_model/Tensordot_2/concat_1:output:0*
T0*(
_output_shapes
:����������q
sobolev_model/Exp_1Exp"sobolev_model/Tensordot_2:output:0*
T0*(
_output_shapes
:�����������
sobolev_model/MulMulsobolev_model/Exp_1:y:0sobolev_model_tensordot_1_b*
T0*(
_output_shapes
:����������t
#sobolev_model/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%sobolev_model/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        v
%sobolev_model/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
sobolev_model/strided_slice_1StridedSlicesobolev_model_58473079,sobolev_model/strided_slice_1/stack:output:0.sobolev_model/strided_slice_1/stack_1:output:0.sobolev_model/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskh
sobolev_model/Tensordot_3/axesConst*
_output_shapes
:*
dtype0*
valueB:h
sobolev_model/Tensordot_3/freeConst*
_output_shapes
:*
dtype0*
valueB: d
sobolev_model/Tensordot_3/ShapeShapesobolev_model/Mul:z:0*
T0*
_output_shapes
:i
'sobolev_model/Tensordot_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"sobolev_model/Tensordot_3/GatherV2GatherV2(sobolev_model/Tensordot_3/Shape:output:0'sobolev_model/Tensordot_3/free:output:00sobolev_model/Tensordot_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)sobolev_model/Tensordot_3/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$sobolev_model/Tensordot_3/GatherV2_1GatherV2(sobolev_model/Tensordot_3/Shape:output:0'sobolev_model/Tensordot_3/axes:output:02sobolev_model/Tensordot_3/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
sobolev_model/Tensordot_3/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
sobolev_model/Tensordot_3/ProdProd+sobolev_model/Tensordot_3/GatherV2:output:0(sobolev_model/Tensordot_3/Const:output:0*
T0*
_output_shapes
: k
!sobolev_model/Tensordot_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
 sobolev_model/Tensordot_3/Prod_1Prod-sobolev_model/Tensordot_3/GatherV2_1:output:0*sobolev_model/Tensordot_3/Const_1:output:0*
T0*
_output_shapes
: g
%sobolev_model/Tensordot_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 sobolev_model/Tensordot_3/concatConcatV2'sobolev_model/Tensordot_3/free:output:0'sobolev_model/Tensordot_3/axes:output:0.sobolev_model/Tensordot_3/concat/axis:output:0*
N*
T0*
_output_shapes
:�
sobolev_model/Tensordot_3/stackPack'sobolev_model/Tensordot_3/Prod:output:0)sobolev_model/Tensordot_3/Prod_1:output:0*
N*
T0*
_output_shapes
:�
#sobolev_model/Tensordot_3/transpose	Transposesobolev_model/Mul:z:0)sobolev_model/Tensordot_3/concat:output:0*
T0*(
_output_shapes
:�����������
!sobolev_model/Tensordot_3/ReshapeReshape'sobolev_model/Tensordot_3/transpose:y:0(sobolev_model/Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������{
*sobolev_model/Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
%sobolev_model/Tensordot_3/transpose_1	Transpose&sobolev_model/strided_slice_1:output:03sobolev_model/Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
 sobolev_model/Tensordot_3/MatMulMatMul*sobolev_model/Tensordot_3/Reshape:output:0)sobolev_model/Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������k
!sobolev_model/Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:i
'sobolev_model/Tensordot_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"sobolev_model/Tensordot_3/concat_1ConcatV2+sobolev_model/Tensordot_3/GatherV2:output:0*sobolev_model/Tensordot_3/Const_2:output:00sobolev_model/Tensordot_3/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sobolev_model/Tensordot_3Reshape*sobolev_model/Tensordot_3/MatMul:product:0+sobolev_model/Tensordot_3/concat_1:output:0*
T0*'
_output_shapes
:����������
sobolev_model/Mul_1Mulsobolev_model_mul_1_xsobolev_model/concat:output:0*
T0*'
_output_shapes
:����������
sobolev_model/addAddV2"sobolev_model/Tensordot_3:output:0sobolev_model/Mul_1:z:0*
T0*'
_output_shapes
:���������t
#sobolev_model/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       v
%sobolev_model/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        v
%sobolev_model/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
sobolev_model/strided_slice_2StridedSlicesobolev_model/add:z:0,sobolev_model/strided_slice_2/stack:output:0.sobolev_model/strided_slice_2/stack_1:output:0.sobolev_model/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
IdentityIdentityBsobolev_model/ResNet_entropy_closure/dense_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������

Identity_1IdentityVgradient_tape/sobolev_model/ResNet_entropy_closure/layer_input/MatMul/MatMul:product:0^NoOp*
T0*'
_output_shapes
:���������w

Identity_2Identity&sobolev_model/strided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOpL^sobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOpK^sobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOpL^sobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOpK^sobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOpL^sobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOpK^sobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOpL^sobolev_model/ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOpK^sobolev_model/ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOpL^sobolev_model/ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOpK^sobolev_model/ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOpL^sobolev_model/ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOpK^sobolev_model/ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOpI^sobolev_model/ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOpH^sobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOpH^sobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOpG^sobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp^sobolev_model/checked^sobolev_model/checked_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2�
Ksobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOpKsobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp2�
Jsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOpJsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp2�
Ksobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOpKsobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp2�
Jsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOpJsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp2�
Ksobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOpKsobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp2�
Jsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOpJsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp2�
Ksobolev_model/ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOpKsobolev_model/ResNet_entropy_closure/block_3_layer_0/BiasAdd/ReadVariableOp2�
Jsobolev_model/ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOpJsobolev_model/ResNet_entropy_closure/block_3_layer_0/MatMul/ReadVariableOp2�
Ksobolev_model/ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOpKsobolev_model/ResNet_entropy_closure/block_4_layer_0/BiasAdd/ReadVariableOp2�
Jsobolev_model/ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOpJsobolev_model/ResNet_entropy_closure/block_4_layer_0/MatMul/ReadVariableOp2�
Ksobolev_model/ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOpKsobolev_model/ResNet_entropy_closure/block_5_layer_0/BiasAdd/ReadVariableOp2�
Jsobolev_model/ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOpJsobolev_model/ResNet_entropy_closure/block_5_layer_0/MatMul/ReadVariableOp2�
Hsobolev_model/ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOpHsobolev_model/ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp2�
Gsobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOpGsobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp2�
Gsobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOpGsobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp2�
Fsobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOpFsobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp2.
sobolev_model/checkedsobolev_model/checked22
sobolev_model/checked_1sobolev_model/checked_1:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
M__inference_block_0_layer_0_layer_call_and_return_conditional_losses_58473259

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58473571

inputs'
layer_input_58473231:	�#
layer_input_58473233:	�,
block_0_layer_0_58473260:
��'
block_0_layer_0_58473262:	�,
block_1_layer_0_58473297:
��'
block_1_layer_0_58473299:	�,
block_2_layer_0_58473334:
��'
block_2_layer_0_58473336:	�,
block_3_layer_0_58473371:
��'
block_3_layer_0_58473373:	�,
block_4_layer_0_58473408:
��'
block_4_layer_0_58473410:	�,
block_5_layer_0_58473445:
��'
block_5_layer_0_58473447:	�(
dense_output_58473475:	�#
dense_output_58473477:
identity��'block_0_layer_0/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_1_layer_0/StatefulPartitionedCall�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_2_layer_0/StatefulPartitionedCall�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_3_layer_0/StatefulPartitionedCall�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_4_layer_0/StatefulPartitionedCall�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_5_layer_0/StatefulPartitionedCall�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�$dense_output/StatefulPartitionedCall�5dense_output/kernel/Regularizer/Square/ReadVariableOp�#layer_input/StatefulPartitionedCall�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
#layer_input/StatefulPartitionedCallStatefulPartitionedCallinputslayer_input_58473231layer_input_58473233*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_layer_input_layer_call_and_return_conditional_losses_58473230�
tf.math.softplus/SoftplusSoftplus,layer_input/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_0_layer_0/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0block_0_layer_0_58473260block_0_layer_0_58473262*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_0_layer_0_layer_call_and_return_conditional_losses_58473259�
add/PartitionedCallPartitionedCall,layer_input/StatefulPartitionedCall:output:00block_0_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_add_layer_call_and_return_conditional_losses_58473271x
tf.math.softplus_1/SoftplusSoftplusadd/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_1_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0block_1_layer_0_58473297block_1_layer_0_58473299*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_1_layer_0_layer_call_and_return_conditional_losses_58473296�
add_1/PartitionedCallPartitionedCalladd/PartitionedCall:output:00block_1_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_1_layer_call_and_return_conditional_losses_58473308z
tf.math.softplus_2/SoftplusSoftplusadd_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_2_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0block_2_layer_0_58473334block_2_layer_0_58473336*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_2_layer_0_layer_call_and_return_conditional_losses_58473333�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:00block_2_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_2_layer_call_and_return_conditional_losses_58473345z
tf.math.softplus_3/SoftplusSoftplusadd_2/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_3_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_3/Softplus:activations:0block_3_layer_0_58473371block_3_layer_0_58473373*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_3_layer_0_layer_call_and_return_conditional_losses_58473370�
add_3/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:00block_3_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_3_layer_call_and_return_conditional_losses_58473382z
tf.math.softplus_4/SoftplusSoftplusadd_3/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_4_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_4/Softplus:activations:0block_4_layer_0_58473408block_4_layer_0_58473410*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_4_layer_0_layer_call_and_return_conditional_losses_58473407�
add_4/PartitionedCallPartitionedCalladd_3/PartitionedCall:output:00block_4_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_4_layer_call_and_return_conditional_losses_58473419z
tf.math.softplus_5/SoftplusSoftplusadd_4/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_5_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_5/Softplus:activations:0block_5_layer_0_58473445block_5_layer_0_58473447*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_5_layer_0_layer_call_and_return_conditional_losses_58473444�
add_5/PartitionedCallPartitionedCalladd_4/PartitionedCall:output:00block_5_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_5_layer_call_and_return_conditional_losses_58473456�
$dense_output/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0dense_output_58473475dense_output_58473477*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_dense_output_layer_call_and_return_conditional_losses_58473474�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_58473231*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_58473233*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_58473260* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_58473262*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_58473297* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_58473299*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_58473334* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_58473336*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_3_layer_0_58473371* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_3_layer_0_58473373*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_4_layer_0_58473408* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_4_layer_0_58473410*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_5_layer_0_58473445* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_5_layer_0_58473447*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_output_58473475*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: |
IdentityIdentity-dense_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp(^block_0_layer_0/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_1_layer_0/StatefulPartitionedCall7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_2_layer_0/StatefulPartitionedCall7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_3_layer_0/StatefulPartitionedCall7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_4_layer_0/StatefulPartitionedCall7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_5_layer_0/StatefulPartitionedCall7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp%^dense_output/StatefulPartitionedCall6^dense_output/kernel/Regularizer/Square/ReadVariableOp$^layer_input/StatefulPartitionedCall3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2R
'block_0_layer_0/StatefulPartitionedCall'block_0_layer_0/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_1_layer_0/StatefulPartitionedCall'block_1_layer_0/StatefulPartitionedCall2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_2_layer_0/StatefulPartitionedCall'block_2_layer_0/StatefulPartitionedCall2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_3_layer_0/StatefulPartitionedCall'block_3_layer_0/StatefulPartitionedCall2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_4_layer_0/StatefulPartitionedCall'block_4_layer_0/StatefulPartitionedCall2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_5_layer_0/StatefulPartitionedCall'block_5_layer_0/StatefulPartitionedCall2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2J
#layer_input/StatefulPartitionedCall#layer_input/StatefulPartitionedCall2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_6_58478137U
Ablock_2_layer_0_kernel_regularizer_square_readvariableop_resource:
��
identity��8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAblock_2_layer_0_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*block_2_layer_0/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp
�
o
C__inference_add_2_layer_call_and_return_conditional_losses_58477864
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
m
C__inference_add_4_layer_call_and_return_conditional_losses_58473419

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_58478071P
=layer_input_kernel_regularizer_square_readvariableop_resource:	�
identity��4layer_input/kernel/Regularizer/Square/ReadVariableOp�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=layer_input_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentity&layer_input/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: }
NoOpNoOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp
�
�
^__inference___backward_dense_output_layer_call_and_return_conditional_losses_58474324_58474337
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������t
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes
:�
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*(
_output_shapes
:����������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes
:	�*
transpose_a(o
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*(
_output_shapes
:����������j

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes
:	�h

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:	�:����������*c
forward_function_nameJH__forward_dense_output_layer_call_and_return_conditional_losses_58474336:- )
'
_output_shapes
:���������:%!

_output_shapes
:	�:.*
(
_output_shapes
:����������
�
�
M__inference_block_1_layer_0_layer_call_and_return_conditional_losses_58473296

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
K__forward_block_3_layer_0_layer_call_and_return_conditional_losses_58474479
inputs_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *}
backward_function_nameca__inference___backward_block_3_layer_0_layer_call_and_return_conditional_losses_58474467_5847448020
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
M__inference_block_3_layer_0_layer_call_and_return_conditional_losses_58473370

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
T
(__inference_add_4_layer_call_fn_58477968
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_4_layer_call_and_return_conditional_losses_58473419a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
m
C__inference_add_1_layer_call_and_return_conditional_losses_58473308

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
A__forward_add_1_layer_call_and_return_conditional_losses_58474557
inputs_0

inputs_1_0
identity

inputs
inputs_1U
addAddV2inputs_0
inputs_1_0*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������*s
backward_function_nameYW__inference___backward_add_1_layer_call_and_return_conditional_losses_58474541_58474558:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
0__inference_sobolev_model_layer_call_fn_58476389
x
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:

unknown_15

unknown_16

unknown_17
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58474948o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:���������

_user_specified_namex:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
o
C__inference_add_5_layer_call_and_return_conditional_losses_58478029
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
K__forward_block_5_layer_0_layer_call_and_return_conditional_losses_58474381
inputs_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *}
backward_function_nameca__inference___backward_block_5_layer_0_layer_call_and_return_conditional_losses_58474369_5847438220
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474131
input_1'
layer_input_58473988:	�#
layer_input_58473990:	�,
block_0_layer_0_58473994:
��'
block_0_layer_0_58473996:	�,
block_1_layer_0_58474001:
��'
block_1_layer_0_58474003:	�,
block_2_layer_0_58474008:
��'
block_2_layer_0_58474010:	�,
block_3_layer_0_58474015:
��'
block_3_layer_0_58474017:	�,
block_4_layer_0_58474022:
��'
block_4_layer_0_58474024:	�,
block_5_layer_0_58474029:
��'
block_5_layer_0_58474031:	�(
dense_output_58474035:	�#
dense_output_58474037:
identity��'block_0_layer_0/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_1_layer_0/StatefulPartitionedCall�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_2_layer_0/StatefulPartitionedCall�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_3_layer_0/StatefulPartitionedCall�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_4_layer_0/StatefulPartitionedCall�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_5_layer_0/StatefulPartitionedCall�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�$dense_output/StatefulPartitionedCall�5dense_output/kernel/Regularizer/Square/ReadVariableOp�#layer_input/StatefulPartitionedCall�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
#layer_input/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_input_58473988layer_input_58473990*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_layer_input_layer_call_and_return_conditional_losses_58473230�
tf.math.softplus/SoftplusSoftplus,layer_input/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_0_layer_0/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0block_0_layer_0_58473994block_0_layer_0_58473996*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_0_layer_0_layer_call_and_return_conditional_losses_58473259�
add/PartitionedCallPartitionedCall,layer_input/StatefulPartitionedCall:output:00block_0_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_add_layer_call_and_return_conditional_losses_58473271x
tf.math.softplus_1/SoftplusSoftplusadd/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_1_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0block_1_layer_0_58474001block_1_layer_0_58474003*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_1_layer_0_layer_call_and_return_conditional_losses_58473296�
add_1/PartitionedCallPartitionedCalladd/PartitionedCall:output:00block_1_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_1_layer_call_and_return_conditional_losses_58473308z
tf.math.softplus_2/SoftplusSoftplusadd_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_2_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0block_2_layer_0_58474008block_2_layer_0_58474010*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_2_layer_0_layer_call_and_return_conditional_losses_58473333�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:00block_2_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_2_layer_call_and_return_conditional_losses_58473345z
tf.math.softplus_3/SoftplusSoftplusadd_2/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_3_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_3/Softplus:activations:0block_3_layer_0_58474015block_3_layer_0_58474017*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_3_layer_0_layer_call_and_return_conditional_losses_58473370�
add_3/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:00block_3_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_3_layer_call_and_return_conditional_losses_58473382z
tf.math.softplus_4/SoftplusSoftplusadd_3/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_4_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_4/Softplus:activations:0block_4_layer_0_58474022block_4_layer_0_58474024*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_4_layer_0_layer_call_and_return_conditional_losses_58473407�
add_4/PartitionedCallPartitionedCalladd_3/PartitionedCall:output:00block_4_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_4_layer_call_and_return_conditional_losses_58473419z
tf.math.softplus_5/SoftplusSoftplusadd_4/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_5_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_5/Softplus:activations:0block_5_layer_0_58474029block_5_layer_0_58474031*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_5_layer_0_layer_call_and_return_conditional_losses_58473444�
add_5/PartitionedCallPartitionedCalladd_4/PartitionedCall:output:00block_5_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_5_layer_call_and_return_conditional_losses_58473456�
$dense_output/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0dense_output_58474035dense_output_58474037*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_dense_output_layer_call_and_return_conditional_losses_58473474�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_58473988*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_58473990*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_58473994* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_58473996*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_58474001* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_58474003*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_58474008* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_58474010*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_3_layer_0_58474015* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_3_layer_0_58474017*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_4_layer_0_58474022* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_4_layer_0_58474024*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_5_layer_0_58474029* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_5_layer_0_58474031*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_output_58474035*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: |
IdentityIdentity-dense_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp(^block_0_layer_0/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_1_layer_0/StatefulPartitionedCall7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_2_layer_0/StatefulPartitionedCall7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_3_layer_0/StatefulPartitionedCall7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_4_layer_0/StatefulPartitionedCall7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_5_layer_0/StatefulPartitionedCall7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp%^dense_output/StatefulPartitionedCall6^dense_output/kernel/Regularizer/Square/ReadVariableOp$^layer_input/StatefulPartitionedCall3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2R
'block_0_layer_0/StatefulPartitionedCall'block_0_layer_0/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_1_layer_0/StatefulPartitionedCall'block_1_layer_0/StatefulPartitionedCall2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_2_layer_0/StatefulPartitionedCall'block_2_layer_0/StatefulPartitionedCall2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_3_layer_0/StatefulPartitionedCall'block_3_layer_0/StatefulPartitionedCall2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_4_layer_0/StatefulPartitionedCall'block_4_layer_0/StatefulPartitionedCall2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_5_layer_0/StatefulPartitionedCall'block_5_layer_0/StatefulPartitionedCall2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2J
#layer_input/StatefulPartitionedCall#layer_input/StatefulPartitionedCall2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
2__inference_block_2_layer_0_layer_call_fn_58477830

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_2_layer_0_layer_call_and_return_conditional_losses_58473333p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
2__inference_block_1_layer_0_layer_call_fn_58477775

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_1_layer_0_layer_call_and_return_conditional_losses_58473296p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
0__inference_sobolev_model_layer_call_fn_58476436
x
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:

unknown_15

unknown_16

unknown_17
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58475489o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:���������

_user_specified_namex:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
a__inference___backward_block_5_layer_0_layer_call_and_return_conditional_losses_58474369_58474382
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������u
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes	
:��
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*(
_output_shapes
:����������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0* 
_output_shapes
:
��*
transpose_a(o
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*(
_output_shapes
:����������k

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0* 
_output_shapes
:
��i

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������:
��:����������*f
forward_function_nameMK__forward_block_5_layer_0_layer_call_and_return_conditional_losses_58474381:. *
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������
�
m
A__inference_add_layer_call_and_return_conditional_losses_58477754
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
m
C__inference_add_3_layer_call_and_return_conditional_losses_58473382

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
R__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474677

inputs'
layer_input_58473231:	�#
layer_input_58473233:	�,
block_0_layer_0_58473260:
��'
block_0_layer_0_58473262:	�,
block_1_layer_0_58473297:
��'
block_1_layer_0_58473299:	�,
block_2_layer_0_58473334:
��'
block_2_layer_0_58473336:	�,
block_3_layer_0_58473371:
��'
block_3_layer_0_58473373:	�,
block_4_layer_0_58473408:
��'
block_4_layer_0_58473410:	�,
block_5_layer_0_58473445:
��'
block_5_layer_0_58473447:	�(
dense_output_58473475:	�#
dense_output_58473477:
identity(
$dense_output_statefulpartitionedcall*
&dense_output_statefulpartitionedcall_0
add_5_partitionedcall
add_5_partitionedcall_0+
'block_5_layer_0_statefulpartitionedcall-
)block_5_layer_0_statefulpartitionedcall_0
add_4_partitionedcall
add_4_partitionedcall_0
add_4_partitionedcall_1+
'block_4_layer_0_statefulpartitionedcall-
)block_4_layer_0_statefulpartitionedcall_0
add_3_partitionedcall
add_3_partitionedcall_0
add_3_partitionedcall_1+
'block_3_layer_0_statefulpartitionedcall-
)block_3_layer_0_statefulpartitionedcall_0
add_2_partitionedcall
add_2_partitionedcall_0
add_2_partitionedcall_1+
'block_2_layer_0_statefulpartitionedcall-
)block_2_layer_0_statefulpartitionedcall_0
add_1_partitionedcall
add_1_partitionedcall_0
add_1_partitionedcall_1+
'block_1_layer_0_statefulpartitionedcall-
)block_1_layer_0_statefulpartitionedcall_0
add_partitionedcall
add_partitionedcall_0
add_partitionedcall_1+
'block_0_layer_0_statefulpartitionedcall-
)block_0_layer_0_statefulpartitionedcall_0'
#layer_input_statefulpartitionedcall)
%layer_input_statefulpartitionedcall_0)
%layer_input_statefulpartitionedcall_1��'block_0_layer_0/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_1_layer_0/StatefulPartitionedCall�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_2_layer_0/StatefulPartitionedCall�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_3_layer_0/StatefulPartitionedCall�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_4_layer_0/StatefulPartitionedCall�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_5_layer_0/StatefulPartitionedCall�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�$dense_output/StatefulPartitionedCall�5dense_output/kernel/Regularizer/Square/ReadVariableOp�#layer_input/StatefulPartitionedCall�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
#layer_input/StatefulPartitionedCallStatefulPartitionedCallinputslayer_input_58473231layer_input_58473233*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:����������:	�:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__forward_layer_input_layer_call_and_return_conditional_losses_58474651�
tf.math.softplus/SoftplusSoftplus,layer_input/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_0_layer_0/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0block_0_layer_0_58473260block_0_layer_0_58473262*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_block_0_layer_0_layer_call_and_return_conditional_losses_58474626�
add/PartitionedCallPartitionedCall,layer_input/StatefulPartitionedCall:output:00block_0_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__forward_add_layer_call_and_return_conditional_losses_58474606x
tf.math.softplus_1/SoftplusSoftplusadd/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_1_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0block_1_layer_0_58473297block_1_layer_0_58473299*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_block_1_layer_0_layer_call_and_return_conditional_losses_58474577�
add_1/PartitionedCallPartitionedCalladd/PartitionedCall:output:00block_1_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__forward_add_1_layer_call_and_return_conditional_losses_58474557z
tf.math.softplus_2/SoftplusSoftplusadd_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_2_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0block_2_layer_0_58473334block_2_layer_0_58473336*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_block_2_layer_0_layer_call_and_return_conditional_losses_58474528�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:00block_2_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__forward_add_2_layer_call_and_return_conditional_losses_58474508z
tf.math.softplus_3/SoftplusSoftplusadd_2/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_3_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_3/Softplus:activations:0block_3_layer_0_58473371block_3_layer_0_58473373*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_block_3_layer_0_layer_call_and_return_conditional_losses_58474479�
add_3/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:00block_3_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__forward_add_3_layer_call_and_return_conditional_losses_58474459z
tf.math.softplus_4/SoftplusSoftplusadd_3/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_4_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_4/Softplus:activations:0block_4_layer_0_58473408block_4_layer_0_58473410*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_block_4_layer_0_layer_call_and_return_conditional_losses_58474430�
add_4/PartitionedCallPartitionedCalladd_3/PartitionedCall:output:00block_4_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__forward_add_4_layer_call_and_return_conditional_losses_58474410z
tf.math.softplus_5/SoftplusSoftplusadd_4/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_5_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_5/Softplus:activations:0block_5_layer_0_58473445block_5_layer_0_58473447*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_block_5_layer_0_layer_call_and_return_conditional_losses_58474381�
add_5/PartitionedCallPartitionedCalladd_4/PartitionedCall:output:00block_5_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__forward_add_5_layer_call_and_return_conditional_losses_58474361�
$dense_output/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0dense_output_58473475dense_output_58473477*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:���������:	�:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__forward_dense_output_layer_call_and_return_conditional_losses_58474336�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_58473231*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_58473233*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_58473260* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_58473262*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_58473297* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_58473299*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_58473334* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_58473336*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_3_layer_0_58473371* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_3_layer_0_58473373*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_4_layer_0_58473408* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_4_layer_0_58473410*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_5_layer_0_58473445* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_5_layer_0_58473447*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_output_58473475*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: |
IdentityIdentity-dense_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp(^block_0_layer_0/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_1_layer_0/StatefulPartitionedCall7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_2_layer_0/StatefulPartitionedCall7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_3_layer_0/StatefulPartitionedCall7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_4_layer_0/StatefulPartitionedCall7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_5_layer_0/StatefulPartitionedCall7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp%^dense_output/StatefulPartitionedCall6^dense_output/kernel/Regularizer/Square/ReadVariableOp$^layer_input/StatefulPartitionedCall3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
add_1_partitionedcalladd_1/PartitionedCall:output:0"9
add_1_partitionedcall_0add_1/PartitionedCall:output:1"9
add_1_partitionedcall_1add_1/PartitionedCall:output:2"7
add_2_partitionedcalladd_2/PartitionedCall:output:0"9
add_2_partitionedcall_0add_2/PartitionedCall:output:1"9
add_2_partitionedcall_1add_2/PartitionedCall:output:2"7
add_3_partitionedcalladd_3/PartitionedCall:output:0"9
add_3_partitionedcall_0add_3/PartitionedCall:output:1"9
add_3_partitionedcall_1add_3/PartitionedCall:output:2"7
add_4_partitionedcalladd_4/PartitionedCall:output:0"9
add_4_partitionedcall_0add_4/PartitionedCall:output:1"9
add_4_partitionedcall_1add_4/PartitionedCall:output:2"7
add_5_partitionedcalladd_5/PartitionedCall:output:1"9
add_5_partitionedcall_0add_5/PartitionedCall:output:2"3
add_partitionedcalladd/PartitionedCall:output:0"5
add_partitionedcall_0add/PartitionedCall:output:1"5
add_partitionedcall_1add/PartitionedCall:output:2"[
'block_0_layer_0_statefulpartitionedcall0block_0_layer_0/StatefulPartitionedCall:output:1"]
)block_0_layer_0_statefulpartitionedcall_00block_0_layer_0/StatefulPartitionedCall:output:2"[
'block_1_layer_0_statefulpartitionedcall0block_1_layer_0/StatefulPartitionedCall:output:1"]
)block_1_layer_0_statefulpartitionedcall_00block_1_layer_0/StatefulPartitionedCall:output:2"[
'block_2_layer_0_statefulpartitionedcall0block_2_layer_0/StatefulPartitionedCall:output:1"]
)block_2_layer_0_statefulpartitionedcall_00block_2_layer_0/StatefulPartitionedCall:output:2"[
'block_3_layer_0_statefulpartitionedcall0block_3_layer_0/StatefulPartitionedCall:output:1"]
)block_3_layer_0_statefulpartitionedcall_00block_3_layer_0/StatefulPartitionedCall:output:2"[
'block_4_layer_0_statefulpartitionedcall0block_4_layer_0/StatefulPartitionedCall:output:1"]
)block_4_layer_0_statefulpartitionedcall_00block_4_layer_0/StatefulPartitionedCall:output:2"[
'block_5_layer_0_statefulpartitionedcall0block_5_layer_0/StatefulPartitionedCall:output:1"]
)block_5_layer_0_statefulpartitionedcall_00block_5_layer_0/StatefulPartitionedCall:output:2"U
$dense_output_statefulpartitionedcall-dense_output/StatefulPartitionedCall:output:1"W
&dense_output_statefulpartitionedcall_0-dense_output/StatefulPartitionedCall:output:2"
identityIdentity:output:0"S
#layer_input_statefulpartitionedcall,layer_input/StatefulPartitionedCall:output:0"U
%layer_input_statefulpartitionedcall_0,layer_input/StatefulPartitionedCall:output:1"U
%layer_input_statefulpartitionedcall_1,layer_input/StatefulPartitionedCall:output:2*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : *�
backward_function_namejh__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474320_584746782R
'block_0_layer_0/StatefulPartitionedCall'block_0_layer_0/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_1_layer_0/StatefulPartitionedCall'block_1_layer_0/StatefulPartitionedCall2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_2_layer_0/StatefulPartitionedCall'block_2_layer_0/StatefulPartitionedCall2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_3_layer_0/StatefulPartitionedCall'block_3_layer_0/StatefulPartitionedCall2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_4_layer_0/StatefulPartitionedCall'block_4_layer_0/StatefulPartitionedCall2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_5_layer_0/StatefulPartitionedCall'block_5_layer_0/StatefulPartitionedCall2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2J
#layer_input/StatefulPartitionedCall#layer_input/StatefulPartitionedCall2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
U__inference___backward_add_layer_call_and_return_conditional_losses_58474590_58474607
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������g
gradients/add_grad/ShapeShapegradients_add_grad_shape_inputs*
T0*
_output_shapes
:m
gradients/add_grad/Shape_1Shape#gradients_add_grad_shape_1_inputs_1*
T0*
_output_shapes
:�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/add_grad/Shape:output:0#gradients/add_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/add_grad/SumSumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sum:output:0!gradients/add_grad/Shape:output:0*
T0*(
_output_shapes
:�����������
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*(
_output_shapes
:����������l
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*(
_output_shapes
:����������p

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������*Z
forward_function_nameA?__forward_add_layer_call_and_return_conditional_losses_58474606:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������
�
�
a__inference___backward_block_2_layer_0_layer_call_and_return_conditional_losses_58474516_58474529
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������u
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes	
:��
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*(
_output_shapes
:����������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0* 
_output_shapes
:
��*
transpose_a(o
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*(
_output_shapes
:����������k

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0* 
_output_shapes
:
��i

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������:
��:����������*f
forward_function_nameMK__forward_block_2_layer_0_layer_call_and_return_conditional_losses_58474528:. *
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������
�
�
a__inference___backward_block_0_layer_0_layer_call_and_return_conditional_losses_58474614_58474627
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������u
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes	
:��
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*(
_output_shapes
:����������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0* 
_output_shapes
:
��*
transpose_a(o
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*(
_output_shapes
:����������k

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0* 
_output_shapes
:
��i

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������:
��:����������*f
forward_function_nameMK__forward_block_0_layer_0_layer_call_and_return_conditional_losses_58474626:. *
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������
�
T
(__inference_add_5_layer_call_fn_58478023
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_5_layer_call_and_return_conditional_losses_58473456a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
A__forward_add_3_layer_call_and_return_conditional_losses_58474459
inputs_0

inputs_1_0
identity

inputs
inputs_1U
addAddV2inputs_0
inputs_1_0*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������*s
backward_function_nameYW__inference___backward_add_3_layer_call_and_return_conditional_losses_58474443_58474460:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
2__inference_block_5_layer_0_layer_call_fn_58477995

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_5_layer_0_layer_call_and_return_conditional_losses_58473444p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
M__inference_block_2_layer_0_layer_call_and_return_conditional_losses_58477852

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_2_58478093U
Ablock_0_layer_0_kernel_regularizer_square_readvariableop_resource:
��
identity��8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAblock_0_layer_0_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*block_0_layer_0/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp
�
�
H__forward_dense_output_layer_call_and_return_conditional_losses_58474336
inputs_01
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�5dense_output/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp6^dense_output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *z
backward_function_name`^__inference___backward_dense_output_layer_call_and_return_conditional_losses_58474324_5847433720
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
W__inference___backward_add_2_layer_call_and_return_conditional_losses_58474492_58474509
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������g
gradients/add_grad/ShapeShapegradients_add_grad_shape_inputs*
T0*
_output_shapes
:m
gradients/add_grad/Shape_1Shape#gradients_add_grad_shape_1_inputs_1*
T0*
_output_shapes
:�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/add_grad/Shape:output:0#gradients/add_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/add_grad/SumSumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sum:output:0!gradients/add_grad/Shape:output:0*
T0*(
_output_shapes
:�����������
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*(
_output_shapes
:����������l
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*(
_output_shapes
:����������p

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������*\
forward_function_nameCA__forward_add_2_layer_call_and_return_conditional_losses_58474508:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������
�
�
0__inference_sobolev_model_layer_call_fn_58474993
input_1
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:

unknown_15

unknown_16

unknown_17
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58474948o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
__inference_loss_fn_5_58478126N
?block_1_layer_0_bias_regularizer_square_readvariableop_resource:	�
identity��6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp?block_1_layer_0_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentity(block_1_layer_0/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp
�
T
(__inference_add_3_layer_call_fn_58477913
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_3_layer_call_and_return_conditional_losses_58473382a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
__inference_loss_fn_10_58478181U
Ablock_4_layer_0_kernel_regularizer_square_readvariableop_resource:
��
identity��8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAblock_4_layer_0_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*block_4_layer_0/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp
�
�
?__forward_add_layer_call_and_return_conditional_losses_58474606
inputs_0

inputs_1_0
identity

inputs
inputs_1U
addAddV2inputs_0
inputs_1_0*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������*q
backward_function_nameWU__inference___backward_add_layer_call_and_return_conditional_losses_58474590_58474607:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
A__forward_add_2_layer_call_and_return_conditional_losses_58474508
inputs_0

inputs_1_0
identity

inputs
inputs_1U
addAddV2inputs_0
inputs_1_0*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������*s
backward_function_nameYW__inference___backward_add_2_layer_call_and_return_conditional_losses_58474492_58474509:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_4_58478115U
Ablock_1_layer_0_kernel_regularizer_square_readvariableop_resource:
��
identity��8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAblock_1_layer_0_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentity*block_1_layer_0/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp
�
�
2__inference_block_0_layer_0_layer_call_fn_58477720

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_0_layer_0_layer_call_and_return_conditional_losses_58473259p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58477502

inputs=
*layer_input_matmul_readvariableop_resource:	�:
+layer_input_biasadd_readvariableop_resource:	�B
.block_0_layer_0_matmul_readvariableop_resource:
��>
/block_0_layer_0_biasadd_readvariableop_resource:	�B
.block_1_layer_0_matmul_readvariableop_resource:
��>
/block_1_layer_0_biasadd_readvariableop_resource:	�B
.block_2_layer_0_matmul_readvariableop_resource:
��>
/block_2_layer_0_biasadd_readvariableop_resource:	�B
.block_3_layer_0_matmul_readvariableop_resource:
��>
/block_3_layer_0_biasadd_readvariableop_resource:	�B
.block_4_layer_0_matmul_readvariableop_resource:
��>
/block_4_layer_0_biasadd_readvariableop_resource:	�B
.block_5_layer_0_matmul_readvariableop_resource:
��>
/block_5_layer_0_biasadd_readvariableop_resource:	�>
+dense_output_matmul_readvariableop_resource:	�:
,dense_output_biasadd_readvariableop_resource:
identity��&block_0_layer_0/BiasAdd/ReadVariableOp�%block_0_layer_0/MatMul/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_1_layer_0/BiasAdd/ReadVariableOp�%block_1_layer_0/MatMul/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_2_layer_0/BiasAdd/ReadVariableOp�%block_2_layer_0/MatMul/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_3_layer_0/BiasAdd/ReadVariableOp�%block_3_layer_0/MatMul/ReadVariableOp�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_4_layer_0/BiasAdd/ReadVariableOp�%block_4_layer_0/MatMul/ReadVariableOp�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_5_layer_0/BiasAdd/ReadVariableOp�%block_5_layer_0/MatMul/ReadVariableOp�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�#dense_output/BiasAdd/ReadVariableOp�"dense_output/MatMul/ReadVariableOp�5dense_output/kernel/Regularizer/Square/ReadVariableOp�"layer_input/BiasAdd/ReadVariableOp�!layer_input/MatMul/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
!layer_input/MatMul/ReadVariableOpReadVariableOp*layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
layer_input/MatMulMatMulinputs)layer_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"layer_input/BiasAdd/ReadVariableOpReadVariableOp+layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_input/BiasAddBiasAddlayer_input/MatMul:product:0*layer_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������v
tf.math.softplus/SoftplusSoftpluslayer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%block_0_layer_0/MatMul/ReadVariableOpReadVariableOp.block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_0_layer_0/MatMulMatMul'tf.math.softplus/Softplus:activations:0-block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_0_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_0_layer_0/BiasAddBiasAdd block_0_layer_0/MatMul:product:0.block_0_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
add/addAddV2layer_input/BiasAdd:output:0 block_0_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������g
tf.math.softplus_1/SoftplusSoftplusadd/add:z:0*
T0*(
_output_shapes
:�����������
%block_1_layer_0/MatMul/ReadVariableOpReadVariableOp.block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_1_layer_0/MatMulMatMul)tf.math.softplus_1/Softplus:activations:0-block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_1_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_1_layer_0/BiasAddBiasAdd block_1_layer_0/MatMul:product:0.block_1_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
	add_1/addAddV2add/add:z:0 block_1_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������i
tf.math.softplus_2/SoftplusSoftplusadd_1/add:z:0*
T0*(
_output_shapes
:�����������
%block_2_layer_0/MatMul/ReadVariableOpReadVariableOp.block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_2_layer_0/MatMulMatMul)tf.math.softplus_2/Softplus:activations:0-block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_2_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_2_layer_0/BiasAddBiasAdd block_2_layer_0/MatMul:product:0.block_2_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������v
	add_2/addAddV2add_1/add:z:0 block_2_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������i
tf.math.softplus_3/SoftplusSoftplusadd_2/add:z:0*
T0*(
_output_shapes
:�����������
%block_3_layer_0/MatMul/ReadVariableOpReadVariableOp.block_3_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_3_layer_0/MatMulMatMul)tf.math.softplus_3/Softplus:activations:0-block_3_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_3_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_3_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_3_layer_0/BiasAddBiasAdd block_3_layer_0/MatMul:product:0.block_3_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������v
	add_3/addAddV2add_2/add:z:0 block_3_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������i
tf.math.softplus_4/SoftplusSoftplusadd_3/add:z:0*
T0*(
_output_shapes
:�����������
%block_4_layer_0/MatMul/ReadVariableOpReadVariableOp.block_4_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_4_layer_0/MatMulMatMul)tf.math.softplus_4/Softplus:activations:0-block_4_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_4_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_4_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_4_layer_0/BiasAddBiasAdd block_4_layer_0/MatMul:product:0.block_4_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������v
	add_4/addAddV2add_3/add:z:0 block_4_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������i
tf.math.softplus_5/SoftplusSoftplusadd_4/add:z:0*
T0*(
_output_shapes
:�����������
%block_5_layer_0/MatMul/ReadVariableOpReadVariableOp.block_5_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_5_layer_0/MatMulMatMul)tf.math.softplus_5/Softplus:activations:0-block_5_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_5_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_5_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_5_layer_0/BiasAddBiasAdd block_5_layer_0/MatMul:product:0.block_5_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������v
	add_5/addAddV2add_4/add:z:0 block_5_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
"dense_output/MatMul/ReadVariableOpReadVariableOp+dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_output/MatMulMatMuladd_5/add:z:0*dense_output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
#dense_output/BiasAdd/ReadVariableOpReadVariableOp,dense_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_output/BiasAddBiasAdddense_output/MatMul:product:0+dense_output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOp+layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp/block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp/block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp/block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.block_3_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp/block_3_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.block_4_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp/block_4_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOp.block_5_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp/block_5_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: l
IdentityIdentitydense_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^block_0_layer_0/BiasAdd/ReadVariableOp&^block_0_layer_0/MatMul/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_1_layer_0/BiasAdd/ReadVariableOp&^block_1_layer_0/MatMul/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_2_layer_0/BiasAdd/ReadVariableOp&^block_2_layer_0/MatMul/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_3_layer_0/BiasAdd/ReadVariableOp&^block_3_layer_0/MatMul/ReadVariableOp7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_4_layer_0/BiasAdd/ReadVariableOp&^block_4_layer_0/MatMul/ReadVariableOp7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_5_layer_0/BiasAdd/ReadVariableOp&^block_5_layer_0/MatMul/ReadVariableOp7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp$^dense_output/BiasAdd/ReadVariableOp#^dense_output/MatMul/ReadVariableOp6^dense_output/kernel/Regularizer/Square/ReadVariableOp#^layer_input/BiasAdd/ReadVariableOp"^layer_input/MatMul/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2P
&block_0_layer_0/BiasAdd/ReadVariableOp&block_0_layer_0/BiasAdd/ReadVariableOp2N
%block_0_layer_0/MatMul/ReadVariableOp%block_0_layer_0/MatMul/ReadVariableOp2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2P
&block_1_layer_0/BiasAdd/ReadVariableOp&block_1_layer_0/BiasAdd/ReadVariableOp2N
%block_1_layer_0/MatMul/ReadVariableOp%block_1_layer_0/MatMul/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2P
&block_2_layer_0/BiasAdd/ReadVariableOp&block_2_layer_0/BiasAdd/ReadVariableOp2N
%block_2_layer_0/MatMul/ReadVariableOp%block_2_layer_0/MatMul/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2P
&block_3_layer_0/BiasAdd/ReadVariableOp&block_3_layer_0/BiasAdd/ReadVariableOp2N
%block_3_layer_0/MatMul/ReadVariableOp%block_3_layer_0/MatMul/ReadVariableOp2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2P
&block_4_layer_0/BiasAdd/ReadVariableOp&block_4_layer_0/BiasAdd/ReadVariableOp2N
%block_4_layer_0/MatMul/ReadVariableOp%block_4_layer_0/MatMul/ReadVariableOp2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2P
&block_5_layer_0/BiasAdd/ReadVariableOp&block_5_layer_0/BiasAdd/ReadVariableOp2N
%block_5_layer_0/MatMul/ReadVariableOp%block_5_layer_0/MatMul/ReadVariableOp2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2J
#dense_output/BiasAdd/ReadVariableOp#dense_output/BiasAdd/ReadVariableOp2H
"dense_output/MatMul/ReadVariableOp"dense_output/MatMul/ReadVariableOp2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2H
"layer_input/BiasAdd/ReadVariableOp"layer_input/BiasAdd/ReadVariableOp2F
!layer_input/MatMul/ReadVariableOp!layer_input/MatMul/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
h__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474320_58474678
placeholder\
Xgradients_dense_output_statefulpartitionedcall_grad_dense_output_statefulpartitionedcall^
Zgradients_dense_output_statefulpartitionedcall_grad_dense_output_statefulpartitionedcall_1>
:gradients_add_5_partitionedcall_grad_add_5_partitionedcall@
<gradients_add_5_partitionedcall_grad_add_5_partitionedcall_1b
^gradients_block_5_layer_0_statefulpartitionedcall_grad_block_5_layer_0_statefulpartitionedcalld
`gradients_block_5_layer_0_statefulpartitionedcall_grad_block_5_layer_0_statefulpartitionedcall_1L
Hgradients_tf_math_softplus_5_softplus_grad_sigmoid_add_4_partitionedcall>
:gradients_add_4_partitionedcall_grad_add_4_partitionedcall@
<gradients_add_4_partitionedcall_grad_add_4_partitionedcall_1b
^gradients_block_4_layer_0_statefulpartitionedcall_grad_block_4_layer_0_statefulpartitionedcalld
`gradients_block_4_layer_0_statefulpartitionedcall_grad_block_4_layer_0_statefulpartitionedcall_1L
Hgradients_tf_math_softplus_4_softplus_grad_sigmoid_add_3_partitionedcall>
:gradients_add_3_partitionedcall_grad_add_3_partitionedcall@
<gradients_add_3_partitionedcall_grad_add_3_partitionedcall_1b
^gradients_block_3_layer_0_statefulpartitionedcall_grad_block_3_layer_0_statefulpartitionedcalld
`gradients_block_3_layer_0_statefulpartitionedcall_grad_block_3_layer_0_statefulpartitionedcall_1L
Hgradients_tf_math_softplus_3_softplus_grad_sigmoid_add_2_partitionedcall>
:gradients_add_2_partitionedcall_grad_add_2_partitionedcall@
<gradients_add_2_partitionedcall_grad_add_2_partitionedcall_1b
^gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcalld
`gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcall_1L
Hgradients_tf_math_softplus_2_softplus_grad_sigmoid_add_1_partitionedcall>
:gradients_add_1_partitionedcall_grad_add_1_partitionedcall@
<gradients_add_1_partitionedcall_grad_add_1_partitionedcall_1b
^gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcalld
`gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcall_1J
Fgradients_tf_math_softplus_1_softplus_grad_sigmoid_add_partitionedcall:
6gradients_add_partitionedcall_grad_add_partitionedcall<
8gradients_add_partitionedcall_grad_add_partitionedcall_1b
^gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcalld
`gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcall_1X
Tgradients_tf_math_softplus_softplus_grad_sigmoid_layer_input_statefulpartitionedcallZ
Vgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcall\
Xgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcall_1
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:����������
Cgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallgradients/grad_ys_0:output:0Xgradients_dense_output_statefulpartitionedcall_grad_dense_output_statefulpartitionedcallZgradients_dense_output_statefulpartitionedcall_grad_dense_output_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:����������:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *g
fbR`
^__inference___backward_dense_output_layer_call_and_return_conditional_losses_58474324_58474337�
4gradients/add_5/PartitionedCall_grad/PartitionedCallPartitionedCallLgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCall:output:0:gradients_add_5_partitionedcall_grad_add_5_partitionedcall<gradients_add_5_partitionedcall_grad_add_5_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference___backward_add_5_layer_call_and_return_conditional_losses_58474345_58474362�
Fgradients/block_5_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_5/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_5_layer_0_statefulpartitionedcall_grad_block_5_layer_0_statefulpartitionedcall`gradients_block_5_layer_0_statefulpartitionedcall_grad_block_5_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_block_5_layer_0_layer_call_and_return_conditional_losses_58474369_58474382�
2gradients/tf.math.softplus_5/Softplus_grad/SigmoidSigmoidHgradients_tf_math_softplus_5_softplus_grad_sigmoid_add_4_partitionedcall*
T0*(
_output_shapes
:�����������
.gradients/tf.math.softplus_5/Softplus_grad/mulMulOgradients/block_5_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_5/Softplus_grad/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gradients/AddNAddN=gradients/add_5/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.math.softplus_5/Softplus_grad/mul:z:0*
N*
T0*G
_class=
;9loc:@gradients/add_5/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
4gradients/add_4/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN:sum:0:gradients_add_4_partitionedcall_grad_add_4_partitionedcall<gradients_add_4_partitionedcall_grad_add_4_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference___backward_add_4_layer_call_and_return_conditional_losses_58474394_58474411�
Fgradients/block_4_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_4/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_4_layer_0_statefulpartitionedcall_grad_block_4_layer_0_statefulpartitionedcall`gradients_block_4_layer_0_statefulpartitionedcall_grad_block_4_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_block_4_layer_0_layer_call_and_return_conditional_losses_58474418_58474431�
2gradients/tf.math.softplus_4/Softplus_grad/SigmoidSigmoidHgradients_tf_math_softplus_4_softplus_grad_sigmoid_add_3_partitionedcall*
T0*(
_output_shapes
:�����������
.gradients/tf.math.softplus_4/Softplus_grad/mulMulOgradients/block_4_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_4/Softplus_grad/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gradients/AddN_1AddN=gradients/add_4/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.math.softplus_4/Softplus_grad/mul:z:0*
N*
T0*G
_class=
;9loc:@gradients/add_4/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
4gradients/add_3/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_1:sum:0:gradients_add_3_partitionedcall_grad_add_3_partitionedcall<gradients_add_3_partitionedcall_grad_add_3_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference___backward_add_3_layer_call_and_return_conditional_losses_58474443_58474460�
Fgradients/block_3_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_3/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_3_layer_0_statefulpartitionedcall_grad_block_3_layer_0_statefulpartitionedcall`gradients_block_3_layer_0_statefulpartitionedcall_grad_block_3_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_block_3_layer_0_layer_call_and_return_conditional_losses_58474467_58474480�
2gradients/tf.math.softplus_3/Softplus_grad/SigmoidSigmoidHgradients_tf_math_softplus_3_softplus_grad_sigmoid_add_2_partitionedcall*
T0*(
_output_shapes
:�����������
.gradients/tf.math.softplus_3/Softplus_grad/mulMulOgradients/block_3_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_3/Softplus_grad/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gradients/AddN_2AddN=gradients/add_3/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.math.softplus_3/Softplus_grad/mul:z:0*
N*
T0*G
_class=
;9loc:@gradients/add_3/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
4gradients/add_2/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_2:sum:0:gradients_add_2_partitionedcall_grad_add_2_partitionedcall<gradients_add_2_partitionedcall_grad_add_2_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference___backward_add_2_layer_call_and_return_conditional_losses_58474492_58474509�
Fgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_2/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcall`gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_block_2_layer_0_layer_call_and_return_conditional_losses_58474516_58474529�
2gradients/tf.math.softplus_2/Softplus_grad/SigmoidSigmoidHgradients_tf_math_softplus_2_softplus_grad_sigmoid_add_1_partitionedcall*
T0*(
_output_shapes
:�����������
.gradients/tf.math.softplus_2/Softplus_grad/mulMulOgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_2/Softplus_grad/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gradients/AddN_3AddN=gradients/add_2/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.math.softplus_2/Softplus_grad/mul:z:0*
N*
T0*G
_class=
;9loc:@gradients/add_2/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
4gradients/add_1/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_3:sum:0:gradients_add_1_partitionedcall_grad_add_1_partitionedcall<gradients_add_1_partitionedcall_grad_add_1_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference___backward_add_1_layer_call_and_return_conditional_losses_58474541_58474558�
Fgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_1/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcall`gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_block_1_layer_0_layer_call_and_return_conditional_losses_58474565_58474578�
2gradients/tf.math.softplus_1/Softplus_grad/SigmoidSigmoidFgradients_tf_math_softplus_1_softplus_grad_sigmoid_add_partitionedcall*
T0*(
_output_shapes
:�����������
.gradients/tf.math.softplus_1/Softplus_grad/mulMulOgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_1/Softplus_grad/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gradients/AddN_4AddN=gradients/add_1/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.math.softplus_1/Softplus_grad/mul:z:0*
N*
T0*G
_class=
;9loc:@gradients/add_1/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
2gradients/add/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_4:sum:06gradients_add_partitionedcall_grad_add_partitionedcall8gradients_add_partitionedcall_grad_add_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference___backward_add_layer_call_and_return_conditional_losses_58474590_58474607�
Fgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall;gradients/add/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcall`gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_block_0_layer_0_layer_call_and_return_conditional_losses_58474614_58474627�
0gradients/tf.math.softplus/Softplus_grad/SigmoidSigmoidTgradients_tf_math_softplus_softplus_grad_sigmoid_layer_input_statefulpartitionedcall*
T0*(
_output_shapes
:�����������
,gradients/tf.math.softplus/Softplus_grad/mulMulOgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:04gradients/tf.math.softplus/Softplus_grad/Sigmoid:y:0*
T0*(
_output_shapes
:�����������
gradients/AddN_5AddN;gradients/add/PartitionedCall_grad/PartitionedCall:output:00gradients/tf.math.softplus/Softplus_grad/mul:z:0*
N*
T0*E
_class;
97loc:@gradients/add/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
Bgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_5:sum:0Vgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcallXgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:���������:	�:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *f
faR_
]__inference___backward_layer_input_layer_call_and_return_conditional_losses_58474639_58474652�
IdentityIdentityKgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCall:output:0*
T0*'
_output_shapes
:����������

Identity_1IdentityKgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	��

Identity_2IdentityKgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_3IdentityOgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���

Identity_4IdentityOgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_5IdentityOgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���

Identity_6IdentityOgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_7IdentityOgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���

Identity_8IdentityOgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_9IdentityOgradients/block_3_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���
Identity_10IdentityOgradients/block_3_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��
Identity_11IdentityOgradients/block_4_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���
Identity_12IdentityOgradients/block_4_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��
Identity_13IdentityOgradients/block_5_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���
Identity_14IdentityOgradients/block_5_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��
Identity_15IdentityLgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	��
Identity_16IdentityLgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:	�:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:	�:���������*m
forward_function_nameTR__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474677:- )
'
_output_shapes
:���������:%!

_output_shapes
:	�:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.	*
(
_output_shapes
:����������:&
"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:. *
(
_output_shapes
:����������:%!!

_output_shapes
:	�:-")
'
_output_shapes
:���������
�
�
__inference_loss_fn_3_58478104N
?block_0_layer_0_bias_regularizer_square_readvariableop_resource:	�
identity��6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp?block_0_layer_0_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentity(block_0_layer_0/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp
�
�
M__inference_block_3_layer_0_layer_call_and_return_conditional_losses_58477907

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
o
C__inference_add_3_layer_call_and_return_conditional_losses_58477919
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
2__inference_block_3_layer_0_layer_call_fn_58477885

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_3_layer_0_layer_call_and_return_conditional_losses_58473370p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
R
&__inference_add_layer_call_fn_58477748
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_add_layer_call_and_return_conditional_losses_58473271a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
��
�
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474277
input_1'
layer_input_58474134:	�#
layer_input_58474136:	�,
block_0_layer_0_58474140:
��'
block_0_layer_0_58474142:	�,
block_1_layer_0_58474147:
��'
block_1_layer_0_58474149:	�,
block_2_layer_0_58474154:
��'
block_2_layer_0_58474156:	�,
block_3_layer_0_58474161:
��'
block_3_layer_0_58474163:	�,
block_4_layer_0_58474168:
��'
block_4_layer_0_58474170:	�,
block_5_layer_0_58474175:
��'
block_5_layer_0_58474177:	�(
dense_output_58474181:	�#
dense_output_58474183:
identity��'block_0_layer_0/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_1_layer_0/StatefulPartitionedCall�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_2_layer_0/StatefulPartitionedCall�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_3_layer_0/StatefulPartitionedCall�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_4_layer_0/StatefulPartitionedCall�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_5_layer_0/StatefulPartitionedCall�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�$dense_output/StatefulPartitionedCall�5dense_output/kernel/Regularizer/Square/ReadVariableOp�#layer_input/StatefulPartitionedCall�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
#layer_input/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_input_58474134layer_input_58474136*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_layer_input_layer_call_and_return_conditional_losses_58473230�
tf.math.softplus/SoftplusSoftplus,layer_input/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_0_layer_0/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0block_0_layer_0_58474140block_0_layer_0_58474142*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_0_layer_0_layer_call_and_return_conditional_losses_58473259�
add/PartitionedCallPartitionedCall,layer_input/StatefulPartitionedCall:output:00block_0_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_add_layer_call_and_return_conditional_losses_58473271x
tf.math.softplus_1/SoftplusSoftplusadd/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_1_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0block_1_layer_0_58474147block_1_layer_0_58474149*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_1_layer_0_layer_call_and_return_conditional_losses_58473296�
add_1/PartitionedCallPartitionedCalladd/PartitionedCall:output:00block_1_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_1_layer_call_and_return_conditional_losses_58473308z
tf.math.softplus_2/SoftplusSoftplusadd_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_2_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0block_2_layer_0_58474154block_2_layer_0_58474156*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_2_layer_0_layer_call_and_return_conditional_losses_58473333�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:00block_2_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_2_layer_call_and_return_conditional_losses_58473345z
tf.math.softplus_3/SoftplusSoftplusadd_2/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_3_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_3/Softplus:activations:0block_3_layer_0_58474161block_3_layer_0_58474163*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_3_layer_0_layer_call_and_return_conditional_losses_58473370�
add_3/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:00block_3_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_3_layer_call_and_return_conditional_losses_58473382z
tf.math.softplus_4/SoftplusSoftplusadd_3/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_4_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_4/Softplus:activations:0block_4_layer_0_58474168block_4_layer_0_58474170*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_4_layer_0_layer_call_and_return_conditional_losses_58473407�
add_4/PartitionedCallPartitionedCalladd_3/PartitionedCall:output:00block_4_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_4_layer_call_and_return_conditional_losses_58473419z
tf.math.softplus_5/SoftplusSoftplusadd_4/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_5_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_5/Softplus:activations:0block_5_layer_0_58474175block_5_layer_0_58474177*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_block_5_layer_0_layer_call_and_return_conditional_losses_58473444�
add_5/PartitionedCallPartitionedCalladd_4/PartitionedCall:output:00block_5_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_add_5_layer_call_and_return_conditional_losses_58473456�
$dense_output/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0dense_output_58474181dense_output_58474183*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_dense_output_layer_call_and_return_conditional_losses_58473474�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_58474134*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_58474136*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_58474140* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_58474142*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_58474147* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_58474149*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_58474154* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_58474156*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_3_layer_0_58474161* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_3_layer_0_58474163*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_4_layer_0_58474168* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_4_layer_0_58474170*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_5_layer_0_58474175* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_5_layer_0_58474177*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_output_58474181*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: |
IdentityIdentity-dense_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp(^block_0_layer_0/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_1_layer_0/StatefulPartitionedCall7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_2_layer_0/StatefulPartitionedCall7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_3_layer_0/StatefulPartitionedCall7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_4_layer_0/StatefulPartitionedCall7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_5_layer_0/StatefulPartitionedCall7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp%^dense_output/StatefulPartitionedCall6^dense_output/kernel/Regularizer/Square/ReadVariableOp$^layer_input/StatefulPartitionedCall3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2R
'block_0_layer_0/StatefulPartitionedCall'block_0_layer_0/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_1_layer_0/StatefulPartitionedCall'block_1_layer_0/StatefulPartitionedCall2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_2_layer_0/StatefulPartitionedCall'block_2_layer_0/StatefulPartitionedCall2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_3_layer_0/StatefulPartitionedCall'block_3_layer_0/StatefulPartitionedCall2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_4_layer_0/StatefulPartitionedCall'block_4_layer_0/StatefulPartitionedCall2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_5_layer_0/StatefulPartitionedCall'block_5_layer_0/StatefulPartitionedCall2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2J
#layer_input/StatefulPartitionedCall#layer_input/StatefulPartitionedCall2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
��
�
R__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58475218

inputs'
layer_input_58473770:	�#
layer_input_58473772:	�,
block_0_layer_0_58473776:
��'
block_0_layer_0_58473778:	�,
block_1_layer_0_58473783:
��'
block_1_layer_0_58473785:	�,
block_2_layer_0_58473790:
��'
block_2_layer_0_58473792:	�,
block_3_layer_0_58473797:
��'
block_3_layer_0_58473799:	�,
block_4_layer_0_58473804:
��'
block_4_layer_0_58473806:	�,
block_5_layer_0_58473811:
��'
block_5_layer_0_58473813:	�(
dense_output_58473817:	�#
dense_output_58473819:
identity(
$dense_output_statefulpartitionedcall*
&dense_output_statefulpartitionedcall_0
add_5_partitionedcall
add_5_partitionedcall_0+
'block_5_layer_0_statefulpartitionedcall-
)block_5_layer_0_statefulpartitionedcall_0
add_4_partitionedcall
add_4_partitionedcall_0
add_4_partitionedcall_1+
'block_4_layer_0_statefulpartitionedcall-
)block_4_layer_0_statefulpartitionedcall_0
add_3_partitionedcall
add_3_partitionedcall_0
add_3_partitionedcall_1+
'block_3_layer_0_statefulpartitionedcall-
)block_3_layer_0_statefulpartitionedcall_0
add_2_partitionedcall
add_2_partitionedcall_0
add_2_partitionedcall_1+
'block_2_layer_0_statefulpartitionedcall-
)block_2_layer_0_statefulpartitionedcall_0
add_1_partitionedcall
add_1_partitionedcall_0
add_1_partitionedcall_1+
'block_1_layer_0_statefulpartitionedcall-
)block_1_layer_0_statefulpartitionedcall_0
add_partitionedcall
add_partitionedcall_0
add_partitionedcall_1+
'block_0_layer_0_statefulpartitionedcall-
)block_0_layer_0_statefulpartitionedcall_0'
#layer_input_statefulpartitionedcall)
%layer_input_statefulpartitionedcall_0)
%layer_input_statefulpartitionedcall_1��'block_0_layer_0/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_1_layer_0/StatefulPartitionedCall�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_2_layer_0/StatefulPartitionedCall�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_3_layer_0/StatefulPartitionedCall�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_4_layer_0/StatefulPartitionedCall�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_5_layer_0/StatefulPartitionedCall�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�$dense_output/StatefulPartitionedCall�5dense_output/kernel/Regularizer/Square/ReadVariableOp�#layer_input/StatefulPartitionedCall�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
#layer_input/StatefulPartitionedCallStatefulPartitionedCallinputslayer_input_58473770layer_input_58473772*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:����������:	�:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__forward_layer_input_layer_call_and_return_conditional_losses_58474651�
tf.math.softplus/SoftplusSoftplus,layer_input/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_0_layer_0/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0block_0_layer_0_58473776block_0_layer_0_58473778*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_block_0_layer_0_layer_call_and_return_conditional_losses_58474626�
add/PartitionedCallPartitionedCall,layer_input/StatefulPartitionedCall:output:00block_0_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__forward_add_layer_call_and_return_conditional_losses_58474606x
tf.math.softplus_1/SoftplusSoftplusadd/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_1_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0block_1_layer_0_58473783block_1_layer_0_58473785*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_block_1_layer_0_layer_call_and_return_conditional_losses_58474577�
add_1/PartitionedCallPartitionedCalladd/PartitionedCall:output:00block_1_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__forward_add_1_layer_call_and_return_conditional_losses_58474557z
tf.math.softplus_2/SoftplusSoftplusadd_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_2_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0block_2_layer_0_58473790block_2_layer_0_58473792*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_block_2_layer_0_layer_call_and_return_conditional_losses_58474528�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:00block_2_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__forward_add_2_layer_call_and_return_conditional_losses_58474508z
tf.math.softplus_3/SoftplusSoftplusadd_2/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_3_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_3/Softplus:activations:0block_3_layer_0_58473797block_3_layer_0_58473799*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_block_3_layer_0_layer_call_and_return_conditional_losses_58474479�
add_3/PartitionedCallPartitionedCalladd_2/PartitionedCall:output:00block_3_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__forward_add_3_layer_call_and_return_conditional_losses_58474459z
tf.math.softplus_4/SoftplusSoftplusadd_3/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_4_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_4/Softplus:activations:0block_4_layer_0_58473804block_4_layer_0_58473806*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_block_4_layer_0_layer_call_and_return_conditional_losses_58474430�
add_4/PartitionedCallPartitionedCalladd_3/PartitionedCall:output:00block_4_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__forward_add_4_layer_call_and_return_conditional_losses_58474410z
tf.math.softplus_5/SoftplusSoftplusadd_4/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_5_layer_0/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_5/Softplus:activations:0block_5_layer_0_58473811block_5_layer_0_58473813*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_block_5_layer_0_layer_call_and_return_conditional_losses_58474381�
add_5/PartitionedCallPartitionedCalladd_4/PartitionedCall:output:00block_5_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__forward_add_5_layer_call_and_return_conditional_losses_58474361�
$dense_output/StatefulPartitionedCallStatefulPartitionedCalladd_5/PartitionedCall:output:0dense_output_58473817dense_output_58473819*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:���������:	�:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__forward_dense_output_layer_call_and_return_conditional_losses_58474336�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_58473770*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_58473772*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_58473776* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_58473778*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_58473783* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_58473785*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_58473790* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_58473792*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_3_layer_0_58473797* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_3_layer_0_58473799*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_4_layer_0_58473804* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_4_layer_0_58473806*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_5_layer_0_58473811* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_5_layer_0_58473813*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_output_58473817*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: |
IdentityIdentity-dense_output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp(^block_0_layer_0/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_1_layer_0/StatefulPartitionedCall7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_2_layer_0/StatefulPartitionedCall7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_3_layer_0/StatefulPartitionedCall7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_4_layer_0/StatefulPartitionedCall7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_5_layer_0/StatefulPartitionedCall7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp%^dense_output/StatefulPartitionedCall6^dense_output/kernel/Regularizer/Square/ReadVariableOp$^layer_input/StatefulPartitionedCall3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
add_1_partitionedcalladd_1/PartitionedCall:output:0"9
add_1_partitionedcall_0add_1/PartitionedCall:output:1"9
add_1_partitionedcall_1add_1/PartitionedCall:output:2"7
add_2_partitionedcalladd_2/PartitionedCall:output:0"9
add_2_partitionedcall_0add_2/PartitionedCall:output:1"9
add_2_partitionedcall_1add_2/PartitionedCall:output:2"7
add_3_partitionedcalladd_3/PartitionedCall:output:0"9
add_3_partitionedcall_0add_3/PartitionedCall:output:1"9
add_3_partitionedcall_1add_3/PartitionedCall:output:2"7
add_4_partitionedcalladd_4/PartitionedCall:output:0"9
add_4_partitionedcall_0add_4/PartitionedCall:output:1"9
add_4_partitionedcall_1add_4/PartitionedCall:output:2"7
add_5_partitionedcalladd_5/PartitionedCall:output:1"9
add_5_partitionedcall_0add_5/PartitionedCall:output:2"3
add_partitionedcalladd/PartitionedCall:output:0"5
add_partitionedcall_0add/PartitionedCall:output:1"5
add_partitionedcall_1add/PartitionedCall:output:2"[
'block_0_layer_0_statefulpartitionedcall0block_0_layer_0/StatefulPartitionedCall:output:1"]
)block_0_layer_0_statefulpartitionedcall_00block_0_layer_0/StatefulPartitionedCall:output:2"[
'block_1_layer_0_statefulpartitionedcall0block_1_layer_0/StatefulPartitionedCall:output:1"]
)block_1_layer_0_statefulpartitionedcall_00block_1_layer_0/StatefulPartitionedCall:output:2"[
'block_2_layer_0_statefulpartitionedcall0block_2_layer_0/StatefulPartitionedCall:output:1"]
)block_2_layer_0_statefulpartitionedcall_00block_2_layer_0/StatefulPartitionedCall:output:2"[
'block_3_layer_0_statefulpartitionedcall0block_3_layer_0/StatefulPartitionedCall:output:1"]
)block_3_layer_0_statefulpartitionedcall_00block_3_layer_0/StatefulPartitionedCall:output:2"[
'block_4_layer_0_statefulpartitionedcall0block_4_layer_0/StatefulPartitionedCall:output:1"]
)block_4_layer_0_statefulpartitionedcall_00block_4_layer_0/StatefulPartitionedCall:output:2"[
'block_5_layer_0_statefulpartitionedcall0block_5_layer_0/StatefulPartitionedCall:output:1"]
)block_5_layer_0_statefulpartitionedcall_00block_5_layer_0/StatefulPartitionedCall:output:2"U
$dense_output_statefulpartitionedcall-dense_output/StatefulPartitionedCall:output:1"W
&dense_output_statefulpartitionedcall_0-dense_output/StatefulPartitionedCall:output:2"
identityIdentity:output:0"S
#layer_input_statefulpartitionedcall,layer_input/StatefulPartitionedCall:output:0"U
%layer_input_statefulpartitionedcall_0,layer_input/StatefulPartitionedCall:output:1"U
%layer_input_statefulpartitionedcall_1,layer_input/StatefulPartitionedCall:output:2*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : *�
backward_function_namejh__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58475081_584752192R
'block_0_layer_0/StatefulPartitionedCall'block_0_layer_0/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_1_layer_0/StatefulPartitionedCall'block_1_layer_0/StatefulPartitionedCall2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_2_layer_0/StatefulPartitionedCall'block_2_layer_0/StatefulPartitionedCall2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_3_layer_0/StatefulPartitionedCall'block_3_layer_0/StatefulPartitionedCall2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_4_layer_0/StatefulPartitionedCall'block_4_layer_0/StatefulPartitionedCall2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_5_layer_0/StatefulPartitionedCall'block_5_layer_0/StatefulPartitionedCall2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2J
#layer_input/StatefulPartitionedCall#layer_input/StatefulPartitionedCall2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
a__inference___backward_block_1_layer_0_layer_call_and_return_conditional_losses_58474565_58474578
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������u
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes	
:��
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*(
_output_shapes
:����������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0* 
_output_shapes
:
��*
transpose_a(o
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*(
_output_shapes
:����������k

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0* 
_output_shapes
:
��i

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������:
��:����������*f
forward_function_nameMK__forward_block_1_layer_0_layer_call_and_return_conditional_losses_58474577:. *
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������
�
�
M__inference_block_4_layer_0_layer_call_and_return_conditional_losses_58473407

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58475489
x2
resnet_entropy_closure_58475045:	�.
resnet_entropy_closure_58475047:	�3
resnet_entropy_closure_58475049:
��.
resnet_entropy_closure_58475051:	�3
resnet_entropy_closure_58475053:
��.
resnet_entropy_closure_58475055:	�3
resnet_entropy_closure_58475057:
��.
resnet_entropy_closure_58475059:	�3
resnet_entropy_closure_58475061:
��.
resnet_entropy_closure_58475063:	�3
resnet_entropy_closure_58475065:
��.
resnet_entropy_closure_58475067:	�3
resnet_entropy_closure_58475069:
��.
resnet_entropy_closure_58475071:	�2
resnet_entropy_closure_58475073:	�-
resnet_entropy_closure_58475075:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��.ResNet_entropy_closure/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�checked�	checked_1�5dense_output/kernel/Regularizer/Square/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
.ResNet_entropy_closure/StatefulPartitionedCallStatefulPartitionedCallxresnet_entropy_closure_58475045resnet_entropy_closure_58475047resnet_entropy_closure_58475049resnet_entropy_closure_58475051resnet_entropy_closure_58475053resnet_entropy_closure_58475055resnet_entropy_closure_58475057resnet_entropy_closure_58475059resnet_entropy_closure_58475061resnet_entropy_closure_58475063resnet_entropy_closure_58475065resnet_entropy_closure_58475067resnet_entropy_closure_58475069resnet_entropy_closure_58475071resnet_entropy_closure_58475073resnet_entropy_closure_58475075*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:	�:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:	�:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58475218v
ones_like/ShapeShape7ResNet_entropy_closure/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:����������
PartitionedCallPartitionedCallones_like:output:07ResNet_entropy_closure/StatefulPartitionedCall:output:17ResNet_entropy_closure/StatefulPartitionedCall:output:27ResNet_entropy_closure/StatefulPartitionedCall:output:37ResNet_entropy_closure/StatefulPartitionedCall:output:47ResNet_entropy_closure/StatefulPartitionedCall:output:57ResNet_entropy_closure/StatefulPartitionedCall:output:67ResNet_entropy_closure/StatefulPartitionedCall:output:77ResNet_entropy_closure/StatefulPartitionedCall:output:87ResNet_entropy_closure/StatefulPartitionedCall:output:98ResNet_entropy_closure/StatefulPartitionedCall:output:108ResNet_entropy_closure/StatefulPartitionedCall:output:118ResNet_entropy_closure/StatefulPartitionedCall:output:128ResNet_entropy_closure/StatefulPartitionedCall:output:138ResNet_entropy_closure/StatefulPartitionedCall:output:148ResNet_entropy_closure/StatefulPartitionedCall:output:158ResNet_entropy_closure/StatefulPartitionedCall:output:168ResNet_entropy_closure/StatefulPartitionedCall:output:178ResNet_entropy_closure/StatefulPartitionedCall:output:188ResNet_entropy_closure/StatefulPartitionedCall:output:198ResNet_entropy_closure/StatefulPartitionedCall:output:208ResNet_entropy_closure/StatefulPartitionedCall:output:218ResNet_entropy_closure/StatefulPartitionedCall:output:228ResNet_entropy_closure/StatefulPartitionedCall:output:238ResNet_entropy_closure/StatefulPartitionedCall:output:248ResNet_entropy_closure/StatefulPartitionedCall:output:258ResNet_entropy_closure/StatefulPartitionedCall:output:268ResNet_entropy_closure/StatefulPartitionedCall:output:278ResNet_entropy_closure/StatefulPartitionedCall:output:288ResNet_entropy_closure/StatefulPartitionedCall:output:298ResNet_entropy_closure/StatefulPartitionedCall:output:308ResNet_entropy_closure/StatefulPartitionedCall:output:318ResNet_entropy_closure/StatefulPartitionedCall:output:328ResNet_entropy_closure/StatefulPartitionedCall:output:338ResNet_entropy_closure/StatefulPartitionedCall:output:34*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:	�:�:
��:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58475081_58475219g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 5), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceunknownstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskX
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:X
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: T
Tensordot/ShapeShapecheckedandclipped:z:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	Transposecheckedandclipped:z:0Tensordot/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*(
_output_shapes
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB: H
Tensordot_1/ShapeShapeExp:y:0*
T0*
_output_shapes
:[
Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/GatherV2GatherV2Tensordot_1/Shape:output:0Tensordot_1/free:output:0"Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/GatherV2_1GatherV2Tensordot_1/Shape:output:0Tensordot_1/axes:output:0$Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_1/ProdProdTensordot_1/GatherV2:output:0Tensordot_1/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_1/Prod_1ProdTensordot_1/GatherV2_1:output:0Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/concatConcatV2Tensordot_1/free:output:0Tensordot_1/axes:output:0 Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_1/stackPackTensordot_1/Prod:output:0Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot_1/transpose	TransposeExp:y:0Tensordot_1/concat:output:0*
T0*(
_output_shapes
:�����������
Tensordot_1/ReshapeReshapeTensordot_1/transpose:y:0Tensordot_1/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_1/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_1/transpose_1	Transposetensordot_1_b%Tensordot_1/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
Tensordot_1/MatMulMatMulTensordot_1/Reshape:output:0Tensordot_1/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/concat_1ConcatV2Tensordot_1/GatherV2:output:0Tensordot_1/Const_2:output:0"Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_1ReshapeTensordot_1/MatMul:product:0Tensordot_1/concat_1:output:0*
T0*'
_output_shapes
:���������R
LogLogTensordot_1:output:0*
T0*'
_output_shapes
:���������E
NegNegLog:y:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2Neg:y:0Cast:y:0concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
Tensordot_2/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_2/freeConst*
_output_shapes
:*
dtype0*
valueB: X
Tensordot_2/ShapeShapecheckedandclipped_1:z:0*
T0*
_output_shapes
:[
Tensordot_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/GatherV2GatherV2Tensordot_2/Shape:output:0Tensordot_2/free:output:0"Tensordot_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_2/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/GatherV2_1GatherV2Tensordot_2/Shape:output:0Tensordot_2/axes:output:0$Tensordot_2/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_2/ProdProdTensordot_2/GatherV2:output:0Tensordot_2/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_2/Prod_1ProdTensordot_2/GatherV2_1:output:0Tensordot_2/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/concatConcatV2Tensordot_2/free:output:0Tensordot_2/axes:output:0 Tensordot_2/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_2/stackPackTensordot_2/Prod:output:0Tensordot_2/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot_2/transpose	Transposecheckedandclipped_1:z:0Tensordot_2/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
Tensordot_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/concat_1ConcatV2Tensordot_2/GatherV2:output:0Tensordot_2/Const_2:output:0"Tensordot_2/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_2ReshapeTensordot_2/MatMul:product:0Tensordot_2/concat_1:output:0*
T0*(
_output_shapes
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskZ
Tensordot_3/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_3/freeConst*
_output_shapes
:*
dtype0*
valueB: H
Tensordot_3/ShapeShapeMul:z:0*
T0*
_output_shapes
:[
Tensordot_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/GatherV2GatherV2Tensordot_3/Shape:output:0Tensordot_3/free:output:0"Tensordot_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_3/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/GatherV2_1GatherV2Tensordot_3/Shape:output:0Tensordot_3/axes:output:0$Tensordot_3/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_3/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_3/ProdProdTensordot_3/GatherV2:output:0Tensordot_3/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_3/Prod_1ProdTensordot_3/GatherV2_1:output:0Tensordot_3/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/concatConcatV2Tensordot_3/free:output:0Tensordot_3/axes:output:0 Tensordot_3/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_3/stackPackTensordot_3/Prod:output:0Tensordot_3/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot_3/transpose	TransposeMul:z:0Tensordot_3/concat:output:0*
T0*(
_output_shapes
:�����������
Tensordot_3/ReshapeReshapeTensordot_3/transpose:y:0Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_3/transpose_1	Transposestrided_slice_1:output:0%Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
Tensordot_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/concat_1ConcatV2Tensordot_3/GatherV2:output:0Tensordot_3/Const_2:output:0"Tensordot_3/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_3ReshapeTensordot_3/MatMul:product:0Tensordot_3/concat_1:output:0*
T0*'
_output_shapes
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475045*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475047*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475049* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475051*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475053* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475055*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475057* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475059*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475061* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475063*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475065* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475067*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475069* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475071*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58475073*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentity7ResNet_entropy_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^ResNet_entropy_closure/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp^checked
^checked_16^dense_output/kernel/Regularizer/Square/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2`
.ResNet_entropy_closure/StatefulPartitionedCall.ResNet_entropy_closure/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2
checkedchecked2
	checked_1	checked_12n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:J F
'
_output_shapes
:���������

_user_specified_namex:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58474948
x2
resnet_entropy_closure_58474284:	�.
resnet_entropy_closure_58474286:	�3
resnet_entropy_closure_58474288:
��.
resnet_entropy_closure_58474290:	�3
resnet_entropy_closure_58474292:
��.
resnet_entropy_closure_58474294:	�3
resnet_entropy_closure_58474296:
��.
resnet_entropy_closure_58474298:	�3
resnet_entropy_closure_58474300:
��.
resnet_entropy_closure_58474302:	�3
resnet_entropy_closure_58474304:
��.
resnet_entropy_closure_58474306:	�3
resnet_entropy_closure_58474308:
��.
resnet_entropy_closure_58474310:	�2
resnet_entropy_closure_58474312:	�-
resnet_entropy_closure_58474314:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��.ResNet_entropy_closure/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp�checked�	checked_1�5dense_output/kernel/Regularizer/Square/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
.ResNet_entropy_closure/StatefulPartitionedCallStatefulPartitionedCallxresnet_entropy_closure_58474284resnet_entropy_closure_58474286resnet_entropy_closure_58474288resnet_entropy_closure_58474290resnet_entropy_closure_58474292resnet_entropy_closure_58474294resnet_entropy_closure_58474296resnet_entropy_closure_58474298resnet_entropy_closure_58474300resnet_entropy_closure_58474302resnet_entropy_closure_58474304resnet_entropy_closure_58474306resnet_entropy_closure_58474308resnet_entropy_closure_58474310resnet_entropy_closure_58474312resnet_entropy_closure_58474314*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:	�:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:	�:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474677v
ones_like/ShapeShape7ResNet_entropy_closure/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:����������
PartitionedCallPartitionedCallones_like:output:07ResNet_entropy_closure/StatefulPartitionedCall:output:17ResNet_entropy_closure/StatefulPartitionedCall:output:27ResNet_entropy_closure/StatefulPartitionedCall:output:37ResNet_entropy_closure/StatefulPartitionedCall:output:47ResNet_entropy_closure/StatefulPartitionedCall:output:57ResNet_entropy_closure/StatefulPartitionedCall:output:67ResNet_entropy_closure/StatefulPartitionedCall:output:77ResNet_entropy_closure/StatefulPartitionedCall:output:87ResNet_entropy_closure/StatefulPartitionedCall:output:98ResNet_entropy_closure/StatefulPartitionedCall:output:108ResNet_entropy_closure/StatefulPartitionedCall:output:118ResNet_entropy_closure/StatefulPartitionedCall:output:128ResNet_entropy_closure/StatefulPartitionedCall:output:138ResNet_entropy_closure/StatefulPartitionedCall:output:148ResNet_entropy_closure/StatefulPartitionedCall:output:158ResNet_entropy_closure/StatefulPartitionedCall:output:168ResNet_entropy_closure/StatefulPartitionedCall:output:178ResNet_entropy_closure/StatefulPartitionedCall:output:188ResNet_entropy_closure/StatefulPartitionedCall:output:198ResNet_entropy_closure/StatefulPartitionedCall:output:208ResNet_entropy_closure/StatefulPartitionedCall:output:218ResNet_entropy_closure/StatefulPartitionedCall:output:228ResNet_entropy_closure/StatefulPartitionedCall:output:238ResNet_entropy_closure/StatefulPartitionedCall:output:248ResNet_entropy_closure/StatefulPartitionedCall:output:258ResNet_entropy_closure/StatefulPartitionedCall:output:268ResNet_entropy_closure/StatefulPartitionedCall:output:278ResNet_entropy_closure/StatefulPartitionedCall:output:288ResNet_entropy_closure/StatefulPartitionedCall:output:298ResNet_entropy_closure/StatefulPartitionedCall:output:308ResNet_entropy_closure/StatefulPartitionedCall:output:318ResNet_entropy_closure/StatefulPartitionedCall:output:328ResNet_entropy_closure/StatefulPartitionedCall:output:338ResNet_entropy_closure/StatefulPartitionedCall:output:34*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:	�:�:
��:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474320_58474678g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 5), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceunknownstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskX
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:X
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB: T
Tensordot/ShapeShapecheckedandclipped:z:0*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	Transposecheckedandclipped:z:0Tensordot/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*(
_output_shapes
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB: H
Tensordot_1/ShapeShapeExp:y:0*
T0*
_output_shapes
:[
Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/GatherV2GatherV2Tensordot_1/Shape:output:0Tensordot_1/free:output:0"Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/GatherV2_1GatherV2Tensordot_1/Shape:output:0Tensordot_1/axes:output:0$Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_1/ProdProdTensordot_1/GatherV2:output:0Tensordot_1/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_1/Prod_1ProdTensordot_1/GatherV2_1:output:0Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/concatConcatV2Tensordot_1/free:output:0Tensordot_1/axes:output:0 Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_1/stackPackTensordot_1/Prod:output:0Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot_1/transpose	TransposeExp:y:0Tensordot_1/concat:output:0*
T0*(
_output_shapes
:�����������
Tensordot_1/ReshapeReshapeTensordot_1/transpose:y:0Tensordot_1/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_1/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_1/transpose_1	Transposetensordot_1_b%Tensordot_1/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
Tensordot_1/MatMulMatMulTensordot_1/Reshape:output:0Tensordot_1/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_1/concat_1ConcatV2Tensordot_1/GatherV2:output:0Tensordot_1/Const_2:output:0"Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_1ReshapeTensordot_1/MatMul:product:0Tensordot_1/concat_1:output:0*
T0*'
_output_shapes
:���������R
LogLogTensordot_1:output:0*
T0*'
_output_shapes
:���������E
NegNegLog:y:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2Neg:y:0Cast:y:0concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
Tensordot_2/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_2/freeConst*
_output_shapes
:*
dtype0*
valueB: X
Tensordot_2/ShapeShapecheckedandclipped_1:z:0*
T0*
_output_shapes
:[
Tensordot_2/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/GatherV2GatherV2Tensordot_2/Shape:output:0Tensordot_2/free:output:0"Tensordot_2/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_2/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/GatherV2_1GatherV2Tensordot_2/Shape:output:0Tensordot_2/axes:output:0$Tensordot_2/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_2/ProdProdTensordot_2/GatherV2:output:0Tensordot_2/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_2/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_2/Prod_1ProdTensordot_2/GatherV2_1:output:0Tensordot_2/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/concatConcatV2Tensordot_2/free:output:0Tensordot_2/axes:output:0 Tensordot_2/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_2/stackPackTensordot_2/Prod:output:0Tensordot_2/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot_2/transpose	Transposecheckedandclipped_1:z:0Tensordot_2/concat:output:0*
T0*'
_output_shapes
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
Tensordot_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_2/concat_1ConcatV2Tensordot_2/GatherV2:output:0Tensordot_2/Const_2:output:0"Tensordot_2/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_2ReshapeTensordot_2/MatMul:product:0Tensordot_2/concat_1:output:0*
T0*(
_output_shapes
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_maskZ
Tensordot_3/axesConst*
_output_shapes
:*
dtype0*
valueB:Z
Tensordot_3/freeConst*
_output_shapes
:*
dtype0*
valueB: H
Tensordot_3/ShapeShapeMul:z:0*
T0*
_output_shapes
:[
Tensordot_3/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/GatherV2GatherV2Tensordot_3/Shape:output:0Tensordot_3/free:output:0"Tensordot_3/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:]
Tensordot_3/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/GatherV2_1GatherV2Tensordot_3/Shape:output:0Tensordot_3/axes:output:0$Tensordot_3/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot_3/ConstConst*
_output_shapes
:*
dtype0*
valueB: t
Tensordot_3/ProdProdTensordot_3/GatherV2:output:0Tensordot_3/Const:output:0*
T0*
_output_shapes
: ]
Tensordot_3/Const_1Const*
_output_shapes
:*
dtype0*
valueB: z
Tensordot_3/Prod_1ProdTensordot_3/GatherV2_1:output:0Tensordot_3/Const_1:output:0*
T0*
_output_shapes
: Y
Tensordot_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/concatConcatV2Tensordot_3/free:output:0Tensordot_3/axes:output:0 Tensordot_3/concat/axis:output:0*
N*
T0*
_output_shapes
:
Tensordot_3/stackPackTensordot_3/Prod:output:0Tensordot_3/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot_3/transpose	TransposeMul:z:0Tensordot_3/concat:output:0*
T0*(
_output_shapes
:�����������
Tensordot_3/ReshapeReshapeTensordot_3/transpose:y:0Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_3/transpose_1	Transposestrided_slice_1:output:0%Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes
:	��
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
Tensordot_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot_3/concat_1ConcatV2Tensordot_3/GatherV2:output:0Tensordot_3/Const_2:output:0"Tensordot_3/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Tensordot_3ReshapeTensordot_3/MatMul:product:0Tensordot_3/concat_1:output:0*
T0*'
_output_shapes
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceadd:z:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474284*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474286*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474288* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_0_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_0_layer_0/kernel/Regularizer/SumSum-block_0_layer_0/kernel/Regularizer/Square:y:01block_0_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_0_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_0_layer_0/kernel/Regularizer/mulMul1block_0_layer_0/kernel/Regularizer/mul/x:output:0/block_0_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474290*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_0_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_0_layer_0/bias/Regularizer/SumSum+block_0_layer_0/bias/Regularizer/Square:y:0/block_0_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_0_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_0_layer_0/bias/Regularizer/mulMul/block_0_layer_0/bias/Regularizer/mul/x:output:0-block_0_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474292* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_1_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_1_layer_0/kernel/Regularizer/SumSum-block_1_layer_0/kernel/Regularizer/Square:y:01block_1_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_1_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_1_layer_0/kernel/Regularizer/mulMul1block_1_layer_0/kernel/Regularizer/mul/x:output:0/block_1_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474294*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_1_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_1_layer_0/bias/Regularizer/SumSum+block_1_layer_0/bias/Regularizer/Square:y:0/block_1_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_1_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_1_layer_0/bias/Regularizer/mulMul/block_1_layer_0/bias/Regularizer/mul/x:output:0-block_1_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474296* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_2_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_2_layer_0/kernel/Regularizer/SumSum-block_2_layer_0/kernel/Regularizer/Square:y:01block_2_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_2_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_2_layer_0/kernel/Regularizer/mulMul1block_2_layer_0/kernel/Regularizer/mul/x:output:0/block_2_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474298*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_2_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_2_layer_0/bias/Regularizer/SumSum+block_2_layer_0/bias/Regularizer/Square:y:0/block_2_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_2_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_2_layer_0/bias/Regularizer/mulMul/block_2_layer_0/bias/Regularizer/mul/x:output:0-block_2_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474300* 
_output_shapes
:
��*
dtype0�
)block_3_layer_0/kernel/Regularizer/SquareSquare@block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_3_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_3_layer_0/kernel/Regularizer/SumSum-block_3_layer_0/kernel/Regularizer/Square:y:01block_3_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_3_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_3_layer_0/kernel/Regularizer/mulMul1block_3_layer_0/kernel/Regularizer/mul/x:output:0/block_3_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474302*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474304* 
_output_shapes
:
��*
dtype0�
)block_4_layer_0/kernel/Regularizer/SquareSquare@block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_4_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_4_layer_0/kernel/Regularizer/SumSum-block_4_layer_0/kernel/Regularizer/Square:y:01block_4_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_4_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_4_layer_0/kernel/Regularizer/mulMul1block_4_layer_0/kernel/Regularizer/mul/x:output:0/block_4_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474306*
_output_shapes	
:�*
dtype0�
'block_4_layer_0/bias/Regularizer/SquareSquare>block_4_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_4_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_4_layer_0/bias/Regularizer/SumSum+block_4_layer_0/bias/Regularizer/Square:y:0/block_4_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_4_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_4_layer_0/bias/Regularizer/mulMul/block_4_layer_0/bias/Regularizer/mul/x:output:0-block_4_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474308* 
_output_shapes
:
��*
dtype0�
)block_5_layer_0/kernel/Regularizer/SquareSquare@block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
(block_5_layer_0/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
&block_5_layer_0/kernel/Regularizer/SumSum-block_5_layer_0/kernel/Regularizer/Square:y:01block_5_layer_0/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: m
(block_5_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
&block_5_layer_0/kernel/Regularizer/mulMul1block_5_layer_0/kernel/Regularizer/mul/x:output:0/block_5_layer_0/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474310*
_output_shapes	
:�*
dtype0�
'block_5_layer_0/bias/Regularizer/SquareSquare>block_5_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_5_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_5_layer_0/bias/Regularizer/SumSum+block_5_layer_0/bias/Regularizer/Square:y:0/block_5_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_5_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_5_layer_0/bias/Regularizer/mulMul/block_5_layer_0/bias/Regularizer/mul/x:output:0-block_5_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_58474312*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
%dense_output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
#dense_output/kernel/Regularizer/SumSum*dense_output/kernel/Regularizer/Square:y:0.dense_output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: j
%dense_output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
#dense_output/kernel/Regularizer/mulMul.dense_output/kernel/Regularizer/mul/x:output:0,dense_output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentity7ResNet_entropy_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^ResNet_entropy_closure/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_4_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_5_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp^checked
^checked_16^dense_output/kernel/Regularizer/Square/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2`
.ResNet_entropy_closure/StatefulPartitionedCall.ResNet_entropy_closure/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_3_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp6block_4_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_4_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp6block_5_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_5_layer_0/kernel/Regularizer/Square/ReadVariableOp2
checkedchecked2
	checked_1	checked_12n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:J F
'
_output_shapes
:���������

_user_specified_namex:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
__inference_loss_fn_9_58478170N
?block_3_layer_0_bias_regularizer_square_readvariableop_resource:	�
identity��6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp�
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp?block_3_layer_0_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_3_layer_0/bias/Regularizer/SquareSquare>block_3_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
&block_3_layer_0/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
$block_3_layer_0/bias/Regularizer/SumSum+block_3_layer_0/bias/Regularizer/Square:y:0/block_3_layer_0/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&block_3_layer_0/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
$block_3_layer_0/bias/Regularizer/mulMul/block_3_layer_0/bias/Regularizer/mul/x:output:0-block_3_layer_0/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentity(block_3_layer_0/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^block_3_layer_0/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp6block_3_layer_0/bias/Regularizer/Square/ReadVariableOp
�
�
]__inference___backward_layer_input_layer_call_and_return_conditional_losses_58474639_58474652
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������u
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes	
:��
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes
:	�*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������j

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes
:	�i

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������:	�:���������*b
forward_function_nameIG__forward_layer_input_layer_call_and_return_conditional_losses_58474651:. *
(
_output_shapes
:����������:%!

_output_shapes
:	�:-)
'
_output_shapes
:���������
�
�
I__inference_layer_input_layer_call_and_return_conditional_losses_58473230

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
$layer_input/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
"layer_input/kernel/Regularizer/SumSum)layer_input/kernel/Regularizer/Square:y:0-layer_input/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$layer_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
"layer_input/kernel/Regularizer/mulMul-layer_input/kernel/Regularizer/mul/x:output:0+layer_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
"layer_input/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 layer_input/bias/Regularizer/SumSum'layer_input/bias/Regularizer/Square:y:0+layer_input/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"layer_input/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 layer_input/bias/Regularizer/mulMul+layer_input/bias/Regularizer/mul/x:output:0)layer_input/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_layer_input_layer_call_fn_58477677

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_layer_input_layer_call_and_return_conditional_losses_58473230p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������<
output_20
StatefulPartitionedCall:1���������<
output_30
StatefulPartitionedCall:2���������tensorflow/serving/predict:��
�

core_model
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api

signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_model
�
	layer-0

layer_with_weights-0

layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
layer-8
layer_with_weights-3
layer-9
layer-10
layer-11
layer_with_weights-4
layer-12
layer-13
layer-14
layer_with_weights-5
layer-15
layer-16
layer-17
layer_with_weights-6
layer-18
layer-19
layer_with_weights-7
layer-20
	variables
trainable_variables
 regularization_losses
!	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_network
�
"iter

#beta_1

$beta_2
	%decay
&learning_rate'm�(m�)m�*m�+m�,m�-m�.m�/m�0m�1m�2m�3m�4m�5m�6m�'v�(v�)v�*v�+v�,v�-v�.v�/v�0v�1v�2v�3v�4v�5v�6v�"
	optimizer
 "
trackable_dict_wrapper
�
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615"
trackable_list_wrapper
�
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615"
trackable_list_wrapper
 "
trackable_list_wrapper
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
"
_tf_keras_input_layer
�

'kernel
(bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
@	keras_api"
_tf_keras_layer
�

)kernel
*bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
I	keras_api"
_tf_keras_layer
�

+kernel
,bias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
R	keras_api"
_tf_keras_layer
�

-kernel
.bias
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
[	keras_api"
_tf_keras_layer
�

/kernel
0bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
`	variables
atrainable_variables
bregularization_losses
c	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
d	keras_api"
_tf_keras_layer
�

1kernel
2bias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
m	keras_api"
_tf_keras_layer
�

3kernel
4bias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
r	variables
strainable_variables
tregularization_losses
u	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

5kernel
6bias
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615"
trackable_list_wrapper
�
'0
(1
)2
*3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14"
trackable_list_wrapper
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
 regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
%:#	�2layer_input/kernel
:�2layer_input/bias
*:(
��2block_0_layer_0/kernel
#:!�2block_0_layer_0/bias
*:(
��2block_1_layer_0/kernel
#:!�2block_1_layer_0/bias
*:(
��2block_2_layer_0/kernel
#:!�2block_2_layer_0/bias
*:(
��2block_3_layer_0/kernel
#:!�2block_3_layer_0/bias
*:(
��2block_4_layer_0/kernel
#:!�2block_4_layer_0/bias
*:(
��2block_5_layer_0/kernel
#:!�2block_5_layer_0/bias
&:$	�2dense_output/kernel
:2dense_output/bias
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
o
0
�1
�2
�3
�4
�5
�6
�7
�8
�9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
\	variables
]trainable_variables
^regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
`	variables
atrainable_variables
bregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
n	variables
otrainable_variables
pregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
r	variables
strainable_variables
tregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
�
	0

1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
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
0
�0
�1"
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
0
�0
�1"
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
0
�0
�1"
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
0
�0
�1"
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
0
�0
�1"
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
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
*:(	�2Adam/layer_input/kernel/m
$:"�2Adam/layer_input/bias/m
/:-
��2Adam/block_0_layer_0/kernel/m
(:&�2Adam/block_0_layer_0/bias/m
/:-
��2Adam/block_1_layer_0/kernel/m
(:&�2Adam/block_1_layer_0/bias/m
/:-
��2Adam/block_2_layer_0/kernel/m
(:&�2Adam/block_2_layer_0/bias/m
/:-
��2Adam/block_3_layer_0/kernel/m
(:&�2Adam/block_3_layer_0/bias/m
/:-
��2Adam/block_4_layer_0/kernel/m
(:&�2Adam/block_4_layer_0/bias/m
/:-
��2Adam/block_5_layer_0/kernel/m
(:&�2Adam/block_5_layer_0/bias/m
+:)	�2Adam/dense_output/kernel/m
$:"2Adam/dense_output/bias/m
*:(	�2Adam/layer_input/kernel/v
$:"�2Adam/layer_input/bias/v
/:-
��2Adam/block_0_layer_0/kernel/v
(:&�2Adam/block_0_layer_0/bias/v
/:-
��2Adam/block_1_layer_0/kernel/v
(:&�2Adam/block_1_layer_0/bias/v
/:-
��2Adam/block_2_layer_0/kernel/v
(:&�2Adam/block_2_layer_0/bias/v
/:-
��2Adam/block_3_layer_0/kernel/v
(:&�2Adam/block_3_layer_0/bias/v
/:-
��2Adam/block_4_layer_0/kernel/v
(:&�2Adam/block_4_layer_0/bias/v
/:-
��2Adam/block_5_layer_0/kernel/v
(:&�2Adam/block_5_layer_0/bias/v
+:)	�2Adam/dense_output/kernel/v
$:"2Adam/dense_output/bias/v
�2�
0__inference_sobolev_model_layer_call_fn_58474993
0__inference_sobolev_model_layer_call_fn_58476389
0__inference_sobolev_model_layer_call_fn_58476436
0__inference_sobolev_model_layer_call_fn_58475581�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58476810
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58477184
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58475889
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58476197�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
#__inference__wrapped_model_58473201input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
9__inference_ResNet_entropy_closure_layer_call_fn_58473606
9__inference_ResNet_entropy_closure_layer_call_fn_58477311
9__inference_ResNet_entropy_closure_layer_call_fn_58477348
9__inference_ResNet_entropy_closure_layer_call_fn_58473985�
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
�2�
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58477502
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58477656
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474131
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474277�
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
�B�
&__inference_signature_wrapper_58476342input_1"�
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
 
�2�
.__inference_layer_input_layer_call_fn_58477677�
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
I__inference_layer_input_layer_call_and_return_conditional_losses_58477699�
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
2__inference_block_0_layer_0_layer_call_fn_58477720�
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
M__inference_block_0_layer_0_layer_call_and_return_conditional_losses_58477742�
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
&__inference_add_layer_call_fn_58477748�
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
A__inference_add_layer_call_and_return_conditional_losses_58477754�
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
2__inference_block_1_layer_0_layer_call_fn_58477775�
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
M__inference_block_1_layer_0_layer_call_and_return_conditional_losses_58477797�
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
(__inference_add_1_layer_call_fn_58477803�
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
C__inference_add_1_layer_call_and_return_conditional_losses_58477809�
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
2__inference_block_2_layer_0_layer_call_fn_58477830�
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
M__inference_block_2_layer_0_layer_call_and_return_conditional_losses_58477852�
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
(__inference_add_2_layer_call_fn_58477858�
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
C__inference_add_2_layer_call_and_return_conditional_losses_58477864�
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
2__inference_block_3_layer_0_layer_call_fn_58477885�
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
M__inference_block_3_layer_0_layer_call_and_return_conditional_losses_58477907�
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
(__inference_add_3_layer_call_fn_58477913�
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
C__inference_add_3_layer_call_and_return_conditional_losses_58477919�
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
2__inference_block_4_layer_0_layer_call_fn_58477940�
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
M__inference_block_4_layer_0_layer_call_and_return_conditional_losses_58477962�
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
(__inference_add_4_layer_call_fn_58477968�
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
C__inference_add_4_layer_call_and_return_conditional_losses_58477974�
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
2__inference_block_5_layer_0_layer_call_fn_58477995�
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
M__inference_block_5_layer_0_layer_call_and_return_conditional_losses_58478017�
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
(__inference_add_5_layer_call_fn_58478023�
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
C__inference_add_5_layer_call_and_return_conditional_losses_58478029�
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
/__inference_dense_output_layer_call_fn_58478044�
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
J__inference_dense_output_layer_call_and_return_conditional_losses_58478060�
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
__inference_loss_fn_0_58478071�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_1_58478082�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_2_58478093�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_3_58478104�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_4_58478115�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_5_58478126�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_6_58478137�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_7_58478148�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_8_58478159�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_9_58478170�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_10_58478181�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_11_58478192�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_12_58478203�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_13_58478214�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_14_58478225�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
	J
Const
J	
Const_1
J	
Const_2�
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474131s'()*+,-./01234568�5
.�+
!�
input_1���������
p 

 
� "%�"
�
0���������
� �
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58474277s'()*+,-./01234568�5
.�+
!�
input_1���������
p

 
� "%�"
�
0���������
� �
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58477502r'()*+,-./01234567�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
T__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_58477656r'()*+,-./01234567�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
9__inference_ResNet_entropy_closure_layer_call_fn_58473606f'()*+,-./01234568�5
.�+
!�
input_1���������
p 

 
� "�����������
9__inference_ResNet_entropy_closure_layer_call_fn_58473985f'()*+,-./01234568�5
.�+
!�
input_1���������
p

 
� "�����������
9__inference_ResNet_entropy_closure_layer_call_fn_58477311e'()*+,-./01234567�4
-�*
 �
inputs���������
p 

 
� "�����������
9__inference_ResNet_entropy_closure_layer_call_fn_58477348e'()*+,-./01234567�4
-�*
 �
inputs���������
p

 
� "�����������
#__inference__wrapped_model_58473201�'()*+,-./0123456���0�-
&�#
!�
input_1���������
� "���
.
output_1"�
output_1���������
.
output_2"�
output_2���������
.
output_3"�
output_3����������
C__inference_add_1_layer_call_and_return_conditional_losses_58477809�\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "&�#
�
0����������
� �
(__inference_add_1_layer_call_fn_58477803y\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "������������
C__inference_add_2_layer_call_and_return_conditional_losses_58477864�\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "&�#
�
0����������
� �
(__inference_add_2_layer_call_fn_58477858y\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "������������
C__inference_add_3_layer_call_and_return_conditional_losses_58477919�\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "&�#
�
0����������
� �
(__inference_add_3_layer_call_fn_58477913y\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "������������
C__inference_add_4_layer_call_and_return_conditional_losses_58477974�\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "&�#
�
0����������
� �
(__inference_add_4_layer_call_fn_58477968y\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "������������
C__inference_add_5_layer_call_and_return_conditional_losses_58478029�\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "&�#
�
0����������
� �
(__inference_add_5_layer_call_fn_58478023y\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "������������
A__inference_add_layer_call_and_return_conditional_losses_58477754�\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "&�#
�
0����������
� �
&__inference_add_layer_call_fn_58477748y\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "������������
M__inference_block_0_layer_0_layer_call_and_return_conditional_losses_58477742^)*0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
2__inference_block_0_layer_0_layer_call_fn_58477720Q)*0�-
&�#
!�
inputs����������
� "������������
M__inference_block_1_layer_0_layer_call_and_return_conditional_losses_58477797^+,0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
2__inference_block_1_layer_0_layer_call_fn_58477775Q+,0�-
&�#
!�
inputs����������
� "������������
M__inference_block_2_layer_0_layer_call_and_return_conditional_losses_58477852^-.0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
2__inference_block_2_layer_0_layer_call_fn_58477830Q-.0�-
&�#
!�
inputs����������
� "������������
M__inference_block_3_layer_0_layer_call_and_return_conditional_losses_58477907^/00�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
2__inference_block_3_layer_0_layer_call_fn_58477885Q/00�-
&�#
!�
inputs����������
� "������������
M__inference_block_4_layer_0_layer_call_and_return_conditional_losses_58477962^120�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
2__inference_block_4_layer_0_layer_call_fn_58477940Q120�-
&�#
!�
inputs����������
� "������������
M__inference_block_5_layer_0_layer_call_and_return_conditional_losses_58478017^340�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
2__inference_block_5_layer_0_layer_call_fn_58477995Q340�-
&�#
!�
inputs����������
� "������������
J__inference_dense_output_layer_call_and_return_conditional_losses_58478060]560�-
&�#
!�
inputs����������
� "%�"
�
0���������
� �
/__inference_dense_output_layer_call_fn_58478044P560�-
&�#
!�
inputs����������
� "�����������
I__inference_layer_input_layer_call_and_return_conditional_losses_58477699]'(/�,
%�"
 �
inputs���������
� "&�#
�
0����������
� �
.__inference_layer_input_layer_call_fn_58477677P'(/�,
%�"
 �
inputs���������
� "�����������=
__inference_loss_fn_0_58478071'�

� 
� "� >
__inference_loss_fn_10_584781811�

� 
� "� >
__inference_loss_fn_11_584781922�

� 
� "� >
__inference_loss_fn_12_584782033�

� 
� "� >
__inference_loss_fn_13_584782144�

� 
� "� >
__inference_loss_fn_14_584782255�

� 
� "� =
__inference_loss_fn_1_58478082(�

� 
� "� =
__inference_loss_fn_2_58478093)�

� 
� "� =
__inference_loss_fn_3_58478104*�

� 
� "� =
__inference_loss_fn_4_58478115+�

� 
� "� =
__inference_loss_fn_5_58478126,�

� 
� "� =
__inference_loss_fn_6_58478137-�

� 
� "� =
__inference_loss_fn_7_58478148.�

� 
� "� =
__inference_loss_fn_8_58478159/�

� 
� "� =
__inference_loss_fn_9_584781700�

� 
� "� �
&__inference_signature_wrapper_58476342�'()*+,-./0123456���;�8
� 
1�.
,
input_1!�
input_1���������"���
.
output_1"�
output_1���������
.
output_2"�
output_2���������
.
output_3"�
output_3����������
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58475889�'()*+,-./0123456���4�1
*�'
!�
input_1���������
p 
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58476197�'()*+,-./0123456���4�1
*�'
!�
input_1���������
p
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58476810�'()*+,-./0123456���.�+
$�!
�
x���������
p 
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
K__inference_sobolev_model_layer_call_and_return_conditional_losses_58477184�'()*+,-./0123456���.�+
$�!
�
x���������
p
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
0__inference_sobolev_model_layer_call_fn_58474993�'()*+,-./0123456���4�1
*�'
!�
input_1���������
p 
� "Z�W
�
0���������
�
1���������
�
2����������
0__inference_sobolev_model_layer_call_fn_58475581�'()*+,-./0123456���4�1
*�'
!�
input_1���������
p
� "Z�W
�
0���������
�
1���������
�
2����������
0__inference_sobolev_model_layer_call_fn_58476389�'()*+,-./0123456���.�+
$�!
�
x���������
p 
� "Z�W
�
0���������
�
1���������
�
2����������
0__inference_sobolev_model_layer_call_fn_58476436�'()*+,-./0123456���.�+
$�!
�
x���������
p
� "Z�W
�
0���������
�
1���������
�
2���������
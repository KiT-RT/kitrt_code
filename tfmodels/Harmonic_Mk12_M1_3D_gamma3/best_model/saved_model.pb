��(
��
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
;
Elu
features"T
activations"T"
Ttype:
2
L
EluGrad
	gradients"T
outputs"T
	backprops"T"
Ttype:
2
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
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
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
 �"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��&
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
h
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
p

Variable_1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name
Variable_1
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

:*
dtype0
�
layer_input/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*#
shared_namelayer_input/kernel
z
&layer_input/kernel/Read/ReadVariableOpReadVariableOplayer_input/kernel*
_output_shapes
:	�*
dtype0
y
layer_input/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*!
shared_namelayer_input/bias
r
$layer_input/bias/Read/ReadVariableOpReadVariableOplayer_input/bias*
_output_shapes	
:�*
dtype0
�
block_0_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameblock_0_layer_0/kernel
�
*block_0_layer_0/kernel/Read/ReadVariableOpReadVariableOpblock_0_layer_0/kernel* 
_output_shapes
:
��*
dtype0
�
block_0_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameblock_0_layer_0/bias
z
(block_0_layer_0/bias/Read/ReadVariableOpReadVariableOpblock_0_layer_0/bias*
_output_shapes	
:�*
dtype0
�
block_1_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameblock_1_layer_0/kernel
�
*block_1_layer_0/kernel/Read/ReadVariableOpReadVariableOpblock_1_layer_0/kernel* 
_output_shapes
:
��*
dtype0
�
block_1_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameblock_1_layer_0/bias
z
(block_1_layer_0/bias/Read/ReadVariableOpReadVariableOpblock_1_layer_0/bias*
_output_shapes	
:�*
dtype0
�
block_2_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameblock_2_layer_0/kernel
�
*block_2_layer_0/kernel/Read/ReadVariableOpReadVariableOpblock_2_layer_0/kernel* 
_output_shapes
:
��*
dtype0
�
block_2_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameblock_2_layer_0/bias
z
(block_2_layer_0/bias/Read/ReadVariableOpReadVariableOpblock_2_layer_0/bias*
_output_shapes	
:�*
dtype0
�
dense_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_namedense_output/kernel
|
'dense_output/kernel/Read/ReadVariableOpReadVariableOpdense_output/kernel*
_output_shapes
:	�*
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
layer_input/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*%
shared_namelayer_input/kernel/m
~
(layer_input/kernel/m/Read/ReadVariableOpReadVariableOplayer_input/kernel/m*
_output_shapes
:	�*
dtype0
}
layer_input/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_namelayer_input/bias/m
v
&layer_input/bias/m/Read/ReadVariableOpReadVariableOplayer_input/bias/m*
_output_shapes	
:�*
dtype0
�
block_0_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*)
shared_nameblock_0_layer_0/kernel/m
�
,block_0_layer_0/kernel/m/Read/ReadVariableOpReadVariableOpblock_0_layer_0/kernel/m* 
_output_shapes
:
��*
dtype0
�
block_0_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameblock_0_layer_0/bias/m
~
*block_0_layer_0/bias/m/Read/ReadVariableOpReadVariableOpblock_0_layer_0/bias/m*
_output_shapes	
:�*
dtype0
�
block_1_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*)
shared_nameblock_1_layer_0/kernel/m
�
,block_1_layer_0/kernel/m/Read/ReadVariableOpReadVariableOpblock_1_layer_0/kernel/m* 
_output_shapes
:
��*
dtype0
�
block_1_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameblock_1_layer_0/bias/m
~
*block_1_layer_0/bias/m/Read/ReadVariableOpReadVariableOpblock_1_layer_0/bias/m*
_output_shapes	
:�*
dtype0
�
block_2_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*)
shared_nameblock_2_layer_0/kernel/m
�
,block_2_layer_0/kernel/m/Read/ReadVariableOpReadVariableOpblock_2_layer_0/kernel/m* 
_output_shapes
:
��*
dtype0
�
block_2_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameblock_2_layer_0/bias/m
~
*block_2_layer_0/bias/m/Read/ReadVariableOpReadVariableOpblock_2_layer_0/bias/m*
_output_shapes	
:�*
dtype0
�
dense_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_namedense_output/kernel/m
�
)dense_output/kernel/m/Read/ReadVariableOpReadVariableOpdense_output/kernel/m*
_output_shapes
:	�*
dtype0
~
dense_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namedense_output/bias/m
w
'dense_output/bias/m/Read/ReadVariableOpReadVariableOpdense_output/bias/m*
_output_shapes
:*
dtype0
�
layer_input/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*%
shared_namelayer_input/kernel/v
~
(layer_input/kernel/v/Read/ReadVariableOpReadVariableOplayer_input/kernel/v*
_output_shapes
:	�*
dtype0
}
layer_input/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_namelayer_input/bias/v
v
&layer_input/bias/v/Read/ReadVariableOpReadVariableOplayer_input/bias/v*
_output_shapes	
:�*
dtype0
�
block_0_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*)
shared_nameblock_0_layer_0/kernel/v
�
,block_0_layer_0/kernel/v/Read/ReadVariableOpReadVariableOpblock_0_layer_0/kernel/v* 
_output_shapes
:
��*
dtype0
�
block_0_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameblock_0_layer_0/bias/v
~
*block_0_layer_0/bias/v/Read/ReadVariableOpReadVariableOpblock_0_layer_0/bias/v*
_output_shapes	
:�*
dtype0
�
block_1_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*)
shared_nameblock_1_layer_0/kernel/v
�
,block_1_layer_0/kernel/v/Read/ReadVariableOpReadVariableOpblock_1_layer_0/kernel/v* 
_output_shapes
:
��*
dtype0
�
block_1_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameblock_1_layer_0/bias/v
~
*block_1_layer_0/bias/v/Read/ReadVariableOpReadVariableOpblock_1_layer_0/bias/v*
_output_shapes	
:�*
dtype0
�
block_2_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*)
shared_nameblock_2_layer_0/kernel/v
�
,block_2_layer_0/kernel/v/Read/ReadVariableOpReadVariableOpblock_2_layer_0/kernel/v* 
_output_shapes
:
��*
dtype0
�
block_2_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameblock_2_layer_0/bias/v
~
*block_2_layer_0/bias/v/Read/ReadVariableOpReadVariableOpblock_2_layer_0/bias/v*
_output_shapes	
:�*
dtype0
�
dense_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_namedense_output/kernel/v
�
)dense_output/kernel/v/Read/ReadVariableOpReadVariableOpdense_output/kernel/v*
_output_shapes
:	�*
dtype0
~
dense_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namedense_output/bias/v
w
'dense_output/bias/v/Read/ReadVariableOpReadVariableOpdense_output/bias/v*
_output_shapes
:*
dtype0
�
ConstConst*
_output_shapes

:H*
dtype0*�
value�B�H"�m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?طι�c����z����1A��ſ�1A��ſ��z���߷ι�c��ٷι�c�?��z���?�1A���?�1A���?��z���?��ι�c�?_�iI���<�y��п�T���ֿ�T���ֿ�<�y��п _�iI��_�iI�?�<�y���?�T����?�T����?�<�y���?0_�iI�?I�@Ap��f�6qyտ�ji�Uݿ�ji�Uݿg�6qyտI�@Ap��I�@Ap�?c�6qy�?�ji�U�?�ji�U�?h�6qy�?,I�@Ap�?I�@Ap��f�6qyտ�ji�Uݿ�ji�Uݿg�6qyտI�@Ap��I�@Ap�?c�6qy�?�ji�U�?�ji�U�?h�6qy�?,I�@Ap�?_�iI���<�y��п�T���ֿ�T���ֿ�<�y��п _�iI��_�iI�?�<�y���?�T����?�T����?�<�y���?0_�iI�?طι�c����z����1A��ſ�1A��ſ��z���߷ι�c��ٷι�c�?��z���?�1A���?�1A���?��z���?��ι�c�?*x4
�(ݿ*x4
�(ݿ*x4
�(ݿ*x4
�(ݿ*x4
�(ݿ*x4
�(ݿ*x4
�(ݿ*x4
�(ݿ*x4
�(ݿ*x4
�(ݿ*x4
�(ݿ*x4
�(ݿ����'�Կ����'�Կ����'�Կ����'�Կ����'�Կ����'�Կ����'�Կ����'�Կ����'�Կ����'�Կ����'�Կ����'�ԿiR��ؽ�iR��ؽ�iR��ؽ�iR��ؽ�iR��ؽ�iR��ؽ�iR��ؽ�iR��ؽ�iR��ؽ�iR��ؽ�iR��ؽ�iR��ؽ�mR��ؽ?mR��ؽ?mR��ؽ?mR��ؽ?mR��ؽ?mR��ؽ?mR��ؽ?mR��ؽ?mR��ؽ?mR��ؽ?mR��ؽ?mR��ؽ?����'��?����'��?����'��?����'��?����'��?����'��?����'��?����'��?����'��?����'��?����'��?����'��?*x4
�(�?*x4
�(�?*x4
�(�?*x4
�(�?*x4
�(�?*x4
�(�?*x4
�(�?*x4
�(�?*x4
�(�?*x4
�(�?*x4
�(�?*x4
�(�?�1A��ſ��z���طι�c��շι�c�?��z���?�1A���?�1A���?��z���?շι�c�?̷ι�c����z����1A��ſ�T���ֿ�<�y��п_�iI��_�iI�?�<�y���?�T����?�T����?�<�y���?_�iI�?_�iI���<�y��п�T���ֿ�ji�Uݿg�6qyտI�@Ap��I�@Ap�?f�6qy�?�ji�U�?�ji�U�?j�6qy�?I�@Ap�?I�@Ap��e�6qyտ�ji�Uݿ�ji�Uݿg�6qyտI�@Ap��I�@Ap�?f�6qy�?�ji�U�?�ji�U�?j�6qy�?I�@Ap�?I�@Ap��e�6qyտ�ji�Uݿ�T���ֿ�<�y��п_�iI��_�iI�?�<�y���?�T����?�T����?�<�y���?_�iI�?_�iI���<�y��п�T���ֿ�1A��ſ��z���طι�c��շι�c�?��z���?�1A���?�1A���?��z���?շι�c�?̷ι�c����z����1A��ſ
�
Const_1Const*
_output_shapes

:H*
dtype0*�
value�B�H"�|�����?|�����?|�����?|�����?|�����?|�����?|�����?|�����?|�����?|�����?|�����?|�����?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���!\�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?���b�-�?|�����?|�����?|�����?|�����?|�����?|�����?|�����?|�����?|�����?|�����?|�����?|�����?
x
Const_2Const*
_output_shapes

:*
dtype0*9
value0B."         ����MbP?����MbP?����MbP?

NoOpNoOp
�X
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*�W
value�WB�W B�W
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
�
	layer-0

layer_with_weights-0

layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
layer_with_weights-4
layer-8
layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
�
iter

beta_1

beta_2
	decay
learning_rate"m�#m�$m�%m�&m�'m�(m�)m�*m�+m�"v�#v�$v�%v�&v�'v�(v�)v�*v�+v�
 
V
 0
!1
"2
#3
$4
%5
&6
'7
(8
)9
*10
+11
F
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
 
�
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
 
 
Z
 mu
1	variables
2trainable_variables
3regularization_losses
4	keras_api
b
!
ev_cov_mat
5	variables
6trainable_variables
7regularization_losses
8	keras_api
h

"kernel
#bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api

=	keras_api
h

$kernel
%bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
R
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api

F	keras_api
h

&kernel
'bias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
R
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api

O	keras_api
h

(kernel
)bias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
R
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
h

*kernel
+bias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
V
 0
!1
"2
#3
$4
%5
&6
'7
(8
)9
*10
+11
F
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
 
�
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
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
DB
VARIABLE_VALUEVariable&variables/0/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
Variable_1&variables/1/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUElayer_input/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUElayer_input/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEblock_0_layer_0/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock_0_layer_0/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEblock_1_layer_0/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock_1_layer_0/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEblock_2_layer_0/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock_2_layer_0/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEdense_output/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEdense_output/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE

 0
!1

0
F
a0
b1
c2
d3
e4
f5
g6
h7
i8
j9
 
 

 0
 
 
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
1	variables
2trainable_variables
3regularization_losses

!0
 
 
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
5	variables
6trainable_variables
7regularization_losses

"0
#1

"0
#1
 
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
9	variables
:trainable_variables
;regularization_losses
 

$0
%1

$0
%1
 
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
>	variables
?trainable_variables
@regularization_losses
 
 
 
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
 

&0
'1

&0
'1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
 

(0
)1

(0
)1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
T	variables
Utrainable_variables
Vregularization_losses

*0
+1

*0
+1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses

 0
!1
f
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

 0
 
 
 
 

!0
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
lj
VARIABLE_VALUElayer_input/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUElayer_input/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEblock_0_layer_0/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEblock_0_layer_0/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEblock_1_layer_0/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEblock_1_layer_0/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEblock_2_layer_0/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEblock_2_layer_0/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEdense_output/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEdense_output/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUElayer_input/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUElayer_input/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEblock_0_layer_0/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEblock_0_layer_0/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEblock_1_layer_0/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEblock_1_layer_0/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEblock_2_layer_0/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEblock_2_layer_0/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEdense_output/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEdense_output/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1Variable
Variable_1layer_input/kernellayer_input/biasblock_0_layer_0/kernelblock_0_layer_0/biasblock_1_layer_0/kernelblock_1_layer_0/biasblock_2_layer_0/kernelblock_2_layer_0/biasdense_output/kerneldense_output/biasConstConst_1Const_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *.
f)R'
%__inference_signature_wrapper_2482869
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOp&layer_input/kernel/Read/ReadVariableOp$layer_input/bias/Read/ReadVariableOp*block_0_layer_0/kernel/Read/ReadVariableOp(block_0_layer_0/bias/Read/ReadVariableOp*block_1_layer_0/kernel/Read/ReadVariableOp(block_1_layer_0/bias/Read/ReadVariableOp*block_2_layer_0/kernel/Read/ReadVariableOp(block_2_layer_0/bias/Read/ReadVariableOp'dense_output/kernel/Read/ReadVariableOp%dense_output/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOptotal_6/Read/ReadVariableOpcount_6/Read/ReadVariableOptotal_7/Read/ReadVariableOpcount_7/Read/ReadVariableOptotal_8/Read/ReadVariableOpcount_8/Read/ReadVariableOptotal_9/Read/ReadVariableOpcount_9/Read/ReadVariableOp(layer_input/kernel/m/Read/ReadVariableOp&layer_input/bias/m/Read/ReadVariableOp,block_0_layer_0/kernel/m/Read/ReadVariableOp*block_0_layer_0/bias/m/Read/ReadVariableOp,block_1_layer_0/kernel/m/Read/ReadVariableOp*block_1_layer_0/bias/m/Read/ReadVariableOp,block_2_layer_0/kernel/m/Read/ReadVariableOp*block_2_layer_0/bias/m/Read/ReadVariableOp)dense_output/kernel/m/Read/ReadVariableOp'dense_output/bias/m/Read/ReadVariableOp(layer_input/kernel/v/Read/ReadVariableOp&layer_input/bias/v/Read/ReadVariableOp,block_0_layer_0/kernel/v/Read/ReadVariableOp*block_0_layer_0/bias/v/Read/ReadVariableOp,block_1_layer_0/kernel/v/Read/ReadVariableOp*block_1_layer_0/bias/v/Read/ReadVariableOp,block_2_layer_0/kernel/v/Read/ReadVariableOp*block_2_layer_0/bias/v/Read/ReadVariableOp)dense_output/kernel/v/Read/ReadVariableOp'dense_output/bias/v/Read/ReadVariableOpConst_3*F
Tin?
=2;	*
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
GPU2*0J 8� *)
f$R"
 __inference__traced_save_2484414
�

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1layer_input/kernellayer_input/biasblock_0_layer_0/kernelblock_0_layer_0/biasblock_1_layer_0/kernelblock_1_layer_0/biasblock_2_layer_0/kernelblock_2_layer_0/biasdense_output/kerneldense_output/biastotalcounttotal_1count_1total_2count_2total_3count_3total_4count_4total_5count_5total_6count_6total_7count_7total_8count_8total_9count_9layer_input/kernel/mlayer_input/bias/mblock_0_layer_0/kernel/mblock_0_layer_0/bias/mblock_1_layer_0/kernel/mblock_1_layer_0/bias/mblock_2_layer_0/kernel/mblock_2_layer_0/bias/mdense_output/kernel/mdense_output/bias/mlayer_input/kernel/vlayer_input/bias/vblock_0_layer_0/kernel/vblock_0_layer_0/bias/vblock_1_layer_0/kernel/vblock_1_layer_0/bias/vblock_2_layer_0/kernel/vblock_2_layer_0/bias/vdense_output/kernel/vdense_output/bias/v*E
Tin>
<2:*
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
GPU2*0J 8� *,
f'R%
#__inference__traced_restore_2484595��$
�
�
`__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_2481464_2481482
placeholder#
gradients_sub_grad_shape_inputs1
-gradients_sub_grad_shape_1_sub_readvariableop
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������g
gradients/sub_grad/ShapeShapegradients_sub_grad_shape_inputs*
T0*
_output_shapes
:w
gradients/sub_grad/Shape_1Shape-gradients_sub_grad_shape_1_sub_readvariableop*
T0*
_output_shapes
:�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/sub_grad/Shape:output:0#gradients/sub_grad/Shape_1:output:0*2
_output_shapes 
:���������:����������
gradients/sub_grad/SumSumgradients/grad_ys_0:output:0-gradients/sub_grad/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sum:output:0!gradients/sub_grad/Shape:output:0*
T0*'
_output_shapes
:���������m
gradients/sub_grad/NegNeggradients/grad_ys_0:output:0*
T0*'
_output_shapes
:����������
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg:y:0-gradients/sub_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/sub_grad/Reshape_1Reshape!gradients/sub_grad/Sum_1:output:0#gradients/sub_grad/Shape_1:output:0*
T0*
_output_shapes
:k
IdentityIdentity#gradients/sub_grad/Reshape:output:0*
T0*'
_output_shapes
:���������b

Identity_1Identity%gradients/sub_grad/Reshape_1:output:0*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������:*f
forward_function_nameMK__forward_mean_shift_layer_layer_call_and_return_conditional_losses_2481481:- )
'
_output_shapes
:���������:-)
'
_output_shapes
:���������: 

_output_shapes
:
�
�
S__inference___backward_add_layer_call_and_return_conditional_losses_2481377_2481394
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������g
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
:�����������
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*(
_output_shapes
:����������l
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*(
_output_shapes
:����������p

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������*Y
forward_function_name@>__forward_add_layer_call_and_return_conditional_losses_2481393:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������
�
�
2__inference_mean_shift_layer_layer_call_fn_2483856

inputs
unknown:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_mean_shift_layer_layer_call_and_return_conditional_losses_2480504o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
n
B__inference_add_1_layer_call_and_return_conditional_losses_2484030
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
1__inference_block_2_layer_0_layer_call_fn_2484051

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_2_layer_0_layer_call_and_return_conditional_losses_2480644p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_layer_input_layer_call_fn_2483898

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_layer_input_layer_call_and_return_conditional_losses_2480541p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
S
'__inference_add_2_layer_call_fn_2484079
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
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_2480656a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
/__inference_sobolev_model_layer_call_fn_2482947
x
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:

unknown_11

unknown_12

unknown_13
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2482168o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : : : : : : : : : : : :H:H:22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:���������

_user_specified_namex:$ 

_output_shapes

:H:$ 

_output_shapes

:H:$ 

_output_shapes

:
�
Q
%__inference_add_layer_call_fn_2483969
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
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_2480582a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
��
�
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2483849

inputs:
,mean_shift_layer_sub_readvariableop_resource:D
2decorrelation_layer_matmul_readvariableop_resource:=
*layer_input_matmul_readvariableop_resource:	�:
+layer_input_biasadd_readvariableop_resource:	�B
.block_0_layer_0_matmul_readvariableop_resource:
��>
/block_0_layer_0_biasadd_readvariableop_resource:	�B
.block_1_layer_0_matmul_readvariableop_resource:
��>
/block_1_layer_0_biasadd_readvariableop_resource:	�B
.block_2_layer_0_matmul_readvariableop_resource:
��>
/block_2_layer_0_biasadd_readvariableop_resource:	�>
+dense_output_matmul_readvariableop_resource:	�:
,dense_output_biasadd_readvariableop_resource:
identity��&block_0_layer_0/BiasAdd/ReadVariableOp�%block_0_layer_0/MatMul/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_1_layer_0/BiasAdd/ReadVariableOp�%block_1_layer_0/MatMul/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_2_layer_0/BiasAdd/ReadVariableOp�%block_2_layer_0/MatMul/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�)decorrelation_layer/MatMul/ReadVariableOp�#dense_output/BiasAdd/ReadVariableOp�"dense_output/MatMul/ReadVariableOp�5dense_output/kernel/Regularizer/Square/ReadVariableOp�"layer_input/BiasAdd/ReadVariableOp�!layer_input/MatMul/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�#mean_shift_layer/sub/ReadVariableOp�
#mean_shift_layer/sub/ReadVariableOpReadVariableOp,mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:*
dtype0�
mean_shift_layer/subSubinputs+mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)decorrelation_layer/MatMul/ReadVariableOpReadVariableOp2decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
decorrelation_layer/MatMulMatMulmean_shift_layer/sub:z:01decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!layer_input/MatMul/ReadVariableOpReadVariableOp*layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
layer_input/MatMulMatMul$decorrelation_layer/MatMul:product:0)layer_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"layer_input/BiasAdd/ReadVariableOpReadVariableOp+layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_input/BiasAddBiasAddlayer_input/MatMul:product:0*layer_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
tf.nn.elu/EluElulayer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%block_0_layer_0/MatMul/ReadVariableOpReadVariableOp.block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_0_layer_0/MatMulMatMultf.nn.elu/Elu:activations:0-block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_0_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_0_layer_0/BiasAddBiasAdd block_0_layer_0/MatMul:product:0.block_0_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
add/addAddV2layer_input/BiasAdd:output:0 block_0_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������V
tf.nn.elu_1/EluEluadd/add:z:0*
T0*(
_output_shapes
:�����������
%block_1_layer_0/MatMul/ReadVariableOpReadVariableOp.block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_1_layer_0/MatMulMatMultf.nn.elu_1/Elu:activations:0-block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_1_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_1_layer_0/BiasAddBiasAdd block_1_layer_0/MatMul:product:0.block_1_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
	add_1/addAddV2add/add:z:0 block_1_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������X
tf.nn.elu_2/EluEluadd_1/add:z:0*
T0*(
_output_shapes
:�����������
%block_2_layer_0/MatMul/ReadVariableOpReadVariableOp.block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_2_layer_0/MatMulMatMultf.nn.elu_2/Elu:activations:0-block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_2_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_2_layer_0/BiasAddBiasAdd block_2_layer_0/MatMul:product:0.block_2_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������v
	add_2/addAddV2add_1/add:z:0 block_2_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
"dense_output/MatMul/ReadVariableOpReadVariableOp+dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_output/MatMulMatMuladd_2/add:z:0*dense_output/MatMul/ReadVariableOp:value:0*
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
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:����������
NoOpNoOp'^block_0_layer_0/BiasAdd/ReadVariableOp&^block_0_layer_0/MatMul/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_1_layer_0/BiasAdd/ReadVariableOp&^block_1_layer_0/MatMul/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_2_layer_0/BiasAdd/ReadVariableOp&^block_2_layer_0/MatMul/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp*^decorrelation_layer/MatMul/ReadVariableOp$^dense_output/BiasAdd/ReadVariableOp#^dense_output/MatMul/ReadVariableOp6^dense_output/kernel/Regularizer/Square/ReadVariableOp#^layer_input/BiasAdd/ReadVariableOp"^layer_input/MatMul/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp$^mean_shift_layer/sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2P
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
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2V
)decorrelation_layer/MatMul/ReadVariableOp)decorrelation_layer/MatMul/ReadVariableOp2J
#dense_output/BiasAdd/ReadVariableOp#dense_output/BiasAdd/ReadVariableOp2H
"dense_output/MatMul/ReadVariableOp"dense_output/MatMul/ReadVariableOp2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2H
"layer_input/BiasAdd/ReadVariableOp"layer_input/BiasAdd/ReadVariableOp2F
!layer_input/MatMul/ReadVariableOp!layer_input/MatMul/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp2J
#mean_shift_layer/sub/ReadVariableOp#mean_shift_layer/sub/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
1__inference_block_0_layer_0_layer_call_fn_2483941

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_0_layer_0_layer_call_and_return_conditional_losses_2480570p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2480975

inputs&
mean_shift_layer_2480883:-
decorrelation_layer_2480886:&
layer_input_2480889:	�"
layer_input_2480891:	�+
block_0_layer_0_2480895:
��&
block_0_layer_0_2480897:	�+
block_1_layer_0_2480902:
��&
block_1_layer_0_2480904:	�+
block_2_layer_0_2480909:
��&
block_2_layer_0_2480911:	�'
dense_output_2480915:	�"
dense_output_2480917:
identity��'block_0_layer_0/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_1_layer_0/StatefulPartitionedCall�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_2_layer_0/StatefulPartitionedCall�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�+decorrelation_layer/StatefulPartitionedCall�$dense_output/StatefulPartitionedCall�5dense_output/kernel/Regularizer/Square/ReadVariableOp�#layer_input/StatefulPartitionedCall�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_2480883*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_mean_shift_layer_layer_call_and_return_conditional_losses_2480504�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_2480886*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_decorrelation_layer_layer_call_and_return_conditional_losses_2480515�
#layer_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_input_2480889layer_input_2480891*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_layer_input_layer_call_and_return_conditional_losses_2480541u
tf.nn.elu/EluElu,layer_input/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_0_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu/Elu:activations:0block_0_layer_0_2480895block_0_layer_0_2480897*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_0_layer_0_layer_call_and_return_conditional_losses_2480570�
add/PartitionedCallPartitionedCall,layer_input/StatefulPartitionedCall:output:00block_0_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_2480582g
tf.nn.elu_1/EluEluadd/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_1_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_1/Elu:activations:0block_1_layer_0_2480902block_1_layer_0_2480904*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_1_layer_0_layer_call_and_return_conditional_losses_2480607�
add_1/PartitionedCallPartitionedCalladd/PartitionedCall:output:00block_1_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_2480619i
tf.nn.elu_2/EluEluadd_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_2_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_2/Elu:activations:0block_2_layer_0_2480909block_2_layer_0_2480911*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_2_layer_0_layer_call_and_return_conditional_losses_2480644�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:00block_2_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_2480656�
$dense_output/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0dense_output_2480915dense_output_2480917*
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
GPU2*0J 8� *R
fMRK
I__inference_dense_output_layer_call_and_return_conditional_losses_2480674�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_2480889*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_2480891*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_2480895* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_2480897*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_2480902* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_2480904*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_2480909* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_2480911*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_output_2480915*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:����������
NoOpNoOp(^block_0_layer_0/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_1_layer_0/StatefulPartitionedCall7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_2_layer_0/StatefulPartitionedCall7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp,^decorrelation_layer/StatefulPartitionedCall%^dense_output/StatefulPartitionedCall6^dense_output/kernel/Regularizer/Square/ReadVariableOp$^layer_input/StatefulPartitionedCall3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2R
'block_0_layer_0/StatefulPartitionedCall'block_0_layer_0/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_1_layer_0/StatefulPartitionedCall'block_1_layer_0/StatefulPartitionedCall2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_2_layer_0/StatefulPartitionedCall'block_2_layer_0/StatefulPartitionedCall2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2J
#layer_input/StatefulPartitionedCall#layer_input/StatefulPartitionedCall2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_2484127P
=layer_input_kernel_regularizer_square_readvariableop_resource:	�
identity��4layer_input/kernel/Regularizer/Square/ReadVariableOp�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=layer_input_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
�
J__forward_block_0_layer_0_layer_call_and_return_conditional_losses_2481413
inputs_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *{
backward_function_namea___inference___backward_block_0_layer_0_layer_call_and_return_conditional_losses_2481401_248141420
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2483242
xQ
Cresnet_entropy_closure_mean_shift_layer_sub_readvariableop_resource:[
Iresnet_entropy_closure_decorrelation_layer_matmul_readvariableop_resource:T
Aresnet_entropy_closure_layer_input_matmul_readvariableop_resource:	�Q
Bresnet_entropy_closure_layer_input_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource:	�U
Bresnet_entropy_closure_dense_output_matmul_readvariableop_resource:	�Q
Cresnet_entropy_closure_dense_output_biasadd_readvariableop_resource:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp�@ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp�:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp�9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp�9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp�8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp�:ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�checked�	checked_1�5dense_output/kernel/Regularizer/Square/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
:ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOpReadVariableOpCresnet_entropy_closure_mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:*
dtype0�
+ResNet_entropy_closure/mean_shift_layer/subSubxBResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
@ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOpReadVariableOpIresnet_entropy_closure_decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
1ResNet_entropy_closure/decorrelation_layer/MatMulMatMul/ResNet_entropy_closure/mean_shift_layer/sub:z:0HResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOpReadVariableOpAresnet_entropy_closure_layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
)ResNet_entropy_closure/layer_input/MatMulMatMul;ResNet_entropy_closure/decorrelation_layer/MatMul:product:0@ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOpReadVariableOpBresnet_entropy_closure_layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*ResNet_entropy_closure/layer_input/BiasAddBiasAdd3ResNet_entropy_closure/layer_input/MatMul:product:0AResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$ResNet_entropy_closure/tf.nn.elu/EluElu3ResNet_entropy_closure/layer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_0_layer_0/MatMulMatMul2ResNet_entropy_closure/tf.nn.elu/Elu:activations:0DResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_0_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_0_layer_0/MatMul:product:0EResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
ResNet_entropy_closure/add/addAddV23ResNet_entropy_closure/layer_input/BiasAdd:output:07ResNet_entropy_closure/block_0_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&ResNet_entropy_closure/tf.nn.elu_1/EluElu"ResNet_entropy_closure/add/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_1_layer_0/MatMulMatMul4ResNet_entropy_closure/tf.nn.elu_1/Elu:activations:0DResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_1_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_1_layer_0/MatMul:product:0EResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_1/addAddV2"ResNet_entropy_closure/add/add:z:07ResNet_entropy_closure/block_1_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&ResNet_entropy_closure/tf.nn.elu_2/EluElu$ResNet_entropy_closure/add_1/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_2_layer_0/MatMulMatMul4ResNet_entropy_closure/tf.nn.elu_2/Elu:activations:0DResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_2_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_2_layer_0/MatMul:product:0EResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_2/addAddV2$ResNet_entropy_closure/add_1/add:z:07ResNet_entropy_closure/block_2_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOpReadVariableOpBresnet_entropy_closure_dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*ResNet_entropy_closure/dense_output/MatMulMatMul$ResNet_entropy_closure/add_2/add:z:0AResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:value:0*
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
:����������*
transpose_b(�
Agradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMul_1MatMul$ResNet_entropy_closure/add_2/add:z:0ones_like:output:0*
T0*
_output_shapes
:	�*
transpose_a(�
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
2gradient_tape/ResNet_entropy_closure/add_2/add/SumSumIgradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMul:product:0Igradient_tape/ResNet_entropy_closure/add_2/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_2/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_2/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_2/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_2/add/Sum_1SumIgradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMul:product:0Igradient_tape/ResNet_entropy_closure/add_2/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_2/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_2/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_2_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1:output:0DResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMul_1MatMul4ResNet_entropy_closure/tf.nn.elu_2/Elu:activations:0Agradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
8gradient_tape/ResNet_entropy_closure/tf.nn.elu_2/EluGradEluGradLgradient_tape/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMul:product:04ResNet_entropy_closure/tf.nn.elu_2/Elu:activations:0*
T0*(
_output_shapes
:�����������
AddNAddN?gradient_tape/ResNet_entropy_closure/add_2/add/Reshape:output:0Dgradient_tape/ResNet_entropy_closure/tf.nn.elu_2/EluGrad:backprops:0*
N*
T0*(
_output_shapes
:�����������
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
2gradient_tape/ResNet_entropy_closure/add_1/add/SumSum
AddN:sum:0Igradient_tape/ResNet_entropy_closure/add_1/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_1/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_1/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_1/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_1/add/Sum_1Sum
AddN:sum:0Igradient_tape/ResNet_entropy_closure/add_1/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_1/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_1/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_1_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1:output:0DResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMul_1MatMul4ResNet_entropy_closure/tf.nn.elu_1/Elu:activations:0Agradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
8gradient_tape/ResNet_entropy_closure/tf.nn.elu_1/EluGradEluGradLgradient_tape/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMul:product:04ResNet_entropy_closure/tf.nn.elu_1/Elu:activations:0*
T0*(
_output_shapes
:�����������
AddN_1AddN?gradient_tape/ResNet_entropy_closure/add_1/add/Reshape:output:0Dgradient_tape/ResNet_entropy_closure/tf.nn.elu_1/EluGrad:backprops:0*
N*
T0*(
_output_shapes
:�����������
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
0gradient_tape/ResNet_entropy_closure/add/add/SumSumAddN_1:sum:0Ggradient_tape/ResNet_entropy_closure/add/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
4gradient_tape/ResNet_entropy_closure/add/add/ReshapeReshape9gradient_tape/ResNet_entropy_closure/add/add/Sum:output:0;gradient_tape/ResNet_entropy_closure/add/add/Shape:output:0*
T0*(
_output_shapes
:�����������
2gradient_tape/ResNet_entropy_closure/add/add/Sum_1SumAddN_1:sum:0Ggradient_tape/ResNet_entropy_closure/add/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add/add/Reshape_1Reshape;gradient_tape/ResNet_entropy_closure/add/add/Sum_1:output:0=gradient_tape/ResNet_entropy_closure/add/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_0_layer_0/BiasAdd/BiasAddGradBiasAddGrad?gradient_tape/ResNet_entropy_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMulMatMul?gradient_tape/ResNet_entropy_closure/add/add/Reshape_1:output:0DResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMul_1MatMul2ResNet_entropy_closure/tf.nn.elu/Elu:activations:0?gradient_tape/ResNet_entropy_closure/add/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
6gradient_tape/ResNet_entropy_closure/tf.nn.elu/EluGradEluGradLgradient_tape/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMul:product:02ResNet_entropy_closure/tf.nn.elu/Elu:activations:0*
T0*(
_output_shapes
:�����������
AddN_2AddN=gradient_tape/ResNet_entropy_closure/add/add/Reshape:output:0Bgradient_tape/ResNet_entropy_closure/tf.nn.elu/EluGrad:backprops:0*
N*
T0*(
_output_shapes
:�����������
Dgradient_tape/ResNet_entropy_closure/layer_input/BiasAdd/BiasAddGradBiasAddGradAddN_2:sum:0*
T0*
_output_shapes	
:��
>gradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMulMatMulAddN_2:sum:0@ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
@gradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMul_1MatMul;ResNet_entropy_closure/decorrelation_layer/MatMul:product:0AddN_2:sum:0*
T0*
_output_shapes
:	�*
transpose_a(�
Fgradient_tape/ResNet_entropy_closure/decorrelation_layer/MatMul/MatMulMatMulHgradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMul:product:0HResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(p
?gradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/ShapeShapex*
T0*
_output_shapes
:�
Agradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Shape_1ShapeBResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:�
Ogradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/BroadcastGradientArgsBroadcastGradientArgsHgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Shape:output:0Jgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Shape_1:output:0*2
_output_shapes 
:���������:����������
=gradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/SumSumPgradient_tape/ResNet_entropy_closure/decorrelation_layer/MatMul/MatMul:product:0Tgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Agradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/ReshapeReshapeFgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Sum:output:0Hgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Shape:output:0*
T0*'
_output_shapes
:����������
CastCastJgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Reshape:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 3), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
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

:H*

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
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*'
_output_shapes
:���������H[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:HY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������HP
ExpExpTensordot:output:0*
T0*'
_output_shapes
:���������Hf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskE
LogLogstrided_slice_1:output:0*
T0*
_output_shapes
: Z
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
:z
Tensordot_1/transpose	TransposeExp:y:0Tensordot_1/concat:output:0*
T0*'
_output_shapes
:���������H�
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

:H�
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
:���������T
Log_1LogTensordot_1:output:0*
T0*'
_output_shapes
:���������R
addAddV2Log:y:0	Log_1:y:0*
T0*'
_output_shapes
:���������E
NegNegadd:z:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceunknownstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
truedivRealDivNeg:y:0strided_slice_2:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :z
concatConcatV2truediv:z:0Cast:y:0concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
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
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������u
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*'
_output_shapes
:���������H]
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:H[
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
T0*'
_output_shapes
:���������HT
Exp_1ExpTensordot_2:output:0*
T0*'
_output_shapes
:���������HV
MulMul	Exp_1:y:0tensordot_1_b*
T0*'
_output_shapes
:���������Hf
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceunknownstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:H*

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
:z
Tensordot_3/transpose	TransposeMul:z:0Tensordot_3/concat:output:0*
T0*'
_output_shapes
:���������H�
Tensordot_3/ReshapeReshapeTensordot_3/transpose:y:0Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_3/transpose_1	Transposestrided_slice_3:output:0%Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes

:H�
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
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
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������a
add_1AddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSlice	add_1:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAresnet_entropy_closure_layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBresnet_entropy_closure_dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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

Identity_1IdentityJgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Reshape:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp>^ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOpA^ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp;^ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp:^ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:^ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp9^ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp;^ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp^checked
^checked_16^dense_output/kernel/Regularizer/Square/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : : : : : : : : : : : :H:H:2~
=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp2�
@ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp@ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp2x
:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp2v
9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp2v
9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp2t
8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp2x
:ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp:ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2
checkedchecked2
	checked_1	checked_12n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:J F
'
_output_shapes
:���������

_user_specified_namex:$ 

_output_shapes

:H:$ 

_output_shapes

:H:$ 

_output_shapes

:
�
�
___inference___backward_block_2_layer_0_layer_call_and_return_conditional_losses_2481305_2481318
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������u
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes	
:��
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*(
_output_shapes
:����������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0* 
_output_shapes
:
��*
transpose_a(o
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*(
_output_shapes
:����������k

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0* 
_output_shapes
:
��i

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������:
��:����������*e
forward_function_nameLJ__forward_block_2_layer_0_layer_call_and_return_conditional_losses_2481317:. *
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������
�
�
8__inference_ResNet_entropy_closure_layer_call_fn_2481031
input_1
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2480975o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
>__forward_add_layer_call_and_return_conditional_losses_2481393
inputs_0

inputs_1_0
identity

inputs
inputs_1U
addAddV2inputs_0
inputs_1_0*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������*o
backward_function_nameUS__inference___backward_add_layer_call_and_return_conditional_losses_2481377_2481394:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_layer_input_layer_call_and_return_conditional_losses_2483920

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
L__inference_block_1_layer_0_layer_call_and_return_conditional_losses_2480607

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
P__inference_decorrelation_layer_layer_call_and_return_conditional_losses_2480515

inputs0
matmul_readvariableop_resource:
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__forward_layer_input_layer_call_and_return_conditional_losses_2481437
inputs_01
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : *w
backward_function_name][__inference___backward_layer_input_layer_call_and_return_conditional_losses_2481425_248143820
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481502

inputs&
mean_shift_layer_2480505:-
decorrelation_layer_2480516:&
layer_input_2480542:	�"
layer_input_2480544:	�+
block_0_layer_0_2480571:
��&
block_0_layer_0_2480573:	�+
block_1_layer_0_2480608:
��&
block_1_layer_0_2480610:	�+
block_2_layer_0_2480645:
��&
block_2_layer_0_2480647:	�'
dense_output_2480675:	�"
dense_output_2480677:
identity(
$dense_output_statefulpartitionedcall*
&dense_output_statefulpartitionedcall_0
add_2_partitionedcall
add_2_partitionedcall_0+
'block_2_layer_0_statefulpartitionedcall-
)block_2_layer_0_statefulpartitionedcall_0
tf_nn_elu_2_elu
add_1_partitionedcall
add_1_partitionedcall_0+
'block_1_layer_0_statefulpartitionedcall-
)block_1_layer_0_statefulpartitionedcall_0
tf_nn_elu_1_elu
add_partitionedcall
add_partitionedcall_0+
'block_0_layer_0_statefulpartitionedcall-
)block_0_layer_0_statefulpartitionedcall_0
tf_nn_elu_elu'
#layer_input_statefulpartitionedcall)
%layer_input_statefulpartitionedcall_0/
+decorrelation_layer_statefulpartitionedcall1
-decorrelation_layer_statefulpartitionedcall_0,
(mean_shift_layer_statefulpartitionedcall.
*mean_shift_layer_statefulpartitionedcall_0��'block_0_layer_0/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_1_layer_0/StatefulPartitionedCall�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_2_layer_0/StatefulPartitionedCall�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�+decorrelation_layer/StatefulPartitionedCall�$dense_output/StatefulPartitionedCall�5dense_output/kernel/Regularizer/Square/ReadVariableOp�#layer_input/StatefulPartitionedCall�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_2480505*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:���������:���������:*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_mean_shift_layer_layer_call_and_return_conditional_losses_2481481�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_2480516*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������::���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__forward_decorrelation_layer_layer_call_and_return_conditional_losses_2481456�
#layer_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_input_2480542layer_input_2480544*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:����������:	�:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__forward_layer_input_layer_call_and_return_conditional_losses_2481437u
tf.nn.elu/EluElu,layer_input/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_0_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu/Elu:activations:0block_0_layer_0_2480571block_0_layer_0_2480573*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__forward_block_0_layer_0_layer_call_and_return_conditional_losses_2481413�
add/PartitionedCallPartitionedCall,layer_input/StatefulPartitionedCall:output:00block_0_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *G
fBR@
>__forward_add_layer_call_and_return_conditional_losses_2481393g
tf.nn.elu_1/EluEluadd/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_1_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_1/Elu:activations:0block_1_layer_0_2480608block_1_layer_0_2480610*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__forward_block_1_layer_0_layer_call_and_return_conditional_losses_2481365�
add_1/PartitionedCallPartitionedCalladd/PartitionedCall:output:00block_1_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__forward_add_1_layer_call_and_return_conditional_losses_2481345i
tf.nn.elu_2/EluEluadd_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_2_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_2/Elu:activations:0block_2_layer_0_2480645block_2_layer_0_2480647*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__forward_block_2_layer_0_layer_call_and_return_conditional_losses_2481317�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:00block_2_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__forward_add_2_layer_call_and_return_conditional_losses_2481297�
$dense_output/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0dense_output_2480675dense_output_2480677*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:���������:	�:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__forward_dense_output_layer_call_and_return_conditional_losses_2481272�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_2480542*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_2480544*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_2480571* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_2480573*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_2480608* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_2480610*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_2480645* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_2480647*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_output_2480675*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:����������
NoOpNoOp(^block_0_layer_0/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_1_layer_0/StatefulPartitionedCall7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_2_layer_0/StatefulPartitionedCall7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp,^decorrelation_layer/StatefulPartitionedCall%^dense_output/StatefulPartitionedCall6^dense_output/kernel/Regularizer/Square/ReadVariableOp$^layer_input/StatefulPartitionedCall3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "7
add_1_partitionedcalladd_1/PartitionedCall:output:1"9
add_1_partitionedcall_0add_1/PartitionedCall:output:2"7
add_2_partitionedcalladd_2/PartitionedCall:output:1"9
add_2_partitionedcall_0add_2/PartitionedCall:output:2"3
add_partitionedcalladd/PartitionedCall:output:1"5
add_partitionedcall_0add/PartitionedCall:output:2"[
'block_0_layer_0_statefulpartitionedcall0block_0_layer_0/StatefulPartitionedCall:output:1"]
)block_0_layer_0_statefulpartitionedcall_00block_0_layer_0/StatefulPartitionedCall:output:2"[
'block_1_layer_0_statefulpartitionedcall0block_1_layer_0/StatefulPartitionedCall:output:1"]
)block_1_layer_0_statefulpartitionedcall_00block_1_layer_0/StatefulPartitionedCall:output:2"[
'block_2_layer_0_statefulpartitionedcall0block_2_layer_0/StatefulPartitionedCall:output:1"]
)block_2_layer_0_statefulpartitionedcall_00block_2_layer_0/StatefulPartitionedCall:output:2"c
+decorrelation_layer_statefulpartitionedcall4decorrelation_layer/StatefulPartitionedCall:output:1"e
-decorrelation_layer_statefulpartitionedcall_04decorrelation_layer/StatefulPartitionedCall:output:2"U
$dense_output_statefulpartitionedcall-dense_output/StatefulPartitionedCall:output:1"W
&dense_output_statefulpartitionedcall_0-dense_output/StatefulPartitionedCall:output:2"
identityIdentity:output:0"S
#layer_input_statefulpartitionedcall,layer_input/StatefulPartitionedCall:output:1"U
%layer_input_statefulpartitionedcall_0,layer_input/StatefulPartitionedCall:output:2"]
(mean_shift_layer_statefulpartitionedcall1mean_shift_layer/StatefulPartitionedCall:output:1"_
*mean_shift_layer_statefulpartitionedcall_01mean_shift_layer/StatefulPartitionedCall:output:2"0
tf_nn_elu_1_elutf.nn.elu_1/Elu:activations:0"0
tf_nn_elu_2_elutf.nn.elu_2/Elu:activations:0",
tf_nn_elu_elutf.nn.elu/Elu:activations:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : *�
backward_function_namehf__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481256_24815032R
'block_0_layer_0/StatefulPartitionedCall'block_0_layer_0/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_1_layer_0/StatefulPartitionedCall'block_1_layer_0/StatefulPartitionedCall2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_2_layer_0/StatefulPartitionedCall'block_2_layer_0/StatefulPartitionedCall2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2J
#layer_input/StatefulPartitionedCall#layer_input/StatefulPartitionedCall2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_sobolev_model_layer_call_fn_2482244
input_1
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:

unknown_11

unknown_12

unknown_13
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2482168o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : : : : : : : : : : : :H:H:22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:$ 

_output_shapes

:H:$ 

_output_shapes

:H:$ 

_output_shapes

:
�
�
8__inference_ResNet_entropy_closure_layer_call_fn_2480762
input_1
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2480735o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
G__forward_dense_output_layer_call_and_return_conditional_losses_2481272
inputs_01
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�5dense_output/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:����������: : *x
backward_function_name^\__inference___backward_dense_output_layer_call_and_return_conditional_losses_2481260_248127320
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�

J__inference_sobolev_model_layer_call_and_return_conditional_losses_2482168
x,
resnet_entropy_closure_2481816:0
resnet_entropy_closure_2481818:1
resnet_entropy_closure_2481820:	�-
resnet_entropy_closure_2481822:	�2
resnet_entropy_closure_2481824:
��-
resnet_entropy_closure_2481826:	�2
resnet_entropy_closure_2481828:
��-
resnet_entropy_closure_2481830:	�2
resnet_entropy_closure_2481832:
��-
resnet_entropy_closure_2481834:	�1
resnet_entropy_closure_2481836:	�,
resnet_entropy_closure_2481838:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��.ResNet_entropy_closure/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�checked�	checked_1�5dense_output/kernel/Regularizer/Square/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�	
.ResNet_entropy_closure/StatefulPartitionedCallStatefulPartitionedCallxresnet_entropy_closure_2481816resnet_entropy_closure_2481818resnet_entropy_closure_2481820resnet_entropy_closure_2481822resnet_entropy_closure_2481824resnet_entropy_closure_2481826resnet_entropy_closure_2481828resnet_entropy_closure_2481830resnet_entropy_closure_2481832resnet_entropy_closure_2481834resnet_entropy_closure_2481836resnet_entropy_closure_2481838*
Tin
2*$
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:	�:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:	�:���������::���������:���������:*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481935v
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
:����������
PartitionedCallPartitionedCallones_like:output:07ResNet_entropy_closure/StatefulPartitionedCall:output:17ResNet_entropy_closure/StatefulPartitionedCall:output:27ResNet_entropy_closure/StatefulPartitionedCall:output:37ResNet_entropy_closure/StatefulPartitionedCall:output:47ResNet_entropy_closure/StatefulPartitionedCall:output:57ResNet_entropy_closure/StatefulPartitionedCall:output:67ResNet_entropy_closure/StatefulPartitionedCall:output:77ResNet_entropy_closure/StatefulPartitionedCall:output:87ResNet_entropy_closure/StatefulPartitionedCall:output:98ResNet_entropy_closure/StatefulPartitionedCall:output:108ResNet_entropy_closure/StatefulPartitionedCall:output:118ResNet_entropy_closure/StatefulPartitionedCall:output:128ResNet_entropy_closure/StatefulPartitionedCall:output:138ResNet_entropy_closure/StatefulPartitionedCall:output:148ResNet_entropy_closure/StatefulPartitionedCall:output:158ResNet_entropy_closure/StatefulPartitionedCall:output:168ResNet_entropy_closure/StatefulPartitionedCall:output:178ResNet_entropy_closure/StatefulPartitionedCall:output:188ResNet_entropy_closure/StatefulPartitionedCall:output:198ResNet_entropy_closure/StatefulPartitionedCall:output:208ResNet_entropy_closure/StatefulPartitionedCall:output:218ResNet_entropy_closure/StatefulPartitionedCall:output:228ResNet_entropy_closure/StatefulPartitionedCall:output:23*#
Tin
2*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
:���������:::	�:�:
��:�:
��:�:
��:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *o
fjRh
f__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481844_2481936g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 3), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
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

:H*

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
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*'
_output_shapes
:���������H[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:HY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������HP
ExpExpTensordot:output:0*
T0*'
_output_shapes
:���������Hf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskE
LogLogstrided_slice_1:output:0*
T0*
_output_shapes
: Z
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
:z
Tensordot_1/transpose	TransposeExp:y:0Tensordot_1/concat:output:0*
T0*'
_output_shapes
:���������H�
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

:H�
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
:���������T
Log_1LogTensordot_1:output:0*
T0*'
_output_shapes
:���������R
addAddV2Log:y:0	Log_1:y:0*
T0*'
_output_shapes
:���������E
NegNegadd:z:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceunknownstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
truedivRealDivNeg:y:0strided_slice_2:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :z
concatConcatV2truediv:z:0Cast:y:0concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
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
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������u
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*'
_output_shapes
:���������H]
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:H[
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
T0*'
_output_shapes
:���������HT
Exp_1ExpTensordot_2:output:0*
T0*'
_output_shapes
:���������HV
MulMul	Exp_1:y:0tensordot_1_b*
T0*'
_output_shapes
:���������Hf
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceunknownstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:H*

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
:z
Tensordot_3/transpose	TransposeMul:z:0Tensordot_3/concat:output:0*
T0*'
_output_shapes
:���������H�
Tensordot_3/ReshapeReshapeTensordot_3/transpose:y:0Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_3/transpose_1	Transposestrided_slice_3:output:0%Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes

:H�
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
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
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������a
add_1AddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSlice	add_1:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481820*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481822*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481824* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481826*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481828* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481830*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481832* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481834*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481836*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:���������i

Identity_2Identitystrided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^ResNet_entropy_closure/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp^checked
^checked_16^dense_output/kernel/Regularizer/Square/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : : : : : : : : : : : :H:H:2`
.ResNet_entropy_closure/StatefulPartitionedCall.ResNet_entropy_closure/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2
checkedchecked2
	checked_1	checked_12n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:J F
'
_output_shapes
:���������

_user_specified_namex:$ 

_output_shapes

:H:$ 

_output_shapes

:H:$ 

_output_shapes

:
�
�
/__inference_sobolev_model_layer_call_fn_2481772
input_1
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:

unknown_11

unknown_12

unknown_13
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2481735o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : : : : : : : : : : : :H:H:22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:$ 

_output_shapes

:H:$ 

_output_shapes

:H:$ 

_output_shapes

:
�
l
@__inference_add_layer_call_and_return_conditional_losses_2483975
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�

�
c__inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_2481446_2481457
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:����������
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������::���������*i
forward_function_namePN__forward_decorrelation_layer_layer_call_and_return_conditional_losses_2481456:- )
'
_output_shapes
:���������:$ 

_output_shapes

::-)
'
_output_shapes
:���������
�
�
5__inference_decorrelation_layer_layer_call_fn_2483870

inputs
unknown:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_decorrelation_layer_layer_call_and_return_conditional_losses_2480515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
1__inference_block_1_layer_0_layer_call_fn_2483996

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_1_layer_0_layer_call_and_return_conditional_losses_2480607p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_8_2484215Q
>dense_output_kernel_regularizer_square_readvariableop_resource:	�
identity��5dense_output/kernel/Regularizer/Square/ReadVariableOp�
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp>dense_output_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
�
�
L__inference_block_2_layer_0_layer_call_and_return_conditional_losses_2484073

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
I__inference_dense_output_layer_call_and_return_conditional_losses_2484116

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�5dense_output/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_2484138J
;layer_input_bias_regularizer_square_readvariableop_resource:	�
identity��2layer_input/bias/Regularizer/Square/ReadVariableOp�
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOp;layer_input_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
�
�
__inference_loss_fn_4_2484171U
Ablock_1_layer_0_kernel_regularizer_square_readvariableop_resource:
��
identity��8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAblock_1_layer_0_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
�
n
B__inference_add_2_layer_call_and_return_conditional_losses_2484085
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
K__forward_mean_shift_layer_layer_call_and_return_conditional_losses_2481481
inputs_0)
sub_readvariableop_resource:
identity

inputs
sub_readvariableop��sub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype0b
subSubinputs_0sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
IdentityIdentitysub:z:0^NoOp*
T0*'
_output_shapes
:���������[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"0
sub_readvariableopsub/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: *|
backward_function_nameb`__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_2481464_24814822(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_6_2484193U
Ablock_2_layer_0_kernel_regularizer_square_readvariableop_resource:
��
identity��8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAblock_2_layer_0_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
�
�
M__inference_mean_shift_layer_layer_call_and_return_conditional_losses_2480504

inputs)
sub_readvariableop_resource:
identity��sub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype0`
subSubinputssub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
IdentityIdentitysub:z:0^NoOp*
T0*'
_output_shapes
:���������[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�

J__inference_sobolev_model_layer_call_and_return_conditional_losses_2482768
input_1,
resnet_entropy_closure_2482509:0
resnet_entropy_closure_2482511:1
resnet_entropy_closure_2482513:	�-
resnet_entropy_closure_2482515:	�2
resnet_entropy_closure_2482517:
��-
resnet_entropy_closure_2482519:	�2
resnet_entropy_closure_2482521:
��-
resnet_entropy_closure_2482523:	�2
resnet_entropy_closure_2482525:
��-
resnet_entropy_closure_2482527:	�1
resnet_entropy_closure_2482529:	�,
resnet_entropy_closure_2482531:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��.ResNet_entropy_closure/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�checked�	checked_1�5dense_output/kernel/Regularizer/Square/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�	
.ResNet_entropy_closure/StatefulPartitionedCallStatefulPartitionedCallinput_1resnet_entropy_closure_2482509resnet_entropy_closure_2482511resnet_entropy_closure_2482513resnet_entropy_closure_2482515resnet_entropy_closure_2482517resnet_entropy_closure_2482519resnet_entropy_closure_2482521resnet_entropy_closure_2482523resnet_entropy_closure_2482525resnet_entropy_closure_2482527resnet_entropy_closure_2482529resnet_entropy_closure_2482531*
Tin
2*$
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:	�:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:	�:���������::���������:���������:*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481935v
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
:����������
PartitionedCallPartitionedCallones_like:output:07ResNet_entropy_closure/StatefulPartitionedCall:output:17ResNet_entropy_closure/StatefulPartitionedCall:output:27ResNet_entropy_closure/StatefulPartitionedCall:output:37ResNet_entropy_closure/StatefulPartitionedCall:output:47ResNet_entropy_closure/StatefulPartitionedCall:output:57ResNet_entropy_closure/StatefulPartitionedCall:output:67ResNet_entropy_closure/StatefulPartitionedCall:output:77ResNet_entropy_closure/StatefulPartitionedCall:output:87ResNet_entropy_closure/StatefulPartitionedCall:output:98ResNet_entropy_closure/StatefulPartitionedCall:output:108ResNet_entropy_closure/StatefulPartitionedCall:output:118ResNet_entropy_closure/StatefulPartitionedCall:output:128ResNet_entropy_closure/StatefulPartitionedCall:output:138ResNet_entropy_closure/StatefulPartitionedCall:output:148ResNet_entropy_closure/StatefulPartitionedCall:output:158ResNet_entropy_closure/StatefulPartitionedCall:output:168ResNet_entropy_closure/StatefulPartitionedCall:output:178ResNet_entropy_closure/StatefulPartitionedCall:output:188ResNet_entropy_closure/StatefulPartitionedCall:output:198ResNet_entropy_closure/StatefulPartitionedCall:output:208ResNet_entropy_closure/StatefulPartitionedCall:output:218ResNet_entropy_closure/StatefulPartitionedCall:output:228ResNet_entropy_closure/StatefulPartitionedCall:output:23*#
Tin
2*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
:���������:::	�:�:
��:�:
��:�:
��:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *o
fjRh
f__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481844_2481936g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 3), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
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

:H*

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
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*'
_output_shapes
:���������H[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:HY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������HP
ExpExpTensordot:output:0*
T0*'
_output_shapes
:���������Hf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskE
LogLogstrided_slice_1:output:0*
T0*
_output_shapes
: Z
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
:z
Tensordot_1/transpose	TransposeExp:y:0Tensordot_1/concat:output:0*
T0*'
_output_shapes
:���������H�
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

:H�
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
:���������T
Log_1LogTensordot_1:output:0*
T0*'
_output_shapes
:���������R
addAddV2Log:y:0	Log_1:y:0*
T0*'
_output_shapes
:���������E
NegNegadd:z:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceunknownstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
truedivRealDivNeg:y:0strided_slice_2:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :z
concatConcatV2truediv:z:0Cast:y:0concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
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
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������u
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*'
_output_shapes
:���������H]
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:H[
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
T0*'
_output_shapes
:���������HT
Exp_1ExpTensordot_2:output:0*
T0*'
_output_shapes
:���������HV
MulMul	Exp_1:y:0tensordot_1_b*
T0*'
_output_shapes
:���������Hf
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceunknownstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:H*

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
:z
Tensordot_3/transpose	TransposeMul:z:0Tensordot_3/concat:output:0*
T0*'
_output_shapes
:���������H�
Tensordot_3/ReshapeReshapeTensordot_3/transpose:y:0Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_3/transpose_1	Transposestrided_slice_3:output:0%Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes

:H�
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
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
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������a
add_1AddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSlice	add_1:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482513*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482515*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482517* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482519*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482521* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482523*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482525* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482527*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482529*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:���������i

Identity_2Identitystrided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^ResNet_entropy_closure/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp^checked
^checked_16^dense_output/kernel/Regularizer/Square/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : : : : : : : : : : : :H:H:2`
.ResNet_entropy_closure/StatefulPartitionedCall.ResNet_entropy_closure/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2
checkedchecked2
	checked_1	checked_12n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:$ 

_output_shapes

:H:$ 

_output_shapes

:H:$ 

_output_shapes

:
�n
�
f__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481256_2481503
placeholder\
Xgradients_dense_output_statefulpartitionedcall_grad_dense_output_statefulpartitionedcall^
Zgradients_dense_output_statefulpartitionedcall_grad_dense_output_statefulpartitionedcall_1>
:gradients_add_2_partitionedcall_grad_add_2_partitionedcall@
<gradients_add_2_partitionedcall_grad_add_2_partitionedcall_1b
^gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcalld
`gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcall_1:
6gradients_tf_nn_elu_2_elu_grad_elugrad_tf_nn_elu_2_elu>
:gradients_add_1_partitionedcall_grad_add_1_partitionedcall@
<gradients_add_1_partitionedcall_grad_add_1_partitionedcall_1b
^gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcalld
`gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcall_1:
6gradients_tf_nn_elu_1_elu_grad_elugrad_tf_nn_elu_1_elu:
6gradients_add_partitionedcall_grad_add_partitionedcall<
8gradients_add_partitionedcall_grad_add_partitionedcall_1b
^gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcalld
`gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcall_16
2gradients_tf_nn_elu_elu_grad_elugrad_tf_nn_elu_eluZ
Vgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcall\
Xgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcall_1j
fgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcalll
hgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcall_1d
`gradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcallf
bgradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcall_1
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
identity_12^
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
%:����������:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *e
f`R^
\__inference___backward_dense_output_layer_call_and_return_conditional_losses_2481260_2481273�
4gradients/add_2/PartitionedCall_grad/PartitionedCallPartitionedCallLgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCall:output:0:gradients_add_2_partitionedcall_grad_add_2_partitionedcall<gradients_add_2_partitionedcall_grad_add_2_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference___backward_add_2_layer_call_and_return_conditional_losses_2481281_2481298�
Fgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_2/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcall`gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *h
fcRa
___inference___backward_block_2_layer_0_layer_call_and_return_conditional_losses_2481305_2481318�
&gradients/tf.nn.elu_2/Elu_grad/EluGradEluGradOgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients_tf_nn_elu_2_elu_grad_elugrad_tf_nn_elu_2_elu*
T0*(
_output_shapes
:�����������
gradients/AddNAddN=gradients/add_2/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.nn.elu_2/Elu_grad/EluGrad:backprops:0*
N*
T0*G
_class=
;9loc:@gradients/add_2/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
4gradients/add_1/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN:sum:0:gradients_add_1_partitionedcall_grad_add_1_partitionedcall<gradients_add_1_partitionedcall_grad_add_1_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference___backward_add_1_layer_call_and_return_conditional_losses_2481329_2481346�
Fgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_1/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcall`gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *h
fcRa
___inference___backward_block_1_layer_0_layer_call_and_return_conditional_losses_2481353_2481366�
&gradients/tf.nn.elu_1/Elu_grad/EluGradEluGradOgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients_tf_nn_elu_1_elu_grad_elugrad_tf_nn_elu_1_elu*
T0*(
_output_shapes
:�����������
gradients/AddN_1AddN=gradients/add_1/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.nn.elu_1/Elu_grad/EluGrad:backprops:0*
N*
T0*G
_class=
;9loc:@gradients/add_1/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
2gradients/add/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_1:sum:06gradients_add_partitionedcall_grad_add_partitionedcall8gradients_add_partitionedcall_grad_add_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference___backward_add_layer_call_and_return_conditional_losses_2481377_2481394�
Fgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall;gradients/add/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcall`gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *h
fcRa
___inference___backward_block_0_layer_0_layer_call_and_return_conditional_losses_2481401_2481414�
$gradients/tf.nn.elu/Elu_grad/EluGradEluGradOgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:02gradients_tf_nn_elu_elu_grad_elugrad_tf_nn_elu_elu*
T0*(
_output_shapes
:�����������
gradients/AddN_2AddN;gradients/add/PartitionedCall_grad/PartitionedCall:output:00gradients/tf.nn.elu/Elu_grad/EluGrad:backprops:0*
N*
T0*E
_class;
97loc:@gradients/add/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
Bgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_2:sum:0Vgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcallXgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:���������:	�:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *d
f_R]
[__inference___backward_layer_input_layer_call_and_return_conditional_losses_2481425_2481438�
Jgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallKgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCall:output:0fgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcallhgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *l
fgRe
c__inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_2481446_2481457�
Ggradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallSgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0`gradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcallbgradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *i
fdRb
`__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_2481464_2481482�
IdentityIdentityPgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0*
T0*'
_output_shapes
:����������

Identity_1IdentityPgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:�

Identity_2IdentitySgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:�

Identity_3IdentityKgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	��

Identity_4IdentityKgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_5IdentityOgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���

Identity_6IdentityOgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_7IdentityOgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���

Identity_8IdentityOgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_9IdentityOgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���
Identity_10IdentityOgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��
Identity_11IdentityLgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	��
Identity_12IdentityLgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:	�:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:	�:���������::���������:���������:*l
forward_function_nameSQ__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481502:- )
'
_output_shapes
:���������:%!

_output_shapes
:	�:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.	*
(
_output_shapes
:����������:&
"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:%!

_output_shapes
:	�:-)
'
_output_shapes
:���������:$ 

_output_shapes

::-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������: 

_output_shapes
:
�
�
Q__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481935

inputs&
mean_shift_layer_2480883:-
decorrelation_layer_2480886:&
layer_input_2480889:	�"
layer_input_2480891:	�+
block_0_layer_0_2480895:
��&
block_0_layer_0_2480897:	�+
block_1_layer_0_2480902:
��&
block_1_layer_0_2480904:	�+
block_2_layer_0_2480909:
��&
block_2_layer_0_2480911:	�'
dense_output_2480915:	�"
dense_output_2480917:
identity(
$dense_output_statefulpartitionedcall*
&dense_output_statefulpartitionedcall_0
add_2_partitionedcall
add_2_partitionedcall_0+
'block_2_layer_0_statefulpartitionedcall-
)block_2_layer_0_statefulpartitionedcall_0
tf_nn_elu_2_elu
add_1_partitionedcall
add_1_partitionedcall_0+
'block_1_layer_0_statefulpartitionedcall-
)block_1_layer_0_statefulpartitionedcall_0
tf_nn_elu_1_elu
add_partitionedcall
add_partitionedcall_0+
'block_0_layer_0_statefulpartitionedcall-
)block_0_layer_0_statefulpartitionedcall_0
tf_nn_elu_elu'
#layer_input_statefulpartitionedcall)
%layer_input_statefulpartitionedcall_0/
+decorrelation_layer_statefulpartitionedcall1
-decorrelation_layer_statefulpartitionedcall_0,
(mean_shift_layer_statefulpartitionedcall.
*mean_shift_layer_statefulpartitionedcall_0��'block_0_layer_0/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_1_layer_0/StatefulPartitionedCall�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_2_layer_0/StatefulPartitionedCall�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�+decorrelation_layer/StatefulPartitionedCall�$dense_output/StatefulPartitionedCall�5dense_output/kernel/Regularizer/Square/ReadVariableOp�#layer_input/StatefulPartitionedCall�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_2480883*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:���������:���������:*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_mean_shift_layer_layer_call_and_return_conditional_losses_2481481�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_2480886*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������::���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__forward_decorrelation_layer_layer_call_and_return_conditional_losses_2481456�
#layer_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_input_2480889layer_input_2480891*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:����������:	�:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__forward_layer_input_layer_call_and_return_conditional_losses_2481437u
tf.nn.elu/EluElu,layer_input/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_0_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu/Elu:activations:0block_0_layer_0_2480895block_0_layer_0_2480897*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__forward_block_0_layer_0_layer_call_and_return_conditional_losses_2481413�
add/PartitionedCallPartitionedCall,layer_input/StatefulPartitionedCall:output:00block_0_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *G
fBR@
>__forward_add_layer_call_and_return_conditional_losses_2481393g
tf.nn.elu_1/EluEluadd/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_1_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_1/Elu:activations:0block_1_layer_0_2480902block_1_layer_0_2480904*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__forward_block_1_layer_0_layer_call_and_return_conditional_losses_2481365�
add_1/PartitionedCallPartitionedCalladd/PartitionedCall:output:00block_1_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__forward_add_1_layer_call_and_return_conditional_losses_2481345i
tf.nn.elu_2/EluEluadd_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_2_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_2/Elu:activations:0block_2_layer_0_2480909block_2_layer_0_2480911*
Tin
2*
Tout
2*
_collective_manager_ids
 *H
_output_shapes6
4:����������:
��:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__forward_block_2_layer_0_layer_call_and_return_conditional_losses_2481317�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:00block_2_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__forward_add_2_layer_call_and_return_conditional_losses_2481297�
$dense_output/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0dense_output_2480915dense_output_2480917*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:���������:	�:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__forward_dense_output_layer_call_and_return_conditional_losses_2481272�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_2480889*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_2480891*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_2480895* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_2480897*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_2480902* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_2480904*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_2480909* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_2480911*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_output_2480915*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:����������
NoOpNoOp(^block_0_layer_0/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_1_layer_0/StatefulPartitionedCall7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_2_layer_0/StatefulPartitionedCall7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp,^decorrelation_layer/StatefulPartitionedCall%^dense_output/StatefulPartitionedCall6^dense_output/kernel/Regularizer/Square/ReadVariableOp$^layer_input/StatefulPartitionedCall3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "7
add_1_partitionedcalladd_1/PartitionedCall:output:1"9
add_1_partitionedcall_0add_1/PartitionedCall:output:2"7
add_2_partitionedcalladd_2/PartitionedCall:output:1"9
add_2_partitionedcall_0add_2/PartitionedCall:output:2"3
add_partitionedcalladd/PartitionedCall:output:1"5
add_partitionedcall_0add/PartitionedCall:output:2"[
'block_0_layer_0_statefulpartitionedcall0block_0_layer_0/StatefulPartitionedCall:output:1"]
)block_0_layer_0_statefulpartitionedcall_00block_0_layer_0/StatefulPartitionedCall:output:2"[
'block_1_layer_0_statefulpartitionedcall0block_1_layer_0/StatefulPartitionedCall:output:1"]
)block_1_layer_0_statefulpartitionedcall_00block_1_layer_0/StatefulPartitionedCall:output:2"[
'block_2_layer_0_statefulpartitionedcall0block_2_layer_0/StatefulPartitionedCall:output:1"]
)block_2_layer_0_statefulpartitionedcall_00block_2_layer_0/StatefulPartitionedCall:output:2"c
+decorrelation_layer_statefulpartitionedcall4decorrelation_layer/StatefulPartitionedCall:output:1"e
-decorrelation_layer_statefulpartitionedcall_04decorrelation_layer/StatefulPartitionedCall:output:2"U
$dense_output_statefulpartitionedcall-dense_output/StatefulPartitionedCall:output:1"W
&dense_output_statefulpartitionedcall_0-dense_output/StatefulPartitionedCall:output:2"
identityIdentity:output:0"S
#layer_input_statefulpartitionedcall,layer_input/StatefulPartitionedCall:output:1"U
%layer_input_statefulpartitionedcall_0,layer_input/StatefulPartitionedCall:output:2"]
(mean_shift_layer_statefulpartitionedcall1mean_shift_layer/StatefulPartitionedCall:output:1"_
*mean_shift_layer_statefulpartitionedcall_01mean_shift_layer/StatefulPartitionedCall:output:2"0
tf_nn_elu_1_elutf.nn.elu_1/Elu:activations:0"0
tf_nn_elu_2_elutf.nn.elu_2/Elu:activations:0",
tf_nn_elu_elutf.nn.elu/Elu:activations:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : *�
backward_function_namehf__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481844_24819362R
'block_0_layer_0/StatefulPartitionedCall'block_0_layer_0/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_1_layer_0/StatefulPartitionedCall'block_1_layer_0/StatefulPartitionedCall2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_2_layer_0/StatefulPartitionedCall'block_2_layer_0/StatefulPartitionedCall2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2J
#layer_input/StatefulPartitionedCall#layer_input/StatefulPartitionedCall2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�

J__inference_sobolev_model_layer_call_and_return_conditional_losses_2482506
input_1,
resnet_entropy_closure_2482247:0
resnet_entropy_closure_2482249:1
resnet_entropy_closure_2482251:	�-
resnet_entropy_closure_2482253:	�2
resnet_entropy_closure_2482255:
��-
resnet_entropy_closure_2482257:	�2
resnet_entropy_closure_2482259:
��-
resnet_entropy_closure_2482261:	�2
resnet_entropy_closure_2482263:
��-
resnet_entropy_closure_2482265:	�1
resnet_entropy_closure_2482267:	�,
resnet_entropy_closure_2482269:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��.ResNet_entropy_closure/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�checked�	checked_1�5dense_output/kernel/Regularizer/Square/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�	
.ResNet_entropy_closure/StatefulPartitionedCallStatefulPartitionedCallinput_1resnet_entropy_closure_2482247resnet_entropy_closure_2482249resnet_entropy_closure_2482251resnet_entropy_closure_2482253resnet_entropy_closure_2482255resnet_entropy_closure_2482257resnet_entropy_closure_2482259resnet_entropy_closure_2482261resnet_entropy_closure_2482263resnet_entropy_closure_2482265resnet_entropy_closure_2482267resnet_entropy_closure_2482269*
Tin
2*$
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:	�:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:	�:���������::���������:���������:*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481502v
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
:����������
PartitionedCallPartitionedCallones_like:output:07ResNet_entropy_closure/StatefulPartitionedCall:output:17ResNet_entropy_closure/StatefulPartitionedCall:output:27ResNet_entropy_closure/StatefulPartitionedCall:output:37ResNet_entropy_closure/StatefulPartitionedCall:output:47ResNet_entropy_closure/StatefulPartitionedCall:output:57ResNet_entropy_closure/StatefulPartitionedCall:output:67ResNet_entropy_closure/StatefulPartitionedCall:output:77ResNet_entropy_closure/StatefulPartitionedCall:output:87ResNet_entropy_closure/StatefulPartitionedCall:output:98ResNet_entropy_closure/StatefulPartitionedCall:output:108ResNet_entropy_closure/StatefulPartitionedCall:output:118ResNet_entropy_closure/StatefulPartitionedCall:output:128ResNet_entropy_closure/StatefulPartitionedCall:output:138ResNet_entropy_closure/StatefulPartitionedCall:output:148ResNet_entropy_closure/StatefulPartitionedCall:output:158ResNet_entropy_closure/StatefulPartitionedCall:output:168ResNet_entropy_closure/StatefulPartitionedCall:output:178ResNet_entropy_closure/StatefulPartitionedCall:output:188ResNet_entropy_closure/StatefulPartitionedCall:output:198ResNet_entropy_closure/StatefulPartitionedCall:output:208ResNet_entropy_closure/StatefulPartitionedCall:output:218ResNet_entropy_closure/StatefulPartitionedCall:output:228ResNet_entropy_closure/StatefulPartitionedCall:output:23*#
Tin
2*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
:���������:::	�:�:
��:�:
��:�:
��:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *o
fjRh
f__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481256_2481503g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 3), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
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

:H*

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
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*'
_output_shapes
:���������H[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:HY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������HP
ExpExpTensordot:output:0*
T0*'
_output_shapes
:���������Hf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskE
LogLogstrided_slice_1:output:0*
T0*
_output_shapes
: Z
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
:z
Tensordot_1/transpose	TransposeExp:y:0Tensordot_1/concat:output:0*
T0*'
_output_shapes
:���������H�
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

:H�
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
:���������T
Log_1LogTensordot_1:output:0*
T0*'
_output_shapes
:���������R
addAddV2Log:y:0	Log_1:y:0*
T0*'
_output_shapes
:���������E
NegNegadd:z:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceunknownstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
truedivRealDivNeg:y:0strided_slice_2:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :z
concatConcatV2truediv:z:0Cast:y:0concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
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
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������u
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*'
_output_shapes
:���������H]
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:H[
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
T0*'
_output_shapes
:���������HT
Exp_1ExpTensordot_2:output:0*
T0*'
_output_shapes
:���������HV
MulMul	Exp_1:y:0tensordot_1_b*
T0*'
_output_shapes
:���������Hf
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceunknownstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:H*

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
:z
Tensordot_3/transpose	TransposeMul:z:0Tensordot_3/concat:output:0*
T0*'
_output_shapes
:���������H�
Tensordot_3/ReshapeReshapeTensordot_3/transpose:y:0Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_3/transpose_1	Transposestrided_slice_3:output:0%Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes

:H�
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
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
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������a
add_1AddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSlice	add_1:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482251*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482253*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482255* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482257*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482259* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482261*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482263* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482265*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2482267*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:���������i

Identity_2Identitystrided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^ResNet_entropy_closure/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp^checked
^checked_16^dense_output/kernel/Regularizer/Square/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : : : : : : : : : : : :H:H:2`
.ResNet_entropy_closure/StatefulPartitionedCall.ResNet_entropy_closure/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2
checkedchecked2
	checked_1	checked_12n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:$ 

_output_shapes

:H:$ 

_output_shapes

:H:$ 

_output_shapes

:
��
�
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2483537
xQ
Cresnet_entropy_closure_mean_shift_layer_sub_readvariableop_resource:[
Iresnet_entropy_closure_decorrelation_layer_matmul_readvariableop_resource:T
Aresnet_entropy_closure_layer_input_matmul_readvariableop_resource:	�Q
Bresnet_entropy_closure_layer_input_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource:	�Y
Eresnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource:
��U
Fresnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource:	�U
Bresnet_entropy_closure_dense_output_matmul_readvariableop_resource:	�Q
Cresnet_entropy_closure_dense_output_biasadd_readvariableop_resource:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp�=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp�<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp�@ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp�:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp�9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp�9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp�8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp�:ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�checked�	checked_1�5dense_output/kernel/Regularizer/Square/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�
:ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOpReadVariableOpCresnet_entropy_closure_mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:*
dtype0�
+ResNet_entropy_closure/mean_shift_layer/subSubxBResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
@ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOpReadVariableOpIresnet_entropy_closure_decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
1ResNet_entropy_closure/decorrelation_layer/MatMulMatMul/ResNet_entropy_closure/mean_shift_layer/sub:z:0HResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOpReadVariableOpAresnet_entropy_closure_layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
)ResNet_entropy_closure/layer_input/MatMulMatMul;ResNet_entropy_closure/decorrelation_layer/MatMul:product:0@ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOpReadVariableOpBresnet_entropy_closure_layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*ResNet_entropy_closure/layer_input/BiasAddBiasAdd3ResNet_entropy_closure/layer_input/MatMul:product:0AResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$ResNet_entropy_closure/tf.nn.elu/EluElu3ResNet_entropy_closure/layer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_0_layer_0/MatMulMatMul2ResNet_entropy_closure/tf.nn.elu/Elu:activations:0DResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_0_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_0_layer_0/MatMul:product:0EResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
ResNet_entropy_closure/add/addAddV23ResNet_entropy_closure/layer_input/BiasAdd:output:07ResNet_entropy_closure/block_0_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&ResNet_entropy_closure/tf.nn.elu_1/EluElu"ResNet_entropy_closure/add/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_1_layer_0/MatMulMatMul4ResNet_entropy_closure/tf.nn.elu_1/Elu:activations:0DResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_1_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_1_layer_0/MatMul:product:0EResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_1/addAddV2"ResNet_entropy_closure/add/add:z:07ResNet_entropy_closure/block_1_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
&ResNet_entropy_closure/tf.nn.elu_2/EluElu$ResNet_entropy_closure/add_1/add:z:0*
T0*(
_output_shapes
:�����������
<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOpReadVariableOpEresnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-ResNet_entropy_closure/block_2_layer_0/MatMulMatMul4ResNet_entropy_closure/tf.nn.elu_2/Elu:activations:0DResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOpReadVariableOpFresnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.ResNet_entropy_closure/block_2_layer_0/BiasAddBiasAdd7ResNet_entropy_closure/block_2_layer_0/MatMul:product:0EResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 ResNet_entropy_closure/add_2/addAddV2$ResNet_entropy_closure/add_1/add:z:07ResNet_entropy_closure/block_2_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOpReadVariableOpBresnet_entropy_closure_dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*ResNet_entropy_closure/dense_output/MatMulMatMul$ResNet_entropy_closure/add_2/add:z:0AResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:value:0*
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
:����������*
transpose_b(�
Agradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMul_1MatMul$ResNet_entropy_closure/add_2/add:z:0ones_like:output:0*
T0*
_output_shapes
:	�*
transpose_a(�
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
2gradient_tape/ResNet_entropy_closure/add_2/add/SumSumIgradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMul:product:0Igradient_tape/ResNet_entropy_closure/add_2/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_2/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_2/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_2/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_2/add/Sum_1SumIgradient_tape/ResNet_entropy_closure/dense_output/MatMul/MatMul:product:0Igradient_tape/ResNet_entropy_closure/add_2/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_2/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_2/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_2_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1:output:0DResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMul_1MatMul4ResNet_entropy_closure/tf.nn.elu_2/Elu:activations:0Agradient_tape/ResNet_entropy_closure/add_2/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
8gradient_tape/ResNet_entropy_closure/tf.nn.elu_2/EluGradEluGradLgradient_tape/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMul:product:04ResNet_entropy_closure/tf.nn.elu_2/Elu:activations:0*
T0*(
_output_shapes
:�����������
AddNAddN?gradient_tape/ResNet_entropy_closure/add_2/add/Reshape:output:0Dgradient_tape/ResNet_entropy_closure/tf.nn.elu_2/EluGrad:backprops:0*
N*
T0*(
_output_shapes
:�����������
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
2gradient_tape/ResNet_entropy_closure/add_1/add/SumSum
AddN:sum:0Igradient_tape/ResNet_entropy_closure/add_1/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add_1/add/ReshapeReshape;gradient_tape/ResNet_entropy_closure/add_1/add/Sum:output:0=gradient_tape/ResNet_entropy_closure/add_1/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/ResNet_entropy_closure/add_1/add/Sum_1Sum
AddN:sum:0Igradient_tape/ResNet_entropy_closure/add_1/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1Reshape=gradient_tape/ResNet_entropy_closure/add_1/add/Sum_1:output:0?gradient_tape/ResNet_entropy_closure/add_1/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_1_layer_0/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMulMatMulAgradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1:output:0DResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMul_1MatMul4ResNet_entropy_closure/tf.nn.elu_1/Elu:activations:0Agradient_tape/ResNet_entropy_closure/add_1/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
8gradient_tape/ResNet_entropy_closure/tf.nn.elu_1/EluGradEluGradLgradient_tape/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMul:product:04ResNet_entropy_closure/tf.nn.elu_1/Elu:activations:0*
T0*(
_output_shapes
:�����������
AddN_1AddN?gradient_tape/ResNet_entropy_closure/add_1/add/Reshape:output:0Dgradient_tape/ResNet_entropy_closure/tf.nn.elu_1/EluGrad:backprops:0*
N*
T0*(
_output_shapes
:�����������
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
0gradient_tape/ResNet_entropy_closure/add/add/SumSumAddN_1:sum:0Ggradient_tape/ResNet_entropy_closure/add/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
4gradient_tape/ResNet_entropy_closure/add/add/ReshapeReshape9gradient_tape/ResNet_entropy_closure/add/add/Sum:output:0;gradient_tape/ResNet_entropy_closure/add/add/Shape:output:0*
T0*(
_output_shapes
:�����������
2gradient_tape/ResNet_entropy_closure/add/add/Sum_1SumAddN_1:sum:0Ggradient_tape/ResNet_entropy_closure/add/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
6gradient_tape/ResNet_entropy_closure/add/add/Reshape_1Reshape;gradient_tape/ResNet_entropy_closure/add/add/Sum_1:output:0=gradient_tape/ResNet_entropy_closure/add/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Hgradient_tape/ResNet_entropy_closure/block_0_layer_0/BiasAdd/BiasAddGradBiasAddGrad?gradient_tape/ResNet_entropy_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Bgradient_tape/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMulMatMul?gradient_tape/ResNet_entropy_closure/add/add/Reshape_1:output:0DResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Dgradient_tape/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMul_1MatMul2ResNet_entropy_closure/tf.nn.elu/Elu:activations:0?gradient_tape/ResNet_entropy_closure/add/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
6gradient_tape/ResNet_entropy_closure/tf.nn.elu/EluGradEluGradLgradient_tape/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMul:product:02ResNet_entropy_closure/tf.nn.elu/Elu:activations:0*
T0*(
_output_shapes
:�����������
AddN_2AddN=gradient_tape/ResNet_entropy_closure/add/add/Reshape:output:0Bgradient_tape/ResNet_entropy_closure/tf.nn.elu/EluGrad:backprops:0*
N*
T0*(
_output_shapes
:�����������
Dgradient_tape/ResNet_entropy_closure/layer_input/BiasAdd/BiasAddGradBiasAddGradAddN_2:sum:0*
T0*
_output_shapes	
:��
>gradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMulMatMulAddN_2:sum:0@ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
@gradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMul_1MatMul;ResNet_entropy_closure/decorrelation_layer/MatMul:product:0AddN_2:sum:0*
T0*
_output_shapes
:	�*
transpose_a(�
Fgradient_tape/ResNet_entropy_closure/decorrelation_layer/MatMul/MatMulMatMulHgradient_tape/ResNet_entropy_closure/layer_input/MatMul/MatMul:product:0HResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(p
?gradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/ShapeShapex*
T0*
_output_shapes
:�
Agradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Shape_1ShapeBResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:�
Ogradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/BroadcastGradientArgsBroadcastGradientArgsHgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Shape:output:0Jgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Shape_1:output:0*2
_output_shapes 
:���������:����������
=gradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/SumSumPgradient_tape/ResNet_entropy_closure/decorrelation_layer/MatMul/MatMul:product:0Tgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Agradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/ReshapeReshapeFgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Sum:output:0Hgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Shape:output:0*
T0*'
_output_shapes
:����������
CastCastJgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Reshape:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 3), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
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

:H*

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
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*'
_output_shapes
:���������H[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:HY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������HP
ExpExpTensordot:output:0*
T0*'
_output_shapes
:���������Hf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskE
LogLogstrided_slice_1:output:0*
T0*
_output_shapes
: Z
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
:z
Tensordot_1/transpose	TransposeExp:y:0Tensordot_1/concat:output:0*
T0*'
_output_shapes
:���������H�
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

:H�
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
:���������T
Log_1LogTensordot_1:output:0*
T0*'
_output_shapes
:���������R
addAddV2Log:y:0	Log_1:y:0*
T0*'
_output_shapes
:���������E
NegNegadd:z:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceunknownstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
truedivRealDivNeg:y:0strided_slice_2:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :z
concatConcatV2truediv:z:0Cast:y:0concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
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
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������u
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*'
_output_shapes
:���������H]
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:H[
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
T0*'
_output_shapes
:���������HT
Exp_1ExpTensordot_2:output:0*
T0*'
_output_shapes
:���������HV
MulMul	Exp_1:y:0tensordot_1_b*
T0*'
_output_shapes
:���������Hf
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceunknownstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:H*

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
:z
Tensordot_3/transpose	TransposeMul:z:0Tensordot_3/concat:output:0*
T0*'
_output_shapes
:���������H�
Tensordot_3/ReshapeReshapeTensordot_3/transpose:y:0Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_3/transpose_1	Transposestrided_slice_3:output:0%Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes

:H�
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
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
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������a
add_1AddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSlice	add_1:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAresnet_entropy_closure_layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBresnet_entropy_closure_dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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

Identity_1IdentityJgradient_tape/ResNet_entropy_closure/mean_shift_layer/sub/Reshape:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp>^ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp>^ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp=^ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOpA^ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp;^ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp:^ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:^ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp9^ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp;^ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp^checked
^checked_16^dense_output/kernel/Regularizer/Square/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : : : : : : : : : : : :H:H:2~
=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp2~
=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp=ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp2|
<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp<ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp2�
@ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp@ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp2x
:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp:ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp2v
9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp9ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp2v
9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp9ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp2t
8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp8ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp2x
:ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp:ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2
checkedchecked2
	checked_1	checked_12n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:J F
'
_output_shapes
:���������

_user_specified_namex:$ 

_output_shapes

:H:$ 

_output_shapes

:H:$ 

_output_shapes

:
��
�
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2480735

inputs&
mean_shift_layer_2480505:-
decorrelation_layer_2480516:&
layer_input_2480542:	�"
layer_input_2480544:	�+
block_0_layer_0_2480571:
��&
block_0_layer_0_2480573:	�+
block_1_layer_0_2480608:
��&
block_1_layer_0_2480610:	�+
block_2_layer_0_2480645:
��&
block_2_layer_0_2480647:	�'
dense_output_2480675:	�"
dense_output_2480677:
identity��'block_0_layer_0/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_1_layer_0/StatefulPartitionedCall�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_2_layer_0/StatefulPartitionedCall�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�+decorrelation_layer/StatefulPartitionedCall�$dense_output/StatefulPartitionedCall�5dense_output/kernel/Regularizer/Square/ReadVariableOp�#layer_input/StatefulPartitionedCall�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_2480505*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_mean_shift_layer_layer_call_and_return_conditional_losses_2480504�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_2480516*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_decorrelation_layer_layer_call_and_return_conditional_losses_2480515�
#layer_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_input_2480542layer_input_2480544*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_layer_input_layer_call_and_return_conditional_losses_2480541u
tf.nn.elu/EluElu,layer_input/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_0_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu/Elu:activations:0block_0_layer_0_2480571block_0_layer_0_2480573*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_0_layer_0_layer_call_and_return_conditional_losses_2480570�
add/PartitionedCallPartitionedCall,layer_input/StatefulPartitionedCall:output:00block_0_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_2480582g
tf.nn.elu_1/EluEluadd/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_1_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_1/Elu:activations:0block_1_layer_0_2480608block_1_layer_0_2480610*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_1_layer_0_layer_call_and_return_conditional_losses_2480607�
add_1/PartitionedCallPartitionedCalladd/PartitionedCall:output:00block_1_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_2480619i
tf.nn.elu_2/EluEluadd_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_2_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_2/Elu:activations:0block_2_layer_0_2480645block_2_layer_0_2480647*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_2_layer_0_layer_call_and_return_conditional_losses_2480644�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:00block_2_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_2480656�
$dense_output/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0dense_output_2480675dense_output_2480677*
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
GPU2*0J 8� *R
fMRK
I__inference_dense_output_layer_call_and_return_conditional_losses_2480674�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_2480542*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_2480544*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_2480571* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_2480573*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_2480608* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_2480610*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_2480645* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_2480647*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_output_2480675*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:����������
NoOpNoOp(^block_0_layer_0/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_1_layer_0/StatefulPartitionedCall7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_2_layer_0/StatefulPartitionedCall7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp,^decorrelation_layer/StatefulPartitionedCall%^dense_output/StatefulPartitionedCall6^dense_output/kernel/Regularizer/Square/ReadVariableOp$^layer_input/StatefulPartitionedCall3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2R
'block_0_layer_0/StatefulPartitionedCall'block_0_layer_0/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_1_layer_0/StatefulPartitionedCall'block_1_layer_0/StatefulPartitionedCall2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_2_layer_0/StatefulPartitionedCall'block_2_layer_0/StatefulPartitionedCall2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2J
#layer_input/StatefulPartitionedCall#layer_input/StatefulPartitionedCall2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
L__inference_block_2_layer_0_layer_call_and_return_conditional_losses_2480644

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
___inference___backward_block_1_layer_0_layer_call_and_return_conditional_losses_2481353_2481366
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������u
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes	
:��
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*(
_output_shapes
:����������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0* 
_output_shapes
:
��*
transpose_a(o
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*(
_output_shapes
:����������k

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0* 
_output_shapes
:
��i

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������:
��:����������*e
forward_function_nameLJ__forward_block_1_layer_0_layer_call_and_return_conditional_losses_2481365:. *
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������
�
j
@__inference_add_layer_call_and_return_conditional_losses_2480582

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
8__inference_ResNet_entropy_closure_layer_call_fn_2483620

inputs
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2480735o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
� 
#__inference__traced_restore_2484595
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: )
assignvariableop_5_variable:/
assignvariableop_6_variable_1:8
%assignvariableop_7_layer_input_kernel:	�2
#assignvariableop_8_layer_input_bias:	�=
)assignvariableop_9_block_0_layer_0_kernel:
��7
(assignvariableop_10_block_0_layer_0_bias:	�>
*assignvariableop_11_block_1_layer_0_kernel:
��7
(assignvariableop_12_block_1_layer_0_bias:	�>
*assignvariableop_13_block_2_layer_0_kernel:
��7
(assignvariableop_14_block_2_layer_0_bias:	�:
'assignvariableop_15_dense_output_kernel:	�3
%assignvariableop_16_dense_output_bias:#
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: %
assignvariableop_21_total_2: %
assignvariableop_22_count_2: %
assignvariableop_23_total_3: %
assignvariableop_24_count_3: %
assignvariableop_25_total_4: %
assignvariableop_26_count_4: %
assignvariableop_27_total_5: %
assignvariableop_28_count_5: %
assignvariableop_29_total_6: %
assignvariableop_30_count_6: %
assignvariableop_31_total_7: %
assignvariableop_32_count_7: %
assignvariableop_33_total_8: %
assignvariableop_34_count_8: %
assignvariableop_35_total_9: %
assignvariableop_36_count_9: ;
(assignvariableop_37_layer_input_kernel_m:	�5
&assignvariableop_38_layer_input_bias_m:	�@
,assignvariableop_39_block_0_layer_0_kernel_m:
��9
*assignvariableop_40_block_0_layer_0_bias_m:	�@
,assignvariableop_41_block_1_layer_0_kernel_m:
��9
*assignvariableop_42_block_1_layer_0_bias_m:	�@
,assignvariableop_43_block_2_layer_0_kernel_m:
��9
*assignvariableop_44_block_2_layer_0_bias_m:	�<
)assignvariableop_45_dense_output_kernel_m:	�5
'assignvariableop_46_dense_output_bias_m:;
(assignvariableop_47_layer_input_kernel_v:	�5
&assignvariableop_48_layer_input_bias_v:	�@
,assignvariableop_49_block_0_layer_0_kernel_v:
��9
*assignvariableop_50_block_0_layer_0_bias_v:	�@
,assignvariableop_51_block_1_layer_0_kernel_v:
��9
*assignvariableop_52_block_1_layer_0_bias_v:	�@
,assignvariableop_53_block_2_layer_0_kernel_v:
��9
*assignvariableop_54_block_2_layer_0_bias_v:	�<
)assignvariableop_55_dense_output_kernel_v:	�5
'assignvariableop_56_dense_output_bias_v:
identity_58��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*�
value�B�:B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*�
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	[
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
AssignVariableOp_5AssignVariableOpassignvariableop_5_variableIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp%assignvariableop_7_layer_input_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_layer_input_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp)assignvariableop_9_block_0_layer_0_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp(assignvariableop_10_block_0_layer_0_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp*assignvariableop_11_block_1_layer_0_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp(assignvariableop_12_block_1_layer_0_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp*assignvariableop_13_block_2_layer_0_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp(assignvariableop_14_block_2_layer_0_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp'assignvariableop_15_dense_output_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp%assignvariableop_16_dense_output_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_2Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_3Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_3Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_4Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_4Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_5Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_5Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_6Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_6Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_7Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_7Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_8Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_8Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_9Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_9Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_layer_input_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp&assignvariableop_38_layer_input_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp,assignvariableop_39_block_0_layer_0_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp*assignvariableop_40_block_0_layer_0_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp,assignvariableop_41_block_1_layer_0_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp*assignvariableop_42_block_1_layer_0_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp,assignvariableop_43_block_2_layer_0_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp*assignvariableop_44_block_2_layer_0_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp)assignvariableop_45_dense_output_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp'assignvariableop_46_dense_output_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp(assignvariableop_47_layer_input_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp&assignvariableop_48_layer_input_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp,assignvariableop_49_block_0_layer_0_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp*assignvariableop_50_block_0_layer_0_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp,assignvariableop_51_block_1_layer_0_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp*assignvariableop_52_block_1_layer_0_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp,assignvariableop_53_block_2_layer_0_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp*assignvariableop_54_block_2_layer_0_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp)assignvariableop_55_dense_output_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp'assignvariableop_56_dense_output_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_58Identity_58:output:0*�
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
L__inference_block_0_layer_0_layer_call_and_return_conditional_losses_2480570

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2483749

inputs:
,mean_shift_layer_sub_readvariableop_resource:D
2decorrelation_layer_matmul_readvariableop_resource:=
*layer_input_matmul_readvariableop_resource:	�:
+layer_input_biasadd_readvariableop_resource:	�B
.block_0_layer_0_matmul_readvariableop_resource:
��>
/block_0_layer_0_biasadd_readvariableop_resource:	�B
.block_1_layer_0_matmul_readvariableop_resource:
��>
/block_1_layer_0_biasadd_readvariableop_resource:	�B
.block_2_layer_0_matmul_readvariableop_resource:
��>
/block_2_layer_0_biasadd_readvariableop_resource:	�>
+dense_output_matmul_readvariableop_resource:	�:
,dense_output_biasadd_readvariableop_resource:
identity��&block_0_layer_0/BiasAdd/ReadVariableOp�%block_0_layer_0/MatMul/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_1_layer_0/BiasAdd/ReadVariableOp�%block_1_layer_0/MatMul/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�&block_2_layer_0/BiasAdd/ReadVariableOp�%block_2_layer_0/MatMul/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�)decorrelation_layer/MatMul/ReadVariableOp�#dense_output/BiasAdd/ReadVariableOp�"dense_output/MatMul/ReadVariableOp�5dense_output/kernel/Regularizer/Square/ReadVariableOp�"layer_input/BiasAdd/ReadVariableOp�!layer_input/MatMul/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�#mean_shift_layer/sub/ReadVariableOp�
#mean_shift_layer/sub/ReadVariableOpReadVariableOp,mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:*
dtype0�
mean_shift_layer/subSubinputs+mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)decorrelation_layer/MatMul/ReadVariableOpReadVariableOp2decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
decorrelation_layer/MatMulMatMulmean_shift_layer/sub:z:01decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!layer_input/MatMul/ReadVariableOpReadVariableOp*layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
layer_input/MatMulMatMul$decorrelation_layer/MatMul:product:0)layer_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"layer_input/BiasAdd/ReadVariableOpReadVariableOp+layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_input/BiasAddBiasAddlayer_input/MatMul:product:0*layer_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
tf.nn.elu/EluElulayer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%block_0_layer_0/MatMul/ReadVariableOpReadVariableOp.block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_0_layer_0/MatMulMatMultf.nn.elu/Elu:activations:0-block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_0_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_0_layer_0/BiasAddBiasAdd block_0_layer_0/MatMul:product:0.block_0_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
add/addAddV2layer_input/BiasAdd:output:0 block_0_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������V
tf.nn.elu_1/EluEluadd/add:z:0*
T0*(
_output_shapes
:�����������
%block_1_layer_0/MatMul/ReadVariableOpReadVariableOp.block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_1_layer_0/MatMulMatMultf.nn.elu_1/Elu:activations:0-block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_1_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_1_layer_0/BiasAddBiasAdd block_1_layer_0/MatMul:product:0.block_1_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
	add_1/addAddV2add/add:z:0 block_1_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������X
tf.nn.elu_2/EluEluadd_1/add:z:0*
T0*(
_output_shapes
:�����������
%block_2_layer_0/MatMul/ReadVariableOpReadVariableOp.block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
block_2_layer_0/MatMulMatMultf.nn.elu_2/Elu:activations:0-block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&block_2_layer_0/BiasAdd/ReadVariableOpReadVariableOp/block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
block_2_layer_0/BiasAddBiasAdd block_2_layer_0/MatMul:product:0.block_2_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������v
	add_2/addAddV2add_1/add:z:0 block_2_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
"dense_output/MatMul/ReadVariableOpReadVariableOp+dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_output/MatMulMatMuladd_2/add:z:0*dense_output/MatMul/ReadVariableOp:value:0*
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
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:����������
NoOpNoOp'^block_0_layer_0/BiasAdd/ReadVariableOp&^block_0_layer_0/MatMul/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_1_layer_0/BiasAdd/ReadVariableOp&^block_1_layer_0/MatMul/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp'^block_2_layer_0/BiasAdd/ReadVariableOp&^block_2_layer_0/MatMul/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp*^decorrelation_layer/MatMul/ReadVariableOp$^dense_output/BiasAdd/ReadVariableOp#^dense_output/MatMul/ReadVariableOp6^dense_output/kernel/Regularizer/Square/ReadVariableOp#^layer_input/BiasAdd/ReadVariableOp"^layer_input/MatMul/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp$^mean_shift_layer/sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2P
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
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2V
)decorrelation_layer/MatMul/ReadVariableOp)decorrelation_layer/MatMul/ReadVariableOp2J
#dense_output/BiasAdd/ReadVariableOp#dense_output/BiasAdd/ReadVariableOp2H
"dense_output/MatMul/ReadVariableOp"dense_output/MatMul/ReadVariableOp2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2H
"layer_input/BiasAdd/ReadVariableOp"layer_input/BiasAdd/ReadVariableOp2F
!layer_input/MatMul/ReadVariableOp!layer_input/MatMul/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp2J
#mean_shift_layer/sub/ReadVariableOp#mean_shift_layer/sub/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
P__inference_decorrelation_layer_layer_call_and_return_conditional_losses_2483877

inputs0
matmul_readvariableop_resource:
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�n
�
f__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481844_2481936
placeholder\
Xgradients_dense_output_statefulpartitionedcall_grad_dense_output_statefulpartitionedcall^
Zgradients_dense_output_statefulpartitionedcall_grad_dense_output_statefulpartitionedcall_1>
:gradients_add_2_partitionedcall_grad_add_2_partitionedcall@
<gradients_add_2_partitionedcall_grad_add_2_partitionedcall_1b
^gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcalld
`gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcall_1:
6gradients_tf_nn_elu_2_elu_grad_elugrad_tf_nn_elu_2_elu>
:gradients_add_1_partitionedcall_grad_add_1_partitionedcall@
<gradients_add_1_partitionedcall_grad_add_1_partitionedcall_1b
^gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcalld
`gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcall_1:
6gradients_tf_nn_elu_1_elu_grad_elugrad_tf_nn_elu_1_elu:
6gradients_add_partitionedcall_grad_add_partitionedcall<
8gradients_add_partitionedcall_grad_add_partitionedcall_1b
^gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcalld
`gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcall_16
2gradients_tf_nn_elu_elu_grad_elugrad_tf_nn_elu_eluZ
Vgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcall\
Xgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcall_1j
fgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcalll
hgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcall_1d
`gradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcallf
bgradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcall_1
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
identity_12^
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
%:����������:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *e
f`R^
\__inference___backward_dense_output_layer_call_and_return_conditional_losses_2481260_2481273�
4gradients/add_2/PartitionedCall_grad/PartitionedCallPartitionedCallLgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCall:output:0:gradients_add_2_partitionedcall_grad_add_2_partitionedcall<gradients_add_2_partitionedcall_grad_add_2_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference___backward_add_2_layer_call_and_return_conditional_losses_2481281_2481298�
Fgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_2/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcall`gradients_block_2_layer_0_statefulpartitionedcall_grad_block_2_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *h
fcRa
___inference___backward_block_2_layer_0_layer_call_and_return_conditional_losses_2481305_2481318�
&gradients/tf.nn.elu_2/Elu_grad/EluGradEluGradOgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients_tf_nn_elu_2_elu_grad_elugrad_tf_nn_elu_2_elu*
T0*(
_output_shapes
:�����������
gradients/AddNAddN=gradients/add_2/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.nn.elu_2/Elu_grad/EluGrad:backprops:0*
N*
T0*G
_class=
;9loc:@gradients/add_2/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
4gradients/add_1/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN:sum:0:gradients_add_1_partitionedcall_grad_add_1_partitionedcall<gradients_add_1_partitionedcall_grad_add_1_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference___backward_add_1_layer_call_and_return_conditional_losses_2481329_2481346�
Fgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall=gradients/add_1/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcall`gradients_block_1_layer_0_statefulpartitionedcall_grad_block_1_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *h
fcRa
___inference___backward_block_1_layer_0_layer_call_and_return_conditional_losses_2481353_2481366�
&gradients/tf.nn.elu_1/Elu_grad/EluGradEluGradOgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients_tf_nn_elu_1_elu_grad_elugrad_tf_nn_elu_1_elu*
T0*(
_output_shapes
:�����������
gradients/AddN_1AddN=gradients/add_1/PartitionedCall_grad/PartitionedCall:output:02gradients/tf.nn.elu_1/Elu_grad/EluGrad:backprops:0*
N*
T0*G
_class=
;9loc:@gradients/add_1/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
2gradients/add/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_1:sum:06gradients_add_partitionedcall_grad_add_partitionedcall8gradients_add_partitionedcall_grad_add_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference___backward_add_layer_call_and_return_conditional_losses_2481377_2481394�
Fgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall;gradients/add/PartitionedCall_grad/PartitionedCall:output:1^gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcall`gradients_block_0_layer_0_statefulpartitionedcall_grad_block_0_layer_0_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *;
_output_shapes)
':����������:
��:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *h
fcRa
___inference___backward_block_0_layer_0_layer_call_and_return_conditional_losses_2481401_2481414�
$gradients/tf.nn.elu/Elu_grad/EluGradEluGradOgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:02gradients_tf_nn_elu_elu_grad_elugrad_tf_nn_elu_elu*
T0*(
_output_shapes
:�����������
gradients/AddN_2AddN;gradients/add/PartitionedCall_grad/PartitionedCall:output:00gradients/tf.nn.elu/Elu_grad/EluGrad:backprops:0*
N*
T0*E
_class;
97loc:@gradients/add/PartitionedCall_grad/PartitionedCall*(
_output_shapes
:�����������
Bgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_2:sum:0Vgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcallXgradients_layer_input_statefulpartitionedcall_grad_layer_input_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:���������:	�:�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *d
f_R]
[__inference___backward_layer_input_layer_call_and_return_conditional_losses_2481425_2481438�
Jgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallKgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCall:output:0fgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcallhgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *l
fgRe
c__inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_2481446_2481457�
Ggradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallSgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0`gradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcallbgradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *i
fdRb
`__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_2481464_2481482�
IdentityIdentityPgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0*
T0*'
_output_shapes
:����������

Identity_1IdentityPgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:�

Identity_2IdentitySgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:�

Identity_3IdentityKgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	��

Identity_4IdentityKgradients/layer_input/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_5IdentityOgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���

Identity_6IdentityOgradients/block_0_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_7IdentityOgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���

Identity_8IdentityOgradients/block_1_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_9IdentityOgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���
Identity_10IdentityOgradients/block_2_layer_0/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��
Identity_11IdentityLgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	��
Identity_12IdentityLgradients/dense_output/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:	�:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:	�:���������::���������:���������:*l
forward_function_nameSQ__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481935:- )
'
_output_shapes
:���������:%!

_output_shapes
:	�:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.	*
(
_output_shapes
:����������:&
"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:%!

_output_shapes
:	�:-)
'
_output_shapes
:���������:$ 

_output_shapes

::-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������: 

_output_shapes
:
�
�
L__inference_block_0_layer_0_layer_call_and_return_conditional_losses_2483963

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�e
�
 __inference__traced_save_2484414
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop)
%savev2_variable_1_read_readvariableop1
-savev2_layer_input_kernel_read_readvariableop/
+savev2_layer_input_bias_read_readvariableop5
1savev2_block_0_layer_0_kernel_read_readvariableop3
/savev2_block_0_layer_0_bias_read_readvariableop5
1savev2_block_1_layer_0_kernel_read_readvariableop3
/savev2_block_1_layer_0_bias_read_readvariableop5
1savev2_block_2_layer_0_kernel_read_readvariableop3
/savev2_block_2_layer_0_bias_read_readvariableop2
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
"savev2_count_9_read_readvariableop3
/savev2_layer_input_kernel_m_read_readvariableop1
-savev2_layer_input_bias_m_read_readvariableop7
3savev2_block_0_layer_0_kernel_m_read_readvariableop5
1savev2_block_0_layer_0_bias_m_read_readvariableop7
3savev2_block_1_layer_0_kernel_m_read_readvariableop5
1savev2_block_1_layer_0_bias_m_read_readvariableop7
3savev2_block_2_layer_0_kernel_m_read_readvariableop5
1savev2_block_2_layer_0_bias_m_read_readvariableop4
0savev2_dense_output_kernel_m_read_readvariableop2
.savev2_dense_output_bias_m_read_readvariableop3
/savev2_layer_input_kernel_v_read_readvariableop1
-savev2_layer_input_bias_v_read_readvariableop7
3savev2_block_0_layer_0_kernel_v_read_readvariableop5
1savev2_block_0_layer_0_bias_v_read_readvariableop7
3savev2_block_1_layer_0_kernel_v_read_readvariableop5
1savev2_block_1_layer_0_bias_v_read_readvariableop7
3savev2_block_2_layer_0_kernel_v_read_readvariableop5
1savev2_block_2_layer_0_bias_v_read_readvariableop4
0savev2_dense_output_kernel_v_read_readvariableop2
.savev2_dense_output_bias_v_read_readvariableop
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*�
value�B�:B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*�
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop-savev2_layer_input_kernel_read_readvariableop+savev2_layer_input_bias_read_readvariableop1savev2_block_0_layer_0_kernel_read_readvariableop/savev2_block_0_layer_0_bias_read_readvariableop1savev2_block_1_layer_0_kernel_read_readvariableop/savev2_block_1_layer_0_bias_read_readvariableop1savev2_block_2_layer_0_kernel_read_readvariableop/savev2_block_2_layer_0_bias_read_readvariableop.savev2_dense_output_kernel_read_readvariableop,savev2_dense_output_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop"savev2_total_7_read_readvariableop"savev2_count_7_read_readvariableop"savev2_total_8_read_readvariableop"savev2_count_8_read_readvariableop"savev2_total_9_read_readvariableop"savev2_count_9_read_readvariableop/savev2_layer_input_kernel_m_read_readvariableop-savev2_layer_input_bias_m_read_readvariableop3savev2_block_0_layer_0_kernel_m_read_readvariableop1savev2_block_0_layer_0_bias_m_read_readvariableop3savev2_block_1_layer_0_kernel_m_read_readvariableop1savev2_block_1_layer_0_bias_m_read_readvariableop3savev2_block_2_layer_0_kernel_m_read_readvariableop1savev2_block_2_layer_0_bias_m_read_readvariableop0savev2_dense_output_kernel_m_read_readvariableop.savev2_dense_output_bias_m_read_readvariableop/savev2_layer_input_kernel_v_read_readvariableop-savev2_layer_input_bias_v_read_readvariableop3savev2_block_0_layer_0_kernel_v_read_readvariableop1savev2_block_0_layer_0_bias_v_read_readvariableop3savev2_block_1_layer_0_kernel_v_read_readvariableop1savev2_block_1_layer_0_bias_v_read_readvariableop3savev2_block_2_layer_0_kernel_v_read_readvariableop1savev2_block_2_layer_0_bias_v_read_readvariableop0savev2_dense_output_kernel_v_read_readvariableop.savev2_dense_output_bias_v_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : : : :::	�:�:
��:�:
��:�:
��:�:	�:: : : : : : : : : : : : : : : : : : : : :	�:�:
��:�:
��:�:
��:�:	�::	�:�:
��:�:
��:�:
��:�:	�:: 2(
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
: : 

_output_shapes
::$ 

_output_shapes

::%!

_output_shapes
:	�:!	

_output_shapes	
:�:&
"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :%&!

_output_shapes
:	�:!'

_output_shapes	
:�:&("
 
_output_shapes
:
��:!)

_output_shapes	
:�:&*"
 
_output_shapes
:
��:!+

_output_shapes	
:�:&,"
 
_output_shapes
:
��:!-

_output_shapes	
:�:%.!

_output_shapes
:	�: /

_output_shapes
::%0!

_output_shapes
:	�:!1

_output_shapes	
:�:&2"
 
_output_shapes
:
��:!3

_output_shapes	
:�:&4"
 
_output_shapes
:
��:!5

_output_shapes	
:�:&6"
 
_output_shapes
:
��:!7

_output_shapes	
:�:%8!

_output_shapes
:	�: 9

_output_shapes
:::

_output_shapes
: 
�
�
J__forward_block_2_layer_0_layer_call_and_return_conditional_losses_2481317
inputs_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *{
backward_function_namea___inference___backward_block_2_layer_0_layer_call_and_return_conditional_losses_2481305_248131820
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
l
B__inference_add_1_layer_call_and_return_conditional_losses_2480619

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_7_2484204N
?block_2_layer_0_bias_regularizer_square_readvariableop_resource:	�
identity��6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp?block_2_layer_0_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
�
�
___inference___backward_block_0_layer_0_layer_call_and_return_conditional_losses_2481401_2481414
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������u
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes	
:��
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*(
_output_shapes
:����������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0* 
_output_shapes
:
��*
transpose_a(o
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*(
_output_shapes
:����������k

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0* 
_output_shapes
:
��i

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������:
��:����������*e
forward_function_nameLJ__forward_block_0_layer_0_layer_call_and_return_conditional_losses_2481413:. *
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������
�
�
/__inference_sobolev_model_layer_call_fn_2482908
x
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:

unknown_11

unknown_12

unknown_13
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2481735o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : : : : : : : : : : : :H:H:22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:���������

_user_specified_namex:$ 

_output_shapes

:H:$ 

_output_shapes

:H:$ 

_output_shapes

:
�
�
8__inference_ResNet_entropy_closure_layer_call_fn_2483649

inputs
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2480975o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481126
input_1&
mean_shift_layer_2481034:-
decorrelation_layer_2481037:&
layer_input_2481040:	�"
layer_input_2481042:	�+
block_0_layer_0_2481046:
��&
block_0_layer_0_2481048:	�+
block_1_layer_0_2481053:
��&
block_1_layer_0_2481055:	�+
block_2_layer_0_2481060:
��&
block_2_layer_0_2481062:	�'
dense_output_2481066:	�"
dense_output_2481068:
identity��'block_0_layer_0/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_1_layer_0/StatefulPartitionedCall�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_2_layer_0/StatefulPartitionedCall�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�+decorrelation_layer/StatefulPartitionedCall�$dense_output/StatefulPartitionedCall�5dense_output/kernel/Regularizer/Square/ReadVariableOp�#layer_input/StatefulPartitionedCall�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1mean_shift_layer_2481034*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_mean_shift_layer_layer_call_and_return_conditional_losses_2480504�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_2481037*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_decorrelation_layer_layer_call_and_return_conditional_losses_2480515�
#layer_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_input_2481040layer_input_2481042*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_layer_input_layer_call_and_return_conditional_losses_2480541u
tf.nn.elu/EluElu,layer_input/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_0_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu/Elu:activations:0block_0_layer_0_2481046block_0_layer_0_2481048*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_0_layer_0_layer_call_and_return_conditional_losses_2480570�
add/PartitionedCallPartitionedCall,layer_input/StatefulPartitionedCall:output:00block_0_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_2480582g
tf.nn.elu_1/EluEluadd/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_1_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_1/Elu:activations:0block_1_layer_0_2481053block_1_layer_0_2481055*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_1_layer_0_layer_call_and_return_conditional_losses_2480607�
add_1/PartitionedCallPartitionedCalladd/PartitionedCall:output:00block_1_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_2480619i
tf.nn.elu_2/EluEluadd_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_2_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_2/Elu:activations:0block_2_layer_0_2481060block_2_layer_0_2481062*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_2_layer_0_layer_call_and_return_conditional_losses_2480644�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:00block_2_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_2480656�
$dense_output/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0dense_output_2481066dense_output_2481068*
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
GPU2*0J 8� *R
fMRK
I__inference_dense_output_layer_call_and_return_conditional_losses_2480674�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_2481040*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_2481042*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_2481046* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_2481048*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_2481053* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_2481055*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_2481060* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_2481062*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_output_2481066*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:����������
NoOpNoOp(^block_0_layer_0/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_1_layer_0/StatefulPartitionedCall7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_2_layer_0/StatefulPartitionedCall7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp,^decorrelation_layer/StatefulPartitionedCall%^dense_output/StatefulPartitionedCall6^dense_output/kernel/Regularizer/Square/ReadVariableOp$^layer_input/StatefulPartitionedCall3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2R
'block_0_layer_0/StatefulPartitionedCall'block_0_layer_0/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_1_layer_0/StatefulPartitionedCall'block_1_layer_0/StatefulPartitionedCall2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_2_layer_0/StatefulPartitionedCall'block_2_layer_0/StatefulPartitionedCall2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2J
#layer_input/StatefulPartitionedCall#layer_input/StatefulPartitionedCall2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
U__inference___backward_add_1_layer_call_and_return_conditional_losses_2481329_2481346
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������g
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
:�����������
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*(
_output_shapes
:����������l
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*(
_output_shapes
:����������p

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������*[
forward_function_nameB@__forward_add_1_layer_call_and_return_conditional_losses_2481345:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������
��
�

J__inference_sobolev_model_layer_call_and_return_conditional_losses_2481735
x,
resnet_entropy_closure_2481228:0
resnet_entropy_closure_2481230:1
resnet_entropy_closure_2481232:	�-
resnet_entropy_closure_2481234:	�2
resnet_entropy_closure_2481236:
��-
resnet_entropy_closure_2481238:	�2
resnet_entropy_closure_2481240:
��-
resnet_entropy_closure_2481242:	�2
resnet_entropy_closure_2481244:
��-
resnet_entropy_closure_2481246:	�1
resnet_entropy_closure_2481248:	�,
resnet_entropy_closure_2481250:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��.ResNet_entropy_closure/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�checked�	checked_1�5dense_output/kernel/Regularizer/Square/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�	
.ResNet_entropy_closure/StatefulPartitionedCallStatefulPartitionedCallxresnet_entropy_closure_2481228resnet_entropy_closure_2481230resnet_entropy_closure_2481232resnet_entropy_closure_2481234resnet_entropy_closure_2481236resnet_entropy_closure_2481238resnet_entropy_closure_2481240resnet_entropy_closure_2481242resnet_entropy_closure_2481244resnet_entropy_closure_2481246resnet_entropy_closure_2481248resnet_entropy_closure_2481250*
Tin
2*$
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:	�:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:����������:����������:
��:����������:����������:	�:���������::���������:���������:*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__forward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481502v
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
:����������
PartitionedCallPartitionedCallones_like:output:07ResNet_entropy_closure/StatefulPartitionedCall:output:17ResNet_entropy_closure/StatefulPartitionedCall:output:27ResNet_entropy_closure/StatefulPartitionedCall:output:37ResNet_entropy_closure/StatefulPartitionedCall:output:47ResNet_entropy_closure/StatefulPartitionedCall:output:57ResNet_entropy_closure/StatefulPartitionedCall:output:67ResNet_entropy_closure/StatefulPartitionedCall:output:77ResNet_entropy_closure/StatefulPartitionedCall:output:87ResNet_entropy_closure/StatefulPartitionedCall:output:98ResNet_entropy_closure/StatefulPartitionedCall:output:108ResNet_entropy_closure/StatefulPartitionedCall:output:118ResNet_entropy_closure/StatefulPartitionedCall:output:128ResNet_entropy_closure/StatefulPartitionedCall:output:138ResNet_entropy_closure/StatefulPartitionedCall:output:148ResNet_entropy_closure/StatefulPartitionedCall:output:158ResNet_entropy_closure/StatefulPartitionedCall:output:168ResNet_entropy_closure/StatefulPartitionedCall:output:178ResNet_entropy_closure/StatefulPartitionedCall:output:188ResNet_entropy_closure/StatefulPartitionedCall:output:198ResNet_entropy_closure/StatefulPartitionedCall:output:208ResNet_entropy_closure/StatefulPartitionedCall:output:218ResNet_entropy_closure/StatefulPartitionedCall:output:228ResNet_entropy_closure/StatefulPartitionedCall:output:23*#
Tin
2*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
:���������:::	�:�:
��:�:
��:�:
��:�:	�:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *o
fjRh
f__inference___backward_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481256_2481503g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 3), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
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

:H*

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
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*'
_output_shapes
:���������H[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:HY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������HP
ExpExpTensordot:output:0*
T0*'
_output_shapes
:���������Hf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskE
LogLogstrided_slice_1:output:0*
T0*
_output_shapes
: Z
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
:z
Tensordot_1/transpose	TransposeExp:y:0Tensordot_1/concat:output:0*
T0*'
_output_shapes
:���������H�
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

:H�
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
:���������T
Log_1LogTensordot_1:output:0*
T0*'
_output_shapes
:���������R
addAddV2Log:y:0	Log_1:y:0*
T0*'
_output_shapes
:���������E
NegNegadd:z:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceunknownstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
truedivRealDivNeg:y:0strided_slice_2:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :z
concatConcatV2truediv:z:0Cast:y:0concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
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
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������u
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*'
_output_shapes
:���������H]
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:H[
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
T0*'
_output_shapes
:���������HT
Exp_1ExpTensordot_2:output:0*
T0*'
_output_shapes
:���������HV
MulMul	Exp_1:y:0tensordot_1_b*
T0*'
_output_shapes
:���������Hf
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceunknownstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:H*

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
:z
Tensordot_3/transpose	TransposeMul:z:0Tensordot_3/concat:output:0*
T0*'
_output_shapes
:���������H�
Tensordot_3/ReshapeReshapeTensordot_3/transpose:y:0Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������m
Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
Tensordot_3/transpose_1	Transposestrided_slice_3:output:0%Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes

:H�
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
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
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������a
add_1AddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSlice	add_1:z:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481232*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481234*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481236* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481238*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481240* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481242*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481244* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481246*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpresnet_entropy_closure_2481248*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:���������i

Identity_2Identitystrided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^ResNet_entropy_closure/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp^checked
^checked_16^dense_output/kernel/Regularizer/Square/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : : : : : : : : : : : :H:H:2`
.ResNet_entropy_closure/StatefulPartitionedCall.ResNet_entropy_closure/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2
checkedchecked2
	checked_1	checked_12n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:J F
'
_output_shapes
:���������

_user_specified_namex:$ 

_output_shapes

:H:$ 

_output_shapes

:H:$ 

_output_shapes

:
��
�
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481221
input_1&
mean_shift_layer_2481129:-
decorrelation_layer_2481132:&
layer_input_2481135:	�"
layer_input_2481137:	�+
block_0_layer_0_2481141:
��&
block_0_layer_0_2481143:	�+
block_1_layer_0_2481148:
��&
block_1_layer_0_2481150:	�+
block_2_layer_0_2481155:
��&
block_2_layer_0_2481157:	�'
dense_output_2481161:	�"
dense_output_2481163:
identity��'block_0_layer_0/StatefulPartitionedCall�6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_1_layer_0/StatefulPartitionedCall�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp�'block_2_layer_0/StatefulPartitionedCall�6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp�+decorrelation_layer/StatefulPartitionedCall�$dense_output/StatefulPartitionedCall�5dense_output/kernel/Regularizer/Square/ReadVariableOp�#layer_input/StatefulPartitionedCall�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOp�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1mean_shift_layer_2481129*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_mean_shift_layer_layer_call_and_return_conditional_losses_2480504�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_2481132*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_decorrelation_layer_layer_call_and_return_conditional_losses_2480515�
#layer_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_input_2481135layer_input_2481137*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_layer_input_layer_call_and_return_conditional_losses_2480541u
tf.nn.elu/EluElu,layer_input/StatefulPartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_0_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu/Elu:activations:0block_0_layer_0_2481141block_0_layer_0_2481143*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_0_layer_0_layer_call_and_return_conditional_losses_2480570�
add/PartitionedCallPartitionedCall,layer_input/StatefulPartitionedCall:output:00block_0_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_add_layer_call_and_return_conditional_losses_2480582g
tf.nn.elu_1/EluEluadd/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_1_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_1/Elu:activations:0block_1_layer_0_2481148block_1_layer_0_2481150*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_1_layer_0_layer_call_and_return_conditional_losses_2480607�
add_1/PartitionedCallPartitionedCalladd/PartitionedCall:output:00block_1_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_2480619i
tf.nn.elu_2/EluEluadd_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
'block_2_layer_0/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_2/Elu:activations:0block_2_layer_0_2481155block_2_layer_0_2481157*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_block_2_layer_0_layer_call_and_return_conditional_losses_2480644�
add_2/PartitionedCallPartitionedCalladd_1/PartitionedCall:output:00block_2_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_add_2_layer_call_and_return_conditional_losses_2480656�
$dense_output/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0dense_output_2481161dense_output_2481163*
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
GPU2*0J 8� *R
fMRK
I__inference_dense_output_layer_call_and_return_conditional_losses_2480674�
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_2481135*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
2layer_input/bias/Regularizer/Square/ReadVariableOpReadVariableOplayer_input_2481137*
_output_shapes	
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_2481141* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_0_layer_0_2481143*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_2481148* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_1_layer_0_2481150*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_2481155* 
_output_shapes
:
��*
dtype0�
)block_2_layer_0/kernel/Regularizer/SquareSquare@block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOpblock_2_layer_0_2481157*
_output_shapes	
:�*
dtype0�
'block_2_layer_0/bias/Regularizer/SquareSquare>block_2_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
5dense_output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_output_2481161*
_output_shapes
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:����������
NoOpNoOp(^block_0_layer_0/StatefulPartitionedCall7^block_0_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_1_layer_0/StatefulPartitionedCall7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp(^block_2_layer_0/StatefulPartitionedCall7^block_2_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp,^decorrelation_layer/StatefulPartitionedCall%^dense_output/StatefulPartitionedCall6^dense_output/kernel/Regularizer/Square/ReadVariableOp$^layer_input/StatefulPartitionedCall3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2R
'block_0_layer_0/StatefulPartitionedCall'block_0_layer_0/StatefulPartitionedCall2p
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_1_layer_0/StatefulPartitionedCall'block_1_layer_0/StatefulPartitionedCall2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp2R
'block_2_layer_0/StatefulPartitionedCall'block_2_layer_0/StatefulPartitionedCall2p
6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp6block_2_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_2_layer_0/kernel/Regularizer/Square/ReadVariableOp2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2L
$dense_output/StatefulPartitionedCall$dense_output/StatefulPartitionedCall2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp2J
#layer_input/StatefulPartitionedCall#layer_input/StatefulPartitionedCall2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
U__inference___backward_add_2_layer_call_and_return_conditional_losses_2481281_2481298
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������g
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
:�����������
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*(
_output_shapes
:����������l
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*(
_output_shapes
:����������p

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������*[
forward_function_nameB@__forward_add_2_layer_call_and_return_conditional_losses_2481297:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������
�
�
@__forward_add_2_layer_call_and_return_conditional_losses_2481297
inputs_0

inputs_1_0
identity

inputs
inputs_1U
addAddV2inputs_0
inputs_1_0*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������*q
backward_function_nameWU__inference___backward_add_2_layer_call_and_return_conditional_losses_2481281_2481298:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
J__forward_block_1_layer_0_layer_call_and_return_conditional_losses_2481365
inputs_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *{
backward_function_namea___inference___backward_block_1_layer_0_layer_call_and_return_conditional_losses_2481353_248136620
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
M__inference_mean_shift_layer_layer_call_and_return_conditional_losses_2483863

inputs)
sub_readvariableop_resource:
identity��sub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype0`
subSubinputssub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
IdentityIdentitysub:z:0^NoOp*
T0*'
_output_shapes
:���������[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_2_2484149U
Ablock_0_layer_0_kernel_regularizer_square_readvariableop_resource:
��
identity��8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp�
8block_0_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpAblock_0_layer_0_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_0_layer_0/kernel/Regularizer/SquareSquare@block_0_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
�
�
__inference_loss_fn_3_2484160N
?block_0_layer_0_bias_regularizer_square_readvariableop_resource:	�
identity��6block_0_layer_0/bias/Regularizer/Square/ReadVariableOp�
6block_0_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp?block_0_layer_0_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_0_layer_0/bias/Regularizer/SquareSquare>block_0_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
�
l
B__inference_add_2_layer_call_and_return_conditional_losses_2480656

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
N__forward_decorrelation_layer_layer_call_and_return_conditional_losses_2481456
inputs_00
matmul_readvariableop_resource:
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: *
backward_function_nameec__inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_2481446_24814572.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_2482869
input_1
unknown:
	unknown_0:
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:

unknown_11

unknown_12

unknown_13
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__wrapped_model_2480490o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : : : : : : : : : : : :H:H:22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:$ 

_output_shapes

:H:$ 

_output_shapes

:H:$ 

_output_shapes

:
�
�
\__inference___backward_dense_output_layer_call_and_return_conditional_losses_2481260_2481273
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
:����������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes
:	�*
transpose_a(o
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*(
_output_shapes
:����������j

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes
:	�h

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:���������:	�:����������*b
forward_function_nameIG__forward_dense_output_layer_call_and_return_conditional_losses_2481272:- )
'
_output_shapes
:���������:%!

_output_shapes
:	�:.*
(
_output_shapes
:����������
�
�
L__inference_block_1_layer_0_layer_call_and_return_conditional_losses_2484018

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)block_1_layer_0/kernel/Regularizer/SquareSquare@block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��y
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
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^block_1_layer_0/bias/Regularizer/Square/ReadVariableOp9^block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp2t
8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp8block_1_layer_0/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_5_2484182N
?block_1_layer_0_bias_regularizer_square_readvariableop_resource:	�
identity��6block_1_layer_0/bias/Regularizer/Square/ReadVariableOp�
6block_1_layer_0/bias/Regularizer/Square/ReadVariableOpReadVariableOp?block_1_layer_0_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'block_1_layer_0/bias/Regularizer/SquareSquare>block_1_layer_0/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�p
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
��
�
"__inference__wrapped_model_2480490
input_1_
Qsobolev_model_resnet_entropy_closure_mean_shift_layer_sub_readvariableop_resource:i
Wsobolev_model_resnet_entropy_closure_decorrelation_layer_matmul_readvariableop_resource:b
Osobolev_model_resnet_entropy_closure_layer_input_matmul_readvariableop_resource:	�_
Psobolev_model_resnet_entropy_closure_layer_input_biasadd_readvariableop_resource:	�g
Ssobolev_model_resnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource:
��c
Tsobolev_model_resnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource:	�g
Ssobolev_model_resnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource:
��c
Tsobolev_model_resnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource:	�g
Ssobolev_model_resnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource:
��c
Tsobolev_model_resnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource:	�c
Psobolev_model_resnet_entropy_closure_dense_output_matmul_readvariableop_resource:	�_
Qsobolev_model_resnet_entropy_closure_dense_output_biasadd_readvariableop_resource:
sobolev_model_2480355
sobolev_model_tensordot_1_b
sobolev_model_mul_1_x
identity

identity_1

identity_2��Ksobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp�Jsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp�Ksobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp�Jsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp�Ksobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp�Jsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp�Nsobolev_model/ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp�Hsobolev_model/ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp�Gsobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp�Gsobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp�Fsobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp�Hsobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp�sobolev_model/checked�sobolev_model/checked_1�
Hsobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOpReadVariableOpQsobolev_model_resnet_entropy_closure_mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:*
dtype0�
9sobolev_model/ResNet_entropy_closure/mean_shift_layer/subSubinput_1Psobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Nsobolev_model/ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOpReadVariableOpWsobolev_model_resnet_entropy_closure_decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
?sobolev_model/ResNet_entropy_closure/decorrelation_layer/MatMulMatMul=sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub:z:0Vsobolev_model/ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Fsobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOpReadVariableOpOsobolev_model_resnet_entropy_closure_layer_input_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
7sobolev_model/ResNet_entropy_closure/layer_input/MatMulMatMulIsobolev_model/ResNet_entropy_closure/decorrelation_layer/MatMul:product:0Nsobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Gsobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOpReadVariableOpPsobolev_model_resnet_entropy_closure_layer_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8sobolev_model/ResNet_entropy_closure/layer_input/BiasAddBiasAddAsobolev_model/ResNet_entropy_closure/layer_input/MatMul:product:0Osobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2sobolev_model/ResNet_entropy_closure/tf.nn.elu/EluEluAsobolev_model/ResNet_entropy_closure/layer_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Jsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOpReadVariableOpSsobolev_model_resnet_entropy_closure_block_0_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
;sobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMulMatMul@sobolev_model/ResNet_entropy_closure/tf.nn.elu/Elu:activations:0Rsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ksobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOpReadVariableOpTsobolev_model_resnet_entropy_closure_block_0_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<sobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAddBiasAddEsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul:product:0Ssobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,sobolev_model/ResNet_entropy_closure/add/addAddV2Asobolev_model/ResNet_entropy_closure/layer_input/BiasAdd:output:0Esobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
4sobolev_model/ResNet_entropy_closure/tf.nn.elu_1/EluElu0sobolev_model/ResNet_entropy_closure/add/add:z:0*
T0*(
_output_shapes
:�����������
Jsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOpReadVariableOpSsobolev_model_resnet_entropy_closure_block_1_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
;sobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMulMatMulBsobolev_model/ResNet_entropy_closure/tf.nn.elu_1/Elu:activations:0Rsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ksobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOpReadVariableOpTsobolev_model_resnet_entropy_closure_block_1_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<sobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAddBiasAddEsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul:product:0Ssobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.sobolev_model/ResNet_entropy_closure/add_1/addAddV20sobolev_model/ResNet_entropy_closure/add/add:z:0Esobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
4sobolev_model/ResNet_entropy_closure/tf.nn.elu_2/EluElu2sobolev_model/ResNet_entropy_closure/add_1/add:z:0*
T0*(
_output_shapes
:�����������
Jsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOpReadVariableOpSsobolev_model_resnet_entropy_closure_block_2_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
;sobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMulMatMulBsobolev_model/ResNet_entropy_closure/tf.nn.elu_2/Elu:activations:0Rsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ksobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOpReadVariableOpTsobolev_model_resnet_entropy_closure_block_2_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<sobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAddBiasAddEsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul:product:0Ssobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.sobolev_model/ResNet_entropy_closure/add_2/addAddV22sobolev_model/ResNet_entropy_closure/add_1/add:z:0Esobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Gsobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOpReadVariableOpPsobolev_model_resnet_entropy_closure_dense_output_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
8sobolev_model/ResNet_entropy_closure/dense_output/MatMulMatMul2sobolev_model/ResNet_entropy_closure/add_2/add:z:0Osobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp:value:0*
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
:����������*
transpose_b(�
Ogradient_tape/sobolev_model/ResNet_entropy_closure/dense_output/MatMul/MatMul_1MatMul2sobolev_model/ResNet_entropy_closure/add_2/add:z:0 sobolev_model/ones_like:output:0*
T0*
_output_shapes
:	�*
transpose_a(�
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
:���������:����������
@gradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/SumSumWgradient_tape/sobolev_model/ResNet_entropy_closure/dense_output/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/ReshapeReshapeIgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Sum:output:0Kgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Shape:output:0*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Sum_1SumWgradient_tape/sobolev_model/ResNet_entropy_closure/dense_output/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Reshape_1ReshapeKgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Sum_1:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Vgradient_tape/sobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Pgradient_tape/sobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMulMatMulOgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Reshape_1:output:0Rsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMul_1MatMulBsobolev_model/ResNet_entropy_closure/tf.nn.elu_2/Elu:activations:0Ogradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
Fgradient_tape/sobolev_model/ResNet_entropy_closure/tf.nn.elu_2/EluGradEluGradZgradient_tape/sobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/MatMul:product:0Bsobolev_model/ResNet_entropy_closure/tf.nn.elu_2/Elu:activations:0*
T0*(
_output_shapes
:�����������
sobolev_model/AddNAddNMgradient_tape/sobolev_model/ResNet_entropy_closure/add_2/add/Reshape:output:0Rgradient_tape/sobolev_model/ResNet_entropy_closure/tf.nn.elu_2/EluGrad:backprops:0*
N*
T0*(
_output_shapes
:�����������
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
@gradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/SumSumsobolev_model/AddN:sum:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/ReshapeReshapeIgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Sum:output:0Kgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Shape:output:0*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Sum_1Sumsobolev_model/AddN:sum:0Wgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Reshape_1ReshapeKgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Sum_1:output:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Vgradient_tape/sobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Pgradient_tape/sobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMulMatMulOgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Reshape_1:output:0Rsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMul_1MatMulBsobolev_model/ResNet_entropy_closure/tf.nn.elu_1/Elu:activations:0Ogradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
Fgradient_tape/sobolev_model/ResNet_entropy_closure/tf.nn.elu_1/EluGradEluGradZgradient_tape/sobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/MatMul:product:0Bsobolev_model/ResNet_entropy_closure/tf.nn.elu_1/Elu:activations:0*
T0*(
_output_shapes
:�����������
sobolev_model/AddN_1AddNMgradient_tape/sobolev_model/ResNet_entropy_closure/add_1/add/Reshape:output:0Rgradient_tape/sobolev_model/ResNet_entropy_closure/tf.nn.elu_1/EluGrad:backprops:0*
N*
T0*(
_output_shapes
:�����������
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
>gradient_tape/sobolev_model/ResNet_entropy_closure/add/add/SumSumsobolev_model/AddN_1:sum:0Ugradient_tape/sobolev_model/ResNet_entropy_closure/add/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Bgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/ReshapeReshapeGgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Sum:output:0Igradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Shape:output:0*
T0*(
_output_shapes
:�����������
@gradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Sum_1Sumsobolev_model/AddN_1:sum:0Ugradient_tape/sobolev_model/ResNet_entropy_closure/add/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Reshape_1ReshapeIgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Sum_1:output:0Kgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Vgradient_tape/sobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/BiasAddGradBiasAddGradMgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Pgradient_tape/sobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMulMatMulMgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Reshape_1:output:0Rsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Rgradient_tape/sobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMul_1MatMul@sobolev_model/ResNet_entropy_closure/tf.nn.elu/Elu:activations:0Mgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
Dgradient_tape/sobolev_model/ResNet_entropy_closure/tf.nn.elu/EluGradEluGradZgradient_tape/sobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/MatMul:product:0@sobolev_model/ResNet_entropy_closure/tf.nn.elu/Elu:activations:0*
T0*(
_output_shapes
:�����������
sobolev_model/AddN_2AddNKgradient_tape/sobolev_model/ResNet_entropy_closure/add/add/Reshape:output:0Pgradient_tape/sobolev_model/ResNet_entropy_closure/tf.nn.elu/EluGrad:backprops:0*
N*
T0*(
_output_shapes
:�����������
Rgradient_tape/sobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/BiasAddGradBiasAddGradsobolev_model/AddN_2:sum:0*
T0*
_output_shapes	
:��
Lgradient_tape/sobolev_model/ResNet_entropy_closure/layer_input/MatMul/MatMulMatMulsobolev_model/AddN_2:sum:0Nsobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Ngradient_tape/sobolev_model/ResNet_entropy_closure/layer_input/MatMul/MatMul_1MatMulIsobolev_model/ResNet_entropy_closure/decorrelation_layer/MatMul:product:0sobolev_model/AddN_2:sum:0*
T0*
_output_shapes
:	�*
transpose_a(�
Tgradient_tape/sobolev_model/ResNet_entropy_closure/decorrelation_layer/MatMul/MatMulMatMulVgradient_tape/sobolev_model/ResNet_entropy_closure/layer_input/MatMul/MatMul:product:0Vsobolev_model/ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Mgradient_tape/sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/ShapeShapeinput_1*
T0*
_output_shapes
:�
Ogradient_tape/sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/Shape_1ShapePsobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:�
]gradient_tape/sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/Shape:output:0Xgradient_tape/sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/Shape_1:output:0*2
_output_shapes 
:���������:����������
Kgradient_tape/sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/SumSum^gradient_tape/sobolev_model/ResNet_entropy_closure/decorrelation_layer/MatMul/MatMul:product:0bgradient_tape/sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Ogradient_tape/sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/ReshapeReshapeTgradient_tape/sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/Sum:output:0Vgradient_tape/sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/Shape:output:0*
T0*'
_output_shapes
:����������
sobolev_model/CastCastXgradient_tape/sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/Reshape:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
sobolev_model/checkedCheckNumericssobolev_model/Cast:y:0*
T0*'
_output_shapes
:���������*r
messagegeinput tensor checking error at alpha = Tensor("sobolev_model/Cast:0", shape=(None, 3), dtype=float64)r
)sobolev_model/checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
'sobolev_model/checkedandclipped/MinimumMinimumsobolev_model/checked:output:02sobolev_model/checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������j
!sobolev_model/checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
sobolev_model/checkedandclippedMaximum+sobolev_model/checkedandclipped/Minimum:z:0*sobolev_model/checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������r
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
sobolev_model/strided_sliceStridedSlicesobolev_model_2480355*sobolev_model/strided_slice/stack:output:0,sobolev_model/strided_slice/stack_1:output:0,sobolev_model/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:H*

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
:����������
sobolev_model/Tensordot/ReshapeReshape%sobolev_model/Tensordot/transpose:y:0&sobolev_model/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
sobolev_model/Tensordot/MatMulMatMul(sobolev_model/Tensordot/Reshape:output:0$sobolev_model/strided_slice:output:0*
T0*'
_output_shapes
:���������Hi
sobolev_model/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Hg
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
T0*'
_output_shapes
:���������Hl
sobolev_model/ExpExp sobolev_model/Tensordot:output:0*
T0*'
_output_shapes
:���������Ht
#sobolev_model/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%sobolev_model/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      v
%sobolev_model/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
sobolev_model/strided_slice_1StridedSlicesobolev_model_2480355,sobolev_model/strided_slice_1/stack:output:0.sobolev_model/strided_slice_1/stack_1:output:0.sobolev_model/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sobolev_model/LogLog&sobolev_model/strided_slice_1:output:0*
T0*
_output_shapes
: h
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
T0*'
_output_shapes
:���������H�
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

:H�
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
:���������p
sobolev_model/Log_1Log"sobolev_model/Tensordot_1:output:0*
T0*'
_output_shapes
:���������|
sobolev_model/addAddV2sobolev_model/Log:y:0sobolev_model/Log_1:y:0*
T0*'
_output_shapes
:���������a
sobolev_model/NegNegsobolev_model/add:z:0*
T0*'
_output_shapes
:���������t
#sobolev_model/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%sobolev_model/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      v
%sobolev_model/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
sobolev_model/strided_slice_2StridedSlicesobolev_model_2480355,sobolev_model/strided_slice_2/stack:output:0.sobolev_model/strided_slice_2/stack_1:output:0.sobolev_model/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
sobolev_model/truedivRealDivsobolev_model/Neg:y:0&sobolev_model/strided_slice_2:output:0*
T0*'
_output_shapes
:���������[
sobolev_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
sobolev_model/concatConcatV2sobolev_model/truediv:z:0sobolev_model/Cast:y:0"sobolev_model/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
sobolev_model/checked_1CheckNumericssobolev_model/concat:output:0^sobolev_model/checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errort
+sobolev_model/checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
)sobolev_model/checkedandclipped_1/MinimumMinimum sobolev_model/checked_1:output:04sobolev_model/checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������l
#sobolev_model/checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
!sobolev_model/checkedandclipped_1Maximum-sobolev_model/checkedandclipped_1/Minimum:z:0,sobolev_model/checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������h
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
:����������
!sobolev_model/Tensordot_2/ReshapeReshape'sobolev_model/Tensordot_2/transpose:y:0(sobolev_model/Tensordot_2/stack:output:0*
T0*0
_output_shapes
:�������������������
 sobolev_model/Tensordot_2/MatMulMatMul*sobolev_model/Tensordot_2/Reshape:output:0sobolev_model_2480355*
T0*'
_output_shapes
:���������Hk
!sobolev_model/Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Hi
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
T0*'
_output_shapes
:���������Hp
sobolev_model/Exp_1Exp"sobolev_model/Tensordot_2:output:0*
T0*'
_output_shapes
:���������H�
sobolev_model/MulMulsobolev_model/Exp_1:y:0sobolev_model_tensordot_1_b*
T0*'
_output_shapes
:���������Ht
#sobolev_model/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%sobolev_model/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        v
%sobolev_model/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
sobolev_model/strided_slice_3StridedSlicesobolev_model_2480355,sobolev_model/strided_slice_3/stack:output:0.sobolev_model/strided_slice_3/stack_1:output:0.sobolev_model/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:H*

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
T0*'
_output_shapes
:���������H�
!sobolev_model/Tensordot_3/ReshapeReshape'sobolev_model/Tensordot_3/transpose:y:0(sobolev_model/Tensordot_3/stack:output:0*
T0*0
_output_shapes
:������������������{
*sobolev_model/Tensordot_3/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
%sobolev_model/Tensordot_3/transpose_1	Transpose&sobolev_model/strided_slice_3:output:03sobolev_model/Tensordot_3/transpose_1/perm:output:0*
T0*
_output_shapes

:H�
 sobolev_model/Tensordot_3/MatMulMatMul*sobolev_model/Tensordot_3/Reshape:output:0)sobolev_model/Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������k
!sobolev_model/Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:i
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
:����������
sobolev_model/Mul_1Mulsobolev_model_mul_1_xsobolev_model/concat:output:0*
T0*'
_output_shapes
:����������
sobolev_model/add_1AddV2"sobolev_model/Tensordot_3:output:0sobolev_model/Mul_1:z:0*
T0*'
_output_shapes
:���������t
#sobolev_model/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       v
%sobolev_model/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        v
%sobolev_model/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
sobolev_model/strided_slice_4StridedSlicesobolev_model/add_1:z:0,sobolev_model/strided_slice_4/stack:output:0.sobolev_model/strided_slice_4/stack_1:output:0.sobolev_model/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
IdentityIdentityBsobolev_model/ResNet_entropy_closure/dense_output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������

Identity_1IdentityXgradient_tape/sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/Reshape:output:0^NoOp*
T0*'
_output_shapes
:���������w

Identity_2Identity&sobolev_model/strided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpL^sobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOpK^sobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOpL^sobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOpK^sobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOpL^sobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOpK^sobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOpO^sobolev_model/ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOpI^sobolev_model/ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOpH^sobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOpH^sobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOpG^sobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOpI^sobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp^sobolev_model/checked^sobolev_model/checked_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : : : : : : : : : : : :H:H:2�
Ksobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOpKsobolev_model/ResNet_entropy_closure/block_0_layer_0/BiasAdd/ReadVariableOp2�
Jsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOpJsobolev_model/ResNet_entropy_closure/block_0_layer_0/MatMul/ReadVariableOp2�
Ksobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOpKsobolev_model/ResNet_entropy_closure/block_1_layer_0/BiasAdd/ReadVariableOp2�
Jsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOpJsobolev_model/ResNet_entropy_closure/block_1_layer_0/MatMul/ReadVariableOp2�
Ksobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOpKsobolev_model/ResNet_entropy_closure/block_2_layer_0/BiasAdd/ReadVariableOp2�
Jsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOpJsobolev_model/ResNet_entropy_closure/block_2_layer_0/MatMul/ReadVariableOp2�
Nsobolev_model/ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOpNsobolev_model/ResNet_entropy_closure/decorrelation_layer/MatMul/ReadVariableOp2�
Hsobolev_model/ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOpHsobolev_model/ResNet_entropy_closure/dense_output/BiasAdd/ReadVariableOp2�
Gsobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOpGsobolev_model/ResNet_entropy_closure/dense_output/MatMul/ReadVariableOp2�
Gsobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOpGsobolev_model/ResNet_entropy_closure/layer_input/BiasAdd/ReadVariableOp2�
Fsobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOpFsobolev_model/ResNet_entropy_closure/layer_input/MatMul/ReadVariableOp2�
Hsobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOpHsobolev_model/ResNet_entropy_closure/mean_shift_layer/sub/ReadVariableOp2.
sobolev_model/checkedsobolev_model/checked22
sobolev_model/checked_1sobolev_model/checked_1:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:$ 

_output_shapes

:H:$ 

_output_shapes

:H:$ 

_output_shapes

:
�
�
[__inference___backward_layer_input_layer_call_and_return_conditional_losses_2481425_2481438
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:����������u
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes	
:��
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes
:	�*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������j

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes
:	�i

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������:	�:���������*a
forward_function_nameHF__forward_layer_input_layer_call_and_return_conditional_losses_2481437:. *
(
_output_shapes
:����������:%!

_output_shapes
:	�:-)
'
_output_shapes
:���������
�
�
.__inference_dense_output_layer_call_fn_2484100

inputs
unknown:	�
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
GPU2*0J 8� *R
fMRK
I__inference_dense_output_layer_call_and_return_conditional_losses_2480674o
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
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
S
'__inference_add_1_layer_call_fn_2484024
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
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_add_1_layer_call_and_return_conditional_losses_2480619a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
I__inference_dense_output_layer_call_and_return_conditional_losses_2480674

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�5dense_output/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:	�*
dtype0�
&dense_output/kernel/Regularizer/SquareSquare=dense_output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�v
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
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2n
5dense_output/kernel/Regularizer/Square/ReadVariableOp5dense_output/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
@__forward_add_1_layer_call_and_return_conditional_losses_2481345
inputs_0

inputs_1_0
identity

inputs
inputs_1U
addAddV2inputs_0
inputs_1_0*
T0*(
_output_shapes
:����������P
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������*q
backward_function_nameWU__inference___backward_add_1_layer_call_and_return_conditional_losses_2481329_2481346:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_layer_input_layer_call_and_return_conditional_losses_2480541

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2layer_input/bias/Regularizer/Square/ReadVariableOp�4layer_input/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4layer_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
%layer_input/kernel/Regularizer/SquareSquare<layer_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
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
:�*
dtype0�
#layer_input/bias/Regularizer/SquareSquare:layer_input/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:�l
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
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^layer_input/bias/Regularizer/Square/ReadVariableOp5^layer_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2layer_input/bias/Regularizer/Square/ReadVariableOp2layer_input/bias/Regularizer/Square/ReadVariableOp2l
4layer_input/kernel/Regularizer/Square/ReadVariableOp4layer_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
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
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������<
output_20
StatefulPartitionedCall:1���������<
output_30
StatefulPartitionedCall:2���������tensorflow/serving/predict:��
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
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_model
�
	layer-0

layer_with_weights-0

layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
layer_with_weights-4
layer-8
layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer_with_weights-6
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_network
�
iter

beta_1

beta_2
	decay
learning_rate"m�#m�$m�%m�&m�'m�(m�)m�*m�+m�"v�#v�$v�%v�&v�'v�(v�)v�*v�+v�"
	optimizer
 "
trackable_dict_wrapper
v
 0
!1
"2
#3
$4
%5
&6
'7
(8
)9
*10
+11"
trackable_list_wrapper
f
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
"
_tf_keras_input_layer
�
 mu
1	variables
2trainable_variables
3regularization_losses
4	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
!
ev_cov_mat
5	variables
6trainable_variables
7regularization_losses
8	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

"kernel
#bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
=	keras_api"
_tf_keras_layer
�

$kernel
%bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
F	keras_api"
_tf_keras_layer
�

&kernel
'bias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
O	keras_api"
_tf_keras_layer
�

(kernel
)bias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

*kernel
+bias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
v
 0
!1
"2
#3
$4
%5
&6
'7
(8
)9
*10
+11"
trackable_list_wrapper
f
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9"
trackable_list_wrapper
h
�0
�1
�2
�3
�4
�5
�6
�7
�8"
trackable_list_wrapper
�
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
:2Variable
:2Variable
%:#	�2layer_input/kernel
:�2layer_input/bias
*:(
��2block_0_layer_0/kernel
#:!�2block_0_layer_0/bias
*:(
��2block_1_layer_0/kernel
#:!�2block_1_layer_0/bias
*:(
��2block_2_layer_0/kernel
#:!�2block_2_layer_0/bias
&:$	�2dense_output/kernel
:2dense_output/bias
.
 0
!1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
f
a0
b1
c2
d3
e4
f5
g6
h7
i8
j9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
1	variables
2trainable_variables
3regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
'
!0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
5	variables
6trainable_variables
7regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
9	variables
:trainable_variables
;regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
>	variables
?trainable_variables
@regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
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
K	variables
Ltrainable_variables
Mregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
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
T	variables
Utrainable_variables
Vregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
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
X	variables
Ytrainable_variables
Zregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
 0
!1"
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
13"
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
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
!0"
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
�0
�1"
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
�0
�1"
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
�0
�1"
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
�0
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
%:#	�2layer_input/kernel/m
:�2layer_input/bias/m
*:(
��2block_0_layer_0/kernel/m
#:!�2block_0_layer_0/bias/m
*:(
��2block_1_layer_0/kernel/m
#:!�2block_1_layer_0/bias/m
*:(
��2block_2_layer_0/kernel/m
#:!�2block_2_layer_0/bias/m
&:$	�2dense_output/kernel/m
:2dense_output/bias/m
%:#	�2layer_input/kernel/v
:�2layer_input/bias/v
*:(
��2block_0_layer_0/kernel/v
#:!�2block_0_layer_0/bias/v
*:(
��2block_1_layer_0/kernel/v
#:!�2block_1_layer_0/bias/v
*:(
��2block_2_layer_0/kernel/v
#:!�2block_2_layer_0/bias/v
&:$	�2dense_output/kernel/v
:2dense_output/bias/v
�2�
/__inference_sobolev_model_layer_call_fn_2481772
/__inference_sobolev_model_layer_call_fn_2482908
/__inference_sobolev_model_layer_call_fn_2482947
/__inference_sobolev_model_layer_call_fn_2482244�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2483242
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2483537
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2482506
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2482768�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkwjkwargs
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
"__inference__wrapped_model_2480490input_1"�
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
8__inference_ResNet_entropy_closure_layer_call_fn_2480762
8__inference_ResNet_entropy_closure_layer_call_fn_2483620
8__inference_ResNet_entropy_closure_layer_call_fn_2483649
8__inference_ResNet_entropy_closure_layer_call_fn_2481031�
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
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2483749
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2483849
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481126
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481221�
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
%__inference_signature_wrapper_2482869input_1"�
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
2__inference_mean_shift_layer_layer_call_fn_2483856�
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
M__inference_mean_shift_layer_layer_call_and_return_conditional_losses_2483863�
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
5__inference_decorrelation_layer_layer_call_fn_2483870�
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
P__inference_decorrelation_layer_layer_call_and_return_conditional_losses_2483877�
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
-__inference_layer_input_layer_call_fn_2483898�
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
H__inference_layer_input_layer_call_and_return_conditional_losses_2483920�
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
1__inference_block_0_layer_0_layer_call_fn_2483941�
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
L__inference_block_0_layer_0_layer_call_and_return_conditional_losses_2483963�
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
%__inference_add_layer_call_fn_2483969�
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
@__inference_add_layer_call_and_return_conditional_losses_2483975�
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
1__inference_block_1_layer_0_layer_call_fn_2483996�
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
L__inference_block_1_layer_0_layer_call_and_return_conditional_losses_2484018�
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
'__inference_add_1_layer_call_fn_2484024�
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
B__inference_add_1_layer_call_and_return_conditional_losses_2484030�
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
1__inference_block_2_layer_0_layer_call_fn_2484051�
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
L__inference_block_2_layer_0_layer_call_and_return_conditional_losses_2484073�
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
'__inference_add_2_layer_call_fn_2484079�
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
B__inference_add_2_layer_call_and_return_conditional_losses_2484085�
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
.__inference_dense_output_layer_call_fn_2484100�
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
I__inference_dense_output_layer_call_and_return_conditional_losses_2484116�
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
__inference_loss_fn_0_2484127�
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
__inference_loss_fn_1_2484138�
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
__inference_loss_fn_2_2484149�
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
__inference_loss_fn_3_2484160�
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
__inference_loss_fn_4_2484171�
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
__inference_loss_fn_5_2484182�
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
__inference_loss_fn_6_2484193�
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
__inference_loss_fn_7_2484204�
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
__inference_loss_fn_8_2484215�
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
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481126o !"#$%&'()*+8�5
.�+
!�
input_1���������
p 

 
� "%�"
�
0���������
� �
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2481221o !"#$%&'()*+8�5
.�+
!�
input_1���������
p

 
� "%�"
�
0���������
� �
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2483749n !"#$%&'()*+7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
S__inference_ResNet_entropy_closure_layer_call_and_return_conditional_losses_2483849n !"#$%&'()*+7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
8__inference_ResNet_entropy_closure_layer_call_fn_2480762b !"#$%&'()*+8�5
.�+
!�
input_1���������
p 

 
� "�����������
8__inference_ResNet_entropy_closure_layer_call_fn_2481031b !"#$%&'()*+8�5
.�+
!�
input_1���������
p

 
� "�����������
8__inference_ResNet_entropy_closure_layer_call_fn_2483620a !"#$%&'()*+7�4
-�*
 �
inputs���������
p 

 
� "�����������
8__inference_ResNet_entropy_closure_layer_call_fn_2483649a !"#$%&'()*+7�4
-�*
 �
inputs���������
p

 
� "�����������
"__inference__wrapped_model_2480490� !"#$%&'()*+���0�-
&�#
!�
input_1���������
� "���
.
output_1"�
output_1���������
.
output_2"�
output_2���������
.
output_3"�
output_3����������
B__inference_add_1_layer_call_and_return_conditional_losses_2484030�\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "&�#
�
0����������
� �
'__inference_add_1_layer_call_fn_2484024y\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "������������
B__inference_add_2_layer_call_and_return_conditional_losses_2484085�\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "&�#
�
0����������
� �
'__inference_add_2_layer_call_fn_2484079y\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "������������
@__inference_add_layer_call_and_return_conditional_losses_2483975�\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "&�#
�
0����������
� �
%__inference_add_layer_call_fn_2483969y\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "������������
L__inference_block_0_layer_0_layer_call_and_return_conditional_losses_2483963^$%0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
1__inference_block_0_layer_0_layer_call_fn_2483941Q$%0�-
&�#
!�
inputs����������
� "������������
L__inference_block_1_layer_0_layer_call_and_return_conditional_losses_2484018^&'0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
1__inference_block_1_layer_0_layer_call_fn_2483996Q&'0�-
&�#
!�
inputs����������
� "������������
L__inference_block_2_layer_0_layer_call_and_return_conditional_losses_2484073^()0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
1__inference_block_2_layer_0_layer_call_fn_2484051Q()0�-
&�#
!�
inputs����������
� "������������
P__inference_decorrelation_layer_layer_call_and_return_conditional_losses_2483877[!/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
5__inference_decorrelation_layer_layer_call_fn_2483870N!/�,
%�"
 �
inputs���������
� "�����������
I__inference_dense_output_layer_call_and_return_conditional_losses_2484116]*+0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� �
.__inference_dense_output_layer_call_fn_2484100P*+0�-
&�#
!�
inputs����������
� "�����������
H__inference_layer_input_layer_call_and_return_conditional_losses_2483920]"#/�,
%�"
 �
inputs���������
� "&�#
�
0����������
� �
-__inference_layer_input_layer_call_fn_2483898P"#/�,
%�"
 �
inputs���������
� "�����������<
__inference_loss_fn_0_2484127"�

� 
� "� <
__inference_loss_fn_1_2484138#�

� 
� "� <
__inference_loss_fn_2_2484149$�

� 
� "� <
__inference_loss_fn_3_2484160%�

� 
� "� <
__inference_loss_fn_4_2484171&�

� 
� "� <
__inference_loss_fn_5_2484182'�

� 
� "� <
__inference_loss_fn_6_2484193(�

� 
� "� <
__inference_loss_fn_7_2484204)�

� 
� "� <
__inference_loss_fn_8_2484215*�

� 
� "� �
M__inference_mean_shift_layer_layer_call_and_return_conditional_losses_2483863[ /�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
2__inference_mean_shift_layer_layer_call_fn_2483856N /�,
%�"
 �
inputs���������
� "�����������
%__inference_signature_wrapper_2482869� !"#$%&'()*+���;�8
� 
1�.
,
input_1!�
input_1���������"���
.
output_1"�
output_1���������
.
output_2"�
output_2���������
.
output_3"�
output_3����������
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2482506� !"#$%&'()*+���4�1
*�'
!�
input_1���������
p 
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2482768� !"#$%&'()*+���4�1
*�'
!�
input_1���������
p
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2483242� !"#$%&'()*+���.�+
$�!
�
x���������
p 
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
J__inference_sobolev_model_layer_call_and_return_conditional_losses_2483537� !"#$%&'()*+���.�+
$�!
�
x���������
p
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
/__inference_sobolev_model_layer_call_fn_2481772� !"#$%&'()*+���4�1
*�'
!�
input_1���������
p 
� "Z�W
�
0���������
�
1���������
�
2����������
/__inference_sobolev_model_layer_call_fn_2482244� !"#$%&'()*+���4�1
*�'
!�
input_1���������
p
� "Z�W
�
0���������
�
1���������
�
2����������
/__inference_sobolev_model_layer_call_fn_2482908� !"#$%&'()*+���.�+
$�!
�
x���������
p 
� "Z�W
�
0���������
�
1���������
�
2����������
/__inference_sobolev_model_layer_call_fn_2482947� !"#$%&'()*+���.�+
$�!
�
x���������
p
� "Z�W
�
0���������
�
1���������
�
2���������
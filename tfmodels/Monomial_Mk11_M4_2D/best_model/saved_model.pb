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
 �"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��%
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
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
p

Variable_1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name
Variable_1
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

:*
dtype0
�
layer_-1_input/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*&
shared_namelayer_-1_input/kernel

)layer_-1_input/kernel/Read/ReadVariableOpReadVariableOplayer_-1_input/kernel*
_output_shapes

:d*
dtype0
~
layer_-1_input/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_namelayer_-1_input/bias
w
'layer_-1_input/bias/Read/ReadVariableOpReadVariableOplayer_-1_input/bias*
_output_shapes
:d*
dtype0
�
layer_0dense_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*.
shared_namelayer_0dense_component/kernel
�
1layer_0dense_component/kernel/Read/ReadVariableOpReadVariableOplayer_0dense_component/kernel*
_output_shapes

:d*
dtype0
�
layer_0nn_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*+
shared_namelayer_0nn_component/kernel
�
.layer_0nn_component/kernel/Read/ReadVariableOpReadVariableOplayer_0nn_component/kernel*
_output_shapes

:dd*
dtype0
�
layer_0nn_component/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*)
shared_namelayer_0nn_component/bias
�
,layer_0nn_component/bias/Read/ReadVariableOpReadVariableOplayer_0nn_component/bias*
_output_shapes
:d*
dtype0
�
layer_1dense_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*.
shared_namelayer_1dense_component/kernel
�
1layer_1dense_component/kernel/Read/ReadVariableOpReadVariableOplayer_1dense_component/kernel*
_output_shapes

:d*
dtype0
�
layer_1nn_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*+
shared_namelayer_1nn_component/kernel
�
.layer_1nn_component/kernel/Read/ReadVariableOpReadVariableOplayer_1nn_component/kernel*
_output_shapes

:dd*
dtype0
�
layer_1nn_component/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*)
shared_namelayer_1nn_component/bias
�
,layer_1nn_component/bias/Read/ReadVariableOpReadVariableOplayer_1nn_component/bias*
_output_shapes
:d*
dtype0
�
layer_2dense_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*.
shared_namelayer_2dense_component/kernel
�
1layer_2dense_component/kernel/Read/ReadVariableOpReadVariableOplayer_2dense_component/kernel*
_output_shapes

:d*
dtype0
�
layer_2nn_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*+
shared_namelayer_2nn_component/kernel
�
.layer_2nn_component/kernel/Read/ReadVariableOpReadVariableOplayer_2nn_component/kernel*
_output_shapes

:dd*
dtype0
�
layer_2nn_component/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*)
shared_namelayer_2nn_component/bias
�
,layer_2nn_component/bias/Read/ReadVariableOpReadVariableOplayer_2nn_component/bias*
_output_shapes
:d*
dtype0
�
layer_5dense_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_namelayer_5dense_component/kernel
�
1layer_5dense_component/kernel/Read/ReadVariableOpReadVariableOplayer_5dense_component/kernel*
_output_shapes

:*
dtype0
�
layer_5nn_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*+
shared_namelayer_5nn_component/kernel
�
.layer_5nn_component/kernel/Read/ReadVariableOpReadVariableOplayer_5nn_component/kernel*
_output_shapes

:d*
dtype0
�
layer_5nn_component/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namelayer_5nn_component/bias
�
,layer_5nn_component/bias/Read/ReadVariableOpReadVariableOplayer_5nn_component/bias*
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
layer_-1_input/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_namelayer_-1_input/kernel/m
�
+layer_-1_input/kernel/m/Read/ReadVariableOpReadVariableOplayer_-1_input/kernel/m*
_output_shapes

:d*
dtype0
�
layer_-1_input/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_namelayer_-1_input/bias/m
{
)layer_-1_input/bias/m/Read/ReadVariableOpReadVariableOplayer_-1_input/bias/m*
_output_shapes
:d*
dtype0
�
layer_0dense_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*0
shared_name!layer_0dense_component/kernel/m
�
3layer_0dense_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_0dense_component/kernel/m*
_output_shapes

:d*
dtype0
�
layer_0nn_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*-
shared_namelayer_0nn_component/kernel/m
�
0layer_0nn_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_0nn_component/kernel/m*
_output_shapes

:dd*
dtype0
�
layer_0nn_component/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_namelayer_0nn_component/bias/m
�
.layer_0nn_component/bias/m/Read/ReadVariableOpReadVariableOplayer_0nn_component/bias/m*
_output_shapes
:d*
dtype0
�
layer_1dense_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*0
shared_name!layer_1dense_component/kernel/m
�
3layer_1dense_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_1dense_component/kernel/m*
_output_shapes

:d*
dtype0
�
layer_1nn_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*-
shared_namelayer_1nn_component/kernel/m
�
0layer_1nn_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_1nn_component/kernel/m*
_output_shapes

:dd*
dtype0
�
layer_1nn_component/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_namelayer_1nn_component/bias/m
�
.layer_1nn_component/bias/m/Read/ReadVariableOpReadVariableOplayer_1nn_component/bias/m*
_output_shapes
:d*
dtype0
�
layer_2dense_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*0
shared_name!layer_2dense_component/kernel/m
�
3layer_2dense_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_2dense_component/kernel/m*
_output_shapes

:d*
dtype0
�
layer_2nn_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*-
shared_namelayer_2nn_component/kernel/m
�
0layer_2nn_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_2nn_component/kernel/m*
_output_shapes

:dd*
dtype0
�
layer_2nn_component/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_namelayer_2nn_component/bias/m
�
.layer_2nn_component/bias/m/Read/ReadVariableOpReadVariableOplayer_2nn_component/bias/m*
_output_shapes
:d*
dtype0
�
layer_5dense_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!layer_5dense_component/kernel/m
�
3layer_5dense_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_5dense_component/kernel/m*
_output_shapes

:*
dtype0
�
layer_5nn_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*-
shared_namelayer_5nn_component/kernel/m
�
0layer_5nn_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_5nn_component/kernel/m*
_output_shapes

:d*
dtype0
�
layer_5nn_component/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_5nn_component/bias/m
�
.layer_5nn_component/bias/m/Read/ReadVariableOpReadVariableOplayer_5nn_component/bias/m*
_output_shapes
:*
dtype0
�
layer_-1_input/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_namelayer_-1_input/kernel/v
�
+layer_-1_input/kernel/v/Read/ReadVariableOpReadVariableOplayer_-1_input/kernel/v*
_output_shapes

:d*
dtype0
�
layer_-1_input/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_namelayer_-1_input/bias/v
{
)layer_-1_input/bias/v/Read/ReadVariableOpReadVariableOplayer_-1_input/bias/v*
_output_shapes
:d*
dtype0
�
layer_0dense_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*0
shared_name!layer_0dense_component/kernel/v
�
3layer_0dense_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_0dense_component/kernel/v*
_output_shapes

:d*
dtype0
�
layer_0nn_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*-
shared_namelayer_0nn_component/kernel/v
�
0layer_0nn_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_0nn_component/kernel/v*
_output_shapes

:dd*
dtype0
�
layer_0nn_component/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_namelayer_0nn_component/bias/v
�
.layer_0nn_component/bias/v/Read/ReadVariableOpReadVariableOplayer_0nn_component/bias/v*
_output_shapes
:d*
dtype0
�
layer_1dense_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*0
shared_name!layer_1dense_component/kernel/v
�
3layer_1dense_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_1dense_component/kernel/v*
_output_shapes

:d*
dtype0
�
layer_1nn_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*-
shared_namelayer_1nn_component/kernel/v
�
0layer_1nn_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_1nn_component/kernel/v*
_output_shapes

:dd*
dtype0
�
layer_1nn_component/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_namelayer_1nn_component/bias/v
�
.layer_1nn_component/bias/v/Read/ReadVariableOpReadVariableOplayer_1nn_component/bias/v*
_output_shapes
:d*
dtype0
�
layer_2dense_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*0
shared_name!layer_2dense_component/kernel/v
�
3layer_2dense_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_2dense_component/kernel/v*
_output_shapes

:d*
dtype0
�
layer_2nn_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*-
shared_namelayer_2nn_component/kernel/v
�
0layer_2nn_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_2nn_component/kernel/v*
_output_shapes

:dd*
dtype0
�
layer_2nn_component/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_namelayer_2nn_component/bias/v
�
.layer_2nn_component/bias/v/Read/ReadVariableOpReadVariableOplayer_2nn_component/bias/v*
_output_shapes
:d*
dtype0
�
layer_5dense_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!layer_5dense_component/kernel/v
�
3layer_5dense_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_5dense_component/kernel/v*
_output_shapes

:*
dtype0
�
layer_5nn_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*-
shared_namelayer_5nn_component/kernel/v
�
0layer_5nn_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_5nn_component/kernel/v*
_output_shapes

:d*
dtype0
�
layer_5nn_component/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namelayer_5nn_component/bias/v
�
.layer_5nn_component/bias/v/Read/ReadVariableOpReadVariableOplayer_5nn_component/bias/v*
_output_shapes
:*
dtype0
��
ConstConst*
_output_shapes
:	�*
dtype0*��
value��B��	�"��      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �? �CK@z?t�Vy��?�9H9� �?<���0�?qI�7�߫?�ivFP��?���+Oܲ?�bz��۴?�4����?��1�-��?z�c���?�B��=�?�B��=�?z�c���?��1�-��?�4����?�bz��۴?���+Oܲ?�ivFP��?vI�7�߫?<���0�?�9H9� �?t�Vy��? �CK@z? �CK@z�t�Vy����9H9� ��<���0��nI�7�߫��ivFP������+Oܲ��bz��۴��4�������1�-���y�c�����B��=���B��=��z�c������1�-����4������bz��۴����+Oܲ��ivFP���|I�7�߫�<���0���9H9� ��%t�Vy�����CK@z��">�%�?Q_l+XP�?�kܺ�a�?�n38K�?O����ſ?腥�~��?��YC��?[���v��?��^ 9��?h�4N��?ӻBy�?�1ut��?�1ut��?ӻBy�?i�4N��?��^ 9��?[���v��?��YC��?酥�~��?U����ſ?�n38K�?�kܺ�a�?O_l+XP�?�">�%�?�">�%썿G_l+XP���kܺ�a���n38K��L����ſ�腥�~�¿��YC�ſ\���v�ǿ��^ 9�ɿh�4N�˿һBy̿�1ut�̿�1ut�̿ӻBy̿i�4N�˿��^ 9�ɿ]���v�ǿ��YC�ſ煥�~�¿\����ſ��n38K���kܺ�a��`_l+XP��y">�%썿�b'?R*�?�N
�_F�?1���v�?�ϓ����?��:`��?��%#1�?L�4m���?��Ah�?�7�d���?	i7VU��?���1��?Eg�}��?Eg�}��?���1��?	i7VU��?�7�d���?��Ah�?L�4m���?��%#1�?��:`��?�ϓ����?5���v�?�N
�_F�?�b'?R*�?�b'?R*���N
�_F��0���v���ϓ���ÿ��:`�ȿ��%#1ͿL�4m��п��Ahҿ�7�d��ӿ	i7VU�Կ���1�տEg�}�ֿFg�}�ֿ���1�տ	i7VU�Կ�7�d��ӿ��AhҿK�4m��п��%#1Ϳ��:`�ȿ�ϓ���ÿ8���v���N
�_F���b'?R*���A[�E �?-R�A�?���a��?��ড4�?CNmHqu�?�t�y��?�@�E�?�n��ܡ�?�"�!��?�ó��?�Tm�E�?����?����?�Tm�E�?�ó��?�"�!��?�n��ܡ�?�@�E�?�t�y��?FNmHqu�?��ড4�?���a��?*R�A�?�A[�E �?�A[�E ��"R�A�����a�ÿ��ড4ʿANmHquп�t�y�ӿ�@�Eֿ�n��ܡؿ�"�!�ڿ�ó�ܿ�Tm�Eݿ���ݿ���ݿ�Tm�Eݿ�ó�ܿ�"�!�ڿ�n��ܡؿ�@�Eֿ�t�y�ӿJNmHquп��ড4ʿ���a�ÿ<R�A���A[�E ��� ��*�?����ᕼ?���N���?�i�3�?�kF�Y�?��g�'�?4;�k��?�&�h'u�?ɓC�<m�?����W�?<��a���?z&�W�F�?z&�W�F�?<��a���?����W�?ɓC�<m�?�&�h'u�?4;�k��?��g�'�?��kF�Y�?�i�3�?���N���?����ᕼ?� ��*�?� ��*������ᕼ����N��ǿ�i�3п�kF�YԿ��g�'ؿ3;�k�ۿ�&�h'u޿ɓC�<m�����W�<��a���z&�W�F�{&�W�F�<��a�������W�ʓC�<m��&�h'u޿1;�k�ۿ��g�'ؿ��kF�YԿ�i�3п���N��ǿ����ᕼ�� ��*��ѱ�{Ä�?������?j+7���?����	�?�9w�"��?��3�`�?�#���-�?���v��?��r��L�?���F�`�?d��A�?� ��y�?� ��y�?d��A�?���F�`�?��r��L�?���v��?�#���-�?��3�`�?�9w�"��?����	�?n+7���?������?ױ�{Ä�?���{Ä���������i+7��˿����	ӿ�9w�"�׿��3�`ܿ�#���-����v����r��L㿭��F�`�c��A�� ��y�� ��y�d��A忭��F�`���r��L����v���#���-���3�`ܿ�9w�"�׿����	ӿq+7��˿����������{Ä����N:~��?"G�q�?��vU�?lXp����?����?����v�?W�^��R�?�*!KC�?>��S��?�a��?h�7q���?����XQ�?����XQ�?h�7q���?�a��?>��S��?�*!KC�?W�^��R�?����v�?����?rXp����?��vU�? G�q�?��N:~��?~�N:~���G�qÿ��vUϿoXp���տ���ۿ����v�V�^��R��*!KC�=��S���a��g�7q��翨���XQ迩���XQ�h�7q����a��?��S���*!KC�U�^��R�����v����ۿnXp���տ��vUϿ/G�qÿv�N:~����d��(�?[U&^"��?�1�X&>�?�}\����?&��rV��?f"�7��?����L*�?��-M�?��u� �?�>�e�?7�
<JN�?�={���?�={���?7�
<JN�?�>�e�?��u� �?��-M�?����L*�?g"�7��?+��rV��?�}\����?�1�X&>�?XU&^"��?�d��(�?�d��(��QU&^"�Ŀ�1�X&>ѿ�}\���׿#��rV�ݿf"�7������L*俐�-M���u� ��>�e�6�
<JN��={����={���7�
<JN��>�e���u� 近�-M�����L*�e"�7��2��rV�ݿ�}\���׿�1�X&>ѿiU&^"�Ŀ�d��(��˳���+�?�:�M��?N��+&��?zE�%��?�1�*��?O
AU��?"��Bf��?Pˍ�'��?������?�4aM�?v`kDG�?�TFJ��?�TFJ��?v`kDG�?�4aM�?������?Pˍ�'��?"��Bf��?P
AU��?�1�*��?�E�%��?P��+&��?�:�M��?ӳ���+�?�����+���:�M�ƿM��+&�ҿ~E�%�ٿ�1�*��O
AU��!��Bf��Qˍ�'�翍������4aM�u`kDG쿠TFJ�쿠TFJ��v`kDG��4aM뿏�����Sˍ�'�� ��Bf��O
AU���1�*��}E�%�ٿR��+&�ҿ�:�M�ƿ�����+��j|N"�ǯ?>H,�/��?�_H��?�$&?s��?]��x��?]�neO�?`"�o��?LE;��@�?-`p=�?o4��;��?�_��s��?�*+F2N�?�*+F2N�?�_��s��?p4��;��?-`p=�?LE;��@�?`"�o��?^�neO�?_��x��?�$&?s��?�_H��?;H,�/��?q|N"�ǯ?O|N"�ǯ�3H,�/�ǿ�_H�ӿ�$&?s�ڿ[��x��]�neO�_"�o��ME;��@�-`p=�o4��;�쿤_��s����*+F2N*+F2N_��s���p4��;��-`p=�OE;��@�^"�o��\�neO�c��x�࿮$&?s�ڿ�_H�ӿNH,�/�ǿF|N"�ǯ����@o�?�̠���?�Dc1�?�W_���?���Vs�?(�̵�?��zy���?�FO��?@�
�+�?���B��?�1�}��?�VI��W�?�VI��W�?�1�}��?���B��?@�
�+�?�FO��?��zy���?)�̵�?���Vs�?�W_���?�Dc1�?�̠���?��@o�?���@o���̠��ȿ�Dc1Կ�W_��ۿ���Vs�(�̵俑�zy��翿FO��?�
�+����B����1�}�VI��W￟VI��W￮1�}�����B���A�
�+��FO�꿐�zy���'�̵俭��Vs��W_��ۿ�Dc1Կ�̠��ȿ���@o��q0i�t��?��g2���?�(�磊�?�XR�?�?��0^��?�Ƭ�D�?��(l�?��h��?��5���?|�Q=�?ۍ�R�?X]���?X]���?ۍ�R�?|�Q=�?��5���?��h��?��(l�?�Ƭ�D�?��0^��?$�XR�?�?�(�磊�?��g2���?u0i�t��?c0i�t�����g2��ȿ�(�磊Կ �XR�?ܿ��0^�῏Ƭ�D忘�(l���h����5���|�Q=�ۍ�R�X]���Y]���ۍ�R�|�Q=���5�����h�꿗�(l迎Ƭ�D���0^���XR�?ܿ�(�磊Կʭg2��ȿ^0i�t����B��=�?z�c���?��1�-��?�4����?�bz��۴?���+Oܲ?�ivFP��?tI�7�߫?<���0�?�9H9� �?t�Vy��?/ �CK@z?! �CK@z�t�Vy����9H9� ��
<���0��sI�7�߫��ivFP������+Oܲ��bz��۴��4�������1�-���z�c�����B��=���B��=��z�c������1�-����4������bz��۴����+Oܲ��ivFP���qI�7�߫�<���0���9H9� ��$t�Vy�����CK@z���CK@z?t�Vy��?�9H9� �?<���0�?lI�7�߫?�ivFP��?���+Oܲ?�bz��۴?�4����?��1�-��?y�c���?�B��=�?�1ut��?ӻBy�?i�4N��?��^ 9��?\���v��?��YC��?腥�~��?S����ſ?�n38K�?�kܺ�a�?T_l+XP�?�">�%�?�">�%썿O_l+XP���kܺ�a���n38K��Q����ſ�腥�~�¿��YC�ſZ���v�ǿ��^ 9�ɿh�4N�˿ӻBy̿�1ut�̿�1ut�̿ԻBy̿i�4N�˿��^ 9�ɿ]���v�ǿ��YC�ſꅥ�~�¿O����ſ��n38K���kܺ�a��__l+XP��p">�%썿B">�%�?S_l+XP�?�kܺ�a�?�n38K�?J����ſ?ꅥ�~��?��YC��?X���v��?��^ 9��?h�4N��?һBy�?�1ut��?Eg�}��?���1��?	i7VU��?�7�d���?��Ah�?L�4m���?��%#1�?��:`��?�ϓ����?4���v�?�N
�_F�? c'?R*�?�b'?R*���N
�_F��1���v���ϓ���ÿ��:`�ȿ��%#1ͿL�4m��п��Ahҿ�7�d��ӿ	i7VU�Կ���1�տEg�}�ֿEg�}�ֿ���1�տ	i7VU�Կ�7�d��ӿ��AhҿM�4m��п��%#1Ϳ��:`�ȿ�ϓ���ÿ7���v���N
�_F���b'?R*���b'?R*�?�N
�_F�?.���v�?�ϓ����?��:`��?��%#1�?M�4m���?��Ah�?�7�d���?	i7VU��?���1��?Eg�}��?����?�Tm�E�?�ó��?�"�!��?�n��ܡ�?�@�E�?�t�y��?ENmHqu�?��ড4�?���a��?0R�A�?�A[�E �?�A[�E ��+R�A�����a�ÿ��ড4ʿDNmHquп�t�y�ӿ�@�Eֿ�n��ܡؿ�"�!�ڿ�ó�ܿ�Tm�Eݿ���ݿ���ݿ�Tm�Eݿ�ó�ܿ�"�!�ڿ�n��ܡؿ�@�Eֿ�t�y�ӿCNmHquп��ড4ʿ���a�ÿ;R�A���A[�E ��A[�E �?/R�A�?���a��?~�ড4�?@NmHqu�?�t�y��?�@�E�?�n��ܡ�?�"�!��?�ó��?�Tm�E�?����?z&�W�F�?<��a���?����W�?ɓC�<m�?�&�h'u�?4;�k��?��g�'�?�kF�Y�?�i�3�?���N���?����ᕼ?� ��*�?� ��*������ᕼ����N��ǿ�i�3п�kF�YԿ��g�'ؿ3;�k�ۿ�&�h'u޿ȓC�<m�����W�<��a���z&�W�F�z&�W�F�=��a�������W�ɓC�<m��&�h'u޿5;�k�ۿ��g�'ؿ�kF�YԿ�i�3п���N��ǿ����ᕼ�� ��*��� ��*�?����ᕼ?��N���?�i�3�?��kF�Y�?��g�'�?5;�k��?�&�h'u�?ɓC�<m�?����W�?<��a���?z&�W�F�?� ��y�?d��A�?���F�`�?��r��L�?���v��?�#���-�?��3�`�?�9w�"��?����	�?m+7���?������?屽{Ä�?ٱ�{Ä���������j+7��˿����	ӿ�9w�"�׿��3�`ܿ�#���-����v����r��L㿭��F�`�d��A�� ��y�� ��y�d��A忭��F�`���r��L����v���#���-���3�`ܿ�9w�"�׿����	ӿo+7��˿����������{Ä�����{Ä�?������?g+7���?����	�?�9w�"��?��3�`�?�#���-�?���v��?��r��L�?���F�`�?c��A�?� ��y�?����XQ�?h�7q���?�a��?>��S��?�*!KC�?W�^��R�?����v�?����?lXp����?��vU�?$G�q�?��N:~��?��N:~��� G�qÿ��vUϿjXp���տ���ۿ����v�V�^��R��*!KC�<��S���a��h�7q��翨���XQ迨���XQ�i�7q����a��=��S���*!KC�W�^��R� ���v����ۿmXp���տ��vUϿ-G�qÿn�N:~���G�N:~��?#G�q�?��vU�?hXp����?߬���? ���v�?W�^��R�?�*!KC�?=��S��?�a��?g�7q���?����XQ�?�={���?7�
<JN�?�>�e�?��u� �?��-M�?����L*�?f"�7��?*��rV��?�}\����?�1�X&>�?^U&^"��?�d��(�?�d��(��YU&^"�Ŀ�1�X&>ѿ�}\���׿(��rV�ݿf"�7������L*俎�-M���u� ��>�e�7�
<JN��={����={���8�
<JN��>�e���u� 近�-M�����L*�h"�7��&��rV�ݿ�}\���׿�1�X&>ѿhU&^"�Ŀ�d��(���d��(�?]U&^"��?�1�X&>�?�}\����?!��rV��?h"�7��?����L*�?��-M�?��u� �?�>�e�?6�
<JN�?�={���?�TFJ��?v`kDG�?�4aM�?������?Qˍ�'��?"��Bf��?O
AU��?�1�*��?zE�%��?O��+&��?�:�M��?泍��+�?ֳ���+���:�M�ƿN��+&�ҿyE�%�ٿ�1�*��O
AU��!��Bf��Oˍ�'�翌������4aM�v`kDG쿠TFJ�쿠TFJ��w`kDG��4aM뿍�����Sˍ�'��#��Bf��Q
AU���1�*��|E�%�ٿQ��+&�ҿ�:�M�ƿ�����+��q����+�?�:�M��?L��+&��?wE�%��?�1�*��?Q
AU��?#��Bf��?Mˍ�'��?������?�4aM�?u`kDG�?�TFJ��?�*+F2N�?�_��s��?p4��;��?-`p=�?ME;��@�?`"�o��?]�neO�?_��x��?�$&?s��?�_H��?AH,�/��?�|N"�ǯ?u|N"�ǯ�<H,�/�ǿ�_H�ӿ�$&?s�ڿ^��x��]�neO�_"�o��KE;��@�-`p=�o4��;�쿥_��s����*+F2N*+F2N_��s���p4��;��-`p=�OE;��@�a"�o��^�neO�]��x�࿭$&?s�ڿ�_H�ӿMH,�/�ǿ<|N"�ǯ�|N"�ǯ?@H,�/��?�_H��?�$&?s��?Z��x��?^�neO�?a"�o��?IE;��@�?-`p=�?o4��;��?�_��s��?�*+F2N�?�VI��W�?�1�}��?���B��?@�
�+�?�FO��?��zy���?(�̵�?���Vs�?�W_���?�Dc1�?�̠���?��@o�?��@o���̠��ȿ�Dc1Կ�W_��ۿ���Vs�(�̵俑�zy��翽FO��>�
�+����B����1�}�VI��W￞VI��W￯1�}�����B���?�
�+��FO�꿓�zy���*�̵俧��Vs��W_��ۿ�Dc1Կ�̠��ȿ���@o�����@o�?�̠���?
�Dc1�?�W_���?���Vs�?*�̵�?��zy���?�FO��??�
�+�?���B��?�1�}��?�VI��W�?X]���?ۍ�R�?|�Q=�?��5���?��h��?��(l�?�Ƭ�D�?��0^��?�XR�?�?�(�磊�?��g2���?�0i�t��?w0i�t�����g2��ȿ�(�磊Կ�XR�?ܿ��0^�῏Ƭ�D忘�(l���h����5���|�Q=�ۍ�R�X]���X]���	ۍ�R�|�Q=���5�����h�꿚�(l近Ƭ�D���0^���XR�?ܿ�(�磊Կȭg2��ȿY0i�t���@0i�t��?��g2���?�(�磊�?�XR�?�?��0^��?�Ƭ�D�?��(l�?��h��?��5���?|�Q=�?ۍ�R�?X]���?��{��?��w��7?՛��bAP?$����^?'���Gh?�?7Lq?�	���;v?���1{?7���.�?E�ޖ?��?�W7r��?0t�┃?0t�┃?�W7r��?F�ޖ?��?7���.�?���1{?�	���;v?�?7Lq?0���Gh?5����^?ٛ��bAP?{�w��7?��{��?��{��?j�w��7?ӛ��bAP?,����^?"���Gh?�?7Lq?�	���;v?���1{?4���.�?E�ޖ?��?�W7r��?0t�┃?1t�┃?�W7r��?F�ޖ?��?:���.�?���1{?�	���;v?�?7Lq?;���Gh?,����^?ۛ��bAP?��w��7?׎�{��?m~L���+?��_?�hZ�u?Z�/�8��?�i�ˋ�?�i9HE7�?@����?i����?��X~��?�eִ4�?�r�P��?7��q�?7��q�?�r�P��?�eִ4�?��X~��?i����?@����?�i9HE7�?�i�ˋ�?e�/�8��?�hZ�u?��_?z~L���+??~L���+?��_?�hZ�u?`�/�8��?�i�ˋ�?�i9HE7�?>����?i����?��X~��?�eִ4�?~r�P��?7��q�?7��q�?�r�P��?�eִ4�?��X~��?i����?;����?�i9HE7�?�i�ˋ�?^�/�8��?�hZ�u?  �_?.~L���+?�Ɂ3�@?������r?v^RJQ�?<s�;��?;�K�>�?'�([��?�kP�?�[�/�,�?Q����?R�l٥v�?�P|�\v�?�P�>�?�P�>�?�P|�\v�?R�l٥v�?Q����?�[�/�,�?�kP�?'�([��?A�K�>�?%<s�;��?}^RJQ�?�����r?�Ɂ3�@?�Ɂ3�@?r�����r?t^RJQ�?<s�;��?6�K�>�?'�([��?�kP�?�[�/�,�?Q����?R�l٥v�?�P|�\v�?�P�>�?�P�>�?�P|�\v�?R�l٥v�?Q����?�[�/�,�?�kP�?'�([��?J�K�>�?<s�;��?�^RJQ�?������r?�Ɂ3�@?l�鍇N?�}*0���?w�\�?SȻ?�u�?n뿜@�?�'�ط?-�Î�?V"����?�	�ݦ�?j�/���?1Tz�a�?I��O�?I��O�?1Tz�a�?!j�/���?�	�ݦ�?V"����?-�Î�?�'�ط?u뿜@�?`Ȼ?�u�?~�\�?�}*0���?z�鍇N?:�鍇N?�}*0���?t�\�?ZȻ?�u�?j뿜@�?�'�ط?*�Î�?X"����?�	�ݦ�?j�/���?/Tz�a�?I��O�?J��O�?1Tz�a�?!j�/���?�	�ݦ�?Y"����?*�Î�?�'�ط?}뿜@�?XȻ?�u�?��\�?~*0���?'�鍇N?(�V?0��y	��?���`�T�?�h&�g�?��U���?����:�?����?A���V��?ZÊc��?+�G����?��+�?KC��b��?KC��b��?��+�?-�G����?ZÊc��?A���V��?����?����:�? �U���?!�h&�g�?���`�T�?*��y	��?4�V?�V?��y	��?���`�T�?�h&�g�?�U���?����:�?����?C���V��?ZÊc��?+�G����?��+�?KC��b��?MC��b��?��+�?-�G����?\Êc��?I���V��?����?����:�?
�U���?�h&�g�?���`�T�?S��y	��?��V?�7g�_?gm�៑?  qE�?X���u��?�\+,���?����*�?�%�\�?
��:�?T�g��G�?J��t���?�R���?�qۻj��?�qۻj��?�R���?J��t���?T�g��G�?
��:�?�%�\�?����*�?�\+,���?d���u��? qE�?cm�៑?�7g�_?��7g�_?Vm�៑?�  qE�?]���u��?�\+,���?����*�?�%�\�?��:�?T�g��G�?J��t���?�R���?�qۻj��?�qۻj��?�R���?J��t���?V�g��G�?��:�?�%�\�?����*�?�\+,���?]���u��? qE�?~m�៑?��7g�_?1��.�Rd?�G���?��Fz��?hSc�U�? ���?�T�� #�?���FM��?�+��V��?�V�^x��?K�I?��?��vR��?G6%�z�?G6%�z�?��vR��?K�I?��?�V�^x��?�+��V��?���FM��?�T�� #�?$ ���?xSc�U�?��Fz��?�G���?;��.�Rd?��.�Rd?�G���?��Fz��?pSc�U�? ���?�T�� #�?���FM��?�+��V��?�V�^x��?K�I?��?��vR��?G6%�z�?I6%�z�?��vR��?K�I?��?�V�^x��?�+��V��?���FM��?�T�� #�?. ���?mSc�U�?���Fz��?�G���?��.�Rd?
q�h?�*.a�?ȏ����?1�/)��?G��LR��?]5��Ӌ�?�)Nt/j�?u �Z�?�sQ7�?�ݴ@a(�?�Z",���?u�cb�?u�cb�?�Z",���?�ݴ@a(�?�sQ7�?u �Z�?�)Nt/j�?_5��Ӌ�?Q��LR��?;�/)��?̏����?�*.a�?q�h?�q�h?�*.a�?Ə����?7�/)��?B��LR��?]5��Ӌ�?�)Nt/j�?x �Z�?�sQ7�?�ݴ@a(�?�Z",���?u�cb�?w�cb�?�Z",���?�ݴ@a(�?�sQ7�?z �Z�?�)Nt/j�?[5��Ӌ�?^��LR��?5�/)��?Џ����?@�*.a�?�q�h?���rl?�ʔ�ţ�?�+�-y�?'^?Y�S�?i�J�o	�?�8}�e��?�'@��^�?�\9ż��?�؎���?*N��NK�?�	�sV��?�����?�����?�	�sV��?,N��NK�?�؎���?�\9ż��?�'@��^�?�8}�e��?o�J�o	�?4^?Y�S�?�+�-y�?�ʔ�ţ�? ��rl?���rl?�ʔ�ţ�?�+�-y�?-^?Y�S�?e�J�o	�?�8}�e��?�'@��^�?�\9ż��?�؎���?*N��NK�?�	�sV��?�����?�����?�	�sV��?,N��NK�?�؎���?�\9ż��?�'@��^�?�8}�e��?u�J�o	�?,^?Y�S�?�+�-y�?˔�ţ�?���rl?�]%RZ�o?_�����?N�`�Rӷ?�H�׍�?��"��?�3����?��5	K�?�>Wq\��?��B�w/�?R\W���?X�����?_��X]��?_��X]��?X�����?T\W���?��B�w/�?�>Wq\��?��5	K�?�3����?��"��?�H�׍�?U�`�Rӷ?Z�����?�]%RZ�o?|]%RZ�o?N�����?L�`�Rӷ?�H�׍�?��"��?�3����?��5	K�?�>Wq\��?��B�w/�?R\W���?V�����?_��X]��?a��X]��?X�����?T\W���?��B�w/�?�>Wq\��?߉�5	K�?�3����?��"��?�H�׍�?Z�`�Rӷ?v�����?j]%RZ�o?�]`�p?��jƢ?�U�|�?� ���?��KSW�?ZiƏ��?���~m�?Uu �P�?�S�����?Q-�D��?9ʉ�_��?�A��?�A��?9ʉ�_��?Q-�D��?�S�����?Uu �P�?���~m�?\iƏ��?��KSW�?� ���?�U�|�?��jƢ?�]`�p?�]`�p?u�jƢ?�U�|�?� ���?��KSW�?ZiƏ��?���~m�?Wu �P�?�S�����?Q-�D��?7ʉ�_��?�A��?�A��?9ʉ�_��?Q-�D��?�S�����?Zu �P�?���~m�?WiƏ��?��KSW�?� ���?�U�|�?��jƢ?~]`�p?����rq?_;C)h�?�ALޜW�?�[����?+���N��?�,����?��El��?!�;�?����r��?_\�-o��?�@*5��?`��|��?`��|��?�@*5��?a\�-o��?����r��?!�;�?��El��?�,����?2���N��?�[����?�ALޜW�?Z;C)h�?����rq?����rq?L;C)h�?�ALޜW�?�[����?&���N��?�,����?��El��?!�;�?����r��?_\�-o��?�@*5��?`��|��?b��|��?�@*5��?a\�-o��?����r��?!�;�?��El��?�,����?:���N��?�[����?�ALޜW�?y;C)h�?���rq?�懵��D?�D.�[^?�@����g?�K�&4o?��~�2+r?�1��Ys?�1��Ys?��~�2+r?�K�&4o?�@����g?�D.�[^?�懵��D?�懵��D��D.�[^��@����g��K�&4o���~�2+r��1��Ys��1��Ys���~�2+r��K�&4o��@����g��D.�[^��懵��D��懵��D?�D.�[^?�@����g?�K�&4o?��~�2+r?�1��Ys?�1��Ys?��~�2+r?�K�&4o?�@����g?�D.�[^?�懵��D?�懵��D��D.�[^��@����g��K�&4o���~�2+r��1��Ys��1��Ys���~�2+r��K�&4o��@����g��D.�[^��懵��D��P�9�j?`�.RM��?�7`��?�G��\E�?�as!$��?��"�U�?��"�U�?�as!$��?�G��\E�?�7`��?c�.RM��?$�P�9�j?�P�9�j�^�.RM����7`����G��\E���as!$�����"�U����"�U���as!$����G��\E���7`���^�.RM����P�9�j���P�9�j?X�.RM��?�7`��?�G��\E�?~as!$��?��"�U�?��"�U�?�as!$��?�G��\E�?�7`��?l�.RM��?��P�9�j?��P�9�j�b�.RM����7`����G��\E��}as!$�����"�U����"�U���as!$����G��\E���7`���l�.RM�����P�9�j�f���k�?�-�xq�?�}�*��?��"�L�?��A��K�?��i�]�?��i�]�?��A��K�?��"�L�?�}�*��?�-�xq�?����k�?s���k���-�xq���}�*�����"�L����A��K����i�]����i�]����A��K����"�L���}�*����-�xq��o���k��L���k�?�-�xq�?�}�*��?��"�L�?��A��K�?��i�]�?��i�]�?��A��K�?��"�L�?�}�*��?�-�xq�?9���k�?	���k���-�xq���}�*�����"�L����A��K����i�]����i�]����A��K����"�L���}�*����-�xq��C���k���������??!�!���?���/��?1��1:µ?Q�|ǪV�?�(f1�?�(f1�?S�|ǪV�?1��1:µ?���/��?B!�!���?������?�������=!�!�������/���0��1:µ�Q�|ǪV���(f1���(f1��S�|ǪV��6��1:µ����/���<!�!�����������㠎����?5!�!���?���/��?4��1:µ?N�|ǪV�?�(f1�?�(f1�?Q�|ǪV�?2��1:µ?���/��?K!�!���?Ҡ�����?��������A!�!�������/���0��1:µ�M�|ǪV���(f1���(f1��W�|ǪV��3��1:µ����/���L!�!����ڠ�������s��?��d���?��Q�݆�?�32|3��?�����^�?7T[9m��?7T[9m��?�����^�?�32|3��?��Q�݆�?��d���?�s��?�s�䕿��d������Q�݆���32|3��������^ÿ7T[9m�Ŀ7T[9m�Ŀ�����^ÿ�32|3�����Q�݆����d�����s�䕿�s��?��d���?��Q�݆�?�32|3��?�����^�?8T[9m��?8T[9m��?�����^�?�32|3��?��Q�݆�?��d���?ws��?Vs�䕿��d������Q�݆���32|3��������^ÿ7T[9m�Ŀ7T[9m�Ŀ�����^ÿ�32|3�����Q�݆����d����|s�䕿���ɩ8�?]Y���&�?>-�]a��?*���
��?�  ��?�Y�T���?�Y�T���?�  ��?*���
��?@-�]a��?`Y���&�?���ɩ8�?���ɩ8��ZY���&��>-�]a���(���
�ƿ�  �ʿ�Y�T��̿�Y�T��̿�  �ʿ/���
�ƿ@-�]a���ZY���&�����ɩ8��~��ɩ8�?RY���&�?=-�]a��?,���
��?�  ��?�Y�T���?�Y�T���?�  ��?+���
��?A-�]a��?iY���&�?l��ɩ8�?=��ɩ8��^Y���&��<-�]a���(���
�ƿ�  �ʿ�Y�T��̿�Y�T��̿�  �ʿ,���
�ƿB-�]a���jY���&��v��ɩ8���v�2a�?W쬿h�?�Zᢘ�?� �J�r�?UA��}%�?�V�[�f�?�V�[�f�?VA��}%�?� �J�r�?�Zᢘ�?W쬿h�?
v�2a�? v�2a��W쬿h���Zᢘƿ� �J�rͿUA��}%ѿ�V�[�fҿ�V�[�fҿVA��}%ѿ� �J�rͿ�ZᢘƿW쬿h���v�2a���v�2a�?W쬿h�?��Zᢘ�?� �J�r�?TA��}%�?�V�[�f�?�V�[�f�?UA��}%�?� �J�r�?��Zᢘ�?W쬿h�?�v�2a�?�v�2a��W쬿h���Zᢘƿ� �J�rͿSA��}%ѿ�V�[�fҿ�V�[�fҿXA��}%ѿ� �J�rͿ��Zᢘƿ W쬿h���v�2a���׶ny�?ѡ9�4�?�D�
�^�?�������?̅Ѻ���?]�|�I�?]�|�I�?ͅѺ���?�������?�D�
�^�?ԡ9�4�?��׶ny�?��׶ny��С9�4���D�
�^˿������ѿ̅Ѻ��Կ]�|�Iֿ]�|�IֿͅѺ��Կ������ѿ�D�
�^˿ϡ9�4����׶ny��l�׶ny�?ʡ9�4�?�D�
�^�?�������?ʅѺ���?^�|�I�?^�|�I�?̅Ѻ���?�������?�D�
�^�?ܡ9�4�?]�׶ny�?:�׶ny��ӡ9�4���D�
�^˿������ѿɅѺ��Կ^�|�Iֿ]�|�IֿЅѺ��Կ������ѿ�D�
�^˿ܡ9�4��e�׶ny��Ȼx �?�(�	��?V~���?��A)��?�c5E8 �?�	�]���?�	�]���?�c5E8 �?��A)��?V~���?�(�	��?�x �?һx ���(�	�ÿV~��Ͽ��A)�Կ�c5E8 ؿ�	�]��ٿ�	�]��ٿ�c5E8 ؿ��A)�ԿX~��Ͽ�(�	�ÿлx ����x �?�(�	��?T~���?��A)��?�c5E8 �?�	�]���?�	�]���?�c5E8 �?��A)��?Z~���?�(�	��?��x �?x�x ���(�	�ÿR~��Ͽ��A)�Կ�c5E8 ؿ�	�]��ٿ�	�]��ٿ�c5E8 ؿ��A)�Կ[~��Ͽ�(�	�ÿ��x ��:���%�?X��^��?V=���?��o���?���=��?٣�̓�?٣�̓�?���=��?��o���?W=���?[��^��?U���%�?E���%��V��^�ƿV=��ѿ��o��ֿ���=�ڿ٣�̓ܿ٣�̓ܿ���=�ڿ��o��ֿX=��ѿU��^�ƿA���%��!���%�?O��^��?U=���?��o���?���=��?٣�̓�?٣�̓�?���=��?��o���?Y=���?e��^��?���%�?���%��Z��^�ƿT=��ѿ��o��ֿ���=�ڿ٣�̓ܿ٣�̓ܿ���=�ڿ��o��ֿZ=��ѿf��^�ƿ���%�������?��nޘ�?]KB<���?IF���u�?�8MJ�{�?Kڼs@��?Kڼs@��?�8MJ�{�?IF���u�?_KB<���?��nޘ�?�����?��������nޘǿ]KB<��ҿHF���uؿ�8MJ�{ܿKڼs@�޿Kڼs@�޿�8MJ�{ܿOF���uؿ`KB<��ҿ��nޘǿ�����������?��nޘ�?]KB<���?LF���u�?�8MJ�{�?Lڼs@��?Mڼs@��?�8MJ�{�?JF���u�?aKB<���?��nޘ�?�����?m�������nޘǿ\KB<��ҿGF���uؿ�8MJ�{ܿKڼs@�޿Kڼs@�޿�8MJ�{ܿKF���uؿaKB<��ҿ��nޘǿ������+$�<���?Ẁ�(d�?�6�f�?%�ȑ{H�?0���]q�?$������?$������?3���]q�?%�ȑ{H�?�6�f�?亀�(d�?:$�<���?1$�<����ߺ��(dȿ�6�fӿ#�ȑ{Hٿ1���]qݿ$�����߿%�����߿3���]qݿ+�ȑ{Hٿ�6�fӿ޺��(dȿ/$�<����$�<���?ֺ��(d�?�6�f�?(�ȑ{H�?/���]q�?&������?&������?0���]q�?&�ȑ{H�?�6�f�?ﺀ�(d�?$�<���?�#�<����㺀�(dȿ�6�fӿ"�ȑ{Hٿ.���]qݿ%�����߿$�����߿8���]qݿ'�ȑ{Hٿ�6�fӿ񺀁(dȿ$�<����0t�┃?�W7r��?F�ޖ?��?7���.�?���1{?�	���;v?�?7Lq?-���Gh?$����^?כ��bAP?��w��7?.��{��?��{��?}�w��7?՛��bAP?!����^?+���Gh?�?7Lq?�	���;v?���1{?1���.�?E�ޖ?��?�W7r��?0t�┃?0t�┃?�W7r��?F�ޖ?��?4���.�?���1{?�	���;v?�?7Lq?'���Gh?*����^?ۛ��bAP?��w��7?ʎ�{��?���{��?��w��7?ћ��bAP?����^?���Gh?�?7Lq?�	���;v?���1{?4���.�?E�ޖ?��?�W7r��?0t�┃?7��q�?�r�P��?�eִ4�?��X~��?i����?@����?�i9HE7�?�i�ˋ�?Z�/�8��?�hZ�u?��_?�~L���+?�~L���+?��_?�hZ�u?V�/�8��?�i�ˋ�?�i9HE7�?>����?i����?��X~��?�eִ4�?�r�P��?7��q�?7��q�?�r�P��?�eִ4�?��X~��?i����?C����?�i9HE7�?�i�ˋ�?]�/�8��?�hZ�u? �_?~L���+?�}L���+?��_?��hZ�u?S�/�8��?�i�ˋ�?�i9HE7�?C����?i����?��X~��?�eִ4�?~r�P��?7��q�?�P�>�?�P|�\v�?R�l٥v�?Q����?�[�/�,�?�kP�?'�([��?@�K�>�?<s�;��?{^RJQ�?������r?�Ɂ3�@?�Ɂ3�@?�����r?v^RJQ�?<s�;��?=�K�>�?'�([��?�kP�?�[�/�,�?Q����?R�l٥v�?�P|�\v�?�P�>�?�P�>�?�P|�\v�?R�l٥v�?Q����?�[�/�,�?�kP�?'�([��?;�K�>�?<s�;��?�^RJQ�?������r?�Ɂ3�@?XɁ3�@?������r?q^RJQ�?<s�;��?5�K�>�?'�([��?�kP�?|[�/�,�?Q����?R�l٥v�?�P|�\v�?�P�>�?I��O�?1Tz�a�?!j�/���?�	�ݦ�?X"����?-�Î�?�'�ط?r뿜@�?SȻ?�u�?|�\�?�}*0���?��鍇N?��鍇N?�}*0���?w�\�?RȻ?�u�?p뿜@�?�'�ط?*�Î�?U"����?�	�ݦ�?j�/���?1Tz�a�?I��O�?I��O�?1Tz�a�?!j�/���?�	�ݦ�?Y"����?0�Î�?�'�ط?n뿜@�?VȻ?�u�?~�\�?~*0���?�鍇N?��鍇N?�}*0���?r�\�?NȻ?�u�?h뿜@�?�'�ط?0�Î�?R"����?�	�ݦ�?j�/���?/Tz�a�?I��O�?KC��b��?��+�?-�G����?ZÊc��?C���V��?����?����:�?��U���?�h&�g�?���`�T�?7��y	��?Q�V?9�V?,��y	��?���`�T�?�h&�g�?��U���?����:�?����??���V��?XÊc��?+�G����?��+�?KC��b��?KC��b��?��+�?-�G����?ZÊc��?I���V��?�����?����:�?��U���?�h&�g�?���`�T�?N��y	��?��V?��V?3��y	��?���`�T�?�h&�g�?�U���?����:�?�����?;���V��?ZÊc��?+�G����?��+�?KC��b��?�qۻj��?�R���?J��t���?T�g��G�?��:�?�%�\�?����*�?�\+,���?X���u��? qE�?km�៑?�7g�_?��7g�_?cm�៑?  qE�?S���u��?�\+,���?����*�?�%�\�?��:�?R�g��G�?J��t���?�R���?�qۻj��?�qۻj��?�R���?J��t���?T�g��G�?��:�? %�\�?����*�?�\+,���?[���u��?	 qE�?|m�៑?��7g�_?%�7g�_?im�៑?�  qE�?Q���u��?�\+,���?����*�? %�\�?��:�?T�g��G�?J��t���?�R���?�qۻj��?G6%�z�?��vR��?K�I?��?�V�^x��?�+��V��?���FM��?�T�� #�?" ���?hSc�U�?���Fz��?�G���?V��.�Rd?@��.�Rd?�G���?��Fz��?cSc�U�? ���?�T�� #�?���FM��?�+��V��?�V�^x��?K�I?��?��vR��?G6%�z�?G6%�z�?��vR��?K�I?��?�V�^x��?�+��V��?���FM��?�T�� #�? ���?kSc�U�?��Fz��?�G���?���.�Rd?���.�Rd?�G���?��Fz��?]Sc�U�? ���?�T�� #�?���FM��?�+��V��?�V�^x��?K�I?��?��vR��?G6%�z�?u�cb�?�Z",���?�ݴ@a(�?�sQ7�?x �Z�?�)Nt/j�?]5��Ӌ�?O��LR��?1�/)��?̏����?$�*.a�?8q�h?q�h?�*.a�?ȏ����?0�/)��?K��LR��?]5��Ӌ�?�)Nt/j�?r �Z�?��sQ7�?�ݴ@a(�?�Z",���?u�cb�?u�cb�?�Z",���?�ݴ@a(�?�sQ7�?z �Z�?�)Nt/j�?a5��Ӌ�?G��LR��?4�/)��?Ώ����?>�*.a�?�q�h?xq�h?!�*.a�?ď����?-�/)��?>��LR��?a5��Ӌ�?�)Nt/j�?m �Z�?�sQ7�?�ݴ@a(�?�Z",���?u�cb�?�����?�	�sV��?,N��NK�?�؎���?�\9ż��?�'@��^�?�8}�e��?m�J�o	�?'^?Y�S�?�+�-y�?�ʔ�ţ�?% ��rl? ��rl?�ʔ�ţ�?�+�-y�?%^?Y�S�?k�J�o	�?�8}�e��?�'@��^�?�\9ż��?�؎���?*N��NK�?�	�sV��?�����?�����?�	�sV��?,N��NK�?�؎���?�\9ż��?�'@��^�?�8}�e��?i�J�o	�?*^?Y�S�?�+�-y�?
˔�ţ�?���rl?I��rl?�ʔ�ţ�?�+�-y�?"^?Y�S�?c�J�o	�?�8}�e��?�'@��^�?�\9ż��?�؎���?*N��NK�?�	�sV��?�����?_��X]��?X�����?T\W���?��B�w/�?�>Wq\��?��5	K�?�3����?��"��?�H�׍�?S�`�Rӷ?c�����?�]%RZ�o?�]%RZ�o?\�����?N�`�Rӷ?�H�׍�?��"��?�3����?��5	K�?�>Wq\��?��B�w/�?R\W���?X�����?_��X]��?_��X]��?Z�����?T\W���?��B�w/�?�>Wq\��?��5	K�?�3����?��"��?�H�׍�?X�`�Rӷ?u�����?V]%RZ�o?�\%RZ�o?b�����?I�`�Rӷ?�H�׍�?��"��?�3����?��5	K�?�>Wq\��?��B�w/�?R\W���?V�����?_��X]��?�A��?9ʉ�_��?Q-�D��?�S�����?Wu �P�?���~m�?ZiƏ��?��KSW�?� ���?�U�|�?��jƢ?�]`�p?�]`�p?��jƢ?�U�|�?� ���?��KSW�?ZiƏ��?���~m�?Su �P�?�S�����?Q-�D��?9ʉ�_��?�A��?�A��?:ʉ�_��?Q-�D��?�S�����?Zu �P�?���~m�?_iƏ��?��KSW�?� ���?�U�|�?��jƢ?t]`�p?>]`�p?��jƢ?�U�|�?� ���?��KSW�?_iƏ��?���~m�?Ru �P�?�S�����?Q-�D��?7ʉ�_��?�A��?`��|��?�@*5��?a\�-o��?����r��?!�;�?��El��?�,����?/���N��?�[����?�ALޜW�?d;C)h�?����rq?����rq?\;C)h�?�ALޜW�?�[����?-���N��?�,����?��El��?!�;�?����r��?_\�-o��?�@*5��?`��|��?`��|��?�@*5��?a\�-o��?����r��?!�;�?��El��?�,����?+���N��?�[����?�ALޜW�?v;C)h�?u���rq?A���rq?b;C)h�?�ALޜW�?�[����?$���N��?�,����?��El��?!�;�?����r��?_\�-o��?�@*5��?`��|��?w#W򐪑>��4��M�>C|�xb ?L���rW?����9&%?�e2�1?����5:?߷��O�A?�/~s>F?U/��".J?kU�c�M?v�㸢N?v�㸢N?kU�c�M?X/��".J?�/~s>F?߷��O�A?����5:?�e2�1?����9&%?^���rW?I|�xb ?��4��M�>�#W򐪑>K#W򐪑�s�4��Mݾ@|�xb �U���rW�����9&%��e2�1�����5:�⷇�O�A��/~s>F�U/��".J�gU�c�M�v�㸢N�z�㸢N�kU�c�M�X/��".J��/~s>F�緇�O�A�����5:���e2�1�����9&%�U���rW�L|�xb �ֻ4��Mݾ=#W򐪑��wJ��)�>8���?�e9��C8?'��]6�O? ��#PR_?'��1�-j?��bhs?pX�ݠ?z?����x�?;���b�?�U�Qe��?��9�l��?��9�l��?�U�Qe��?=���b�?����x�?pX�ݠ?z?��bhs?+��1�-j?��#PR_?B��]6�O?�e9��C8?2���?�wJ��)�>�wJ��)ʾ�����e9��C8�6��]6�O����#PR_�'��1�-j���bhs�sX�ݠ?z�����x��;���b���U�Qe�����9�l�����9�l����U�Qe���=���b������x��vX�ݠ?z���bhs�#��1�-j�&��#PR_�3��]6�O��e9��C8�d����ywJ��)ʾ��k�G�>c���5#4?v<���V?�l>�Tm?��0}?m�r�K�?�S)]�?�՜�[�?���6��?�n ���?r\�k��?�˓�Z�?�˓�Z�?r\�k��?�n ���?���6��?�՜�[�?�S)]�?r�r�K�?&��0}?
m>�Tm?�<���V?\���5#4?��k�G�>X�k�G�G���5#4�t<���V��l>�Tm���0}�m�r�K���S)]���՜�[�����6����n ����o\�k����˓�Z���˓�Z��r\�k����n �������6����՜�[���S)]��j�r�K��;��0}��l>�Tm��<���V�����5#4�B�k�G�e����>�F��!H?�n�['�j?�H;���?�F���j�?�R����?�!�4ٔ�?�1��0�?񯓵IQ�?��~��?;�l@{��?G�]�Z:�?G�]�Z:�?;�l@{��?��~��?񯓵IQ�?�1��0�?�!�4ٔ�?�R����?�F���j�?�H;���?�n�['�j?�F��!H?y����>������F��!H��n�['�j��H;�����F���j���R������!�4ٔ���1��0��ﯓ�IQ����~���9�l@{���G�]�Z:��I�]�Z:��;�l@{�����~���󯓵IQ���1��0���!�4ٔ���R������F���j���H;�����n�['�j�G��!H� ����������?D򫰂�V?�1��y?�zP���?G�Egv�?��ݤ��?u��XWf�?�~�X���?��`�P�?�)8�`�?�2���?��ܻ��?��ܻ��?�2���?�)8�`�?��`�P�?�~�X���?u��XWf�?��ݤ��?Q�Egv�?�zP���?�1��y?=򫰂�V?Ƶ���?l�����#򫰂�V��1��y��zP����B�Egv����ݤ���r��XWf���~�X������`�P���)8�`Ŀ�2��ƿ��ܻ�ǿ ��ܻ�ǿ�2��ƿ�)8�`Ŀ��`�P���~�X����n��XWf����ݤ���[�Egv���zP�����1��y�t򫰂�V�R������Q>[tM?�`.eb?(":�@��?��EtB�?�����?h̄�P�?dƖ��?�)�`�?�3���?I1R����?�\��\�?�T��xV�?�T��xV�?�\��\�?I1R����?�3���?�)�`�?dƖ��?h̄�P�?ȹ���?�EtB�?0":�@��?�`.eb?�Q>[tM?PQ>[tM��`.eb�%":�@����EtB񚿱�����h̄�P��dƖ����)�`ƿ�3��̿I1R���п�\��\ҿ�T��xVӿ�T��xVӿ�\��\ҿI1R���п�3��̿�)�`ƿaƖ���
h̄�P��ٹ�����EtB�7":�@����`.eb�>Q>[tM��gZ|H2 ?�Y���j?�Qc��
�?�:�␣?9�c�?$���4�?�����?x�D�?�?���s�d�?R��t� �?�E�e��?갤�2�?갤�2�?�E�e��?R��t� �?���s�d�?x�D�?�?�����?$���4�?&9�c�?�:�␣?�Qc��
�?�Y���j?�gZ|H2 ?gZ|H2 ��Y���j��Qc��
���:�␣�9�c��$���4������ȿx�D�?п���s�dԿR��t� ؿ�E�e�ڿ갤�2ܿ�2ܿ�E�e�ڿR��t� ؿ���s�dԿ}�D�?п����ȿ!���4��39�c���:�␣��Qc��
���Y���j�pgZ|H2 ���ﬁ�%?Ay	}�q?U�k��?T�2vu�?�<�Lٹ?>k'����?\Yw���?�����?��|��/�?&�Ԃc��?M�H����?��>е��?��>е��?M�H����?)�Ԃc��?��|��/�?�����?\Yw���?Bk'����?�<�Lٹ?k�2vu�?\�k��?9y	}�q?�ﬁ�%?��ﬁ�%�(y	}�q�R�k���a�2vu���<�Lٹ�>k'���ſZYw��п����տ��|��/ۿ&�Ԃc�߿K�H���Ὸ�>е�⿺�>е��M�H����)�Ԃc�߿��|��/ۿ����տZYw��п;k'���ſ�<�Lٹ�^�2vu��c�k���ey	}�q���ﬁ�%�����*?G*ś?v? �  d��?LG߇3�?
;�)�?�y�e��?��6+��?�,����?������?}Jv~���?���*S�?��_�A�?��_�A�?���*S�?Jv~���?������?�,����?��6+��?�y�e��?;�)�?LG߇3�?�  d��?>*ś?v?����*?�����*�&*ś?v���  d���
LG߇3��;�)���y�e�ʿ��6+�ӿ�,���ڿ������}Jv~��㿄��*S濞�_�A翞�_�A翇��*S�Jv~��������࿙,���ڿ��6+�ӿ�y�e�ʿ;�)��LG߇3���  d���s*ś?v������*����Y/?&��Z��y?[b���?N�'T�?m����?S����]�?D*�X�@�?}���Cs�?���G��?�)��S:�?�a��0��?�d �I.�?�d �I.�?�a��0��?�)��S:�?���G��?}���Cs�?D*�X�@�?X����]�?m����?]�'T�?ib���?��Z��y?���Y/?E��Y/���Z��y�Wb����T�'Tﲿm���¿S����]ϿA*�X�@׿����Cs߿���G�㿇)��S:��a��0�鿘d �I.뿛d �I.��a��0�鿉)��S:����G�㿈���Cs߿>*�X�@׿N����]Ͽ+m���¿T�'Tﲿrb����Z��Z��y�*��Y/�Ћ���V1?+�]4�|?7�����?)�_�?_C���?<�)eY�?_��P���?YD:�^e�?��3n��?&��3%��?�5S9:��?�[*���?�[*���?�5S9:��?(��3%��?��3n��?YD:�^e�?_��P���?>�)eY�?jC���?;�_�?>�����? �]4�|?݋���V1?�����V1��]4�|�5������2�_�XC��Ŀ<�)eYѿ[��P��ٿ[D:�^eῐ�3n��&��3%�鿠5S9:���[*����[*��5S9:��(��3%�鿔�3n��_D:�^e�X��P��ٿ9�)eYѿtC��Ŀ0�_�C������g�]4�|������V1���G��82?Е�&�9~?���Al�?AF��R�?jyx&���?է1Cw;�?LF�-�?ɶ�H�?n��ޗ��?�w� �?�-n�E�?i|hr��?i|hr��?�-n�E�?�w� �?n��ޗ��?ɶ�H�?LF�-�?ק1Cw;�?uyx&���?TF��R�?���Al�?ŕ�&�9~?��G��82?|�G��82����&�9~����Al栿JF��R��byx&��ſէ1Cw;ҿLF�-ۿɶ�H�k��ޗ���w� ��-n�E�i|hr��l|hr���-n�E��w� �p��ޗ��ɶ�H��KF�-ۿҧ1Cw;ҿ�yx&��ſHF��R�����Al栿��&�9~�l�G��82�D�~k���>���aj?UP?�@"?�伣c�%?��6���/?ǖ�1�'4?�:�ļ�6?��z�w�7?�e�b�5?݀j	#�1?A��3%'?�jT9P?xjT9P�<��3%'�݀j	#�1��e�b�5���z�w�7��:�ļ�6�ɖ�1�'4���6���/��伣c�%�ZP?�@"����aj�M�~k��о(�~k��о���aj�RP?�@"��伣c�%���6���/�ɖ�1�'4��:�ļ�6���z�w�7��e�b�5�߀j	#�1�K��3%'�[jT9P�CjT9P?@��3%'?ڀj	#�1?�e�b�5?��z�w�7?�:�ļ�6?Ɩ�1�'4?��6���/?�伣c�%?]P?�@"?1���aj?�~k���>�����?N*W��E;?�g���Q?�|-��`?!�s pg?�H���m?ܸd��q?����q?_1�m�>p?��Rj?=��#a?C�8�G?6�8�G�9��#a���Rj�^1�m�>p�����q�ܸd��q��H���m�(�s pg��|-��`��g���Q�I*W��E;�������ݏ�����6*W��E;��g���Q��|-��`��s pg��H���m�ݸd��q�����q�_1�m�>p���Rj�D��#a��8�G��8�G?<��#a?��Rj?^1�m�>p?����q?۸d��q?�H���m?1�s pg?�|-��`?�g���Q?r*W��E;?Ώ����?G��''?zO�?OY?
�g͐�p?��{r�}?�T�/��?�:�V���?�sLe\��?���F�?���T�&�?�]�:�m�?�c�QX�?^"�T�f?S"�T�f��c�QX���]�:�m�����T�&����F���sLe\����:�V�����T�/���Ȝ{r�}��g͐�p�tO�?OY�T��''�!��''�dO�?OY�	�g͐�p���{r�}��T�/����:�V�����sLe\������F�����T�&���]�:�m���c�QX��+"�T�f�"�T�f?�c�QX�?�]�:�m�?���T�&�?��F�?�sLe\��?�:�V���?�T�/��?��{r�}?�g͐�p?�O�?OY?��''?��:$��;?��oTn?bK��߃?���јё?����?y����?N��|)��?&��*��?�
�t �?S(�l�E�?�!�<N�?*����tz?����tz��!�<N��S(�l�E���
�t ��&��*���N��|)���y�����ç������јё�gK��߃���oTn���:$��;���:$��;���oTn�_K��߃����јё������y�����N��|)���&��*����
�t ��U(�l�E���!�<N�������tz������tz?�!�<N�?P(�l�E�?�
�t �? &��*��?N��|)��?y����?ͧ��?���јё?iK��߃?��oTn?��:$��;?Ӑ�.�9J?}Y-�L�|?��`�ɒ?[���נ?|��>M��?�b �`�?�Y����?����o�?�&B���?M�����?����$�?�����?������~���$��M�������&B��������o���Y���㱿�b �`�����>M���d���נ���`�ɒ�vY-�L�|�ᐖ.�9J����.�9J�bY-�L�|���`�ɒ�a���נ�z��>M����b �`���Y���㱿����o���&B����P����������$��������a����?����$�?J�����?�&B���?����o�?�Y����?�b �`�?���>M��?_���נ?��`�ɒ?�Y-�L�|?���.�9J?�h9WDU?tT �?�?)o��w�?�"!Q�?q����?.jwr�?b�	���?�����?
��T��?#J��Bp�?��p�08�?q��D�G�?g��D�G����p�08��!J��Bp��
��T�������潿b�	����3jwr��q������"!Q��2o��w��nT �?���h9WDU�wh9WDU�]T �?��&o��w���"!Q���p�����0jwr��e�	��������潿
��T���%J��Bp����p�08��C��D�G��#��D�G�?��p�08�?J��Bp�?
��T��?�����?b�	���?.jwr�?q����?�"!Q�?8o��w�?�T �?�?lh9WDU?ø+́�^?{]��#�?��{7 �?H/�W�ֳ?�G`���??;�ٖz�?N��4�?\�S ���?�x�N�?�u�U�K�?7�m@78�?����St�?����St��2�m@78���u�U�K���x�NĿZ�S ��ſN��4ſ>;�ٖz¿�G`����Q/�W�ֳ���{7 ��x]��#␿Ӹ+́�^���+́�^�l]��#␿��{7 ��L/�W�ֳ��G`����?;�ٖz¿M��4ſY�S ��ſ�x�NĿ�u�U�K��@�m@78��t���St��J���St�?6�m@78�?�u�U�K�?�x�N�?Z�S ���?K��4�?<;�ٖz�?�G`���?J/�W�ֳ?��{7 �?�]��#�?}�+́�^?m�?זd?-f���?.r��?�t%Fr�?׻t�W�?a0�gu��?�H#�?@�d���?����`��?�!54��?vo�5�I�?C�:���?9�:����po�5�I���!54�ſ����`�ʿ@�d��̿�H#̿b0�gu�ȿܻt�Wÿ�t%Fr��4r���'f��񁖿w�?זd�L�?זd�f��񁖿+r����t%Fr��Իt�Wÿb0�gu�ȿ
�H#̿@�d��̿����`�ʿ�!54�ſ�o�5�I���:������:���?uo�5�I�?�!54��?����`��?@�d���?
�H#�?_0�gu��?�t�W�?�t%Fr�?:r��?Jf���?@�?זd?��pW��i?������?��+R�?�+� .m�?�)�K�?�P��/��?�T_Ӗr�?�����?4�����?�1h6e��?������?�tɧc�?vtɧc����������1h6e�ʿ4����п����ѿ�T_Ӗrѿ�P��/�ο�)�Kȿ�+� .m����+R�����������pW��i�`�pW��i�����������+R���+� .m���)�Kȿ�P��/�ο�T_Ӗrѿ����ѿ4����п�1h6e�ʿ�������Jtɧc��$tɧc�?������?�1h6e��?3�����?�����?�T_Ӗr�?�P��/��?�)�K�?�+� .m�?��+R�?������?Q�pW��i?��v�m?sf�,�V�?;���i�?R���2�?.��-�?�����?o��8d�?Mt���?�tl�w�?�7�+��?'q'���?Ԝ����?Ŝ�����#q'��Ŀ�7�+�Ͽ�tl�wӿMt��տo��8dԿ����ѿ.��-̿[���2ÿ@���i��of�,�V�����v�m����v�m�df�,�V��9���i��V���2ÿ.��-̿����ѿo��8dԿMt��տ�tl�wӿ�7�+�Ͽ0q'��Ŀ�������h�����?&q'���?�7�+��?�tl�w�?Mt���?o��8d�?�����?(.��-�?V���2�?E���i�?�f�,�V�?���v�m?Ԁ<Ȉp?ȳ�\*�?�Ԧ~���?IXN��<�?F����?f9M�p��?^��=��?%y�1K?�?/�={��?��y�q�?��;���?S$)ix��?B$)ix�����;��ƿ��y�qѿ.�={�տ$y�1K?׿^��=�ֿg9M�p�ӿN���ϿTXN��<ſ�Ԧ~����ĳ�\*��ۀ<Ȉp���<Ȉp����\*���Ԧ~����OXN��<ſB���Ͽg9M�p�ӿ]��=�ֿ%y�1K?׿/�={�տ��y�qѿ��;��ƿ
$)ix����#)ix��?��;���?��y�q�?-�={��?$y�1K?�?\��=��?e9M�p��?X����?MXN��<�?�Ԧ~���?᳛\*�?��<Ȉp?C�;`q?�>�)���?x2I���?��8�Q�?��ѕ�R�?�ԥ�9��?�cАմ�?b�n28n�?�Q�?��?�ӧGU�?���֙��?�Ү��?��Ү�����֙�ǿ�ӧGUҿ�Q�?�ֿ`�n28nؿ�cАմ׿�ԥ�9�Կ��ѕ�Rп��8�Qƿ2I��丿�>�)����J�;`q�&�;`q��>�)����v2I��丿��8�Qƿ��ѕ�Rп�ԥ�9�Կ�cАմ׿`�n28nؿ�Q�?�ֿ�ӧGUҿ���֙�ǿ��Ү�����Ү��?���֙��?�ӧGU�?�Q�?��?`�n28n�?�cАմ�?�ԥ�9��?�ѕ�R�?��8�Q�?�2I���?�>�)���?�;`q?rjT9P?>��3%'?݀j	#�1?�e�b�5?��z�w�7?�:�ļ�6?ǖ�1�'4?��6���/?�伣c�%?WP?�@"?���aj?c�~k���>Q�~k���>���aj?UP?�@"?�伣c�%?��6���/?ǖ�1�'4?�:�ļ�6?��z�w�7?�e�b�5?ހj	#�1?;��3%'?vjT9P?ejT9P�3��3%'�܀j	#�1��e�b�5���z�w�7��:�ļ�6�˖�1�'4���6���/��伣c�%�]P?�@"�.���aj��~k��о�~k��о���aj�OP?�@"��伣c�%���6���/�˖�1�'4��:�ļ�6���z�w�7��e�b�5�߀j	#�1�L��3%'�`jT9P�-�8�G?:��#a?��Rj?_1�m�>p?����q?ܸd��q?�H���m?&�s pg?�|-��`?�g���Q?U*W��E;?4�����?�����?I*W��E;?�g���Q?�|-��`?#�s pg?�H���m?ܸd��q?����q?a1�m�>p?��Rj?9��#a?3�8�G?�8�G�4��#a���Rj�`1�m�>p�����q�޸d��q��H���m�!�s pg��|-��`��g���Q�o*W��E;��������s������R*W��E;��g���Q��|-��`��s pg��H���m�ݸd��q�����q�`1�m�>p���Rj�D��#a��8�G�J"�T�f?�c�QX�?�]�:�m�?���T�&�?���F�?�sLe\��?�:�V���?�T�/��?��{r�}?�g͐�p?�O�?OY?q��''?Y��''?tO�?OY?
�g͐�p?��{r�}?�T�/��?�:�V���?�sLe\��?���F�?���T�&�?�]�:�m�?�c�QX�?P"�T�f?8"�T�f��c�QX���]�:�m�����T�&�����F���sLe\����:�V�����T�/�����{r�}��g͐�p��O�?OY���''����''�~O�?OY��g͐�p���{r�}��T�/����:�V�����sLe\������F�����T�&���]�:�m���c�QX��2"�T�f�����tz?�!�<N�?S(�l�E�?�
�t �?&��*��?N��|)��?y����?����?���јё?fK��߃?��oTn?�:$��;?��:$��;?��oTn?bK��߃?���јё?����?y����?N��|)��?&��*��?�t �?U(�l�E�?�!�<N�?����tz?�����tz��!�<N��Q(�l�E���
�t ��&��*���P��|)���y�������������јё�gK��߃���oTn���:$��;�B�:$��;���oTn�]K��߃����јё������y�����O��|)���&��*����
�t ��W(�l�E���!�<N�������tz������?���$�?M�����?�&B���?����o�?�Y����?�b �`�?���>M��?[���נ?��`�ɒ?�Y-�L�|?��.�9J?搖.�9J?xY-�L�|?��`�ɒ?X���נ?���>M��?�b �`�?�Y����?����o�?�&B���?N�����?}���$�?�����?������x���$��L�������&B��������o���Y���㱿�b �`��|��>M���]���נ���`�ɒ��Y-�L�|����.�9J�9��.�9J��Y-�L�|���`�ɒ�W���נ�x��>M����b �`���Y���㱿����o���&B����Q����������$��������_��D�G�?��p�08�?!J��Bp�?
��T��?�����?b�	���?.jwr�?q����?�"!Q�?/o��w�?yT �?�?�h9WDU?�h9WDU?nT �?�?)o��w�?�"!Q�?q����?.jwr�?d�	���?�����?"
��T��?$J��Bp�?��p�08�?e��D�G�?N��D�G����p�08�� J��Bp�� 
��T�������潿f�	����4jwr��q������"!Q��4o��w���T �?��^h9WDU�h9WDU�vT �?��"o��w���"!Q���p�����2jwr��e�	��������潿 
��T���'J��Bp����p�08��I��D�G������St�?5�m@78�?�u�U�K�?�x�N�?Y�S ���?N��4�??;�ٖz�?�G`���?H/�W�ֳ?��{7 �?]��#�?��+́�^?ڸ+́�^?x]��#�?��{7 �?D/�W�ֳ?�G`���??;�ٖz�?K��4�?[�S ���?�x�N�?�u�U�K�?2�m@78�?����St�?����St��-�m@78���u�U�K���x�NĿ\�S ��ſN��4ſ@;�ٖz¿�G`����I/�W�ֳ���{7 ���]��#␿j�+́�^��+́�^�}]��#␿��{7 ��A/�W�ֳ��G`����?;�ٖz¿M��4ſ[�S ��ſ�x�NĿ�u�U�K��B�m@78��}���St��1�:���?ro�5�I�?�!54��?����`��?@�d���?�H#�?a0�gu��?ۻt�W�?�t%Fr�?4r��?4f���?��?זd?}�?זd?)f���?.r��?�t%Fr�?ٻt�W�?a0�gu��?	�H#�?@�d���?����`��?�!54��?no�5�I�?6�:���?!�:����go�5�I���!54�ſ����`�ʿ@�d��̿�H#̿e0�gu�ȿ׻t�Wÿ�t%Fr��7r���Hf��񁖿2�?זd���?זd�1f��񁖿(r����t%Fr��ѻt�Wÿe0�gu�ȿ�H#̿@�d��̿����`�ʿ�!54�ſ�o�5�I���:����mtɧc�?������?�1h6e��?4�����?�����?�T_Ӗr�?�P��/��?�)�K�?�+� .m�?��+R�?������?��pW��i?��pW��i?������?��+R�?�+� .m�?�)�K�?�P��/��?�T_Ӗr�?�����?6�����?�1h6e��?������?ttɧc�?Ytɧc����������1h6e�ʿ5����п����ѿ�T_Ӗrѿ�P��/�ο�)�Kȿ�+� .m����+R���������A�pW��i��pW��i�����������+R���+� .m���)�Kȿ�P��/�ο�T_Ӗrѿ����ѿ5����п�1h6e�ʿ�������Rtɧc��������?%q'���?�7�+��?�tl�w�?Mt���?o��8d�?�����?.��-�?R���2�?>���i�?wf�,�V�?$��v�m?��v�m?pf�,�V�?;���i�?O���2�?.��-�?�����?o��8d�?Mt���?�tl�w�?�7�+��?"q'���?����?�������q'��Ŀ�7�+�Ͽ�tl�wӿMt��տo��8dԿ����ѿ.��-̿T���2ÿC���i���f�,�V�����v�m�>��v�m�vf�,�V��6���i��M���2ÿ.��-̿����ѿo��8dԿMt��տ�tl�wӿ�7�+�Ͽ1q'��Ŀ�������6$)ix��?��;���?��y�q�?/�={��?%y�1K?�?^��=��?f9M�p��?L����?IXN��<�?�Ԧ~���?ͳ�\*�?�<Ȉp?߀<Ȉp?ų�\*�?�Ԧ~���?FXN��<�?H����?f9M�p��?\��=��?%y�1K?�?2�={��?��y�q�?��;���?>$)ix��?$)ix�����;��ƿ ��y�qѿ1�={�տ&y�1K?׿_��=�ֿi9M�p�ӿF���ϿKXN��<ſ�Ԧ~����޳�\*����<Ȉp�q�<Ȉp�̳�\*���Ԧ~����DXN��<ſ=���Ͽh9M�p�ӿ^��=�ֿ'y�1K?׿0�={�տ��y�qѿ��;��ƿ$)ix�����Ү��?��֙��?�ӧGU�?�Q�?��?`�n28n�?�cАմ�?�ԥ�9��?��ѕ�R�?��8�Q�?|2I���?�>�)���?a�;`q?N�;`q?�>�)���?x2I���?��8�Q�?��ѕ�R�?�ԥ�9��?�cАմ�?a�n28n�?�Q�?��?�ӧGU�?��֙��?��Ү��?��Ү�����֙�ǿ�ӧGUҿ�Q�?�ֿb�n28nؿ�cАմ׿�ԥ�9�Կ��ѕ�Rп��8�Qƿ�2I��丿�>�)�����;`q���;`q��>�)����s2I��丿��8�Qƿ��ѕ�Rп�ԥ�9�Կ�cАմ׿c�n28nؿ�Q�?�ֿ�ӧGUҿ��֙�ǿ��Ү���v�㸢N?kU�c�M?X/��".J?�/~s>F?⷇�O�A?����5:?�e2�1?����9&%?L���rW?F|�xb ?��4��M�>�#W򐪑>�#W򐪑���4��MݾC|�xb �I���rW�����9&%��e2�1�����5:�߷��O�A��/~s>F�U/��".J�kU�c�M�v�㸢N�v�㸢N�kU�c�M�X/��".J��/~s>F�緇�O�A�����5:�	�e2�1�����9&%�R���rW�L|�xb �һ4��Mݾ-#W򐪑��"W򐪑>��4��M�>=|�xb ?D���rW?����9&%?	�e2�1?����5:?ڷ��O�A?�/~s>F?U/��".J?gU�c�M?v�㸢N?��9�l��?�U�Qe��?=���b�?����x�?sX�ݠ?z?��bhs?'��1�-j?��#PR_?'��]6�O?�e9��C8?A���?xJ��)�>�wJ��)ʾ2�����e9��C8� ��]6�O���#PR_�'��1�-j���bhs�lX�ݠ?z�����x��;���b���U�Qe�����9�l�����9�l����U�Qe���=���b������x��vX�ݠ?z���bhs�/��1�-j� ��#PR_�/��]6�O��e9��C8�a����awJ��)ʾ�vJ��)�>>���?�e9��C8?��]6�O?���#PR_?/��1�-j?��bhs?fX�ݠ?z?����x�?;���b�?�U�Qe��?��9�l��?�˓�Z�?r\�k��?�n ���?���6��?�՜�[�?�S)]�?m�r�K�?#��0}?�l>�Tm?}<���V?j���5#4?־k�G�>��k�G�\���5#4�v<���V��l>�Tm���0}�m�r�K���S)]���՜�[�����6����n ����r\�k����˓�Z���˓�Z��u\�k����n �������6����՜�[���S)]��t�r�K����0}��l>�Tm��<���V�����5#4�,�k�G辻�k�G�>f���5#4?o<���V?�l>�Tm?
��0}?t�r�K�?�S)]�?��՜�[�?���6��?�n ���?o\�k��?�˓�Z�?G�]�Z:�?;�l@{��?��~��?񯓵IQ�?�1��0�?�!�4ٔ�?�R����?�F���j�?�H;���?�n�['�j?�F��!H?�����>�������F��!H��n�['�j��H;�����F���j���R������!�4ٔ���1��0������IQ����~���;�l@{���G�]�Z:��G�]�Z:��;�l@{�����~���ﯓ�IQ���1��0���!�4ٔ���R������F���j���H;�����n�['�j�G��!H�������_����>�F��!H?�n�['�j?�H;���?�F���j�?�R����?�!�4ٔ�?�1��0�?ﯓ�IQ�?��~��?9�l@{��?G�]�Z:�?��ܻ��?�2���?�)8�`�?��`�P�?�~�X���?u��XWf�?��ݤ��?O�Egv�?�zP���?�1��y?N򫰂�V?�����?ϵ����?򫰂�V��1��y��zP����L�Egv����ݤ���r��XWf���~�X������`�P���)8�`Ŀ�2��ƿ��ܻ�ǿ��ܻ�ǿ�2��ƿ�)8�`Ŀ��`�P���~�X����w��XWf����ݤ���G�Egv���zP�����1��y�m򫰂�V�<����������?I򫰂�V?�1��y?�zP���?@�Egv�?��ݤ��?w��XWf�?�~�X���?��`�P�?�)8�`�?�2���?��ܻ��?�T��xV�?�\��\�?I1R����?�3���?�)�`�?dƖ��?h̄�P�?Ź���?��EtB�?.":�@��?�`.eb?�Q>[tM?�Q>[tM��`.eb�(":�@�����EtB񚿾�����h̄�P��dƖ����)�`ƿ�3��̿I1R���п�\��\ҿ�T��xVӿ�T��xVӿ�\��\ҿI1R���п�3��̿�)�`ƿgƖ���h̄�P����������EtB�3":�@����`.eb�*Q>[tM��P>[tM?�`.eb?!":�@��?��EtB�?�����?h̄�P�?gƖ��?�)�`�?�3���?I1R����?�\��\�?�T��xV�?갤�2�?�E�e��?R��t� �?���s�d�?x�D�?�?�����?$���4�?$9�c�?�:�␣?�Qc��
�?�Y���j?�gZ|H2 ?�gZ|H2 ��Y���j��Qc��
���:�␣�9�c��$���4������ȿv�D�?п���s�dԿR��t� ؿ�E�e�ڿ갤�2ܿ갤�2ܿ�E�e�ڿR��t� ؿ���s�dԿ}�D�?п����ȿ'���4��9�c���:�␣��Qc��
���Y���j�agZ|H2 �gZ|H2 ?�Y���j?�Qc��
�?�:�␣?9�c�?'���4�?�����?q�D�?�?���s�d�?R��t� �?�E�e��?갤�2�?��>е��?M�H����?)�Ԃc��?��|��/�?�����?\Yw���?>k'����?�<�Lٹ?T�2vu�?\�k��?Iy	}�q?0�ﬁ�%?�ﬁ�%�<y	}�q�U�k���Q�2vu���<�Lٹ�>k'���ſZYw��п����տ��|��/ۿ&�Ԃc�߿M�H���Ὸ�>е�⿸�>е��O�H����)�Ԃc�߿��|��/ۿ����տ_Yw��пFk'���ſ�<�Lٹ�[�2vu��`�k���cy	}�q���ﬁ�%�5�ﬁ�%?Fy	}�q?N�k��?J�2vu�?�<�Lٹ?Fk'����?_Yw���?{����?��|��/�?&�Ԃc��?K�H����?��>е��?��_�A�?���*S�?Jv~���?������?�,����?��6+��?�y�e��?;�)�?LG߇3�?�  d��?P*ś?v?8����*?����*�A*ś?v� �  d��� LG߇3��;�)���y�e�ʿ��6+�ӿ�,���ڿ������}Jv~��㿇��*S濞�_�A翞�_�A翉��*S�Jv~��������࿙,���ڿ��6+�ӿ�y�e�ʿ
;�)��LG߇3���  d���q*ś?v�~����*� ����*?M*ś?v?��  d��?�KG߇3�?;�)�?�y�e��?��6+��?�,����?������?}Jv~���?���*S�?��_�A�?�d �I.�?�a��0��?�)��S:�?���G��?����Cs�?D*�X�@�?S����]�?m����?N�'T�?db���?0��Z��y?���Y/?���Y/���Z��y�[b����J�'Tﲿm���¿S����]ϿA*�X�@׿y���Cs߿���G�㿇)��S:��a��0�鿘d �I.뿘d �I.��a��0�鿉)��S:����G�㿈���Cs߿G*�X�@׿X����]Ͽm���¿R�'Tﲿmb����W��Z��y���Y/�{��Y/?,��Z��y?Rb���?E�'T�?m����?X����]�?G*�X�@�?r���Cs�?���G��?�)��S:�?�a��0��?�d �I.�?�[*���?�5S9:��?(��3%��?��3n��?[D:�^e�?_��P���?<�)eY�?fC���?)�_�?<�����?5�]4�|? ����V1?����V1�$�]4�|�7������%�_�bC��Ŀ<�)eYѿ[��P��ٿWD:�^e῎�3n��&��3%�鿣5S9:���[*����[*��5S9:��(��3%�鿐�3n��_D:�^e�b��P��ٿA�)eYѿ_C��Ŀ.�_�A������`�]4�|������V1�5����V1?2�]4�|?2�����? �_�?TC���?A�)eY�?b��P���?UD:�^e�?��3n��?&��3%��?�5S9:��?�[*���?i|hr��?�-n�E�?�w� �?n��ޗ��?ɶ�H�?LF�-�?է1Cw;�?qyx&���?AF��R�?���Al�?ە�&�9~?ۗG��82?��G��82�ɕ�&�9~����Al栿<F��R��myx&��ſէ1Cw;ҿLF�-ۿ	ɶ�H�i��ޗ���w� ��-n�E�i|hr��i|hr���-n�E��w� �k��ޗ��ɶ�H�	LF�-ۿڧ1Cw;ҿjyx&��ſFF��R�����Al栿��&�9~�\�G��82�
�G��82?ו�&�9~?���Al�?8F��R�?_yx&���?ڧ1Cw;�?	LF�-�?ɶ�H�?k��ޗ��?�w� �?�-n�E�?i|hr��?�!��(�>�a�\�>����Ѓ�>�F�D��>�1\l�>h����E�> �[����>n@���?�4CkG?hEi4o?��J��]?�=�r�?�=�r�?��J��]?hEi4o?�4CkG?n@���? �[����>l����E�>�1\l�>�F�D��>����Ѓ�>�a�\�>"��(�>�!��(�>�a�\�>����Ѓ�>�F�D��>�1\l�>h����E�>�[����>s@���?�4CkG?hEi4o?��J��]?�=�r�? >�r�?��J��]?hEi4o?�4CkG?|@���?�[����>c����E�>�1\l�>�F�D��>����Ѓ�>"b�\�>o!��(�>�����vh>(2��@C�>&"�����>��Í�?=-�W=/?�mt��>?�ZV:J?v����S?�3�"�fZ?�� Lg`?��.���b?�	�";:d?�	�";:d?��.���b?�� Lg`?�3�"�fZ?v����S?�ZV:J?�mt��>?U-�W=/?�Í�?8"�����>2��@C�>�����vh>1����vh>�1��@C�>"�����>�Í�?2-�W=/?�mt��>?�ZV:J?v����S?�3�"�fZ?�� Lg`?��.���b?�	�";:d?�	�";:d?��.���b?�� Lg`?�3�"�fZ?!v����S?�ZV:J?�mt��>?p-�W=/?
�Í�?D"�����>y2��@C�>����vh>I��T���>��3����>u{M�$?�(iF��A?�7��WV?�iC�a)f?�ia�ʻr?-`Ƹ|?�G�����?߸f�?l��= �?|�4��?|�4��?l��= �?߸f�?�G�����?-`Ƹ|?�ia�ʻr?�iC�a)f?�7��WV?�(iF��A?�{M�$?�3����>[��T���>��T���>a�3����>r{M�$?�(iF��A?�7��WV?�iC�a)f?�ia�ʻr?-`Ƹ|?�G�����?߸f�?g��= �?|�4��?|�4��?l��= �?߸f�?�G�����?!-`Ƹ|?�ia�ʻr?�iC�a)f?1�7��WV?�(iF��A?�{M�$?��3����>���T���>�~p 0�>j苆o?�#��}@?�y��\?x��\�q?(��4Ł?�|_��? -�4Ax�?� 1k�?�i2,Q�?)���>��?"���7N�?"���7N�?)���>��?�i2,Q�?� 1k�? -�4Ax�?�|_��?,��4Ł?���\�q?�y��\?�#��}@?a苆o?p 0�>�~p 0�>I苆o?�#��}@?�y��\?o��\�q?(��4Ł?�|_��?-�4Ax�?� 1k�?�i2,Q�?&���>��?"���7N�?%���7N�?)���>��?�i2,Q�?� 1k�?-�4Ax�?�|_��?%��4Ł?���\�q?�y��\?�#��}@?�苆o?e~p 0�>���x�>��p�i`$?�2>x�R?�BH�p?�˂�~��?�փŔ?|ǩ����?I]i�-C�?��e�Ʊ?�l�
��?K��l�?I�H�A=�?I�H�A=�?K��l�?�l�
��?��e�Ʊ?I]i�-C�?|ǩ����?�փŔ?̂�~��?�BH�p?�2>x�R?��p�i`$?���x�>���x�>��p�i`$?�2>x�R?�BH�p?�˂�~��?�փŔ?yǩ����?L]i�-C�?��e�Ʊ?�l�
��?K��l�?I�H�A=�?O�H�A=�?K��l�?�l�
��?"��e�Ʊ?V]i�-C�?tǩ����?�փŔ?̂�~��?�BH�p?�2>x�R?�p�i`$?���x�>�c�y�c�>/>=��i3?�JySt�a?`~�$��?����B�?�~���ɣ?��BxC��?�o��?|)|���?C�p��?�^�٨8�?F�YD���?F�YD���?�^�٨8�?C�p��?|)|���?�o��?��BxC��?�~���ɣ?����B�?p~�$��?�JySt�a?&>=��i3?�c�y�c�>"c�y�c�>
>=��i3?�JySt�a?f~�$��?����B�?�~���ɣ?��BxC��?
�o��?|)|���?C�p��?�^�٨8�?F�YD���?F�YD���?�^�٨8�?C�p��?�)|���?�o��?��BxC��?�~���ɣ?����B�?f~�$��?�JySt�a?b>=��i3?c�y�c�>��0M���>�/T��??����jm?�W�ҏ\�?[�aUh�?3���MF�?ݩ;���?S����?Byqe���?���O�?5��C���?Y��AX�?Y��AX�?5��C���?���O�?Byqe���?S����?ݩ;���?3���MF�?[�aUh�?�W�ҏ\�?����jm?|/T��??��0M���>3�0M���>M/T��??�����jm?�W�ҏ\�?[�aUh�?3���MF�?ש;���?S����?<yqe���?���O�?1��C���?Y��AX�?\��AX�?5��C���?���O�?Gyqe���?[����?ѩ;���?/���MF�?+[�aUh�?�W�ҏ\�?����jm?�/T��??�0M���>�l%��>�.%mG?�]K��u?]�ϟ�V�?�����?�"7���?Xc�J/�?���l1�?zM9��o�?��V
Ye�?q�P�*:�?,o���P�?,o���P�?q�P�*:�?��V
Ye�?zM9��o�?���l1�?Xc�J/�?�"7���?�����?t�ϟ�V�?�]K��u?��.%mG?��l%��>��l%��>��.%mG?�]K��u?j�ϟ�V�?�����?�"7���?Tc�J/�?���l1�?wM9��o�?��V
Ye�?m�P�*:�?,o���P�?0o���P�?q�P�*:�?��V
Ye�?~M9��o�?���l1�?Tc�J/�?�"7���?�����?g�ϟ�V�?�]K��u?D�.%mG?��l%��>'S�/6J�>4�Fd�HO?��$1��|?ӛ>Jә?�Q��?o�'�?8��e��?��P�(�?��س�J�?"�x����?=�;M׃�?wڀ[���?wڀ[���?=�;M׃�?$�x����?��س�J�?��P�(�?8��e��?o�'�?)�Q��?�>Jә?��$1��|?#�Fd�HO?AS�/6J�>�R�/6J�>��Fd�HO?��$1��|?�>Jә?�Q��?o�'�?3��e��?��P�(�?��س�J�?"�x����?:�;M׃�?wڀ[���?wڀ[���?=�;M׃�?$�x����? �س�J�?��P�(�?.��e��?o�'�?5�Q��?ߛ>Jә?
�$1��|?��Fd�HO?�R�/6J�>��
-:"�>:��V�AS?=<Ӯ:��?_���ʟ?��\T�ɳ?V�ѱ��?�"DRr��?��|��?o�W����?*J�'��?��>�?A�н�?A�н�?��>�?-J�'��?o�W����?��|��?�"DRr��?Z�ѱ��?��\T�ɳ?����ʟ?H<Ӯ:��?0��V�AS?Ԥ
-:"�>O�
-:"�>��V�AS?9<Ӯ:��?m���ʟ?��\T�ɳ?V�ѱ��?�"DRr��?��|��?l�W����?*J�'��?���>�?A�н�?D�н�?��>�?-J�'��?q�W����?&��|��?�"DRr��?R�ѱ��?��\T�ɳ?m���ʟ?O<Ӯ:��?n��V�AS?,�
-:"�>K�Kv��>u� V?�+"�K�?�����/�?���ӣ�?��q��t�?:ov���?����,e�?si�P8�?�19��?��Wɣ|�?u���s�?u���s�?��Wɣ|�?�19��?si�P8�?����,e�?:ov���?Įq��t�?���ӣ�?�����/�?�+"�K�?j� V?\�Kv��>�Kv��>M� V?�+"�K�?�����/�?���ӣ�?��q��t�?6ov���?����,e�?pi�P8�?�19��?��Wɣ|�?u���s�?y���s�?��Wɣ|�?�19��?vi�P8�?����,e�?3ov���?��q��t�?���ӣ�?�����/�?�+"�K�?�� V?��Kv��>R8��>1�W?�5�N��?��p�n�?[�kz0�?Wj�N��?��F.H�?�RI�V�?	|���?��֩��?\�5^�?�fs�w�?�fs�w�?\�5^�?��֩��?	|���?�RI�V�?��F.H�?Wj�N��?k�kz0�?��p�n�?*�5�N��?�
1�W?)R8��>�Q8��>�
1�W?�5�N��?��p�n�?P�kz0�?Wj�N��?��F.H�?�RI�V�?|���?��֩��?X�5^�?�fs�w�?�fs�w�?\�5^�?��֩��?|���?�RI�V�?��F.H�?Wj�N��?��kz0�?��p�n�?3�5�N��?E1�W?�Q8��>u�.��[>*��+��>&|��^S�>���r��>P\�-��>��7s#��>R Oz��>�������>�񭰤��>� ��jc�>2�B����>6���!�>6���!پ.�B���� ��jc���񭰤�����������R Oz�����7s#���^\�-�뾾��r�޾.|��^SȾ#��+���6u�.��[��t�.��[>
��+��>"|��^S�>���r��>J\�-��>��7s#��>Q Oz��>�������>�񭰤��>� ��jc�>7�B����>�5���!�>�5���!پ1�B���� ��jc���񭰤�����������Q Oz�����7s#���m\�-�뾲��r�޾3|��^SȾU��+����t�.��[��HX4"T�>��)'��>���n.�?y�6sT)?���%kE7?`3�@�A?����F?_���J?L��x�	J?�v�x�EF?�B��u
>?���c6%?���c6%��B��u
>��v�x�EF�J��x�	J�]���J�����F� `3�@�A����%kE7���6sT)����n.����)'���HX4"T���HX4"T�>��)'��>���n.�?��6sT)?���%kE7?`3�@�A?����F?^���J?M��x�	J?�v�x�EF?�B��u
>?���c6%?m��c6%��B��u
>��v�x�EF�K��x�	J�]���J�����F�`3�@�A����%kE7���6sT)����n.��!�)'��HX4"T������>4��}�S? ��А�=?jVF�2R?��u|�`?����@Ei?�i��mp?����S�r?��6#�r?�%�} p?��p.�e?�l+e�zN?�l+e�zN���p.�e��%�} p���6#�r�����S�r��i��mp�����@Ei���u|�`�yVF�2R�-��А�=�*��}�S����о�����>��}�S?��А�=?qVF�2R?��u|�`?����@Ei?�i��mp?����S�r?��6#�r?�%�} p?��p.�e?�l+e�zN?^l+e�zN���p.�e��%�} p���6#�r�����S�r��i��mp�����@Ei���u|�`�nVF�2R�7��А�=�l��}�S�����оsJʓ���>��@X]�5?%�?��W?$6��5/m?M�F��z?��`C�?K�I��X�?�'EC�?-5�Y �?i؇����? "�
_N�?��� �ph?��� �ph��!�
_N��i؇�����,5�Y ���'EC��K�I��X����`C��[�F��z�<6��5/m�0�?��W���@X]�5��Jʓ���0Jʓ���>��@X]�5?"�?��W?06��5/m?E�F��z?��`C�?L�I��X�?�'EC�?,5�Y �?j؇����?"�
_N�?V�� �ph?2�� �ph��!�
_N��f؇�����-5�Y ���'EC��L�I��X����`C��l�F��z�,6��5/m�4�?��W���@X]�5�Jʓ���!MBV]j�>O8K^+�I?�ѱ�:�k?7��*#�?j.�o�V�?Ŋ���?�E��M˞? ��H��?��5_[��?	��yl��?�P�x,:�?�.I�Ґ|?u.I�Ґ|��P�x,:����yl�����5_[������H����E��M˞�Ɗ��󮗿{.�o�V��F��*#���ѱ�:�k�H8K^+�I�9MBV]j���LBV]j�>,8K^+�I?�ѱ�:�k?@��*#�?d.�o�V�?Ɗ���?�E��M˞?���H��?��5_[��?��yl��?�P�x,:�?C.I�Ґ|?.I�Ґ|��P�x,:��	��yl�����5_[�����H����E��M˞�Ê��󮗿�.�o�V��=��*#���ѱ�:�k��8K^+�I��LBV]j��2��`o�?�m�sfX?'I|��Wz?M7Sg�?�?�� �۝?Z�d@���?s=0��V�?߅�S��?Ef��R��?�鯓�?:/�E�?_e�r[7�?Pe�r[7��5/�E���鯓��Cf��R���ޅ�S���s=0��V��^�d@������ �۝�Y7Sg�?��1I|��Wz��m�sfX�J��`o�����`o�?�m�sfX?#I|��Wz?R7Sg�?�?�� �۝?[�d@���?v=0��V�?���S��?Ef��R��?�鯓�?@/�E�? e�r[7�?�d�r[7��8/�E���鯓��Df��R������S���p=0��V��X�d@����� �۝�R7Sg�?��:I|��Wz��m�sfX����`o��+`�Gŝ?Fb��:d?р� M��?�(jc]��?�A+L>��?��C�?����"!�?`�5���?����y�?��(Ș��?���E�?[�4b�?�Z�4b�����E񲯿��(Ș�������y��^�5��������"!����C���A+L>����(jc]���ـ� M���@b��:d�=`�Gŝ��_�Gŝ?*b��:d?̀� M��?�(jc]��?�A+L>��?��C�?����"!�?]�5���?����y�?��(Ș��?��E�?�Z�4b�?�Z�4b�����E񲯿��(Ș�������y��`�5��������"!����C�� B+L>����(jc]���߀� M���nb��:d��_�Gŝ���z�"?Li�kqm?9���ɏ?i��'���?�ߗ��?�ib:�?�ٴ���??����,�?��27(�?�%<�=�?�E�.A�?�n��k�?�n��k���E�.A���%<�=����27(Ŀ>����,Ŀ�ٴ����
�ib:���ߗ���x��'����C���ɏ�?i�kqm���z�"�i�z�"?$i�kqm?5���ɏ?q��'���?�ߗ��?�ib:�?�ٴ���??����,�?��27(�?�%<�=�?�E�.A�?�n��k�?�n��k���E�.A���%<�=����27(Ŀ>����,Ŀ�ٴ�����ib:���ߗ���o��'����N���ɏ��i�kqm�Z�z�"�����(?H�ʻ�s?M�-�{9�?TPg0//�?�8U�_�?���.�?es�w|��?�h�Q���?A2����?�?�6�?�X�c��?� CȐ��?� CȐ����X�c����?�6ǿ?2���ʿ�h�Q��ʿes�w|�ǿ���.¿�8U�_��kPg0//��T�-�{9��@�ʻ�s����(�����(?,�ʻ�s?J�-�{9�?`Pg0//�?y8U�_�?���.�?ds�w|��?�h�Q���??2����?�?�6�?�X�c��?� CȐ��?g CȐ����X�c����?�6ǿA2���ʿ�h�Q��ʿ`s�w|�ǿ���.¿�8U�_��]Pg0//��Z�-�{9��o�ʻ�s�����(��%��"�-?�'��3x?��G�!�? $��?�5M�h��?[+��a�?�C��?����C��?=�q����?��Z�4X�?�-pp�?(KR����?KR������-ppÿ��Z�4X̿;�q���п����C�п�C�Ϳ^+��aƿ�5M�h���$����G�!���'��3x��%��"�-�v%��"�-?�'��3x?��G�!�?$��?�5M�h��?\+��a�?�C��?����C��?<�q����?��Z�4X�?.pp�?�JR����?�JR������-ppÿ��Z�4X̿<�q���п��C�п�C�ͿX+��aƿ�5M�h���$���	�G�!��(��3x�\%��"�-����-��0?G��W��{?L�� �?�M�p�?u6����?�:�T��?�q1����?� e��?�F5u���?Sғ�6�?vy߲��?���Z��?���Z�⮿ry߲�ſSғ�6п�F5u��ҿ� e�ҿ�q1���п�:�T�ɿ|6������M�p��X�� 坿=��W��{����-��0�Y��-��0?#��W��{?H�� �?�M�p�?p6����?�:�T��?�q1����?� e��?�F5u���?Sғ�6�?y߲��?���Z��?l��Z�⮿vy߲�ſSғ�6п�F5u��ҿ� e�ҿ�q1���п�:�T�ɿ�6������M�p��a�� 坿���W��{�I��-��0��DPK%2?f���}?j 
��?�d��ɳ�?g��0��?�6���[�?Ϋ��k��?%��y�E�? �&�@�?z�o�S�?�)n��]�?B�2���?9�2�����)n��]ǿ{�o�Sѿ��&�@Կ$��y�EԿΫ��k�ѿ�6���[˿o��0�¿�d��ɳ��j 
��[���}���DPK%2���DPK%2?<���}?	j 
��?�d��ɳ�?b��0��?�6���[�?ͫ��k��?%��y�E�?��&�@�?|�o�S�?�)n��]�?�2���?�2�����)n��]ǿy�o�Sѿ��&�@Կ&��y�EԿ˫��k�ѿ�6���[˿y��0�¿�d��ɳ��$j 
�🿢���}���DPK%2��̘.[�>l1�Q�>��Z�O��>4쉔_m�>*,M���>_��Pk��>_��Pk��>*,M���>4쉔_m�>��Z�O��>l1�Q�>�̘.[�>�̘.[�>l1�Q�>��Z�O��>1쉔_m�>*,M���>_��Pk��>`��Pk��>*,M���>?쉔_m�>��Z�O��>l1�Q�>�̘.[�>^̘.[�>�k1�Q�>��Z�O��>9쉔_m�>*,M���>a��Pk��>c��Pk��>*,M���>7쉔_m�>��Z�O��>7l1�Q�>@̘.[�>�˘.[�>l1�Q�>��Z�O��>/쉔_m�>*,M���>c��Pk��>_��Pk��>*,M���>9쉔_m�>��Z�O��>;l1�Q�>P̘.[�>�Lk�>�>�A��?be�>.?c�P���9?O�B�iA?:h���D?:h���D?Q�B�iA?c�P���9?ge�>.?�A��?�Lk�>�>�Lk�>�>�A��?be�>.?^�P���9?O�B�iA?:h���D?;h���D?S�B�iA?n�P���9?ke�>.?�A��?�Lk�>�>wLk�>�>�A��?_e�>.?h�P���9?M�B�iA?<h���D?=h���D?O�B�iA?e�P���9?ne�>.?�A��?\Lk�>�>Lk�>�>�A��?[e�>.?]�P���9?J�B�iA?;h���D?:h���D?W�B�iA?f�P���9?qe�>.?�A��?iLk�>�>,��I��?͚F�,A?vwI�U?�<و{sb?�ъ(�i?��5���l?��5���l?�ъ(�i?�<و{sb?zwI�U?ҚF�,A?e��I��?D��I��?ɚF�,A?vwI�U?�<و{sb?�ъ(�i?��5���l?��5���l?�ъ(�i?�<و{sb?|wI�U?ɚF�,A?=��I��?���I��?��F�,A?twI�U?�<و{sb?�ъ(�i?��5���l?��5���l?�ъ(�i?�<و{sb?wI�U?��F�,A?Ѕ�I��?p��I��?КF�,A?rwI�U?�<و{sb?�ъ(�i?��5���l?��5���l?Ҋ(�i?�<و{sb?�wI�U?�F�,A?ㅩI��?����k�)?p�Z��[?��}lq?����}?�w2�U�?	�~S�?	�~S�?�w2�U�?����}?��}lq?w�Z��[?(���k�)?���k�)?k�Z��[?��}lq?����}?�w2�U�?	�~S�?	�~S�?�w2�U�?���}?��}lq?h�Z��[?���k�)?Й��k�)?V�Z��[?��}lq?���}?�w2�U�?�~S�?�~S�?�w2�U�? ���}?��}lq?��Z��[?����k�)?b���k�)?u�Z��[?��}lq?����}?�w2�U�?�~S�?	�~S�?�w2�U�?���}?��}lq?��Z��[?����k�)?
j�[��=?��2�p?����\�?�K�J�?���Ks�?x��x�?x��x�?����Ks�?�K�J�?����\�?��2�p??j�[��=? j�[��=?��2�p?����\�?�K�J�?����Ks�?x��x�?x��x�?����Ks�?�K�J�?����\�?��2�p?j�[��=?�i�[��=?��2�p?����\�?�K�J�?���Ks�?y��x�?z��x�?���Ks�?�K�J�?����\�?��2�p?�i�[��=?[i�[��=?��2�p?����\�?�K�J�?���Ks�?v��x�?w��x�?����Ks�?�K�J�?!����\�?��2�p?�i�[��=?t����L?�y/Y��~?�}��f�?��
��y�?��#±W�?S�bߺ�?S�bߺ�?�#±W�?��
��y�? �}��f�?�y/Y��~?�����L?�����L?�y/Y��~?�}��f�?��
��y�?��#±W�?S�bߺ�?S�bߺ�?�#±W�?��
��y�?"�}��f�?�y/Y��~?�����L?D����L?�y/Y��~?�}��f�?��
��y�?��#±W�?S�bߺ�?S�bߺ�?��#±W�?��
��y�?#�}��f�?�y/Y��~?"����L?ʉ���L?�y/Y��~?�}��f�?��
��y�?��#±W�?S�bߺ�?S�bߺ�?�#±W�?��
��y�?&�}��f�?�y/Y��~?4����L?^�
'yW?x��P�8�?˼�p�?��H�x�?��?�`�?�q4�3)�?�q4�3)�?��?�`�?��H�x�?Ҽ�p�?~��P�8�?��
'yW?o�
'yW?t��P�8�?˼�p�?��H�x�?��?�`�?�q4�3)�?�q4�3)�?��?�`�?��H�x�?Լ�p�?t��P�8�?i�
'yW?7�
'yW?d��P�8�?Ǽ�p�?��H�x�?��?�`�?�q4�3)�?�q4�3)�?��?�`�?��H�x�?ؼ�p�?���P�8�?�
'yW?�~�
'yW?|��P�8�?ż�p�?��H�x�?��?�`�?�q4�3)�?�q4�3)�?�?�`�?��H�x�?ڼ�p�?���P�8�?(�
'yW?g
��[8a?Hu����?��5)i�?��6�a�?)�ֹ���?'�$:3�?'�$:3�?.�ֹ���?��6�a�?��5)i�?Mu����?�
��[8a?t
��[8a?Du����?��5)i�?��6�a�?*�ֹ���?'�$:3�?'�$:3�?.�ֹ���?��6�a�?��5)i�?Bu����?o
��[8a?K
��[8a?8u����?~�5)i�?��6�a�?&�ֹ���?*�$:3�?*�$:3�?)�ֹ���?��6�a�?��5)i�?^u����?6
��[8a?
��[8a?Ku����?|�5)i�?��6�a�?"�ֹ���?*�$:3�?'�$:3�?6�ֹ���?��6�a�?��5)i�?_u����?A
��[8a?I�����f?���P��?Rd�`CC�?!�I[��?'3hT �?��w���?��w���?+3hT �?!�I[��?Rd�`CC�?���P��?r�����f?Z�����f?���P��?Rd�`CC�?�I[��?(3hT �?��w���?��w���?+3hT �?-�I[��?Ud�`CC�?���P��?V�����f?#�����f?���P��?Od�`CC�?&�I[��?&3hT �?��w���?��w���?'3hT �?"�I[��?Yd�`CC�?���P��?�����f?������f?���P��?Kd�`CC�?�I[��?#3hT �?��w���?��w���?/3hT �?%�I[��?\d�`CC�?���P��?�����f?9Nb�:Ol?��)��j�?/��L>�?R1n�gW�?���0)�?�s#fQ��?�s#fQ��?���0)�?R1n�gW�?2��L>�?��)��j�?kNb�:Ol?MNb�:Ol?��)��j�?/��L>�?P1n�gW�?���0)�?�s#fQ��?�s#fQ��?���0)�?Y1n�gW�?3��L>�?��)��j�?FNb�:Ol?	Nb�:Ol?��)��j�?-��L>�?U1n�gW�?���0)�?�s#fQ��?�s#fQ��?���0)�?T1n�gW�?6��L>�?��)��j�?�Mb�:Ol?�Mb�:Ol?��)��j�?+��L>�?O1n�gW�?���0)�?�s#fQ��?�s#fQ��?���0)�?U1n�gW�?7��L>�?��)��j�?�Mb�:Ol?�ӷ��1p?����f�?��K�?��m#U��?�a��Z�?^ɜ)�2�?^ɜ)�2�?�a��Z�?��m#U��?��K�?����f�?�ӷ��1p?�ӷ��1p?����f�?��K�?��m#U��?�a��Z�?^ɜ)�2�?\ɜ)�2�?�a��Z�?��m#U��?����K�?����f�?�ӷ��1p?�ӷ��1p?����f�?�K�?��m#U��?�a��Z�?_ɜ)�2�?`ɜ)�2�?�a��Z�?��m#U��?����K�?����f�?�ӷ��1p?gӷ��1p?����f�?븉�K�?�m#U��?�a��Z�?^ɜ)�2�?\ɜ)�2�?�a��Z�?��m#U��?����K�?����f�?�ӷ��1p?o��Mq?�?v��?i��@��?���A���?�kR�?���"|2�?���"|2�?�kR�?���A���?k��@��?�?v��?���Mq?{��Mq?�?v��?i��@��?���A���?�kR�?���"|2�?���"|2�?�kR�?���A���?n��@��?�?v��?w��Mq?R��Mq?�?v��?g��@��?���A���?�kR�?���"|2�?���"|2�?�kR�?���A���?q��@��?�?v��?>��Mq?��Mq?�?v��?d��@��?���A���?�kR�?���"|2�?���"|2�?�kR�?���A���?r��@��?�?v��?G��Mq?�5���!�>/�B����>� ��jc�>�񭰤��>�������>R Oz��>��7s#��>X\�-��>���r��>*|��^S�>4��+��>ku�.��[>@u�.��[�&��+���&|��^SȾ���r�޾U\�-�뾲�7s#���P Oz������������񭰤���� ��jc��-�B�����5���!پ�5���!�>'�B����>� ��jc�>�񭰤��>�������>X Oz��>��7s#��>P\�-��>���r��>3|��^S�>R��+��>�t�.��[>*t�.��[�1��+���|��^SȾ���r�޾D\�-�뾸�7s#���V Oz������������񭰤���� ��jc��8�B�����5���!پ���c6%?�B��u
>?�v�x�EF?L��x�	J?^���J?����F?`3�@�A?���%kE7?y�6sT)?���n.�?�)'��>IX4"T�>�HX4"T����)'�����n.��s�6sT)����%kE7�`3�@�A�����F�\���J�O��x�	J��v�x�EF��B��u
>����c6%����c6%?~B��u
>?�v�x�EF?O��x�	J?_���J?����F?#`3�@�A?���%kE7?~�6sT)?���n.�?�)'��>kHX4"T�>HX4"T�� �)'�����n.��n�6sT)����%kE7�"`3�@�A�����F�\���J�N��x�	J��v�x�EF��B��u
>����c6%��l+e�zN?��p.�e?�%�} p?��6#�r?����S�r?�i��mp?����@Ei?��u|�`?jVF�2R?)��А�=?=��}�S?6����>���о*��}�S� ��А�=�fVF�2R���u|�`�����@Ei��i��mp�����S�r���6#�r��%�} p���p.�e��l+e�zN��l+e�zN?��p.�e?�%�} p?��6#�r?����S�r?�i��mp?����@Ei?��u|�`?nVF�2R?4��А�=?b��}�S?�����>s���о8��}�S���А�=�bVF�2R���u|�`�����@Ei��i��mp�����S�r���6#�r��%�} p���p.�e��l+e�zN�y�� �ph?�!�
_N�?i؇����?-5�Y �?�'EC�?K�I��X�?��`C�?W�F��z?$6��5/m?,�?��W?��@X]�5?�Jʓ���>�Jʓ�����@X]�5�%�?��W� 6��5/m�Q�F��z���`C��J�I��X���'EC��05�Y ��j؇������!�
_N���� �ph�e�� �ph?�!�
_N�?g؇����?/5�Y �?�'EC�?O�I��X�?��`C�?M�F��z?)6��5/m?0�?��W?��@X]�5?�Iʓ���>�Iʓ�����@X]�5��?��W�6��5/m�A�F��z���`C��N�I��X���'EC��.5�Y ��l؇�����"�
_N��]�� �ph�k.I�Ґ|?�P�x,:�?��yl��?��5_[��?���H��?�E��M˞?Ŋ���?x.�o�V�?7��*#�?�ѱ�:�k?[8K^+�I?tMBV]j�>CMBV]j��J8K^+�I��ѱ�:�k�4��*#��r.�o�V��Ŋ��󮗿�E��M˞����H�����5_[���
��yl����P�x,:��r.I�Ґ|�S.I�Ґ|?�P�x,:�?
��yl��?��5_[��?��H��?�E��M˞?ʊ���?j.�o�V�?:��*#�?�ѱ�:�k?}8K^+�I?�LBV]j�>
LBV]j��U8K^+�I��ѱ�:�k�2��*#��`.�o�V��Ȋ��󮗿�E��M˞����H�����5_[�����yl����P�x,:��J.I�Ґ|�Fe�r[7�?7/�E�?�鯓�?Ef��R��?���S��?s=0��V�?Z�d@���?�� �۝?M7Sg�?�?/I|��Wz?�m�sfX?���`o�?R��`o���m�sfX�'I|��Wz�H7Sg�?���� �۝�Z�d@����u=0��V��ޅ�S���Gf��R����鯓��5/�E��Ne�r[7��/e�r[7�?./�E�?�鯓�?Ff��R��?ᅥS��?x=0��V�?a�d@���?�� �۝?P7Sg�?�?5I|��Wz?�m�sfX?���`o�?'��`o���m�sfX�I|��Wz�F7Sg�?���� �۝�`�d@����w=0��V��ޅ�S���Ff��R����鯓��A/�E��(e�r[7���Z�4b�?���E�?��(Ș��?����y�?]�5���?����"!�?��C�?�A+L>��?�(jc]��?ր� M��?Lb��:d?n`�Gŝ?F`�Gŝ�@b��:d�р� M����(jc]����A+L>�����C������"!��^�5��������y����(Ș������E񲯿�Z�4b���Z�4b�?��E�?��(Ș��?����y�?c�5���?����"!�?��C�?�A+L>��?�(jc]��?݀� M��?hb��:d?�_�Gŝ?Q_�Gŝ�Ib��:d�ʀ� M����(jc]����A+L>�����C������"!��[�5��������y����(Ș���
��E񲯿�Z�4b���n��k�?�E�.A�?�%<�=�?��27(�??����,�?�ٴ���?�ib:�?�ߗ��?i��'���?C���ɏ?Zi�kqm?��z�"?��z�"�Di�kqm�9���ɏ�f��'�����ߗ����ib:���ٴ����=����,Ŀ��27(Ŀ�%<�=���E�.A���n��k���n��k�?�E�.A�?�%<�=�?��27(�?@����,�?�ٴ���?�ib:�?�ߗ��?m��'���?J���ɏ?�i�kqm?H�z�"?��z�"�Ui�kqm�.���ɏ�b��'�����ߗ����ib:���ٴ����<����,Ŀ��27(Ŀ�%<�=���E�.A���n��k��� CȐ��?�X�c��?�?�6�?A2����?�h�Q���?es�w|��?���.�?�8U�_�?TPg0//�?P�-�{9�?P�ʻ�s?9���(?���(�C�ʻ�s�M�-�{9��QPg0//���8U�_�����.¿bs�w|�ǿ�h�Q��ʿC2���ʿ�?�6ǿ�X�c���� CȐ���� CȐ��?�X�c��?�?�6�?B2����?�h�Q���?hs�w|��?���.�?�8U�_�?ZPg0//�?W�-�{9�?m�ʻ�s?����(?!���(�N�ʻ�s�G�-�{9��LPg0//��t8U�_�����.¿hs�w|�ǿ�h�Q��ʿA2���ʿ�?�6ǿ�X�c���� CȐ���KR����?�-pp�?��Z�4X�?=�q����?����C��?�C��?[+��a�?�5M�h��? $��?��G�!�?�'��3x?&��"�-?�%��"�-��'��3x���G�!���$����5M�h���[+��aƿ�C�Ϳ����C�п>�q���п��Z�4X̿�-ppÿKR������JR����?�-pp�?��Z�4X�?=�q����?Ï��C��?�C��?^+��a�?�5M�h��?$��?�G�!�?(��3x?@%��"�-?�$��"�-��'��3x���G�!���$���|5M�h���]+��aƿ�C�Ϳ����C�п=�q���п��Z�4X̿.ppÿ�JR��������Z��?ty߲��?Sғ�6�?�F5u���?� e��?�q1����?�:�T��?z6����?�M�p�?T�� �?Q��W��{?���-��0?���-��0�A��W��{�L�� 坿�M�p��v6������:�T�ɿ�q1���п� e�ҿ�F5u��ҿSғ�6пqy߲�ſ���Z�⮿���Z��?ly߲��?Sғ�6�?�F5u���?� e��?�q1����?�:�T��?u6����?	�M�p�?]�� �?z��W��{?9��-��0?���-��0�N��W��{�C�� 坿��M�p��m6������:�T�ɿ�q1���п� e�ҿ�F5u��ҿSғ�6п�y߲�ſ���Z�⮿3�2���?�)n��]�?{�o�S�? �&�@�?%��y�E�?Ϋ��k��?�6���[�?l��0��?�d��ɳ�?j 
��?q���}?�DPK%2?�DPK%2�_���}�j 
�🿕d��ɳ��i��0�¿�6���[˿̫��k�ѿ$��y�EԿ�&�@Կ{�o�Sѿ�)n��]ǿ7�2����%�2���?�)n��]�?z�o�S�? �&�@�?'��y�E�?Ы��k��?�6���[�?g��0��?�d��ɳ�?j 
��?����}?��DPK%2?O�DPK%2�m���}�j 
�🿒d��ɳ��`��0�¿�6���[˿ϫ��k�ѿ$��y�EԿ��&�@Կ}�o�Sѿ�)n��]ǿ �2�����=�r�?��J��]?hEi4o?�4CkG?s@���? �[����>h����E�>�1\l�>�F�D��>����Ѓ�>�a�\�>Y"��(�>"��(�>�a�\�>����Ѓ�>�F�D��>�1\l�>h����E�>�[����>n@���?�4CkG?hEi4o?��J��]?�=�r�?�=�r�?��J��]?hEi4o?�4CkG?|@���?&�[����>p����E�>�1\l�>�F�D��>����Ѓ�>b�\�>K!��(�>� ��(�>�a�\�>����Ѓ�>�F�D��>}1\l�>p����E�>&�[����>e@���?�4CkG?hEi4o?��J��]?�=�r�?�	�";:d?��.���b?�� Lg`?�3�"�fZ?v����S?�ZV:J?�mt��>?M-�W=/?��Í�?2"�����>82��@C�>ۦ���vh>�����vh>2��@C�>&"�����>��Í�?E-�W=/?�mt��>?�ZV:J?v����S?�3�"�fZ?�� Lg`?��.���b?�	�";:d?�	�";:d?��.���b?�� Lg`?�3�"�fZ?!v����S?�ZV:J?�mt��>?=-�W=/?�Í�?>"�����>t2��@C�>�����vh>`����vh>32��@C�>"�����>��Í�?*-�W=/?�mt��>?�ZV:J?v����S?�3�"�fZ?�� Lg`?��.���b?�	�";:d?|�4��?l��= �?߸f�?�G�����?-`Ƹ|?�ia�ʻr?�iC�a)f?�7��WV?�(iF��A?}{M�$?��3����>���T���>d��T���>�3����>u{M�$?�(iF��A?�7��WV?�iC�a)f?�ia�ʻr?-`Ƹ|?�G�����?߸f�?l��= �?|�4��?|�4��?q��= �?߸f�?�G�����?!-`Ƹ|?�ia�ʻr?�iC�a)f?�7��WV?�(iF��A?�{M�$?��3����>��T���>w��T���>��3����>l{M�$?�(iF��A?��7��WV?�iC�a)f?�ia�ʻr?	-`Ƹ|?�G�����?߸f�?g��= �?|�4��?"���7N�?)���>��?�i2,Q�?� 1k�?-�4Ax�?�|_��?(��4Ł?���\�q?�y��\?�#��}@?s苆o?Jp 0�>p 0�>d苆o?�#��}@?�y��\?|��\�q?(��4Ł?�|_��?�,�4Ax�?� 1k�?�i2,Q�?)���>��?"���7N�?"���7N�?)���>��?�i2,Q�?� 1k�?-�4Ax�?�|_��?0��4Ł?x��\�q?�y��\?�#��}@?�苆o?D~p 0�>�}p 0�>p苆o?�#��}@?�y��\?k��\�q?0��4Ł?�|_��?�,�4Ax�?� 1k�?�i2,Q�?&���>��?"���7N�?I�H�A=�?K��l�?�l�
��?��e�Ʊ?L]i�-C�?|ǩ����?�փŔ?̂�~��?�BH�p?�2>x�R?��p�i`$?À��x�>���x�>��p�i`$?�2>x�R?�BH�p?̂�~��?�փŔ?yǩ����?E]i�-C�?��e�Ʊ?�l�
��?K��l�?I�H�A=�?I�H�A=�?K��l�?�l�
��?��e�Ʊ?V]i�-C�?~ǩ����?�փŔ?�˂�~��?�BH�p?�2>x�R?	�p�i`$?���x�>��x�>��p�i`$?�2>x�R?�BH�p?�˂�~��?�փŔ?~ǩ����?>]i�-C�?��e�Ʊ?�l�
��?K��l�?I�H�A=�?F�YD���?�^�٨8�?C�p��?|)|���?
�o��?��BxC��?�~���ɣ?����B�?`~�$��?�JySt�a?8>=��i3?�c�y�c�>�c�y�c�>&>=��i3?�JySt�a?Y~�$��?����B�?�~���ɣ?��BxC��?� �o��?y)|���?C�p��?�^�٨8�?F�YD���?F�YD���?�^�٨8�?C�p��?|)|���?�o��?��BxC��?�~���ɣ?����B�?c~�$��?�JySt�a?]>=��i3?�b�y�c�>b�y�c�>4>=��i3?�JySt�a?U~�$��?����B�?�~���ɣ?��BxC��?� �o��?|)|���?C�p��?�^�٨8�?F�YD���?Y��AX�?5��C���?���O�?Byqe���?S����?ݩ;���?3���MF�?[�aUh�?�W�ҏ\�?����jm?�/T��??��0M���>��0M���>|/T��??����jm?�W�ҏ\�?[�aUh�?3���MF�?ש;���?O����?7yqe���?���O�?5��C���?Y��AX�?Y��AX�?8��C���?���O�?<yqe���?[����?ݩ;���?7���MF�?[�aUh�?�W�ҏ\�?����jm?�/T��??��0M���>T�0M���>�/T��??�����jm?�W�ҏ\�?[�aUh�?7���MF�?ݩ;���?F����?<yqe���?���O�?1��C���?Y��AX�?,o���P�?q�P�*:�?��V
Ye�?zM9��o�?���l1�?Xc�J/�?�"7���?�����?]�ϟ�V�?�]K��u?�.%mG?1�l%��>�l%��>��.%mG?�]K��u?Z�ϟ�V�?�����?�"7���?Tc�J/�?���l1�?tM9��o�?��V
Ye�?q�P�*:�?,o���P�?,o���P�?v�P�*:�?��V
Ye�?wM9��o�?���l1�?\c�J/�?�"7���?�����?c�ϟ�V�?�]K��u??�.%mG?~�l%��>
�l%��>�.%mG?�]K��u?S�ϟ�V�?�����?�"7���?\c�J/�?���l1�?wM9��o�?��V
Ye�?m�P�*:�?,o���P�?wڀ[���?=�;M׃�?$�x����?��س�J�?��P�(�?8��e��?o�'�?%�Q��?ӛ>Jә?��$1��|?D�Fd�HO?�S�/6J�>LS�/6J�>)�Fd�HO?��$1��|?ϛ>Jә?!�Q��?o�'�?3��e��?��P�(�?�س�J�?"�x����?=�;M׃�?wڀ[���?wڀ[���?@�;M׃�?$�x����?��س�J�?��P�(�?=��e��?o�'�?�Q��?ۛ>Jә?�$1��|?��Fd�HO?�R�/6J�>�Q�/6J�>?�Fd�HO?��$1��|?Ǜ>Jә?�Q��?o�'�?=��e��?��P�(�?��س�J�?"�x����?:�;M׃�?wڀ[���?A�н�?��>�?-J�'��?o�W����?��|��?�"DRr��?V�ѱ��?��\T�ɳ?_���ʟ?D<Ӯ:��?D��V�AS?&�
-:"�>�
-:"�>3��V�AS?=<Ӯ:��?U���ʟ?��\T�ɳ?V�ѱ��?�"DRr��?��|��?j�W����?*J�'��?��>�?A�н�?A�н�?��>�?-J�'��?l�W����?&��|��?�"DRr��?Z�ѱ��?��\T�ɳ?h���ʟ?L<Ӯ:��?k��V�AS?�
-:"�>D�
-:"�>@��V�AS?6<Ӯ:��?L���ʟ?|�\T�ɳ?Z�ѱ��?�"DRr��?��|��?l�W����?*J�'��?���>�?A�н�?u���s�?��Wɣ|�?�19��?si�P8�?����,e�?:ov���?��q��t�?���ӣ�?�����/�?�+"�K�?� V?��Kv��>e�Kv��>m� V?�+"�K�?~����/�?���ӣ�?��q��t�?6ov���?����,e�?ni�P8�?�19��?��Wɣ|�?u���s�?u���s�?��Wɣ|�?�19��?pi�P8�?����,e�?=ov���?ɮq��t�?���ӣ�?�����/�?�+"�K�?�� V?��Kv��>w�Kv��>|� V?�+"�K�?y����/�?���ӣ�?ɮq��t�?=ov���?����,e�?pi�P8�?�19��?��Wɣ|�?u���s�?�fs�w�?\�5^�?��֩��?	|���?�RI�V�?��F.H�?Wj�N��?f�kz0�?��p�n�?&�5�N��?1�W?[R8��>2R8��>�
1�W?�5�N��?��p�n�?`�kz0�?Wj�N��?��F.H�?�RI�V�?|���?��֩��?\�5^�?�fs�w�?�fs�w�?`�5^�?��֩��?|���?�RI�V�?��F.H�? Wj�N��?[�kz0�?��p�n�?.�5�N��?>1�W?�Q8��>7Q8��>1�W?�5�N��?��p�n�?J�kz0�? Wj�N��?��F.H�?~RI�V�?|���?��֩��?X�5^�?�fs�w�?
�$
Const_1Const*
_output_shapes
:	�*
dtype0*�$
value�$B�$	�"�$��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?��h�wJ?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?ɵ�V�^?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?�5H�q�g?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?;'�8�o?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?�(d���s?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?��(w?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�v��{+z?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|?�j����|? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~? .���~?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�Q��O�?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?�*0�ހ?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?��F�$&�?
`
Const_2Const*
_output_shapes

:*
dtype0*!
valueB2        

NoOpNoOp
�s
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*�r
value�rB�r B�r
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
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
layer-14
layer-15
layer_with_weights-9
layer-16
layer_with_weights-10
layer-17
layer-18
	variables
trainable_variables
regularization_losses
	keras_api
�
 iter

!beta_1

"beta_2
	#decay
$learning_rate'm�(m�)m�*m�+m�,m�-m�.m�/m�0m�1m�2m�3m�4m�'v�(v�)v�*v�+v�,v�-v�.v�/v�0v�1v�2v�3v�4v�
 
v
%0
&1
'2
(3
)4
*5
+6
,7
-8
.9
/10
011
112
213
314
415
f
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
 
�
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
 
 
Z
%mu
:	variables
;trainable_variables
<regularization_losses
=	keras_api
b
&
ev_cov_mat
>	variables
?trainable_variables
@regularization_losses
A	keras_api
h

'kernel
(bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
^

)kernel
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
h

*kernel
+bias
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
^

,kernel
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
h

-kernel
.bias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
R
[	variables
\trainable_variables
]regularization_losses
^	keras_api

_	keras_api
^

/kernel
`	variables
atrainable_variables
bregularization_losses
c	keras_api
h

0kernel
1bias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
R
h	variables
itrainable_variables
jregularization_losses
k	keras_api

l	keras_api
^

2kernel
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
h

3kernel
4bias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
R
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
v
%0
&1
'2
(3
)4
*5
+6
,7
-8
.9
/10
011
112
213
314
415
f
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
 
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
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
QO
VARIABLE_VALUElayer_-1_input/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUElayer_-1_input/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElayer_0dense_component/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElayer_0nn_component/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUElayer_0nn_component/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElayer_1dense_component/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElayer_1nn_component/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUElayer_1nn_component/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUElayer_2dense_component/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElayer_2nn_component/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer_2nn_component/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUElayer_5dense_component/kernel'variables/13/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElayer_5nn_component/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer_5nn_component/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

0
N
~0
1
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

%0
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses

&0
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
>	variables
?trainable_variables
@regularization_losses
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
B	variables
Ctrainable_variables
Dregularization_losses

)0

)0
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
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

,0

,0
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
W	variables
Xtrainable_variables
Yregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
 

/0

/0
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

00
11

00
11
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
 

20

20
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
m	variables
ntrainable_variables
oregularization_losses
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
q	variables
rtrainable_variables
sregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
u	variables
vtrainable_variables
wregularization_losses

%0
&1
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
�	keras_api

%0
 
 
 
 

&0
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
om
VARIABLE_VALUElayer_-1_input/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUElayer_-1_input/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUElayer_0dense_component/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUElayer_0nn_component/kernel/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUElayer_0nn_component/bias/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUElayer_1dense_component/kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUElayer_1nn_component/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUElayer_1nn_component/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUElayer_2dense_component/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUElayer_2nn_component/kernel/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUElayer_2nn_component/bias/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUElayer_5dense_component/kernel/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUElayer_5nn_component/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUElayer_5nn_component/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUElayer_-1_input/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUElayer_-1_input/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUElayer_0dense_component/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUElayer_0nn_component/kernel/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUElayer_0nn_component/bias/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUElayer_1dense_component/kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUElayer_1nn_component/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUElayer_1nn_component/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUElayer_2dense_component/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUElayer_2nn_component/kernel/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUElayer_2nn_component/bias/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUElayer_5dense_component/kernel/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUElayer_5nn_component/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUElayer_5nn_component/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1Variable
Variable_1layer_-1_input/kernellayer_-1_input/biaslayer_0dense_component/kernellayer_0nn_component/kernellayer_0nn_component/biaslayer_1dense_component/kernellayer_1nn_component/kernellayer_1nn_component/biaslayer_2dense_component/kernellayer_2nn_component/kernellayer_2nn_component/biaslayer_5dense_component/kernellayer_5nn_component/kernellayer_5nn_component/biasConstConst_1Const_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� */
f*R(
&__inference_signature_wrapper_98428000
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOp)layer_-1_input/kernel/Read/ReadVariableOp'layer_-1_input/bias/Read/ReadVariableOp1layer_0dense_component/kernel/Read/ReadVariableOp.layer_0nn_component/kernel/Read/ReadVariableOp,layer_0nn_component/bias/Read/ReadVariableOp1layer_1dense_component/kernel/Read/ReadVariableOp.layer_1nn_component/kernel/Read/ReadVariableOp,layer_1nn_component/bias/Read/ReadVariableOp1layer_2dense_component/kernel/Read/ReadVariableOp.layer_2nn_component/kernel/Read/ReadVariableOp,layer_2nn_component/bias/Read/ReadVariableOp1layer_5dense_component/kernel/Read/ReadVariableOp.layer_5nn_component/kernel/Read/ReadVariableOp,layer_5nn_component/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOptotal_6/Read/ReadVariableOpcount_6/Read/ReadVariableOptotal_7/Read/ReadVariableOpcount_7/Read/ReadVariableOptotal_8/Read/ReadVariableOpcount_8/Read/ReadVariableOptotal_9/Read/ReadVariableOpcount_9/Read/ReadVariableOp+layer_-1_input/kernel/m/Read/ReadVariableOp)layer_-1_input/bias/m/Read/ReadVariableOp3layer_0dense_component/kernel/m/Read/ReadVariableOp0layer_0nn_component/kernel/m/Read/ReadVariableOp.layer_0nn_component/bias/m/Read/ReadVariableOp3layer_1dense_component/kernel/m/Read/ReadVariableOp0layer_1nn_component/kernel/m/Read/ReadVariableOp.layer_1nn_component/bias/m/Read/ReadVariableOp3layer_2dense_component/kernel/m/Read/ReadVariableOp0layer_2nn_component/kernel/m/Read/ReadVariableOp.layer_2nn_component/bias/m/Read/ReadVariableOp3layer_5dense_component/kernel/m/Read/ReadVariableOp0layer_5nn_component/kernel/m/Read/ReadVariableOp.layer_5nn_component/bias/m/Read/ReadVariableOp+layer_-1_input/kernel/v/Read/ReadVariableOp)layer_-1_input/bias/v/Read/ReadVariableOp3layer_0dense_component/kernel/v/Read/ReadVariableOp0layer_0nn_component/kernel/v/Read/ReadVariableOp.layer_0nn_component/bias/v/Read/ReadVariableOp3layer_1dense_component/kernel/v/Read/ReadVariableOp0layer_1nn_component/kernel/v/Read/ReadVariableOp.layer_1nn_component/bias/v/Read/ReadVariableOp3layer_2dense_component/kernel/v/Read/ReadVariableOp0layer_2nn_component/kernel/v/Read/ReadVariableOp.layer_2nn_component/bias/v/Read/ReadVariableOp3layer_5dense_component/kernel/v/Read/ReadVariableOp0layer_5nn_component/kernel/v/Read/ReadVariableOp.layer_5nn_component/bias/v/Read/ReadVariableOpConst_3*R
TinK
I2G	*
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
!__inference__traced_save_98429273
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1layer_-1_input/kernellayer_-1_input/biaslayer_0dense_component/kernellayer_0nn_component/kernellayer_0nn_component/biaslayer_1dense_component/kernellayer_1nn_component/kernellayer_1nn_component/biaslayer_2dense_component/kernellayer_2nn_component/kernellayer_2nn_component/biaslayer_5dense_component/kernellayer_5nn_component/kernellayer_5nn_component/biastotalcounttotal_1count_1total_2count_2total_3count_3total_4count_4total_5count_5total_6count_6total_7count_7total_8count_8total_9count_9layer_-1_input/kernel/mlayer_-1_input/bias/mlayer_0dense_component/kernel/mlayer_0nn_component/kernel/mlayer_0nn_component/bias/mlayer_1dense_component/kernel/mlayer_1nn_component/kernel/mlayer_1nn_component/bias/mlayer_2dense_component/kernel/mlayer_2nn_component/kernel/mlayer_2nn_component/bias/mlayer_5dense_component/kernel/mlayer_5nn_component/kernel/mlayer_5nn_component/bias/mlayer_-1_input/kernel/vlayer_-1_input/bias/vlayer_0dense_component/kernel/vlayer_0nn_component/kernel/vlayer_0nn_component/bias/vlayer_1dense_component/kernel/vlayer_1nn_component/kernel/vlayer_1nn_component/bias/vlayer_2dense_component/kernel/vlayer_2nn_component/kernel/vlayer_2nn_component/bias/vlayer_5dense_component/kernel/vlayer_5nn_component/kernel/vlayer_5nn_component/bias/v*Q
TinJ
H2F*
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
$__inference__traced_restore_98429490��
�
^
2__inference_add_component_0_layer_call_fn_98428897
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_0_layer_call_and_return_conditional_losses_98425854`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
inputs/1
�S
�
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98428750

inputs:
,mean_shift_layer_sub_readvariableop_resource:D
2decorrelation_layer_matmul_readvariableop_resource:?
-layer__1_input_matmul_readvariableop_resource:d<
.layer__1_input_biasadd_readvariableop_resource:dG
5layer_0dense_component_matmul_readvariableop_resource:dD
2layer_0nn_component_matmul_readvariableop_resource:ddA
3layer_0nn_component_biasadd_readvariableop_resource:dG
5layer_1dense_component_matmul_readvariableop_resource:dD
2layer_1nn_component_matmul_readvariableop_resource:ddA
3layer_1nn_component_biasadd_readvariableop_resource:dG
5layer_2dense_component_matmul_readvariableop_resource:dD
2layer_2nn_component_matmul_readvariableop_resource:ddA
3layer_2nn_component_biasadd_readvariableop_resource:dG
5layer_5dense_component_matmul_readvariableop_resource:D
2layer_5nn_component_matmul_readvariableop_resource:dA
3layer_5nn_component_biasadd_readvariableop_resource:
identity��)decorrelation_layer/MatMul/ReadVariableOp�%layer_-1_input/BiasAdd/ReadVariableOp�$layer_-1_input/MatMul/ReadVariableOp�,layer_0dense_component/MatMul/ReadVariableOp�*layer_0nn_component/BiasAdd/ReadVariableOp�)layer_0nn_component/MatMul/ReadVariableOp�,layer_1dense_component/MatMul/ReadVariableOp�*layer_1nn_component/BiasAdd/ReadVariableOp�)layer_1nn_component/MatMul/ReadVariableOp�,layer_2dense_component/MatMul/ReadVariableOp�*layer_2nn_component/BiasAdd/ReadVariableOp�)layer_2nn_component/MatMul/ReadVariableOp�,layer_5dense_component/MatMul/ReadVariableOp�*layer_5nn_component/BiasAdd/ReadVariableOp�)layer_5nn_component/MatMul/ReadVariableOp�#mean_shift_layer/sub/ReadVariableOp�
#mean_shift_layer/sub/ReadVariableOpReadVariableOp,mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:*
dtype0�
mean_shift_layer/subSubinputs+mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)decorrelation_layer/MatMul/ReadVariableOpReadVariableOp2decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
decorrelation_layer/MatMulMatMulmean_shift_layer/sub:z:01decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$layer_-1_input/MatMul/ReadVariableOpReadVariableOp-layer__1_input_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
layer_-1_input/MatMulMatMul$decorrelation_layer/MatMul:product:0,layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
%layer_-1_input/BiasAdd/ReadVariableOpReadVariableOp.layer__1_input_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
layer_-1_input/BiasAddBiasAddlayer_-1_input/MatMul:product:0-layer_-1_input/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dv
layer_-1_input/SoftplusSoftpluslayer_-1_input/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
,layer_0dense_component/MatMul/ReadVariableOpReadVariableOp5layer_0dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
layer_0dense_component/MatMulMatMulinputs4layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
)layer_0nn_component/MatMul/ReadVariableOpReadVariableOp2layer_0nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
layer_0nn_component/MatMulMatMul%layer_-1_input/Softplus:activations:01layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
*layer_0nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_0nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
layer_0nn_component/BiasAddBiasAdd$layer_0nn_component/MatMul:product:02layer_0nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
add_component_0/addAddV2'layer_0dense_component/MatMul:product:0$layer_0nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������dp
tf.math.softplus/SoftplusSoftplusadd_component_0/add:z:0*
T0*'
_output_shapes
:���������d�
,layer_1dense_component/MatMul/ReadVariableOpReadVariableOp5layer_1dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
layer_1dense_component/MatMulMatMulinputs4layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
)layer_1nn_component/MatMul/ReadVariableOpReadVariableOp2layer_1nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
layer_1nn_component/MatMulMatMul'tf.math.softplus/Softplus:activations:01layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
*layer_1nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_1nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
layer_1nn_component/BiasAddBiasAdd$layer_1nn_component/MatMul:product:02layer_1nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
add_component_1/addAddV2'layer_1dense_component/MatMul:product:0$layer_1nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������dr
tf.math.softplus_1/SoftplusSoftplusadd_component_1/add:z:0*
T0*'
_output_shapes
:���������d�
,layer_2dense_component/MatMul/ReadVariableOpReadVariableOp5layer_2dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
layer_2dense_component/MatMulMatMulinputs4layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
)layer_2nn_component/MatMul/ReadVariableOpReadVariableOp2layer_2nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
layer_2nn_component/MatMulMatMul)tf.math.softplus_1/Softplus:activations:01layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
*layer_2nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_2nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
layer_2nn_component/BiasAddBiasAdd$layer_2nn_component/MatMul:product:02layer_2nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
add_component_2/addAddV2'layer_2dense_component/MatMul:product:0$layer_2nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������dr
tf.math.softplus_2/SoftplusSoftplusadd_component_2/add:z:0*
T0*'
_output_shapes
:���������d�
,layer_5dense_component/MatMul/ReadVariableOpReadVariableOp5layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
layer_5dense_component/MatMulMatMulinputs4layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)layer_5nn_component/MatMul/ReadVariableOpReadVariableOp2layer_5nn_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
layer_5nn_component/MatMulMatMul)tf.math.softplus_2/Softplus:activations:01layer_5nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*layer_5nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_5nn_component_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
layer_5nn_component/BiasAddBiasAdd$layer_5nn_component/MatMul:product:02layer_5nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
add/addAddV2'layer_5dense_component/MatMul:product:0$layer_5nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentityadd/add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp*^decorrelation_layer/MatMul/ReadVariableOp&^layer_-1_input/BiasAdd/ReadVariableOp%^layer_-1_input/MatMul/ReadVariableOp-^layer_0dense_component/MatMul/ReadVariableOp+^layer_0nn_component/BiasAdd/ReadVariableOp*^layer_0nn_component/MatMul/ReadVariableOp-^layer_1dense_component/MatMul/ReadVariableOp+^layer_1nn_component/BiasAdd/ReadVariableOp*^layer_1nn_component/MatMul/ReadVariableOp-^layer_2dense_component/MatMul/ReadVariableOp+^layer_2nn_component/BiasAdd/ReadVariableOp*^layer_2nn_component/MatMul/ReadVariableOp-^layer_5dense_component/MatMul/ReadVariableOp+^layer_5nn_component/BiasAdd/ReadVariableOp*^layer_5nn_component/MatMul/ReadVariableOp$^mean_shift_layer/sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2V
)decorrelation_layer/MatMul/ReadVariableOp)decorrelation_layer/MatMul/ReadVariableOp2N
%layer_-1_input/BiasAdd/ReadVariableOp%layer_-1_input/BiasAdd/ReadVariableOp2L
$layer_-1_input/MatMul/ReadVariableOp$layer_-1_input/MatMul/ReadVariableOp2\
,layer_0dense_component/MatMul/ReadVariableOp,layer_0dense_component/MatMul/ReadVariableOp2X
*layer_0nn_component/BiasAdd/ReadVariableOp*layer_0nn_component/BiasAdd/ReadVariableOp2V
)layer_0nn_component/MatMul/ReadVariableOp)layer_0nn_component/MatMul/ReadVariableOp2\
,layer_1dense_component/MatMul/ReadVariableOp,layer_1dense_component/MatMul/ReadVariableOp2X
*layer_1nn_component/BiasAdd/ReadVariableOp*layer_1nn_component/BiasAdd/ReadVariableOp2V
)layer_1nn_component/MatMul/ReadVariableOp)layer_1nn_component/MatMul/ReadVariableOp2\
,layer_2dense_component/MatMul/ReadVariableOp,layer_2dense_component/MatMul/ReadVariableOp2X
*layer_2nn_component/BiasAdd/ReadVariableOp*layer_2nn_component/BiasAdd/ReadVariableOp2V
)layer_2nn_component/MatMul/ReadVariableOp)layer_2nn_component/MatMul/ReadVariableOp2\
,layer_5dense_component/MatMul/ReadVariableOp,layer_5dense_component/MatMul/ReadVariableOp2X
*layer_5nn_component/BiasAdd/ReadVariableOp*layer_5nn_component/BiasAdd/ReadVariableOp2V
)layer_5nn_component/MatMul/ReadVariableOp)layer_5nn_component/MatMul/ReadVariableOp2J
#mean_shift_layer/sub/ReadVariableOp#mean_shift_layer/sub/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
w
M__inference_add_component_1_layer_call_and_return_conditional_losses_98425890

inputs
inputs_1
identityP
addAddV2inputsinputs_1*
T0*'
_output_shapes
:���������dO
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
K__forward_add_component_1_layer_call_and_return_conditional_losses_98426594
inputs_0

inputs_1_0
identity

inputs
inputs_1T
addAddV2inputs_0
inputs_1_0*
T0*'
_output_shapes
:���������dO
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d*}
backward_function_nameca__inference___backward_add_component_1_layer_call_and_return_conditional_losses_98426578_98426595:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
^
2__inference_add_component_1_layer_call_fn_98428942
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_1_layer_call_and_return_conditional_losses_98425890`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
inputs/1
�
�
O__forward_layer_2nn_component_layer_call_and_return_conditional_losses_98426566
inputs_00
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : *�
backward_function_namege__inference___backward_layer_2nn_component_layer_call_and_return_conditional_losses_98426554_9842656720
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�
^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_98427108_98427237
placeholder:
6gradients_add_partitionedcall_grad_add_partitionedcall<
8gradients_add_partitionedcall_grad_add_partitionedcall_1p
lgradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcallr
ngradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcall_1j
fgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcalll
hgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcall_1V
Rgradients_tf_math_softplus_2_softplus_grad_sigmoid_add_component_2_partitionedcallR
Ngradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcallT
Pgradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcall_1p
lgradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcallr
ngradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcall_1j
fgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcalll
hgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcall_1V
Rgradients_tf_math_softplus_1_softplus_grad_sigmoid_add_component_1_partitionedcallR
Ngradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcallT
Pgradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcall_1p
lgradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcallr
ngradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcall_1j
fgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcalll
hgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcall_1T
Pgradients_tf_math_softplus_softplus_grad_sigmoid_add_component_0_partitionedcallR
Ngradients_add_component_0_partitionedcall_grad_add_component_0_partitionedcallT
Pgradients_add_component_0_partitionedcall_grad_add_component_0_partitionedcall_1p
lgradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcallr
ngradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcall_1j
fgradients_layer_0nn_component_statefulpartitionedcall_grad_layer_0nn_component_statefulpartitionedcalll
hgradients_layer_0nn_component_statefulpartitionedcall_grad_layer_0nn_component_statefulpartitionedcall_1`
\gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcallb
^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_1b
^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_2j
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
identity_12
identity_13
identity_14
identity_15
identity_16^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:����������
2gradients/add/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/grad_ys_0:output:06gradients_add_partitionedcall_grad_add_partitionedcall8gradients_add_partitionedcall_grad_add_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference___backward_add_layer_call_and_return_conditional_losses_98426446_98426463�
Mgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall;gradients/add/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcallngradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_5dense_component_layer_call_and_return_conditional_losses_98426470_98426481�
Jgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall;gradients/add/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcallhgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *7
_output_shapes%
#:���������d:d:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *n
fiRg
e__inference___backward_layer_5nn_component_layer_call_and_return_conditional_losses_98426488_98426501�
2gradients/tf.math.softplus_2/Softplus_grad/SigmoidSigmoidRgradients_tf_math_softplus_2_softplus_grad_sigmoid_add_component_2_partitionedcall*
T0*'
_output_shapes
:���������d�
.gradients/tf.math.softplus_2/Softplus_grad/mulMulSgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_2/Softplus_grad/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
>gradients/add_component_2/PartitionedCall_grad/PartitionedCallPartitionedCall2gradients/tf.math.softplus_2/Softplus_grad/mul:z:0Ngradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcallPgradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_add_component_2_layer_call_and_return_conditional_losses_98426512_98426529�
Mgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_2/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcallngradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_2dense_component_layer_call_and_return_conditional_losses_98426536_98426547�
Jgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_2/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcallhgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *7
_output_shapes%
#:���������d:dd:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *n
fiRg
e__inference___backward_layer_2nn_component_layer_call_and_return_conditional_losses_98426554_98426567�
2gradients/tf.math.softplus_1/Softplus_grad/SigmoidSigmoidRgradients_tf_math_softplus_1_softplus_grad_sigmoid_add_component_1_partitionedcall*
T0*'
_output_shapes
:���������d�
.gradients/tf.math.softplus_1/Softplus_grad/mulMulSgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_1/Softplus_grad/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
>gradients/add_component_1/PartitionedCall_grad/PartitionedCallPartitionedCall2gradients/tf.math.softplus_1/Softplus_grad/mul:z:0Ngradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcallPgradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_add_component_1_layer_call_and_return_conditional_losses_98426578_98426595�
Mgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_1/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcallngradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_1dense_component_layer_call_and_return_conditional_losses_98426602_98426613�
Jgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_1/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcallhgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *7
_output_shapes%
#:���������d:dd:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *n
fiRg
e__inference___backward_layer_1nn_component_layer_call_and_return_conditional_losses_98426620_98426633�
0gradients/tf.math.softplus/Softplus_grad/SigmoidSigmoidPgradients_tf_math_softplus_softplus_grad_sigmoid_add_component_0_partitionedcall*
T0*'
_output_shapes
:���������d�
,gradients/tf.math.softplus/Softplus_grad/mulMulSgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:04gradients/tf.math.softplus/Softplus_grad/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
>gradients/add_component_0/PartitionedCall_grad/PartitionedCallPartitionedCall0gradients/tf.math.softplus/Softplus_grad/mul:z:0Ngradients_add_component_0_partitionedcall_grad_add_component_0_partitionedcallPgradients_add_component_0_partitionedcall_grad_add_component_0_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_add_component_0_layer_call_and_return_conditional_losses_98426644_98426661�
Mgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_0/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcallngradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_0dense_component_layer_call_and_return_conditional_losses_98426668_98426679�
Jgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_0/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_0nn_component_statefulpartitionedcall_grad_layer_0nn_component_statefulpartitionedcallhgradients_layer_0nn_component_statefulpartitionedcall_grad_layer_0nn_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *7
_output_shapes%
#:���������d:dd:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *n
fiRg
e__inference___backward_layer_0nn_component_layer_call_and_return_conditional_losses_98426686_98426699�
Egradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallSgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:0\gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_1^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *7
_output_shapes%
#:���������:d:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *i
fdRb
`__inference___backward_layer_-1_input_layer_call_and_return_conditional_losses_98426707_98426723�
Jgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:0fgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcallhgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *n
fiRg
e__inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_98426733_98426744�
Ggradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallSgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0`gradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcallbgradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *k
ffRd
b__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_98426751_98426769�
gradients/AddNAddNVgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Pgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0*
N*
T0*`
_classV
TRloc:@gradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall*'
_output_shapes
:���������\
IdentityIdentitygradients/AddN:sum:0*
T0*'
_output_shapes
:����������

Identity_1IdentityPgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:�

Identity_2IdentitySgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:�

Identity_3IdentityNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:d�

Identity_4IdentityNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:d�

Identity_5IdentityVgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:d�

Identity_6IdentitySgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:dd�

Identity_7IdentitySgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:d�

Identity_8IdentityVgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:d�

Identity_9IdentitySgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:dd�
Identity_10IdentitySgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:d�
Identity_11IdentityVgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:d�
Identity_12IdentitySgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:dd�
Identity_13IdentitySgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:d�
Identity_14IdentityVgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:�
Identity_15IdentitySgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:d�
Identity_16IdentitySgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
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
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������::���������:d:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:d:���������::���������:���������:*c
forward_function_nameJH__forward_Icnn_closure_layer_call_and_return_conditional_losses_98427236:- )
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:$ 

_output_shapes

::-)
'
_output_shapes
:���������:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-	)
'
_output_shapes
:���������d:$
 

_output_shapes

:d:-)
'
_output_shapes
:���������:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������:$ 

_output_shapes

::- )
'
_output_shapes
:���������:-!)
'
_output_shapes
:���������: "

_output_shapes
:
�	
�
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_98425950

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
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
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�	
�
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_98428936

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�	
�
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_98425842

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_98429007

inputs0
matmul_readvariableop_resource:
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
m
A__inference_add_layer_call_and_return_conditional_losses_98429038
inputs_0
inputs_1
identityR
addAddV2inputs_0inputs_1*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
�
e__inference___backward_layer_0nn_component_layer_call_and_return_conditional_losses_98426686_98426699
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������dt
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes
:d�
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������d*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:dd*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������di

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:ddh

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:d"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������d:dd:���������d*j
forward_function_nameQO__forward_layer_0nn_component_layer_call_and_return_conditional_losses_98426698:- )
'
_output_shapes
:���������d:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d
�O
�

J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98426345
input_1'
mean_shift_layer_98426294:.
decorrelation_layer_98426297:)
layer__1_input_98426300:d%
layer__1_input_98426302:d1
layer_0dense_component_98426305:d.
layer_0nn_component_98426308:dd*
layer_0nn_component_98426310:d1
layer_1dense_component_98426315:d.
layer_1nn_component_98426318:dd*
layer_1nn_component_98426320:d1
layer_2dense_component_98426325:d.
layer_2nn_component_98426328:dd*
layer_2nn_component_98426330:d1
layer_5dense_component_98426335:.
layer_5nn_component_98426338:d*
layer_5nn_component_98426340:
identity��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�.layer_0dense_component/StatefulPartitionedCall�+layer_0nn_component/StatefulPartitionedCall�.layer_1dense_component/StatefulPartitionedCall�+layer_1nn_component/StatefulPartitionedCall�.layer_2dense_component/StatefulPartitionedCall�+layer_2nn_component/StatefulPartitionedCall�.layer_5dense_component/StatefulPartitionedCall�+layer_5nn_component/StatefulPartitionedCall�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1mean_shift_layer_98426294*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_98425789�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_98426297*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_98425800�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_98426300layer__1_input_98426302*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_98425815�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_0dense_component_98426305*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_98425828�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_98426308layer_0nn_component_98426310*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_98425842�
add_component_0/PartitionedCallPartitionedCall7layer_0dense_component/StatefulPartitionedCall:output:04layer_0nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_0_layer_call_and_return_conditional_losses_98425854�
tf.math.softplus/SoftplusSoftplus(add_component_0/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_1dense_component_98426315*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_98425864�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0layer_1nn_component_98426318layer_1nn_component_98426320*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_98425878�
add_component_1/PartitionedCallPartitionedCall7layer_1dense_component/StatefulPartitionedCall:output:04layer_1nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_1_layer_call_and_return_conditional_losses_98425890�
tf.math.softplus_1/SoftplusSoftplus(add_component_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_2dense_component_98426325*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_98425900�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0layer_2nn_component_98426328layer_2nn_component_98426330*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_98425914�
add_component_2/PartitionedCallPartitionedCall7layer_2dense_component/StatefulPartitionedCall:output:04layer_2nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_2_layer_call_and_return_conditional_losses_98425926�
tf.math.softplus_2/SoftplusSoftplus(add_component_2/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_5dense_component_98426335*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_98425936�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0layer_5nn_component_98426338layer_5nn_component_98426340*
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
GPU2*0J 8� *Z
fURS
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_98425950�
add/PartitionedCallPartitionedCall7layer_5dense_component/StatefulPartitionedCall:output:04layer_5nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_add_layer_call_and_return_conditional_losses_98425962k
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^decorrelation_layer/StatefulPartitionedCall'^layer_-1_input/StatefulPartitionedCall/^layer_0dense_component/StatefulPartitionedCall,^layer_0nn_component/StatefulPartitionedCall/^layer_1dense_component/StatefulPartitionedCall,^layer_1nn_component/StatefulPartitionedCall/^layer_2dense_component/StatefulPartitionedCall,^layer_2nn_component/StatefulPartitionedCall/^layer_5dense_component/StatefulPartitionedCall,^layer_5nn_component/StatefulPartitionedCall)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2P
&layer_-1_input/StatefulPartitionedCall&layer_-1_input/StatefulPartitionedCall2`
.layer_0dense_component/StatefulPartitionedCall.layer_0dense_component/StatefulPartitionedCall2Z
+layer_0nn_component/StatefulPartitionedCall+layer_0nn_component/StatefulPartitionedCall2`
.layer_1dense_component/StatefulPartitionedCall.layer_1dense_component/StatefulPartitionedCall2Z
+layer_1nn_component/StatefulPartitionedCall+layer_1nn_component/StatefulPartitionedCall2`
.layer_2dense_component/StatefulPartitionedCall.layer_2dense_component/StatefulPartitionedCall2Z
+layer_2nn_component/StatefulPartitionedCall+layer_2nn_component/StatefulPartitionedCall2`
.layer_5dense_component/StatefulPartitionedCall.layer_5dense_component/StatefulPartitionedCall2Z
+layer_5nn_component/StatefulPartitionedCall+layer_5nn_component/StatefulPartitionedCall2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
��
�
^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_98426442_98426795
placeholder:
6gradients_add_partitionedcall_grad_add_partitionedcall<
8gradients_add_partitionedcall_grad_add_partitionedcall_1p
lgradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcallr
ngradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcall_1j
fgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcalll
hgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcall_1V
Rgradients_tf_math_softplus_2_softplus_grad_sigmoid_add_component_2_partitionedcallR
Ngradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcallT
Pgradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcall_1p
lgradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcallr
ngradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcall_1j
fgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcalll
hgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcall_1V
Rgradients_tf_math_softplus_1_softplus_grad_sigmoid_add_component_1_partitionedcallR
Ngradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcallT
Pgradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcall_1p
lgradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcallr
ngradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcall_1j
fgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcalll
hgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcall_1T
Pgradients_tf_math_softplus_softplus_grad_sigmoid_add_component_0_partitionedcallR
Ngradients_add_component_0_partitionedcall_grad_add_component_0_partitionedcallT
Pgradients_add_component_0_partitionedcall_grad_add_component_0_partitionedcall_1p
lgradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcallr
ngradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcall_1j
fgradients_layer_0nn_component_statefulpartitionedcall_grad_layer_0nn_component_statefulpartitionedcalll
hgradients_layer_0nn_component_statefulpartitionedcall_grad_layer_0nn_component_statefulpartitionedcall_1`
\gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcallb
^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_1b
^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_2j
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
identity_12
identity_13
identity_14
identity_15
identity_16^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:����������
2gradients/add/PartitionedCall_grad/PartitionedCallPartitionedCallgradients/grad_ys_0:output:06gradients_add_partitionedcall_grad_add_partitionedcall8gradients_add_partitionedcall_grad_add_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *^
fYRW
U__inference___backward_add_layer_call_and_return_conditional_losses_98426446_98426463�
Mgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall;gradients/add/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcallngradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_5dense_component_layer_call_and_return_conditional_losses_98426470_98426481�
Jgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall;gradients/add/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcallhgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *7
_output_shapes%
#:���������d:d:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *n
fiRg
e__inference___backward_layer_5nn_component_layer_call_and_return_conditional_losses_98426488_98426501�
2gradients/tf.math.softplus_2/Softplus_grad/SigmoidSigmoidRgradients_tf_math_softplus_2_softplus_grad_sigmoid_add_component_2_partitionedcall*
T0*'
_output_shapes
:���������d�
.gradients/tf.math.softplus_2/Softplus_grad/mulMulSgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_2/Softplus_grad/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
>gradients/add_component_2/PartitionedCall_grad/PartitionedCallPartitionedCall2gradients/tf.math.softplus_2/Softplus_grad/mul:z:0Ngradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcallPgradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_add_component_2_layer_call_and_return_conditional_losses_98426512_98426529�
Mgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_2/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcallngradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_2dense_component_layer_call_and_return_conditional_losses_98426536_98426547�
Jgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_2/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcallhgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *7
_output_shapes%
#:���������d:dd:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *n
fiRg
e__inference___backward_layer_2nn_component_layer_call_and_return_conditional_losses_98426554_98426567�
2gradients/tf.math.softplus_1/Softplus_grad/SigmoidSigmoidRgradients_tf_math_softplus_1_softplus_grad_sigmoid_add_component_1_partitionedcall*
T0*'
_output_shapes
:���������d�
.gradients/tf.math.softplus_1/Softplus_grad/mulMulSgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients/tf.math.softplus_1/Softplus_grad/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
>gradients/add_component_1/PartitionedCall_grad/PartitionedCallPartitionedCall2gradients/tf.math.softplus_1/Softplus_grad/mul:z:0Ngradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcallPgradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_add_component_1_layer_call_and_return_conditional_losses_98426578_98426595�
Mgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_1/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcallngradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_1dense_component_layer_call_and_return_conditional_losses_98426602_98426613�
Jgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_1/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcallhgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *7
_output_shapes%
#:���������d:dd:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *n
fiRg
e__inference___backward_layer_1nn_component_layer_call_and_return_conditional_losses_98426620_98426633�
0gradients/tf.math.softplus/Softplus_grad/SigmoidSigmoidPgradients_tf_math_softplus_softplus_grad_sigmoid_add_component_0_partitionedcall*
T0*'
_output_shapes
:���������d�
,gradients/tf.math.softplus/Softplus_grad/mulMulSgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:04gradients/tf.math.softplus/Softplus_grad/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
>gradients/add_component_0/PartitionedCall_grad/PartitionedCallPartitionedCall0gradients/tf.math.softplus/Softplus_grad/mul:z:0Ngradients_add_component_0_partitionedcall_grad_add_component_0_partitionedcallPgradients_add_component_0_partitionedcall_grad_add_component_0_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *j
feRc
a__inference___backward_add_component_0_layer_call_and_return_conditional_losses_98426644_98426661�
Mgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_0/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcallngradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_0dense_component_layer_call_and_return_conditional_losses_98426668_98426679�
Jgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_0/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_0nn_component_statefulpartitionedcall_grad_layer_0nn_component_statefulpartitionedcallhgradients_layer_0nn_component_statefulpartitionedcall_grad_layer_0nn_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *7
_output_shapes%
#:���������d:dd:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *n
fiRg
e__inference___backward_layer_0nn_component_layer_call_and_return_conditional_losses_98426686_98426699�
Egradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallSgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:0\gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_1^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *7
_output_shapes%
#:���������:d:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *i
fdRb
`__inference___backward_layer_-1_input_layer_call_and_return_conditional_losses_98426707_98426723�
Jgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:0fgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcallhgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *n
fiRg
e__inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_98426733_98426744�
Ggradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallSgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0`gradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcallbgradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *k
ffRd
b__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_98426751_98426769�
gradients/AddNAddNVgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Pgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0*
N*
T0*`
_classV
TRloc:@gradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall*'
_output_shapes
:���������\
IdentityIdentitygradients/AddN:sum:0*
T0*'
_output_shapes
:����������

Identity_1IdentityPgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:�

Identity_2IdentitySgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:�

Identity_3IdentityNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:d�

Identity_4IdentityNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:d�

Identity_5IdentityVgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:d�

Identity_6IdentitySgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:dd�

Identity_7IdentitySgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:d�

Identity_8IdentityVgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:d�

Identity_9IdentitySgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:dd�
Identity_10IdentitySgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:d�
Identity_11IdentityVgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:d�
Identity_12IdentitySgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:dd�
Identity_13IdentitySgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:d�
Identity_14IdentityVgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:�
Identity_15IdentitySgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:d�
Identity_16IdentitySgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
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
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������::���������:d:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:d:���������::���������:���������:*c
forward_function_nameJH__forward_Icnn_closure_layer_call_and_return_conditional_losses_98426794:- )
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:$ 

_output_shapes

::-)
'
_output_shapes
:���������:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-	)
'
_output_shapes
:���������d:$
 

_output_shapes

:d:-)
'
_output_shapes
:���������:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������:$ 

_output_shapes

::- )
'
_output_shapes
:���������:-!)
'
_output_shapes
:���������: "

_output_shapes
:
�
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98426975
x#
icnn_closure_98426406:'
icnn_closure_98426408:'
icnn_closure_98426410:d#
icnn_closure_98426412:d'
icnn_closure_98426414:d'
icnn_closure_98426416:dd#
icnn_closure_98426418:d'
icnn_closure_98426420:d'
icnn_closure_98426422:dd#
icnn_closure_98426424:d'
icnn_closure_98426426:d'
icnn_closure_98426428:dd#
icnn_closure_98426430:d'
icnn_closure_98426432:'
icnn_closure_98426434:d#
icnn_closure_98426436:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��$Icnn_closure/StatefulPartitionedCall�checked�	checked_1�

$Icnn_closure/StatefulPartitionedCallStatefulPartitionedCallxicnn_closure_98426406icnn_closure_98426408icnn_closure_98426410icnn_closure_98426412icnn_closure_98426414icnn_closure_98426416icnn_closure_98426418icnn_closure_98426420icnn_closure_98426422icnn_closure_98426424icnn_closure_98426426icnn_closure_98426428icnn_closure_98426430icnn_closure_98426432icnn_closure_98426434icnn_closure_98426436*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������::���������:d:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:d:���������::���������:���������:*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__forward_Icnn_closure_layer_call_and_return_conditional_losses_98426794l
ones_like/ShapeShape-Icnn_closure/StatefulPartitionedCall:output:0*
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
:����������
PartitionedCallPartitionedCallones_like:output:0-Icnn_closure/StatefulPartitionedCall:output:1-Icnn_closure/StatefulPartitionedCall:output:2-Icnn_closure/StatefulPartitionedCall:output:3-Icnn_closure/StatefulPartitionedCall:output:4-Icnn_closure/StatefulPartitionedCall:output:5-Icnn_closure/StatefulPartitionedCall:output:6-Icnn_closure/StatefulPartitionedCall:output:7-Icnn_closure/StatefulPartitionedCall:output:8-Icnn_closure/StatefulPartitionedCall:output:9.Icnn_closure/StatefulPartitionedCall:output:10.Icnn_closure/StatefulPartitionedCall:output:11.Icnn_closure/StatefulPartitionedCall:output:12.Icnn_closure/StatefulPartitionedCall:output:13.Icnn_closure/StatefulPartitionedCall:output:14.Icnn_closure/StatefulPartitionedCall:output:15.Icnn_closure/StatefulPartitionedCall:output:16.Icnn_closure/StatefulPartitionedCall:output:17.Icnn_closure/StatefulPartitionedCall:output:18.Icnn_closure/StatefulPartitionedCall:output:19.Icnn_closure/StatefulPartitionedCall:output:20.Icnn_closure/StatefulPartitionedCall:output:21.Icnn_closure/StatefulPartitionedCall:output:22.Icnn_closure/StatefulPartitionedCall:output:23.Icnn_closure/StatefulPartitionedCall:output:24.Icnn_closure/StatefulPartitionedCall:output:25.Icnn_closure/StatefulPartitionedCall:output:26.Icnn_closure/StatefulPartitionedCall:output:27.Icnn_closure/StatefulPartitionedCall:output:28.Icnn_closure/StatefulPartitionedCall:output:29.Icnn_closure/StatefulPartitionedCall:output:30.Icnn_closure/StatefulPartitionedCall:output:31.Icnn_closure/StatefulPartitionedCall:output:32.Icnn_closure/StatefulPartitionedCall:output:33.Icnn_closure/StatefulPartitionedCall:output:34*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:::d:d:d:dd:d:d:dd:d:d:dd:d::d:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *g
fbR`
^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_98426442_98426795g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*e
messageZXinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 14), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
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
:	�*

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
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
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
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
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
:�����������
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
:	��
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
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
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
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
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
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
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
:	�*

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
:�����������
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
:	��
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
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
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
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
:���������*

begin_mask*
end_mask|
IdentityIdentity-Icnn_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^Icnn_closure/StatefulPartitionedCall^checked
^checked_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2L
$Icnn_closure/StatefulPartitionedCall$Icnn_closure/StatefulPartitionedCall2
checkedchecked2
	checked_1	checked_1:J F
'
_output_shapes
:���������

_user_specified_namex:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
e__inference___backward_layer_2nn_component_layer_call_and_return_conditional_losses_98426554_98426567
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������dt
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes
:d�
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������d*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:dd*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������di

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:ddh

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:d"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������d:dd:���������d*j
forward_function_nameQO__forward_layer_2nn_component_layer_call_and_return_conditional_losses_98426566:- )
'
_output_shapes
:���������d:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d
�
�
0__inference_sobolev_model_layer_call_fn_98427509
input_1
unknown:
	unknown_0:
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:dd

unknown_11:d

unknown_12:

unknown_13:d

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
9:���������:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98427417o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
6__inference_decorrelation_layer_layer_call_fn_98428831

inputs
unknown:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_98425800o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
K__forward_add_component_0_layer_call_and_return_conditional_losses_98426660
inputs_0

inputs_1_0
identity

inputs
inputs_1T
addAddV2inputs_0
inputs_1_0*
T0*'
_output_shapes
:���������dO
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d*}
backward_function_nameca__inference___backward_add_component_0_layer_call_and_return_conditional_losses_98426644_98426661:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98427945
input_1#
icnn_closure_98427730:'
icnn_closure_98427732:'
icnn_closure_98427734:d#
icnn_closure_98427736:d'
icnn_closure_98427738:d'
icnn_closure_98427740:dd#
icnn_closure_98427742:d'
icnn_closure_98427744:d'
icnn_closure_98427746:dd#
icnn_closure_98427748:d'
icnn_closure_98427750:d'
icnn_closure_98427752:dd#
icnn_closure_98427754:d'
icnn_closure_98427756:'
icnn_closure_98427758:d#
icnn_closure_98427760:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��$Icnn_closure/StatefulPartitionedCall�checked�	checked_1�

$Icnn_closure/StatefulPartitionedCallStatefulPartitionedCallinput_1icnn_closure_98427730icnn_closure_98427732icnn_closure_98427734icnn_closure_98427736icnn_closure_98427738icnn_closure_98427740icnn_closure_98427742icnn_closure_98427744icnn_closure_98427746icnn_closure_98427748icnn_closure_98427750icnn_closure_98427752icnn_closure_98427754icnn_closure_98427756icnn_closure_98427758icnn_closure_98427760*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������::���������:d:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:d:���������::���������:���������:*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__forward_Icnn_closure_layer_call_and_return_conditional_losses_98427236l
ones_like/ShapeShape-Icnn_closure/StatefulPartitionedCall:output:0*
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
:����������
PartitionedCallPartitionedCallones_like:output:0-Icnn_closure/StatefulPartitionedCall:output:1-Icnn_closure/StatefulPartitionedCall:output:2-Icnn_closure/StatefulPartitionedCall:output:3-Icnn_closure/StatefulPartitionedCall:output:4-Icnn_closure/StatefulPartitionedCall:output:5-Icnn_closure/StatefulPartitionedCall:output:6-Icnn_closure/StatefulPartitionedCall:output:7-Icnn_closure/StatefulPartitionedCall:output:8-Icnn_closure/StatefulPartitionedCall:output:9.Icnn_closure/StatefulPartitionedCall:output:10.Icnn_closure/StatefulPartitionedCall:output:11.Icnn_closure/StatefulPartitionedCall:output:12.Icnn_closure/StatefulPartitionedCall:output:13.Icnn_closure/StatefulPartitionedCall:output:14.Icnn_closure/StatefulPartitionedCall:output:15.Icnn_closure/StatefulPartitionedCall:output:16.Icnn_closure/StatefulPartitionedCall:output:17.Icnn_closure/StatefulPartitionedCall:output:18.Icnn_closure/StatefulPartitionedCall:output:19.Icnn_closure/StatefulPartitionedCall:output:20.Icnn_closure/StatefulPartitionedCall:output:21.Icnn_closure/StatefulPartitionedCall:output:22.Icnn_closure/StatefulPartitionedCall:output:23.Icnn_closure/StatefulPartitionedCall:output:24.Icnn_closure/StatefulPartitionedCall:output:25.Icnn_closure/StatefulPartitionedCall:output:26.Icnn_closure/StatefulPartitionedCall:output:27.Icnn_closure/StatefulPartitionedCall:output:28.Icnn_closure/StatefulPartitionedCall:output:29.Icnn_closure/StatefulPartitionedCall:output:30.Icnn_closure/StatefulPartitionedCall:output:31.Icnn_closure/StatefulPartitionedCall:output:32.Icnn_closure/StatefulPartitionedCall:output:33.Icnn_closure/StatefulPartitionedCall:output:34*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:::d:d:d:dd:d:d:dd:d:d:dd:d::d:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *g
fbR`
^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_98427108_98427237g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*e
messageZXinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 14), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
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
:	�*

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
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
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
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
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
:�����������
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
:	��
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
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
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
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
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
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
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
:	�*

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
:�����������
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
:	��
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
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
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
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
:���������*

begin_mask*
end_mask|
IdentityIdentity-Icnn_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^Icnn_closure/StatefulPartitionedCall^checked
^checked_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2L
$Icnn_closure/StatefulPartitionedCall$Icnn_closure/StatefulPartitionedCall2
checkedchecked2
	checked_1	checked_1:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
6__inference_layer_1nn_component_layer_call_fn_98428926

inputs
unknown:dd
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_98425878o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98427417
x#
icnn_closure_98427072:'
icnn_closure_98427074:'
icnn_closure_98427076:d#
icnn_closure_98427078:d'
icnn_closure_98427080:d'
icnn_closure_98427082:dd#
icnn_closure_98427084:d'
icnn_closure_98427086:d'
icnn_closure_98427088:dd#
icnn_closure_98427090:d'
icnn_closure_98427092:d'
icnn_closure_98427094:dd#
icnn_closure_98427096:d'
icnn_closure_98427098:'
icnn_closure_98427100:d#
icnn_closure_98427102:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��$Icnn_closure/StatefulPartitionedCall�checked�	checked_1�

$Icnn_closure/StatefulPartitionedCallStatefulPartitionedCallxicnn_closure_98427072icnn_closure_98427074icnn_closure_98427076icnn_closure_98427078icnn_closure_98427080icnn_closure_98427082icnn_closure_98427084icnn_closure_98427086icnn_closure_98427088icnn_closure_98427090icnn_closure_98427092icnn_closure_98427094icnn_closure_98427096icnn_closure_98427098icnn_closure_98427100icnn_closure_98427102*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������::���������:d:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:d:���������::���������:���������:*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__forward_Icnn_closure_layer_call_and_return_conditional_losses_98427236l
ones_like/ShapeShape-Icnn_closure/StatefulPartitionedCall:output:0*
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
:����������
PartitionedCallPartitionedCallones_like:output:0-Icnn_closure/StatefulPartitionedCall:output:1-Icnn_closure/StatefulPartitionedCall:output:2-Icnn_closure/StatefulPartitionedCall:output:3-Icnn_closure/StatefulPartitionedCall:output:4-Icnn_closure/StatefulPartitionedCall:output:5-Icnn_closure/StatefulPartitionedCall:output:6-Icnn_closure/StatefulPartitionedCall:output:7-Icnn_closure/StatefulPartitionedCall:output:8-Icnn_closure/StatefulPartitionedCall:output:9.Icnn_closure/StatefulPartitionedCall:output:10.Icnn_closure/StatefulPartitionedCall:output:11.Icnn_closure/StatefulPartitionedCall:output:12.Icnn_closure/StatefulPartitionedCall:output:13.Icnn_closure/StatefulPartitionedCall:output:14.Icnn_closure/StatefulPartitionedCall:output:15.Icnn_closure/StatefulPartitionedCall:output:16.Icnn_closure/StatefulPartitionedCall:output:17.Icnn_closure/StatefulPartitionedCall:output:18.Icnn_closure/StatefulPartitionedCall:output:19.Icnn_closure/StatefulPartitionedCall:output:20.Icnn_closure/StatefulPartitionedCall:output:21.Icnn_closure/StatefulPartitionedCall:output:22.Icnn_closure/StatefulPartitionedCall:output:23.Icnn_closure/StatefulPartitionedCall:output:24.Icnn_closure/StatefulPartitionedCall:output:25.Icnn_closure/StatefulPartitionedCall:output:26.Icnn_closure/StatefulPartitionedCall:output:27.Icnn_closure/StatefulPartitionedCall:output:28.Icnn_closure/StatefulPartitionedCall:output:29.Icnn_closure/StatefulPartitionedCall:output:30.Icnn_closure/StatefulPartitionedCall:output:31.Icnn_closure/StatefulPartitionedCall:output:32.Icnn_closure/StatefulPartitionedCall:output:33.Icnn_closure/StatefulPartitionedCall:output:34*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:::d:d:d:dd:d:d:dd:d:d:dd:d::d:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *g
fbR`
^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_98427108_98427237g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*e
messageZXinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 14), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
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
:	�*

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
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
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
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
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
:�����������
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
:	��
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
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
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
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
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
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
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
:	�*

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
:�����������
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
:	��
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
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
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
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
:���������*

begin_mask*
end_mask|
IdentityIdentity-Icnn_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^Icnn_closure/StatefulPartitionedCall^checked
^checked_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2L
$Icnn_closure/StatefulPartitionedCall$Icnn_closure/StatefulPartitionedCall2
checkedchecked2
	checked_1	checked_1:J F
'
_output_shapes
:���������

_user_specified_namex:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�

�
h__inference___backward_layer_0dense_component_layer_call_and_return_conditional_losses_98426668_98426679
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������d�
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:d*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:d"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������d:d:���������*m
forward_function_nameTR__forward_layer_0dense_component_layer_call_and_return_conditional_losses_98426678:- )
'
_output_shapes
:���������d:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������
�
�
O__forward_layer_0nn_component_layer_call_and_return_conditional_losses_98426698
inputs_00
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : *�
backward_function_namege__inference___backward_layer_0nn_component_layer_call_and_return_conditional_losses_98426686_9842669920
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
0__inference_sobolev_model_layer_call_fn_98428094
x
unknown:
	unknown_0:
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:dd

unknown_11:d

unknown_12:

unknown_13:d

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
9:���������:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98427417o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:���������

_user_specified_namex:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
e__inference___backward_layer_1nn_component_layer_call_and_return_conditional_losses_98426620_98426633
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������dt
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes
:d�
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������d*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:dd*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������di

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:ddh

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:d"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������d:dd:���������d*j
forward_function_nameQO__forward_layer_1nn_component_layer_call_and_return_conditional_losses_98426632:- )
'
_output_shapes
:���������d:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d
�x
�
H__forward_Icnn_closure_layer_call_and_return_conditional_losses_98427236

inputs'
mean_shift_layer_98426168:.
decorrelation_layer_98426171:)
layer__1_input_98426174:d%
layer__1_input_98426176:d1
layer_0dense_component_98426179:d.
layer_0nn_component_98426182:dd*
layer_0nn_component_98426184:d1
layer_1dense_component_98426189:d.
layer_1nn_component_98426192:dd*
layer_1nn_component_98426194:d1
layer_2dense_component_98426199:d.
layer_2nn_component_98426202:dd*
layer_2nn_component_98426204:d1
layer_5dense_component_98426209:.
layer_5nn_component_98426212:d*
layer_5nn_component_98426214:
identity
add_partitionedcall
add_partitionedcall_02
.layer_5dense_component_statefulpartitionedcall4
0layer_5dense_component_statefulpartitionedcall_0/
+layer_5nn_component_statefulpartitionedcall1
-layer_5nn_component_statefulpartitionedcall_0#
add_component_2_partitionedcall%
!add_component_2_partitionedcall_0%
!add_component_2_partitionedcall_12
.layer_2dense_component_statefulpartitionedcall4
0layer_2dense_component_statefulpartitionedcall_0/
+layer_2nn_component_statefulpartitionedcall1
-layer_2nn_component_statefulpartitionedcall_0#
add_component_1_partitionedcall%
!add_component_1_partitionedcall_0%
!add_component_1_partitionedcall_12
.layer_1dense_component_statefulpartitionedcall4
0layer_1dense_component_statefulpartitionedcall_0/
+layer_1nn_component_statefulpartitionedcall1
-layer_1nn_component_statefulpartitionedcall_0#
add_component_0_partitionedcall%
!add_component_0_partitionedcall_0%
!add_component_0_partitionedcall_12
.layer_0dense_component_statefulpartitionedcall4
0layer_0dense_component_statefulpartitionedcall_0/
+layer_0nn_component_statefulpartitionedcall1
-layer_0nn_component_statefulpartitionedcall_0*
&layer__1_input_statefulpartitionedcall,
(layer__1_input_statefulpartitionedcall_0,
(layer__1_input_statefulpartitionedcall_1/
+decorrelation_layer_statefulpartitionedcall1
-decorrelation_layer_statefulpartitionedcall_0,
(mean_shift_layer_statefulpartitionedcall.
*mean_shift_layer_statefulpartitionedcall_0��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�.layer_0dense_component/StatefulPartitionedCall�+layer_0nn_component/StatefulPartitionedCall�.layer_1dense_component/StatefulPartitionedCall�+layer_1nn_component/StatefulPartitionedCall�.layer_2dense_component/StatefulPartitionedCall�+layer_2nn_component/StatefulPartitionedCall�.layer_5dense_component/StatefulPartitionedCall�+layer_5nn_component/StatefulPartitionedCall�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_98426168*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:���������:���������:*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__forward_mean_shift_layer_layer_call_and_return_conditional_losses_98426768�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_98426171*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������::���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__forward_decorrelation_layer_layer_call_and_return_conditional_losses_98426743�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_98426174layer__1_input_98426176*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:���������d:���������d:d:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__forward_layer_-1_input_layer_call_and_return_conditional_losses_98426722�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_0dense_component_98426179*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:d:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_0dense_component_layer_call_and_return_conditional_losses_98426678�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_98426182layer_0nn_component_98426184*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:dd:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__forward_layer_0nn_component_layer_call_and_return_conditional_losses_98426698�
add_component_0/PartitionedCallPartitionedCall7layer_0dense_component/StatefulPartitionedCall:output:04layer_0nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_add_component_0_layer_call_and_return_conditional_losses_98426660�
tf.math.softplus/SoftplusSoftplus(add_component_0/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1dense_component_98426189*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:d:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_1dense_component_layer_call_and_return_conditional_losses_98426612�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0layer_1nn_component_98426192layer_1nn_component_98426194*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:dd:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__forward_layer_1nn_component_layer_call_and_return_conditional_losses_98426632�
add_component_1/PartitionedCallPartitionedCall7layer_1dense_component/StatefulPartitionedCall:output:04layer_1nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_add_component_1_layer_call_and_return_conditional_losses_98426594�
tf.math.softplus_1/SoftplusSoftplus(add_component_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_2dense_component_98426199*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:d:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_2dense_component_layer_call_and_return_conditional_losses_98426546�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0layer_2nn_component_98426202layer_2nn_component_98426204*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:dd:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__forward_layer_2nn_component_layer_call_and_return_conditional_losses_98426566�
add_component_2/PartitionedCallPartitionedCall7layer_2dense_component/StatefulPartitionedCall:output:04layer_2nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_add_component_2_layer_call_and_return_conditional_losses_98426528�
tf.math.softplus_2/SoftplusSoftplus(add_component_2/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_5dense_component_98426209*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������::���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_5dense_component_layer_call_and_return_conditional_losses_98426480�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0layer_5nn_component_98426212layer_5nn_component_98426214*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������:d:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__forward_layer_5nn_component_layer_call_and_return_conditional_losses_98426500�
add/PartitionedCallPartitionedCall7layer_5dense_component/StatefulPartitionedCall:output:04layer_5nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__forward_add_layer_call_and_return_conditional_losses_98426462k
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^decorrelation_layer/StatefulPartitionedCall'^layer_-1_input/StatefulPartitionedCall/^layer_0dense_component/StatefulPartitionedCall,^layer_0nn_component/StatefulPartitionedCall/^layer_1dense_component/StatefulPartitionedCall,^layer_1nn_component/StatefulPartitionedCall/^layer_2dense_component/StatefulPartitionedCall,^layer_2nn_component/StatefulPartitionedCall/^layer_5dense_component/StatefulPartitionedCall,^layer_5nn_component/StatefulPartitionedCall)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "K
add_component_0_partitionedcall(add_component_0/PartitionedCall:output:0"M
!add_component_0_partitionedcall_0(add_component_0/PartitionedCall:output:1"M
!add_component_0_partitionedcall_1(add_component_0/PartitionedCall:output:2"K
add_component_1_partitionedcall(add_component_1/PartitionedCall:output:0"M
!add_component_1_partitionedcall_0(add_component_1/PartitionedCall:output:1"M
!add_component_1_partitionedcall_1(add_component_1/PartitionedCall:output:2"K
add_component_2_partitionedcall(add_component_2/PartitionedCall:output:0"M
!add_component_2_partitionedcall_0(add_component_2/PartitionedCall:output:1"M
!add_component_2_partitionedcall_1(add_component_2/PartitionedCall:output:2"3
add_partitionedcalladd/PartitionedCall:output:1"5
add_partitionedcall_0add/PartitionedCall:output:2"c
+decorrelation_layer_statefulpartitionedcall4decorrelation_layer/StatefulPartitionedCall:output:1"e
-decorrelation_layer_statefulpartitionedcall_04decorrelation_layer/StatefulPartitionedCall:output:2"
identityIdentity:output:0"i
.layer_0dense_component_statefulpartitionedcall7layer_0dense_component/StatefulPartitionedCall:output:1"k
0layer_0dense_component_statefulpartitionedcall_07layer_0dense_component/StatefulPartitionedCall:output:2"c
+layer_0nn_component_statefulpartitionedcall4layer_0nn_component/StatefulPartitionedCall:output:1"e
-layer_0nn_component_statefulpartitionedcall_04layer_0nn_component/StatefulPartitionedCall:output:2"i
.layer_1dense_component_statefulpartitionedcall7layer_1dense_component/StatefulPartitionedCall:output:1"k
0layer_1dense_component_statefulpartitionedcall_07layer_1dense_component/StatefulPartitionedCall:output:2"c
+layer_1nn_component_statefulpartitionedcall4layer_1nn_component/StatefulPartitionedCall:output:1"e
-layer_1nn_component_statefulpartitionedcall_04layer_1nn_component/StatefulPartitionedCall:output:2"i
.layer_2dense_component_statefulpartitionedcall7layer_2dense_component/StatefulPartitionedCall:output:1"k
0layer_2dense_component_statefulpartitionedcall_07layer_2dense_component/StatefulPartitionedCall:output:2"c
+layer_2nn_component_statefulpartitionedcall4layer_2nn_component/StatefulPartitionedCall:output:1"e
-layer_2nn_component_statefulpartitionedcall_04layer_2nn_component/StatefulPartitionedCall:output:2"i
.layer_5dense_component_statefulpartitionedcall7layer_5dense_component/StatefulPartitionedCall:output:1"k
0layer_5dense_component_statefulpartitionedcall_07layer_5dense_component/StatefulPartitionedCall:output:2"c
+layer_5nn_component_statefulpartitionedcall4layer_5nn_component/StatefulPartitionedCall:output:1"e
-layer_5nn_component_statefulpartitionedcall_04layer_5nn_component/StatefulPartitionedCall:output:2"Y
&layer__1_input_statefulpartitionedcall/layer_-1_input/StatefulPartitionedCall:output:1"[
(layer__1_input_statefulpartitionedcall_0/layer_-1_input/StatefulPartitionedCall:output:2"[
(layer__1_input_statefulpartitionedcall_1/layer_-1_input/StatefulPartitionedCall:output:3"]
(mean_shift_layer_statefulpartitionedcall1mean_shift_layer/StatefulPartitionedCall:output:1"_
*mean_shift_layer_statefulpartitionedcall_01mean_shift_layer/StatefulPartitionedCall:output:2*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : *z
backward_function_name`^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_98427108_984272372Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2P
&layer_-1_input/StatefulPartitionedCall&layer_-1_input/StatefulPartitionedCall2`
.layer_0dense_component/StatefulPartitionedCall.layer_0dense_component/StatefulPartitionedCall2Z
+layer_0nn_component/StatefulPartitionedCall+layer_0nn_component/StatefulPartitionedCall2`
.layer_1dense_component/StatefulPartitionedCall.layer_1dense_component/StatefulPartitionedCall2Z
+layer_1nn_component/StatefulPartitionedCall+layer_1nn_component/StatefulPartitionedCall2`
.layer_2dense_component/StatefulPartitionedCall.layer_2dense_component/StatefulPartitionedCall2Z
+layer_2nn_component/StatefulPartitionedCall+layer_2nn_component/StatefulPartitionedCall2`
.layer_5dense_component/StatefulPartitionedCall.layer_5dense_component/StatefulPartitionedCall2Z
+layer_5nn_component/StatefulPartitionedCall+layer_5nn_component/StatefulPartitionedCall2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98427727
input_1#
icnn_closure_98427512:'
icnn_closure_98427514:'
icnn_closure_98427516:d#
icnn_closure_98427518:d'
icnn_closure_98427520:d'
icnn_closure_98427522:dd#
icnn_closure_98427524:d'
icnn_closure_98427526:d'
icnn_closure_98427528:dd#
icnn_closure_98427530:d'
icnn_closure_98427532:d'
icnn_closure_98427534:dd#
icnn_closure_98427536:d'
icnn_closure_98427538:'
icnn_closure_98427540:d#
icnn_closure_98427542:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��$Icnn_closure/StatefulPartitionedCall�checked�	checked_1�

$Icnn_closure/StatefulPartitionedCallStatefulPartitionedCallinput_1icnn_closure_98427512icnn_closure_98427514icnn_closure_98427516icnn_closure_98427518icnn_closure_98427520icnn_closure_98427522icnn_closure_98427524icnn_closure_98427526icnn_closure_98427528icnn_closure_98427530icnn_closure_98427532icnn_closure_98427534icnn_closure_98427536icnn_closure_98427538icnn_closure_98427540icnn_closure_98427542*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������::���������:d:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:���������d:���������d:d:���������:dd:���������d:���������d:d:���������::���������:���������:*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__forward_Icnn_closure_layer_call_and_return_conditional_losses_98426794l
ones_like/ShapeShape-Icnn_closure/StatefulPartitionedCall:output:0*
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
:����������
PartitionedCallPartitionedCallones_like:output:0-Icnn_closure/StatefulPartitionedCall:output:1-Icnn_closure/StatefulPartitionedCall:output:2-Icnn_closure/StatefulPartitionedCall:output:3-Icnn_closure/StatefulPartitionedCall:output:4-Icnn_closure/StatefulPartitionedCall:output:5-Icnn_closure/StatefulPartitionedCall:output:6-Icnn_closure/StatefulPartitionedCall:output:7-Icnn_closure/StatefulPartitionedCall:output:8-Icnn_closure/StatefulPartitionedCall:output:9.Icnn_closure/StatefulPartitionedCall:output:10.Icnn_closure/StatefulPartitionedCall:output:11.Icnn_closure/StatefulPartitionedCall:output:12.Icnn_closure/StatefulPartitionedCall:output:13.Icnn_closure/StatefulPartitionedCall:output:14.Icnn_closure/StatefulPartitionedCall:output:15.Icnn_closure/StatefulPartitionedCall:output:16.Icnn_closure/StatefulPartitionedCall:output:17.Icnn_closure/StatefulPartitionedCall:output:18.Icnn_closure/StatefulPartitionedCall:output:19.Icnn_closure/StatefulPartitionedCall:output:20.Icnn_closure/StatefulPartitionedCall:output:21.Icnn_closure/StatefulPartitionedCall:output:22.Icnn_closure/StatefulPartitionedCall:output:23.Icnn_closure/StatefulPartitionedCall:output:24.Icnn_closure/StatefulPartitionedCall:output:25.Icnn_closure/StatefulPartitionedCall:output:26.Icnn_closure/StatefulPartitionedCall:output:27.Icnn_closure/StatefulPartitionedCall:output:28.Icnn_closure/StatefulPartitionedCall:output:29.Icnn_closure/StatefulPartitionedCall:output:30.Icnn_closure/StatefulPartitionedCall:output:31.Icnn_closure/StatefulPartitionedCall:output:32.Icnn_closure/StatefulPartitionedCall:output:33.Icnn_closure/StatefulPartitionedCall:output:34*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:::d:d:d:dd:d:d:dd:d:d:dd:d::d:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *g
fbR`
^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_98426442_98426795g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*e
messageZXinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 14), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
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
:	�*

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
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
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
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
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
:�����������
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
:	��
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
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
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
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
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
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
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
:	�*

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
:�����������
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
:	��
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
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
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
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
:���������*

begin_mask*
end_mask|
IdentityIdentity-Icnn_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^Icnn_closure/StatefulPartitionedCall^checked
^checked_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2L
$Icnn_closure/StatefulPartitionedCall$Icnn_closure/StatefulPartitionedCall2
checkedchecked2
	checked_1	checked_1:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
9__inference_layer_0dense_component_layer_call_fn_98428865

inputs
unknown:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_98425828o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
h__inference___backward_layer_5dense_component_layer_call_and_return_conditional_losses_98426470_98426481
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:����������
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������::���������*m
forward_function_nameTR__forward_layer_5dense_component_layer_call_and_return_conditional_losses_98426480:- )
'
_output_shapes
:���������:$ 

_output_shapes

::-)
'
_output_shapes
:���������
�
w
M__inference_add_component_2_layer_call_and_return_conditional_losses_98425926

inputs
inputs_1
identityP
addAddV2inputsinputs_1*
T0*'
_output_shapes
:���������dO
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
9__inference_layer_1dense_component_layer_call_fn_98428910

inputs
unknown:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_98425864o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_98428872

inputs0
matmul_readvariableop_resource:d
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������d^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
a__inference___backward_add_component_0_layer_call_and_return_conditional_losses_98426644_98426661
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������dg
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
T0*'
_output_shapes
:���������d�
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*'
_output_shapes
:���������dk
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*'
_output_shapes
:���������do

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������d:���������d:���������d*f
forward_function_nameMK__forward_add_component_0_layer_call_and_return_conditional_losses_98426660:- )
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d
�
�
3__inference_mean_shift_layer_layer_call_fn_98428817

inputs
unknown:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_98425789o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
O__forward_decorrelation_layer_layer_call_and_return_conditional_losses_98426743
inputs_00
matmul_readvariableop_resource:
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: *�
backward_function_namege__inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_98426733_984267442.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_98425800

inputs0
matmul_readvariableop_resource:
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
a__inference___backward_add_component_1_layer_call_and_return_conditional_losses_98426578_98426595
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������dg
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
T0*'
_output_shapes
:���������d�
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*'
_output_shapes
:���������dk
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*'
_output_shapes
:���������do

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������d:���������d:���������d*f
forward_function_nameMK__forward_add_component_1_layer_call_and_return_conditional_losses_98426594:- )
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d
�	
�
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_98429026

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
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
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�P
�

J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98425965

inputs'
mean_shift_layer_98425790:.
decorrelation_layer_98425801:)
layer__1_input_98425816:d%
layer__1_input_98425818:d1
layer_0dense_component_98425829:d.
layer_0nn_component_98425843:dd*
layer_0nn_component_98425845:d1
layer_1dense_component_98425865:d.
layer_1nn_component_98425879:dd*
layer_1nn_component_98425881:d1
layer_2dense_component_98425901:d.
layer_2nn_component_98425915:dd*
layer_2nn_component_98425917:d1
layer_5dense_component_98425937:.
layer_5nn_component_98425951:d*
layer_5nn_component_98425953:
identity��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�.layer_0dense_component/StatefulPartitionedCall�+layer_0nn_component/StatefulPartitionedCall�.layer_1dense_component/StatefulPartitionedCall�+layer_1nn_component/StatefulPartitionedCall�.layer_2dense_component/StatefulPartitionedCall�+layer_2nn_component/StatefulPartitionedCall�.layer_5dense_component/StatefulPartitionedCall�+layer_5nn_component/StatefulPartitionedCall�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_98425790*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_98425789�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_98425801*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_98425800�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_98425816layer__1_input_98425818*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_98425815�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_0dense_component_98425829*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_98425828�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_98425843layer_0nn_component_98425845*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_98425842�
add_component_0/PartitionedCallPartitionedCall7layer_0dense_component/StatefulPartitionedCall:output:04layer_0nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_0_layer_call_and_return_conditional_losses_98425854�
tf.math.softplus/SoftplusSoftplus(add_component_0/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1dense_component_98425865*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_98425864�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0layer_1nn_component_98425879layer_1nn_component_98425881*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_98425878�
add_component_1/PartitionedCallPartitionedCall7layer_1dense_component/StatefulPartitionedCall:output:04layer_1nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_1_layer_call_and_return_conditional_losses_98425890�
tf.math.softplus_1/SoftplusSoftplus(add_component_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_2dense_component_98425901*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_98425900�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0layer_2nn_component_98425915layer_2nn_component_98425917*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_98425914�
add_component_2/PartitionedCallPartitionedCall7layer_2dense_component/StatefulPartitionedCall:output:04layer_2nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_2_layer_call_and_return_conditional_losses_98425926�
tf.math.softplus_2/SoftplusSoftplus(add_component_2/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_5dense_component_98425937*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_98425936�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0layer_5nn_component_98425951layer_5nn_component_98425953*
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
GPU2*0J 8� *Z
fURS
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_98425950�
add/PartitionedCallPartitionedCall7layer_5dense_component/StatefulPartitionedCall:output:04layer_5nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_add_layer_call_and_return_conditional_losses_98425962k
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^decorrelation_layer/StatefulPartitionedCall'^layer_-1_input/StatefulPartitionedCall/^layer_0dense_component/StatefulPartitionedCall,^layer_0nn_component/StatefulPartitionedCall/^layer_1dense_component/StatefulPartitionedCall,^layer_1nn_component/StatefulPartitionedCall/^layer_2dense_component/StatefulPartitionedCall,^layer_2nn_component/StatefulPartitionedCall/^layer_5dense_component/StatefulPartitionedCall,^layer_5nn_component/StatefulPartitionedCall)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2P
&layer_-1_input/StatefulPartitionedCall&layer_-1_input/StatefulPartitionedCall2`
.layer_0dense_component/StatefulPartitionedCall.layer_0dense_component/StatefulPartitionedCall2Z
+layer_0nn_component/StatefulPartitionedCall+layer_0nn_component/StatefulPartitionedCall2`
.layer_1dense_component/StatefulPartitionedCall.layer_1dense_component/StatefulPartitionedCall2Z
+layer_1nn_component/StatefulPartitionedCall+layer_1nn_component/StatefulPartitionedCall2`
.layer_2dense_component/StatefulPartitionedCall.layer_2dense_component/StatefulPartitionedCall2Z
+layer_2nn_component/StatefulPartitionedCall+layer_2nn_component/StatefulPartitionedCall2`
.layer_5dense_component/StatefulPartitionedCall.layer_5dense_component/StatefulPartitionedCall2Z
+layer_5nn_component/StatefulPartitionedCall+layer_5nn_component/StatefulPartitionedCall2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_98425815

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dX
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:���������de
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�x
�
H__forward_Icnn_closure_layer_call_and_return_conditional_losses_98426794

inputs'
mean_shift_layer_98425790:.
decorrelation_layer_98425801:)
layer__1_input_98425816:d%
layer__1_input_98425818:d1
layer_0dense_component_98425829:d.
layer_0nn_component_98425843:dd*
layer_0nn_component_98425845:d1
layer_1dense_component_98425865:d.
layer_1nn_component_98425879:dd*
layer_1nn_component_98425881:d1
layer_2dense_component_98425901:d.
layer_2nn_component_98425915:dd*
layer_2nn_component_98425917:d1
layer_5dense_component_98425937:.
layer_5nn_component_98425951:d*
layer_5nn_component_98425953:
identity
add_partitionedcall
add_partitionedcall_02
.layer_5dense_component_statefulpartitionedcall4
0layer_5dense_component_statefulpartitionedcall_0/
+layer_5nn_component_statefulpartitionedcall1
-layer_5nn_component_statefulpartitionedcall_0#
add_component_2_partitionedcall%
!add_component_2_partitionedcall_0%
!add_component_2_partitionedcall_12
.layer_2dense_component_statefulpartitionedcall4
0layer_2dense_component_statefulpartitionedcall_0/
+layer_2nn_component_statefulpartitionedcall1
-layer_2nn_component_statefulpartitionedcall_0#
add_component_1_partitionedcall%
!add_component_1_partitionedcall_0%
!add_component_1_partitionedcall_12
.layer_1dense_component_statefulpartitionedcall4
0layer_1dense_component_statefulpartitionedcall_0/
+layer_1nn_component_statefulpartitionedcall1
-layer_1nn_component_statefulpartitionedcall_0#
add_component_0_partitionedcall%
!add_component_0_partitionedcall_0%
!add_component_0_partitionedcall_12
.layer_0dense_component_statefulpartitionedcall4
0layer_0dense_component_statefulpartitionedcall_0/
+layer_0nn_component_statefulpartitionedcall1
-layer_0nn_component_statefulpartitionedcall_0*
&layer__1_input_statefulpartitionedcall,
(layer__1_input_statefulpartitionedcall_0,
(layer__1_input_statefulpartitionedcall_1/
+decorrelation_layer_statefulpartitionedcall1
-decorrelation_layer_statefulpartitionedcall_0,
(mean_shift_layer_statefulpartitionedcall.
*mean_shift_layer_statefulpartitionedcall_0��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�.layer_0dense_component/StatefulPartitionedCall�+layer_0nn_component/StatefulPartitionedCall�.layer_1dense_component/StatefulPartitionedCall�+layer_1nn_component/StatefulPartitionedCall�.layer_2dense_component/StatefulPartitionedCall�+layer_2nn_component/StatefulPartitionedCall�.layer_5dense_component/StatefulPartitionedCall�+layer_5nn_component/StatefulPartitionedCall�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_98425790*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:���������:���������:*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__forward_mean_shift_layer_layer_call_and_return_conditional_losses_98426768�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_98425801*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������::���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__forward_decorrelation_layer_layer_call_and_return_conditional_losses_98426743�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_98425816layer__1_input_98425818*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:���������d:���������d:d:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__forward_layer_-1_input_layer_call_and_return_conditional_losses_98426722�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_0dense_component_98425829*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:d:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_0dense_component_layer_call_and_return_conditional_losses_98426678�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_98425843layer_0nn_component_98425845*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:dd:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__forward_layer_0nn_component_layer_call_and_return_conditional_losses_98426698�
add_component_0/PartitionedCallPartitionedCall7layer_0dense_component/StatefulPartitionedCall:output:04layer_0nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_add_component_0_layer_call_and_return_conditional_losses_98426660�
tf.math.softplus/SoftplusSoftplus(add_component_0/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1dense_component_98425865*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:d:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_1dense_component_layer_call_and_return_conditional_losses_98426612�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0layer_1nn_component_98425879layer_1nn_component_98425881*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:dd:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__forward_layer_1nn_component_layer_call_and_return_conditional_losses_98426632�
add_component_1/PartitionedCallPartitionedCall7layer_1dense_component/StatefulPartitionedCall:output:04layer_1nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_add_component_1_layer_call_and_return_conditional_losses_98426594�
tf.math.softplus_1/SoftplusSoftplus(add_component_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_2dense_component_98425901*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:d:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_2dense_component_layer_call_and_return_conditional_losses_98426546�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0layer_2nn_component_98425915layer_2nn_component_98425917*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:dd:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__forward_layer_2nn_component_layer_call_and_return_conditional_losses_98426566�
add_component_2/PartitionedCallPartitionedCall7layer_2dense_component/StatefulPartitionedCall:output:04layer_2nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__forward_add_component_2_layer_call_and_return_conditional_losses_98426528�
tf.math.softplus_2/SoftplusSoftplus(add_component_2/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_5dense_component_98425937*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������::���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_5dense_component_layer_call_and_return_conditional_losses_98426480�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0layer_5nn_component_98425951layer_5nn_component_98425953*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������:d:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__forward_layer_5nn_component_layer_call_and_return_conditional_losses_98426500�
add/PartitionedCallPartitionedCall7layer_5dense_component/StatefulPartitionedCall:output:04layer_5nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__forward_add_layer_call_and_return_conditional_losses_98426462k
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^decorrelation_layer/StatefulPartitionedCall'^layer_-1_input/StatefulPartitionedCall/^layer_0dense_component/StatefulPartitionedCall,^layer_0nn_component/StatefulPartitionedCall/^layer_1dense_component/StatefulPartitionedCall,^layer_1nn_component/StatefulPartitionedCall/^layer_2dense_component/StatefulPartitionedCall,^layer_2nn_component/StatefulPartitionedCall/^layer_5dense_component/StatefulPartitionedCall,^layer_5nn_component/StatefulPartitionedCall)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "K
add_component_0_partitionedcall(add_component_0/PartitionedCall:output:0"M
!add_component_0_partitionedcall_0(add_component_0/PartitionedCall:output:1"M
!add_component_0_partitionedcall_1(add_component_0/PartitionedCall:output:2"K
add_component_1_partitionedcall(add_component_1/PartitionedCall:output:0"M
!add_component_1_partitionedcall_0(add_component_1/PartitionedCall:output:1"M
!add_component_1_partitionedcall_1(add_component_1/PartitionedCall:output:2"K
add_component_2_partitionedcall(add_component_2/PartitionedCall:output:0"M
!add_component_2_partitionedcall_0(add_component_2/PartitionedCall:output:1"M
!add_component_2_partitionedcall_1(add_component_2/PartitionedCall:output:2"3
add_partitionedcalladd/PartitionedCall:output:1"5
add_partitionedcall_0add/PartitionedCall:output:2"c
+decorrelation_layer_statefulpartitionedcall4decorrelation_layer/StatefulPartitionedCall:output:1"e
-decorrelation_layer_statefulpartitionedcall_04decorrelation_layer/StatefulPartitionedCall:output:2"
identityIdentity:output:0"i
.layer_0dense_component_statefulpartitionedcall7layer_0dense_component/StatefulPartitionedCall:output:1"k
0layer_0dense_component_statefulpartitionedcall_07layer_0dense_component/StatefulPartitionedCall:output:2"c
+layer_0nn_component_statefulpartitionedcall4layer_0nn_component/StatefulPartitionedCall:output:1"e
-layer_0nn_component_statefulpartitionedcall_04layer_0nn_component/StatefulPartitionedCall:output:2"i
.layer_1dense_component_statefulpartitionedcall7layer_1dense_component/StatefulPartitionedCall:output:1"k
0layer_1dense_component_statefulpartitionedcall_07layer_1dense_component/StatefulPartitionedCall:output:2"c
+layer_1nn_component_statefulpartitionedcall4layer_1nn_component/StatefulPartitionedCall:output:1"e
-layer_1nn_component_statefulpartitionedcall_04layer_1nn_component/StatefulPartitionedCall:output:2"i
.layer_2dense_component_statefulpartitionedcall7layer_2dense_component/StatefulPartitionedCall:output:1"k
0layer_2dense_component_statefulpartitionedcall_07layer_2dense_component/StatefulPartitionedCall:output:2"c
+layer_2nn_component_statefulpartitionedcall4layer_2nn_component/StatefulPartitionedCall:output:1"e
-layer_2nn_component_statefulpartitionedcall_04layer_2nn_component/StatefulPartitionedCall:output:2"i
.layer_5dense_component_statefulpartitionedcall7layer_5dense_component/StatefulPartitionedCall:output:1"k
0layer_5dense_component_statefulpartitionedcall_07layer_5dense_component/StatefulPartitionedCall:output:2"c
+layer_5nn_component_statefulpartitionedcall4layer_5nn_component/StatefulPartitionedCall:output:1"e
-layer_5nn_component_statefulpartitionedcall_04layer_5nn_component/StatefulPartitionedCall:output:2"Y
&layer__1_input_statefulpartitionedcall/layer_-1_input/StatefulPartitionedCall:output:1"[
(layer__1_input_statefulpartitionedcall_0/layer_-1_input/StatefulPartitionedCall:output:2"[
(layer__1_input_statefulpartitionedcall_1/layer_-1_input/StatefulPartitionedCall:output:3"]
(mean_shift_layer_statefulpartitionedcall1mean_shift_layer/StatefulPartitionedCall:output:1"_
*mean_shift_layer_statefulpartitionedcall_01mean_shift_layer/StatefulPartitionedCall:output:2*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : *z
backward_function_name`^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_98426442_984267952Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2P
&layer_-1_input/StatefulPartitionedCall&layer_-1_input/StatefulPartitionedCall2`
.layer_0dense_component/StatefulPartitionedCall.layer_0dense_component/StatefulPartitionedCall2Z
+layer_0nn_component/StatefulPartitionedCall+layer_0nn_component/StatefulPartitionedCall2`
.layer_1dense_component/StatefulPartitionedCall.layer_1dense_component/StatefulPartitionedCall2Z
+layer_1nn_component/StatefulPartitionedCall+layer_1nn_component/StatefulPartitionedCall2`
.layer_2dense_component/StatefulPartitionedCall.layer_2dense_component/StatefulPartitionedCall2Z
+layer_2nn_component/StatefulPartitionedCall+layer_2nn_component/StatefulPartitionedCall2`
.layer_5dense_component/StatefulPartitionedCall.layer_5dense_component/StatefulPartitionedCall2Z
+layer_5nn_component/StatefulPartitionedCall+layer_5nn_component/StatefulPartitionedCall2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_98428000
input_1
unknown:
	unknown_0:
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:dd

unknown_11:d

unknown_12:

unknown_13:d

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
9:���������:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference__wrapped_model_98425775o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
L__forward_mean_shift_layer_layer_call_and_return_conditional_losses_98426768
inputs_0)
sub_readvariableop_resource:
identity

inputs
sub_readvariableop��sub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype0b
subSubinputs_0sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
IdentityIdentitysub:z:0^NoOp*
T0*'
_output_shapes
:���������[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"0
sub_readvariableopsub/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: *~
backward_function_namedb__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_98426751_984267692(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�*
$__inference__traced_restore_98429490
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: )
assignvariableop_5_variable:/
assignvariableop_6_variable_1::
(assignvariableop_7_layer__1_input_kernel:d4
&assignvariableop_8_layer__1_input_bias:dB
0assignvariableop_9_layer_0dense_component_kernel:d@
.assignvariableop_10_layer_0nn_component_kernel:dd:
,assignvariableop_11_layer_0nn_component_bias:dC
1assignvariableop_12_layer_1dense_component_kernel:d@
.assignvariableop_13_layer_1nn_component_kernel:dd:
,assignvariableop_14_layer_1nn_component_bias:dC
1assignvariableop_15_layer_2dense_component_kernel:d@
.assignvariableop_16_layer_2nn_component_kernel:dd:
,assignvariableop_17_layer_2nn_component_bias:dC
1assignvariableop_18_layer_5dense_component_kernel:@
.assignvariableop_19_layer_5nn_component_kernel:d:
,assignvariableop_20_layer_5nn_component_bias:#
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
assignvariableop_40_count_9: =
+assignvariableop_41_layer__1_input_kernel_m:d7
)assignvariableop_42_layer__1_input_bias_m:dE
3assignvariableop_43_layer_0dense_component_kernel_m:dB
0assignvariableop_44_layer_0nn_component_kernel_m:dd<
.assignvariableop_45_layer_0nn_component_bias_m:dE
3assignvariableop_46_layer_1dense_component_kernel_m:dB
0assignvariableop_47_layer_1nn_component_kernel_m:dd<
.assignvariableop_48_layer_1nn_component_bias_m:dE
3assignvariableop_49_layer_2dense_component_kernel_m:dB
0assignvariableop_50_layer_2nn_component_kernel_m:dd<
.assignvariableop_51_layer_2nn_component_bias_m:dE
3assignvariableop_52_layer_5dense_component_kernel_m:B
0assignvariableop_53_layer_5nn_component_kernel_m:d<
.assignvariableop_54_layer_5nn_component_bias_m:=
+assignvariableop_55_layer__1_input_kernel_v:d7
)assignvariableop_56_layer__1_input_bias_v:dE
3assignvariableop_57_layer_0dense_component_kernel_v:dB
0assignvariableop_58_layer_0nn_component_kernel_v:dd<
.assignvariableop_59_layer_0nn_component_bias_v:dE
3assignvariableop_60_layer_1dense_component_kernel_v:dB
0assignvariableop_61_layer_1nn_component_kernel_v:dd<
.assignvariableop_62_layer_1nn_component_bias_v:dE
3assignvariableop_63_layer_2dense_component_kernel_v:dB
0assignvariableop_64_layer_2nn_component_kernel_v:dd<
.assignvariableop_65_layer_2nn_component_bias_v:dE
3assignvariableop_66_layer_5dense_component_kernel_v:B
0assignvariableop_67_layer_5nn_component_kernel_v:d<
.assignvariableop_68_layer_5nn_component_bias_v:
identity_70��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*�
value�B�FB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*�
value�B�FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*T
dtypesJ
H2F	[
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
AssignVariableOp_7AssignVariableOp(assignvariableop_7_layer__1_input_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp&assignvariableop_8_layer__1_input_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp0assignvariableop_9_layer_0dense_component_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp.assignvariableop_10_layer_0nn_component_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp,assignvariableop_11_layer_0nn_component_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp1assignvariableop_12_layer_1dense_component_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp.assignvariableop_13_layer_1nn_component_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp,assignvariableop_14_layer_1nn_component_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp1assignvariableop_15_layer_2dense_component_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp.assignvariableop_16_layer_2nn_component_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_layer_2nn_component_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp1assignvariableop_18_layer_5dense_component_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp.assignvariableop_19_layer_5nn_component_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp,assignvariableop_20_layer_5nn_component_biasIdentity_20:output:0"/device:CPU:0*
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
AssignVariableOp_41AssignVariableOp+assignvariableop_41_layer__1_input_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp)assignvariableop_42_layer__1_input_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp3assignvariableop_43_layer_0dense_component_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp0assignvariableop_44_layer_0nn_component_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp.assignvariableop_45_layer_0nn_component_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp3assignvariableop_46_layer_1dense_component_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp0assignvariableop_47_layer_1nn_component_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp.assignvariableop_48_layer_1nn_component_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp3assignvariableop_49_layer_2dense_component_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp0assignvariableop_50_layer_2nn_component_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp.assignvariableop_51_layer_2nn_component_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp3assignvariableop_52_layer_5dense_component_kernel_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp0assignvariableop_53_layer_5nn_component_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp.assignvariableop_54_layer_5nn_component_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp+assignvariableop_55_layer__1_input_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp)assignvariableop_56_layer__1_input_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp3assignvariableop_57_layer_0dense_component_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp0assignvariableop_58_layer_0nn_component_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp.assignvariableop_59_layer_0nn_component_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp3assignvariableop_60_layer_1dense_component_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp0assignvariableop_61_layer_1nn_component_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp.assignvariableop_62_layer_1nn_component_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp3assignvariableop_63_layer_2dense_component_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp0assignvariableop_64_layer_2nn_component_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp.assignvariableop_65_layer_2nn_component_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp3assignvariableop_66_layer_5dense_component_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp0assignvariableop_67_layer_5nn_component_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp.assignvariableop_68_layer_5nn_component_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_69Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_70IdentityIdentity_69:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_70Identity_70:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_68AssignVariableOp_682(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
b__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_98426751_98426769
placeholder#
gradients_sub_grad_shape_inputs1
-gradients_sub_grad_shape_1_sub_readvariableop
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������g
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
:���������m
gradients/sub_grad/NegNeggradients/grad_ys_0:output:0*
T0*'
_output_shapes
:����������
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg:y:0-gradients/sub_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/sub_grad/Reshape_1Reshape!gradients/sub_grad/Sum_1:output:0#gradients/sub_grad/Shape_1:output:0*
T0*
_output_shapes
:k
IdentityIdentity#gradients/sub_grad/Reshape:output:0*
T0*'
_output_shapes
:���������b

Identity_1Identity%gradients/sub_grad/Reshape_1:output:0*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������:*g
forward_function_nameNL__forward_mean_shift_layer_layer_call_and_return_conditional_losses_98426768:- )
'
_output_shapes
:���������:-)
'
_output_shapes
:���������: 

_output_shapes
:
�	
�
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_98428981

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
/__inference_Icnn_closure_layer_call_fn_98428653

inputs
unknown:
	unknown_0:
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:dd

unknown_11:d

unknown_12:

unknown_13:d

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
GPU2*0J 8� *S
fNRL
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98425965o
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
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_98428838

inputs0
matmul_readvariableop_resource:
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_Icnn_closure_layer_call_fn_98428690

inputs
unknown:
	unknown_0:
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:dd

unknown_11:d

unknown_12:

unknown_13:d

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
GPU2*0J 8� *S
fNRL
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98426219o
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
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_98425900

inputs0
matmul_readvariableop_resource:d
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������d^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_98428858

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dX
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:���������de
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_98425828

inputs0
matmul_readvariableop_resource:d
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������d^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
O__forward_layer_5nn_component_layer_call_and_return_conditional_losses_98426500
inputs_00
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
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
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : *�
backward_function_namege__inference___backward_layer_5nn_component_layer_call_and_return_conditional_losses_98426488_9842650120
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
O__forward_layer_1nn_component_layer_call_and_return_conditional_losses_98426632
inputs_00
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : *�
backward_function_namege__inference___backward_layer_1nn_component_layer_call_and_return_conditional_losses_98426620_9842663320
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
e__inference___backward_layer_5nn_component_layer_call_and_return_conditional_losses_98426488_98426501
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
T0*'
_output_shapes
:���������d*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:d*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������di

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:dh

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������:d:���������d*j
forward_function_nameQO__forward_layer_5nn_component_layer_call_and_return_conditional_losses_98426500:- )
'
_output_shapes
:���������:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������d
�

�
h__inference___backward_layer_2dense_component_layer_call_and_return_conditional_losses_98426536_98426547
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������d�
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:d*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:d"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������d:d:���������*m
forward_function_nameTR__forward_layer_2dense_component_layer_call_and_return_conditional_losses_98426546:- )
'
_output_shapes
:���������d:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������
�
�
K__forward_add_component_2_layer_call_and_return_conditional_losses_98426528
inputs_0

inputs_1_0
identity

inputs
inputs_1T
addAddV2inputs_0
inputs_1_0*
T0*'
_output_shapes
:���������dO
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d*}
backward_function_nameca__inference___backward_add_component_2_layer_call_and_return_conditional_losses_98426512_98426529:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
0__inference_sobolev_model_layer_call_fn_98427020
input_1
unknown:
	unknown_0:
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:dd

unknown_11:d

unknown_12:

unknown_13:d

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
9:���������:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98426975o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�

�
h__inference___backward_layer_1dense_component_layer_call_and_return_conditional_losses_98426602_98426613
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������d�
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:d*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:d"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������d:d:���������*m
forward_function_nameTR__forward_layer_1dense_component_layer_call_and_return_conditional_losses_98426612:- )
'
_output_shapes
:���������d:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������
�	
�
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_98428891

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�O
�

J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98426399
input_1'
mean_shift_layer_98426348:.
decorrelation_layer_98426351:)
layer__1_input_98426354:d%
layer__1_input_98426356:d1
layer_0dense_component_98426359:d.
layer_0nn_component_98426362:dd*
layer_0nn_component_98426364:d1
layer_1dense_component_98426369:d.
layer_1nn_component_98426372:dd*
layer_1nn_component_98426374:d1
layer_2dense_component_98426379:d.
layer_2nn_component_98426382:dd*
layer_2nn_component_98426384:d1
layer_5dense_component_98426389:.
layer_5nn_component_98426392:d*
layer_5nn_component_98426394:
identity��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�.layer_0dense_component/StatefulPartitionedCall�+layer_0nn_component/StatefulPartitionedCall�.layer_1dense_component/StatefulPartitionedCall�+layer_1nn_component/StatefulPartitionedCall�.layer_2dense_component/StatefulPartitionedCall�+layer_2nn_component/StatefulPartitionedCall�.layer_5dense_component/StatefulPartitionedCall�+layer_5nn_component/StatefulPartitionedCall�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1mean_shift_layer_98426348*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_98425789�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_98426351*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_98425800�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_98426354layer__1_input_98426356*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_98425815�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_0dense_component_98426359*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_98425828�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_98426362layer_0nn_component_98426364*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_98425842�
add_component_0/PartitionedCallPartitionedCall7layer_0dense_component/StatefulPartitionedCall:output:04layer_0nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_0_layer_call_and_return_conditional_losses_98425854�
tf.math.softplus/SoftplusSoftplus(add_component_0/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_1dense_component_98426369*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_98425864�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0layer_1nn_component_98426372layer_1nn_component_98426374*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_98425878�
add_component_1/PartitionedCallPartitionedCall7layer_1dense_component/StatefulPartitionedCall:output:04layer_1nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_1_layer_call_and_return_conditional_losses_98425890�
tf.math.softplus_1/SoftplusSoftplus(add_component_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_2dense_component_98426379*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_98425900�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0layer_2nn_component_98426382layer_2nn_component_98426384*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_98425914�
add_component_2/PartitionedCallPartitionedCall7layer_2dense_component/StatefulPartitionedCall:output:04layer_2nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_2_layer_call_and_return_conditional_losses_98425926�
tf.math.softplus_2/SoftplusSoftplus(add_component_2/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_5dense_component_98426389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_98425936�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0layer_5nn_component_98426392layer_5nn_component_98426394*
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
GPU2*0J 8� *Z
fURS
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_98425950�
add/PartitionedCallPartitionedCall7layer_5dense_component/StatefulPartitionedCall:output:04layer_5nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_add_layer_call_and_return_conditional_losses_98425962k
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^decorrelation_layer/StatefulPartitionedCall'^layer_-1_input/StatefulPartitionedCall/^layer_0dense_component/StatefulPartitionedCall,^layer_0nn_component/StatefulPartitionedCall/^layer_1dense_component/StatefulPartitionedCall,^layer_1nn_component/StatefulPartitionedCall/^layer_2dense_component/StatefulPartitionedCall,^layer_2nn_component/StatefulPartitionedCall/^layer_5dense_component/StatefulPartitionedCall,^layer_5nn_component/StatefulPartitionedCall)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2P
&layer_-1_input/StatefulPartitionedCall&layer_-1_input/StatefulPartitionedCall2`
.layer_0dense_component/StatefulPartitionedCall.layer_0dense_component/StatefulPartitionedCall2Z
+layer_0nn_component/StatefulPartitionedCall+layer_0nn_component/StatefulPartitionedCall2`
.layer_1dense_component/StatefulPartitionedCall.layer_1dense_component/StatefulPartitionedCall2Z
+layer_1nn_component/StatefulPartitionedCall+layer_1nn_component/StatefulPartitionedCall2`
.layer_2dense_component/StatefulPartitionedCall.layer_2dense_component/StatefulPartitionedCall2Z
+layer_2nn_component/StatefulPartitionedCall+layer_2nn_component/StatefulPartitionedCall2`
.layer_5dense_component/StatefulPartitionedCall.layer_5dense_component/StatefulPartitionedCall2Z
+layer_5nn_component/StatefulPartitionedCall+layer_5nn_component/StatefulPartitionedCall2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_98428824

inputs)
sub_readvariableop_resource:
identity��sub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype0`
subSubinputssub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
IdentityIdentitysub:z:0^NoOp*
T0*'
_output_shapes
:���������[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�P
�

J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98426219

inputs'
mean_shift_layer_98426168:.
decorrelation_layer_98426171:)
layer__1_input_98426174:d%
layer__1_input_98426176:d1
layer_0dense_component_98426179:d.
layer_0nn_component_98426182:dd*
layer_0nn_component_98426184:d1
layer_1dense_component_98426189:d.
layer_1nn_component_98426192:dd*
layer_1nn_component_98426194:d1
layer_2dense_component_98426199:d.
layer_2nn_component_98426202:dd*
layer_2nn_component_98426204:d1
layer_5dense_component_98426209:.
layer_5nn_component_98426212:d*
layer_5nn_component_98426214:
identity��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�.layer_0dense_component/StatefulPartitionedCall�+layer_0nn_component/StatefulPartitionedCall�.layer_1dense_component/StatefulPartitionedCall�+layer_1nn_component/StatefulPartitionedCall�.layer_2dense_component/StatefulPartitionedCall�+layer_2nn_component/StatefulPartitionedCall�.layer_5dense_component/StatefulPartitionedCall�+layer_5nn_component/StatefulPartitionedCall�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_98426168*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_98425789�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_98426171*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_98425800�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_98426174layer__1_input_98426176*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_98425815�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_0dense_component_98426179*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_98425828�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_98426182layer_0nn_component_98426184*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_98425842�
add_component_0/PartitionedCallPartitionedCall7layer_0dense_component/StatefulPartitionedCall:output:04layer_0nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_0_layer_call_and_return_conditional_losses_98425854�
tf.math.softplus/SoftplusSoftplus(add_component_0/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1dense_component_98426189*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_98425864�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0layer_1nn_component_98426192layer_1nn_component_98426194*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_98425878�
add_component_1/PartitionedCallPartitionedCall7layer_1dense_component/StatefulPartitionedCall:output:04layer_1nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_1_layer_call_and_return_conditional_losses_98425890�
tf.math.softplus_1/SoftplusSoftplus(add_component_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_2dense_component_98426199*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_98425900�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0layer_2nn_component_98426202layer_2nn_component_98426204*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_98425914�
add_component_2/PartitionedCallPartitionedCall7layer_2dense_component/StatefulPartitionedCall:output:04layer_2nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������d:���������d:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_2_layer_call_and_return_conditional_losses_98425926�
tf.math.softplus_2/SoftplusSoftplus(add_component_2/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_5dense_component_98426209*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_98425936�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0layer_5nn_component_98426212layer_5nn_component_98426214*
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
GPU2*0J 8� *Z
fURS
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_98425950�
add/PartitionedCallPartitionedCall7layer_5dense_component/StatefulPartitionedCall:output:04layer_5nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������:���������:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_add_layer_call_and_return_conditional_losses_98425962k
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^decorrelation_layer/StatefulPartitionedCall'^layer_-1_input/StatefulPartitionedCall/^layer_0dense_component/StatefulPartitionedCall,^layer_0nn_component/StatefulPartitionedCall/^layer_1dense_component/StatefulPartitionedCall,^layer_1nn_component/StatefulPartitionedCall/^layer_2dense_component/StatefulPartitionedCall,^layer_2nn_component/StatefulPartitionedCall/^layer_5dense_component/StatefulPartitionedCall,^layer_5nn_component/StatefulPartitionedCall)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2P
&layer_-1_input/StatefulPartitionedCall&layer_-1_input/StatefulPartitionedCall2`
.layer_0dense_component/StatefulPartitionedCall.layer_0dense_component/StatefulPartitionedCall2Z
+layer_0nn_component/StatefulPartitionedCall+layer_0nn_component/StatefulPartitionedCall2`
.layer_1dense_component/StatefulPartitionedCall.layer_1dense_component/StatefulPartitionedCall2Z
+layer_1nn_component/StatefulPartitionedCall+layer_1nn_component/StatefulPartitionedCall2`
.layer_2dense_component/StatefulPartitionedCall.layer_2dense_component/StatefulPartitionedCall2Z
+layer_2nn_component/StatefulPartitionedCall+layer_2nn_component/StatefulPartitionedCall2`
.layer_5dense_component/StatefulPartitionedCall.layer_5dense_component/StatefulPartitionedCall2Z
+layer_5nn_component/StatefulPartitionedCall+layer_5nn_component/StatefulPartitionedCall2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
w
M__inference_add_component_0_layer_call_and_return_conditional_losses_98425854

inputs
inputs_1
identityP
addAddV2inputsinputs_1*
T0*'
_output_shapes
:���������dO
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�	
�
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_98425914

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
R__forward_layer_2dense_component_layer_call_and_return_conditional_losses_98426546
inputs_00
matmul_readvariableop_resource:d
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������d^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: *�
backward_function_namejh__inference___backward_layer_2dense_component_layer_call_and_return_conditional_losses_98426536_984265472.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
U__inference___backward_add_layer_call_and_return_conditional_losses_98426446_98426463
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������g
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
T0*'
_output_shapes
:����������
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*'
_output_shapes
:���������k
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*'
_output_shapes
:���������o

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������:���������:���������*Z
forward_function_nameA?__forward_add_layer_call_and_return_conditional_losses_98426462:- )
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������
��
�
#__inference__wrapped_model_98425775
input_1U
Gsobolev_model_icnn_closure_mean_shift_layer_sub_readvariableop_resource:_
Msobolev_model_icnn_closure_decorrelation_layer_matmul_readvariableop_resource:Z
Hsobolev_model_icnn_closure_layer__1_input_matmul_readvariableop_resource:dW
Isobolev_model_icnn_closure_layer__1_input_biasadd_readvariableop_resource:db
Psobolev_model_icnn_closure_layer_0dense_component_matmul_readvariableop_resource:d_
Msobolev_model_icnn_closure_layer_0nn_component_matmul_readvariableop_resource:dd\
Nsobolev_model_icnn_closure_layer_0nn_component_biasadd_readvariableop_resource:db
Psobolev_model_icnn_closure_layer_1dense_component_matmul_readvariableop_resource:d_
Msobolev_model_icnn_closure_layer_1nn_component_matmul_readvariableop_resource:dd\
Nsobolev_model_icnn_closure_layer_1nn_component_biasadd_readvariableop_resource:db
Psobolev_model_icnn_closure_layer_2dense_component_matmul_readvariableop_resource:d_
Msobolev_model_icnn_closure_layer_2nn_component_matmul_readvariableop_resource:dd\
Nsobolev_model_icnn_closure_layer_2nn_component_biasadd_readvariableop_resource:db
Psobolev_model_icnn_closure_layer_5dense_component_matmul_readvariableop_resource:_
Msobolev_model_icnn_closure_layer_5nn_component_matmul_readvariableop_resource:d\
Nsobolev_model_icnn_closure_layer_5nn_component_biasadd_readvariableop_resource:
sobolev_model_98425653
sobolev_model_tensordot_1_b
sobolev_model_mul_1_x
identity

identity_1

identity_2��Dsobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp�@sobolev_model/Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp�?sobolev_model/Icnn_closure/layer_-1_input/MatMul/ReadVariableOp�Gsobolev_model/Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp�Esobolev_model/Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp�Dsobolev_model/Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp�Gsobolev_model/Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp�Esobolev_model/Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp�Dsobolev_model/Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp�Gsobolev_model/Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp�Esobolev_model/Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp�Dsobolev_model/Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp�Gsobolev_model/Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp�Esobolev_model/Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp�Dsobolev_model/Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp�>sobolev_model/Icnn_closure/mean_shift_layer/sub/ReadVariableOp�sobolev_model/checked�sobolev_model/checked_1�
>sobolev_model/Icnn_closure/mean_shift_layer/sub/ReadVariableOpReadVariableOpGsobolev_model_icnn_closure_mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:*
dtype0�
/sobolev_model/Icnn_closure/mean_shift_layer/subSubinput_1Fsobolev_model/Icnn_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Dsobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOpReadVariableOpMsobolev_model_icnn_closure_decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
5sobolev_model/Icnn_closure/decorrelation_layer/MatMulMatMul3sobolev_model/Icnn_closure/mean_shift_layer/sub:z:0Lsobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
?sobolev_model/Icnn_closure/layer_-1_input/MatMul/ReadVariableOpReadVariableOpHsobolev_model_icnn_closure_layer__1_input_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
0sobolev_model/Icnn_closure/layer_-1_input/MatMulMatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0Gsobolev_model/Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
@sobolev_model/Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOpReadVariableOpIsobolev_model_icnn_closure_layer__1_input_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
1sobolev_model/Icnn_closure/layer_-1_input/BiasAddBiasAdd:sobolev_model/Icnn_closure/layer_-1_input/MatMul:product:0Hsobolev_model/Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
2sobolev_model/Icnn_closure/layer_-1_input/SoftplusSoftplus:sobolev_model/Icnn_closure/layer_-1_input/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
Gsobolev_model/Icnn_closure/layer_0dense_component/MatMul/ReadVariableOpReadVariableOpPsobolev_model_icnn_closure_layer_0dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
8sobolev_model/Icnn_closure/layer_0dense_component/MatMulMatMulinput_1Osobolev_model/Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
Dsobolev_model/Icnn_closure/layer_0nn_component/MatMul/ReadVariableOpReadVariableOpMsobolev_model_icnn_closure_layer_0nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
5sobolev_model/Icnn_closure/layer_0nn_component/MatMulMatMul@sobolev_model/Icnn_closure/layer_-1_input/Softplus:activations:0Lsobolev_model/Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
Esobolev_model/Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOpReadVariableOpNsobolev_model_icnn_closure_layer_0nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
6sobolev_model/Icnn_closure/layer_0nn_component/BiasAddBiasAdd?sobolev_model/Icnn_closure/layer_0nn_component/MatMul:product:0Msobolev_model/Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
.sobolev_model/Icnn_closure/add_component_0/addAddV2Bsobolev_model/Icnn_closure/layer_0dense_component/MatMul:product:0?sobolev_model/Icnn_closure/layer_0nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
4sobolev_model/Icnn_closure/tf.math.softplus/SoftplusSoftplus2sobolev_model/Icnn_closure/add_component_0/add:z:0*
T0*'
_output_shapes
:���������d�
Gsobolev_model/Icnn_closure/layer_1dense_component/MatMul/ReadVariableOpReadVariableOpPsobolev_model_icnn_closure_layer_1dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
8sobolev_model/Icnn_closure/layer_1dense_component/MatMulMatMulinput_1Osobolev_model/Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
Dsobolev_model/Icnn_closure/layer_1nn_component/MatMul/ReadVariableOpReadVariableOpMsobolev_model_icnn_closure_layer_1nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
5sobolev_model/Icnn_closure/layer_1nn_component/MatMulMatMulBsobolev_model/Icnn_closure/tf.math.softplus/Softplus:activations:0Lsobolev_model/Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
Esobolev_model/Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOpReadVariableOpNsobolev_model_icnn_closure_layer_1nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
6sobolev_model/Icnn_closure/layer_1nn_component/BiasAddBiasAdd?sobolev_model/Icnn_closure/layer_1nn_component/MatMul:product:0Msobolev_model/Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
.sobolev_model/Icnn_closure/add_component_1/addAddV2Bsobolev_model/Icnn_closure/layer_1dense_component/MatMul:product:0?sobolev_model/Icnn_closure/layer_1nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
6sobolev_model/Icnn_closure/tf.math.softplus_1/SoftplusSoftplus2sobolev_model/Icnn_closure/add_component_1/add:z:0*
T0*'
_output_shapes
:���������d�
Gsobolev_model/Icnn_closure/layer_2dense_component/MatMul/ReadVariableOpReadVariableOpPsobolev_model_icnn_closure_layer_2dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
8sobolev_model/Icnn_closure/layer_2dense_component/MatMulMatMulinput_1Osobolev_model/Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
Dsobolev_model/Icnn_closure/layer_2nn_component/MatMul/ReadVariableOpReadVariableOpMsobolev_model_icnn_closure_layer_2nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
5sobolev_model/Icnn_closure/layer_2nn_component/MatMulMatMulDsobolev_model/Icnn_closure/tf.math.softplus_1/Softplus:activations:0Lsobolev_model/Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
Esobolev_model/Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOpReadVariableOpNsobolev_model_icnn_closure_layer_2nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
6sobolev_model/Icnn_closure/layer_2nn_component/BiasAddBiasAdd?sobolev_model/Icnn_closure/layer_2nn_component/MatMul:product:0Msobolev_model/Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
.sobolev_model/Icnn_closure/add_component_2/addAddV2Bsobolev_model/Icnn_closure/layer_2dense_component/MatMul:product:0?sobolev_model/Icnn_closure/layer_2nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
6sobolev_model/Icnn_closure/tf.math.softplus_2/SoftplusSoftplus2sobolev_model/Icnn_closure/add_component_2/add:z:0*
T0*'
_output_shapes
:���������d�
Gsobolev_model/Icnn_closure/layer_5dense_component/MatMul/ReadVariableOpReadVariableOpPsobolev_model_icnn_closure_layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
8sobolev_model/Icnn_closure/layer_5dense_component/MatMulMatMulinput_1Osobolev_model/Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Dsobolev_model/Icnn_closure/layer_5nn_component/MatMul/ReadVariableOpReadVariableOpMsobolev_model_icnn_closure_layer_5nn_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
5sobolev_model/Icnn_closure/layer_5nn_component/MatMulMatMulDsobolev_model/Icnn_closure/tf.math.softplus_2/Softplus:activations:0Lsobolev_model/Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Esobolev_model/Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOpReadVariableOpNsobolev_model_icnn_closure_layer_5nn_component_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
6sobolev_model/Icnn_closure/layer_5nn_component/BiasAddBiasAdd?sobolev_model/Icnn_closure/layer_5nn_component/MatMul:product:0Msobolev_model/Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"sobolev_model/Icnn_closure/add/addAddV2Bsobolev_model/Icnn_closure/layer_5dense_component/MatMul:product:0?sobolev_model/Icnn_closure/layer_5nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������s
sobolev_model/ones_like/ShapeShape&sobolev_model/Icnn_closure/add/add:z:0*
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
6gradient_tape/sobolev_model/Icnn_closure/add/add/ShapeShapeBsobolev_model/Icnn_closure/layer_5dense_component/MatMul:product:0*
T0*
_output_shapes
:�
8gradient_tape/sobolev_model/Icnn_closure/add/add/Shape_1Shape?sobolev_model/Icnn_closure/layer_5nn_component/BiasAdd:output:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/Icnn_closure/add/add/BroadcastGradientArgsBroadcastGradientArgs?gradient_tape/sobolev_model/Icnn_closure/add/add/Shape:output:0Agradient_tape/sobolev_model/Icnn_closure/add/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
4gradient_tape/sobolev_model/Icnn_closure/add/add/SumSum sobolev_model/ones_like:output:0Kgradient_tape/sobolev_model/Icnn_closure/add/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
8gradient_tape/sobolev_model/Icnn_closure/add/add/ReshapeReshape=gradient_tape/sobolev_model/Icnn_closure/add/add/Sum:output:0?gradient_tape/sobolev_model/Icnn_closure/add/add/Shape:output:0*
T0*'
_output_shapes
:����������
6gradient_tape/sobolev_model/Icnn_closure/add/add/Sum_1Sum sobolev_model/ones_like:output:0Kgradient_tape/sobolev_model/Icnn_closure/add/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
:gradient_tape/sobolev_model/Icnn_closure/add/add/Reshape_1Reshape?gradient_tape/sobolev_model/Icnn_closure/add/add/Sum_1:output:0Agradient_tape/sobolev_model/Icnn_closure/add/add/Shape_1:output:0*
T0*'
_output_shapes
:����������
Mgradient_tape/sobolev_model/Icnn_closure/layer_5dense_component/MatMul/MatMulMatMulAgradient_tape/sobolev_model/Icnn_closure/add/add/Reshape:output:0Osobolev_model/Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Ogradient_tape/sobolev_model/Icnn_closure/layer_5dense_component/MatMul/MatMul_1MatMulinput_1Agradient_tape/sobolev_model/Icnn_closure/add/add/Reshape:output:0*
T0*
_output_shapes

:*
transpose_a(�
Pgradient_tape/sobolev_model/Icnn_closure/layer_5nn_component/BiasAdd/BiasAddGradBiasAddGradCgradient_tape/sobolev_model/Icnn_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes
:�
Jgradient_tape/sobolev_model/Icnn_closure/layer_5nn_component/MatMul/MatMulMatMulCgradient_tape/sobolev_model/Icnn_closure/add/add/Reshape_1:output:0Lsobolev_model/Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d*
transpose_b(�
Lgradient_tape/sobolev_model/Icnn_closure/layer_5nn_component/MatMul/MatMul_1MatMulDsobolev_model/Icnn_closure/tf.math.softplus_2/Softplus:activations:0Cgradient_tape/sobolev_model/Icnn_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes

:d*
transpose_a(�
Cgradient_tape/sobolev_model/Icnn_closure/tf.math.softplus_2/SigmoidSigmoid2sobolev_model/Icnn_closure/add_component_2/add:z:0*
T0*'
_output_shapes
:���������d�
?gradient_tape/sobolev_model/Icnn_closure/tf.math.softplus_2/mulMulTgradient_tape/sobolev_model/Icnn_closure/layer_5nn_component/MatMul/MatMul:product:0Ggradient_tape/sobolev_model/Icnn_closure/tf.math.softplus_2/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
Bgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/ShapeShapeBsobolev_model/Icnn_closure/layer_2dense_component/MatMul:product:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Shape_1Shape?sobolev_model/Icnn_closure/layer_2nn_component/BiasAdd:output:0*
T0*
_output_shapes
:�
Rgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/BroadcastGradientArgsBroadcastGradientArgsKgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Shape:output:0Mgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
@gradient_tape/sobolev_model/Icnn_closure/add_component_2/add/SumSumCgradient_tape/sobolev_model/Icnn_closure/tf.math.softplus_2/mul:z:0Wgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/ReshapeReshapeIgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Sum:output:0Kgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Shape:output:0*
T0*'
_output_shapes
:���������d�
Bgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Sum_1SumCgradient_tape/sobolev_model/Icnn_closure/tf.math.softplus_2/mul:z:0Wgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape_1ReshapeKgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Sum_1:output:0Mgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Shape_1:output:0*
T0*'
_output_shapes
:���������d�
Mgradient_tape/sobolev_model/Icnn_closure/layer_2dense_component/MatMul/MatMulMatMulMgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape:output:0Osobolev_model/Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Ogradient_tape/sobolev_model/Icnn_closure/layer_2dense_component/MatMul/MatMul_1MatMulinput_1Mgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape:output:0*
T0*
_output_shapes

:d*
transpose_a(�
Pgradient_tape/sobolev_model/Icnn_closure/layer_2nn_component/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape_1:output:0*
T0*
_output_shapes
:d�
Jgradient_tape/sobolev_model/Icnn_closure/layer_2nn_component/MatMul/MatMulMatMulOgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape_1:output:0Lsobolev_model/Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d*
transpose_b(�
Lgradient_tape/sobolev_model/Icnn_closure/layer_2nn_component/MatMul/MatMul_1MatMulDsobolev_model/Icnn_closure/tf.math.softplus_1/Softplus:activations:0Ogradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape_1:output:0*
T0*
_output_shapes

:dd*
transpose_a(�
Cgradient_tape/sobolev_model/Icnn_closure/tf.math.softplus_1/SigmoidSigmoid2sobolev_model/Icnn_closure/add_component_1/add:z:0*
T0*'
_output_shapes
:���������d�
?gradient_tape/sobolev_model/Icnn_closure/tf.math.softplus_1/mulMulTgradient_tape/sobolev_model/Icnn_closure/layer_2nn_component/MatMul/MatMul:product:0Ggradient_tape/sobolev_model/Icnn_closure/tf.math.softplus_1/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
Bgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/ShapeShapeBsobolev_model/Icnn_closure/layer_1dense_component/MatMul:product:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Shape_1Shape?sobolev_model/Icnn_closure/layer_1nn_component/BiasAdd:output:0*
T0*
_output_shapes
:�
Rgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/BroadcastGradientArgsBroadcastGradientArgsKgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Shape:output:0Mgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
@gradient_tape/sobolev_model/Icnn_closure/add_component_1/add/SumSumCgradient_tape/sobolev_model/Icnn_closure/tf.math.softplus_1/mul:z:0Wgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/ReshapeReshapeIgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Sum:output:0Kgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Shape:output:0*
T0*'
_output_shapes
:���������d�
Bgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Sum_1SumCgradient_tape/sobolev_model/Icnn_closure/tf.math.softplus_1/mul:z:0Wgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape_1ReshapeKgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Sum_1:output:0Mgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Shape_1:output:0*
T0*'
_output_shapes
:���������d�
Mgradient_tape/sobolev_model/Icnn_closure/layer_1dense_component/MatMul/MatMulMatMulMgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape:output:0Osobolev_model/Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Ogradient_tape/sobolev_model/Icnn_closure/layer_1dense_component/MatMul/MatMul_1MatMulinput_1Mgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape:output:0*
T0*
_output_shapes

:d*
transpose_a(�
Pgradient_tape/sobolev_model/Icnn_closure/layer_1nn_component/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape_1:output:0*
T0*
_output_shapes
:d�
Jgradient_tape/sobolev_model/Icnn_closure/layer_1nn_component/MatMul/MatMulMatMulOgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape_1:output:0Lsobolev_model/Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d*
transpose_b(�
Lgradient_tape/sobolev_model/Icnn_closure/layer_1nn_component/MatMul/MatMul_1MatMulBsobolev_model/Icnn_closure/tf.math.softplus/Softplus:activations:0Ogradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape_1:output:0*
T0*
_output_shapes

:dd*
transpose_a(�
Agradient_tape/sobolev_model/Icnn_closure/tf.math.softplus/SigmoidSigmoid2sobolev_model/Icnn_closure/add_component_0/add:z:0*
T0*'
_output_shapes
:���������d�
=gradient_tape/sobolev_model/Icnn_closure/tf.math.softplus/mulMulTgradient_tape/sobolev_model/Icnn_closure/layer_1nn_component/MatMul/MatMul:product:0Egradient_tape/sobolev_model/Icnn_closure/tf.math.softplus/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
Bgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/ShapeShapeBsobolev_model/Icnn_closure/layer_0dense_component/MatMul:product:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Shape_1Shape?sobolev_model/Icnn_closure/layer_0nn_component/BiasAdd:output:0*
T0*
_output_shapes
:�
Rgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/BroadcastGradientArgsBroadcastGradientArgsKgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Shape:output:0Mgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
@gradient_tape/sobolev_model/Icnn_closure/add_component_0/add/SumSumAgradient_tape/sobolev_model/Icnn_closure/tf.math.softplus/mul:z:0Wgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/ReshapeReshapeIgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Sum:output:0Kgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Shape:output:0*
T0*'
_output_shapes
:���������d�
Bgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Sum_1SumAgradient_tape/sobolev_model/Icnn_closure/tf.math.softplus/mul:z:0Wgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape_1ReshapeKgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Sum_1:output:0Mgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Shape_1:output:0*
T0*'
_output_shapes
:���������d�
Mgradient_tape/sobolev_model/Icnn_closure/layer_0dense_component/MatMul/MatMulMatMulMgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape:output:0Osobolev_model/Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Ogradient_tape/sobolev_model/Icnn_closure/layer_0dense_component/MatMul/MatMul_1MatMulinput_1Mgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape:output:0*
T0*
_output_shapes

:d*
transpose_a(�
Pgradient_tape/sobolev_model/Icnn_closure/layer_0nn_component/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape_1:output:0*
T0*
_output_shapes
:d�
Jgradient_tape/sobolev_model/Icnn_closure/layer_0nn_component/MatMul/MatMulMatMulOgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape_1:output:0Lsobolev_model/Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d*
transpose_b(�
Lgradient_tape/sobolev_model/Icnn_closure/layer_0nn_component/MatMul/MatMul_1MatMul@sobolev_model/Icnn_closure/layer_-1_input/Softplus:activations:0Ogradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape_1:output:0*
T0*
_output_shapes

:dd*
transpose_a(�
?gradient_tape/sobolev_model/Icnn_closure/layer_-1_input/SigmoidSigmoid:sobolev_model/Icnn_closure/layer_-1_input/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
;gradient_tape/sobolev_model/Icnn_closure/layer_-1_input/mulMulTgradient_tape/sobolev_model/Icnn_closure/layer_0nn_component/MatMul/MatMul:product:0Cgradient_tape/sobolev_model/Icnn_closure/layer_-1_input/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
Kgradient_tape/sobolev_model/Icnn_closure/layer_-1_input/BiasAdd/BiasAddGradBiasAddGrad?gradient_tape/sobolev_model/Icnn_closure/layer_-1_input/mul:z:0*
T0*
_output_shapes
:d�
Egradient_tape/sobolev_model/Icnn_closure/layer_-1_input/MatMul/MatMulMatMul?gradient_tape/sobolev_model/Icnn_closure/layer_-1_input/mul:z:0Gsobolev_model/Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Ggradient_tape/sobolev_model/Icnn_closure/layer_-1_input/MatMul/MatMul_1MatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0?gradient_tape/sobolev_model/Icnn_closure/layer_-1_input/mul:z:0*
T0*
_output_shapes

:d*
transpose_a(�
Jgradient_tape/sobolev_model/Icnn_closure/decorrelation_layer/MatMul/MatMulMatMulOgradient_tape/sobolev_model/Icnn_closure/layer_-1_input/MatMul/MatMul:product:0Lsobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(z
Cgradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/ShapeShapeinput_1*
T0*
_output_shapes
:�
Egradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/Shape_1ShapeFsobolev_model/Icnn_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:�
Sgradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/BroadcastGradientArgsBroadcastGradientArgsLgradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/Shape:output:0Ngradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/Shape_1:output:0*2
_output_shapes 
:���������:����������
Agradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/SumSumTgradient_tape/sobolev_model/Icnn_closure/decorrelation_layer/MatMul/MatMul:product:0Xgradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Egradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/ReshapeReshapeJgradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/Sum:output:0Lgradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/Shape:output:0*
T0*'
_output_shapes
:����������
sobolev_model/AddNAddNWgradient_tape/sobolev_model/Icnn_closure/layer_5dense_component/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/Icnn_closure/layer_2dense_component/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/Icnn_closure/layer_1dense_component/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/Icnn_closure/layer_0dense_component/MatMul/MatMul:product:0Ngradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/Reshape:output:0*
N*
T0*'
_output_shapes
:���������u
sobolev_model/CastCastsobolev_model/AddN:sum:0*

DstT0*

SrcT0*'
_output_shapes
:����������
sobolev_model/checkedCheckNumericssobolev_model/Cast:y:0*
T0*'
_output_shapes
:���������*s
messagehfinput tensor checking error at alpha = Tensor("sobolev_model/Cast:0", shape=(None, 14), dtype=float64)r
)sobolev_model/checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
'sobolev_model/checkedandclipped/MinimumMinimumsobolev_model/checked:output:02sobolev_model/checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������j
!sobolev_model/checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
sobolev_model/checkedandclippedMaximum+sobolev_model/checkedandclipped/Minimum:z:0*sobolev_model/checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������r
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
sobolev_model/strided_sliceStridedSlicesobolev_model_98425653*sobolev_model/strided_slice/stack:output:0,sobolev_model/strided_slice/stack_1:output:0,sobolev_model/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

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
:����������
sobolev_model/Tensordot/ReshapeReshape%sobolev_model/Tensordot/transpose:y:0&sobolev_model/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
sobolev_model/Tensordot/MatMulMatMul(sobolev_model/Tensordot/Reshape:output:0$sobolev_model/strided_slice:output:0*
T0*(
_output_shapes
:����������j
sobolev_model/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�g
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
:����������m
sobolev_model/ExpExp sobolev_model/Tensordot:output:0*
T0*(
_output_shapes
:����������h
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
:�����������
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
:	��
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
:����������
sobolev_model/checked_1CheckNumericssobolev_model/concat:output:0^sobolev_model/checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errort
+sobolev_model/checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
)sobolev_model/checkedandclipped_1/MinimumMinimum sobolev_model/checked_1:output:04sobolev_model/checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������l
#sobolev_model/checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
!sobolev_model/checkedandclipped_1Maximum-sobolev_model/checkedandclipped_1/Minimum:z:0,sobolev_model/checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������h
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
:����������
!sobolev_model/Tensordot_2/ReshapeReshape'sobolev_model/Tensordot_2/transpose:y:0(sobolev_model/Tensordot_2/stack:output:0*
T0*0
_output_shapes
:�������������������
 sobolev_model/Tensordot_2/MatMulMatMul*sobolev_model/Tensordot_2/Reshape:output:0sobolev_model_98425653*
T0*(
_output_shapes
:����������l
!sobolev_model/Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�i
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
:����������q
sobolev_model/Exp_1Exp"sobolev_model/Tensordot_2:output:0*
T0*(
_output_shapes
:�����������
sobolev_model/MulMulsobolev_model/Exp_1:y:0sobolev_model_tensordot_1_b*
T0*(
_output_shapes
:����������t
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
sobolev_model/strided_slice_1StridedSlicesobolev_model_98425653,sobolev_model/strided_slice_1/stack:output:0.sobolev_model/strided_slice_1/stack_1:output:0.sobolev_model/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

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
:�����������
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
:	��
 sobolev_model/Tensordot_3/MatMulMatMul*sobolev_model/Tensordot_3/Reshape:output:0)sobolev_model/Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������k
!sobolev_model/Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:i
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
:����������
sobolev_model/Mul_1Mulsobolev_model_mul_1_xsobolev_model/concat:output:0*
T0*'
_output_shapes
:����������
sobolev_model/addAddV2"sobolev_model/Tensordot_3:output:0sobolev_model/Mul_1:z:0*
T0*'
_output_shapes
:���������t
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
:���������*

begin_mask*
end_masku
IdentityIdentity&sobolev_model/Icnn_closure/add/add:z:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1Identitysobolev_model/AddN:sum:0^NoOp*
T0*'
_output_shapes
:���������w

Identity_2Identity&sobolev_model/strided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOpE^sobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOpA^sobolev_model/Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp@^sobolev_model/Icnn_closure/layer_-1_input/MatMul/ReadVariableOpH^sobolev_model/Icnn_closure/layer_0dense_component/MatMul/ReadVariableOpF^sobolev_model/Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOpE^sobolev_model/Icnn_closure/layer_0nn_component/MatMul/ReadVariableOpH^sobolev_model/Icnn_closure/layer_1dense_component/MatMul/ReadVariableOpF^sobolev_model/Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOpE^sobolev_model/Icnn_closure/layer_1nn_component/MatMul/ReadVariableOpH^sobolev_model/Icnn_closure/layer_2dense_component/MatMul/ReadVariableOpF^sobolev_model/Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOpE^sobolev_model/Icnn_closure/layer_2nn_component/MatMul/ReadVariableOpH^sobolev_model/Icnn_closure/layer_5dense_component/MatMul/ReadVariableOpF^sobolev_model/Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOpE^sobolev_model/Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp?^sobolev_model/Icnn_closure/mean_shift_layer/sub/ReadVariableOp^sobolev_model/checked^sobolev_model/checked_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2�
Dsobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOpDsobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp2�
@sobolev_model/Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp@sobolev_model/Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp2�
?sobolev_model/Icnn_closure/layer_-1_input/MatMul/ReadVariableOp?sobolev_model/Icnn_closure/layer_-1_input/MatMul/ReadVariableOp2�
Gsobolev_model/Icnn_closure/layer_0dense_component/MatMul/ReadVariableOpGsobolev_model/Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp2�
Esobolev_model/Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOpEsobolev_model/Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp2�
Dsobolev_model/Icnn_closure/layer_0nn_component/MatMul/ReadVariableOpDsobolev_model/Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp2�
Gsobolev_model/Icnn_closure/layer_1dense_component/MatMul/ReadVariableOpGsobolev_model/Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp2�
Esobolev_model/Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOpEsobolev_model/Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp2�
Dsobolev_model/Icnn_closure/layer_1nn_component/MatMul/ReadVariableOpDsobolev_model/Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp2�
Gsobolev_model/Icnn_closure/layer_2dense_component/MatMul/ReadVariableOpGsobolev_model/Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp2�
Esobolev_model/Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOpEsobolev_model/Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp2�
Dsobolev_model/Icnn_closure/layer_2nn_component/MatMul/ReadVariableOpDsobolev_model/Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp2�
Gsobolev_model/Icnn_closure/layer_5dense_component/MatMul/ReadVariableOpGsobolev_model/Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp2�
Esobolev_model/Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOpEsobolev_model/Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp2�
Dsobolev_model/Icnn_closure/layer_5nn_component/MatMul/ReadVariableOpDsobolev_model/Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp2�
>sobolev_model/Icnn_closure/mean_shift_layer/sub/ReadVariableOp>sobolev_model/Icnn_closure/mean_shift_layer/sub/ReadVariableOp2.
sobolev_model/checkedsobolev_model/checked22
sobolev_model/checked_1sobolev_model/checked_1:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�}
�
!__inference__traced_save_98429273
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop)
%savev2_variable_1_read_readvariableop4
0savev2_layer__1_input_kernel_read_readvariableop2
.savev2_layer__1_input_bias_read_readvariableop<
8savev2_layer_0dense_component_kernel_read_readvariableop9
5savev2_layer_0nn_component_kernel_read_readvariableop7
3savev2_layer_0nn_component_bias_read_readvariableop<
8savev2_layer_1dense_component_kernel_read_readvariableop9
5savev2_layer_1nn_component_kernel_read_readvariableop7
3savev2_layer_1nn_component_bias_read_readvariableop<
8savev2_layer_2dense_component_kernel_read_readvariableop9
5savev2_layer_2nn_component_kernel_read_readvariableop7
3savev2_layer_2nn_component_bias_read_readvariableop<
8savev2_layer_5dense_component_kernel_read_readvariableop9
5savev2_layer_5nn_component_kernel_read_readvariableop7
3savev2_layer_5nn_component_bias_read_readvariableop$
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
"savev2_count_9_read_readvariableop6
2savev2_layer__1_input_kernel_m_read_readvariableop4
0savev2_layer__1_input_bias_m_read_readvariableop>
:savev2_layer_0dense_component_kernel_m_read_readvariableop;
7savev2_layer_0nn_component_kernel_m_read_readvariableop9
5savev2_layer_0nn_component_bias_m_read_readvariableop>
:savev2_layer_1dense_component_kernel_m_read_readvariableop;
7savev2_layer_1nn_component_kernel_m_read_readvariableop9
5savev2_layer_1nn_component_bias_m_read_readvariableop>
:savev2_layer_2dense_component_kernel_m_read_readvariableop;
7savev2_layer_2nn_component_kernel_m_read_readvariableop9
5savev2_layer_2nn_component_bias_m_read_readvariableop>
:savev2_layer_5dense_component_kernel_m_read_readvariableop;
7savev2_layer_5nn_component_kernel_m_read_readvariableop9
5savev2_layer_5nn_component_bias_m_read_readvariableop6
2savev2_layer__1_input_kernel_v_read_readvariableop4
0savev2_layer__1_input_bias_v_read_readvariableop>
:savev2_layer_0dense_component_kernel_v_read_readvariableop;
7savev2_layer_0nn_component_kernel_v_read_readvariableop9
5savev2_layer_0nn_component_bias_v_read_readvariableop>
:savev2_layer_1dense_component_kernel_v_read_readvariableop;
7savev2_layer_1nn_component_kernel_v_read_readvariableop9
5savev2_layer_1nn_component_bias_v_read_readvariableop>
:savev2_layer_2dense_component_kernel_v_read_readvariableop;
7savev2_layer_2nn_component_kernel_v_read_readvariableop9
5savev2_layer_2nn_component_bias_v_read_readvariableop>
:savev2_layer_5dense_component_kernel_v_read_readvariableop;
7savev2_layer_5nn_component_kernel_v_read_readvariableop9
5savev2_layer_5nn_component_bias_v_read_readvariableop
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*�
value�B�FB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*�
value�B�FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop0savev2_layer__1_input_kernel_read_readvariableop.savev2_layer__1_input_bias_read_readvariableop8savev2_layer_0dense_component_kernel_read_readvariableop5savev2_layer_0nn_component_kernel_read_readvariableop3savev2_layer_0nn_component_bias_read_readvariableop8savev2_layer_1dense_component_kernel_read_readvariableop5savev2_layer_1nn_component_kernel_read_readvariableop3savev2_layer_1nn_component_bias_read_readvariableop8savev2_layer_2dense_component_kernel_read_readvariableop5savev2_layer_2nn_component_kernel_read_readvariableop3savev2_layer_2nn_component_bias_read_readvariableop8savev2_layer_5dense_component_kernel_read_readvariableop5savev2_layer_5nn_component_kernel_read_readvariableop3savev2_layer_5nn_component_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop"savev2_total_7_read_readvariableop"savev2_count_7_read_readvariableop"savev2_total_8_read_readvariableop"savev2_count_8_read_readvariableop"savev2_total_9_read_readvariableop"savev2_count_9_read_readvariableop2savev2_layer__1_input_kernel_m_read_readvariableop0savev2_layer__1_input_bias_m_read_readvariableop:savev2_layer_0dense_component_kernel_m_read_readvariableop7savev2_layer_0nn_component_kernel_m_read_readvariableop5savev2_layer_0nn_component_bias_m_read_readvariableop:savev2_layer_1dense_component_kernel_m_read_readvariableop7savev2_layer_1nn_component_kernel_m_read_readvariableop5savev2_layer_1nn_component_bias_m_read_readvariableop:savev2_layer_2dense_component_kernel_m_read_readvariableop7savev2_layer_2nn_component_kernel_m_read_readvariableop5savev2_layer_2nn_component_bias_m_read_readvariableop:savev2_layer_5dense_component_kernel_m_read_readvariableop7savev2_layer_5nn_component_kernel_m_read_readvariableop5savev2_layer_5nn_component_bias_m_read_readvariableop2savev2_layer__1_input_kernel_v_read_readvariableop0savev2_layer__1_input_bias_v_read_readvariableop:savev2_layer_0dense_component_kernel_v_read_readvariableop7savev2_layer_0nn_component_kernel_v_read_readvariableop5savev2_layer_0nn_component_bias_v_read_readvariableop:savev2_layer_1dense_component_kernel_v_read_readvariableop7savev2_layer_1nn_component_kernel_v_read_readvariableop5savev2_layer_1nn_component_bias_v_read_readvariableop:savev2_layer_2dense_component_kernel_v_read_readvariableop7savev2_layer_2nn_component_kernel_v_read_readvariableop5savev2_layer_2nn_component_bias_v_read_readvariableop:savev2_layer_5dense_component_kernel_v_read_readvariableop7savev2_layer_5nn_component_kernel_v_read_readvariableop5savev2_layer_5nn_component_bias_v_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *T
dtypesJ
H2F	�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : : : :::d:d:d:dd:d:d:dd:d:d:dd:d::d:: : : : : : : : : : : : : : : : : : : : :d:d:d:dd:d:d:dd:d:d:dd:d::d::d:d:d:dd:d:d:dd:d:d:dd:d::d:: 2(
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
::$ 

_output_shapes

::$ 

_output_shapes

:d: 	

_output_shapes
:d:$
 

_output_shapes

:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

::$ 

_output_shapes

:d: 
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
: :$* 

_output_shapes

:d: +

_output_shapes
:d:$, 

_output_shapes

:d:$- 

_output_shapes

:dd: .

_output_shapes
:d:$/ 

_output_shapes

:d:$0 

_output_shapes

:dd: 1

_output_shapes
:d:$2 

_output_shapes

:d:$3 

_output_shapes

:dd: 4

_output_shapes
:d:$5 

_output_shapes

::$6 

_output_shapes

:d: 7

_output_shapes
::$8 

_output_shapes

:d: 9

_output_shapes
:d:$: 

_output_shapes

:d:$; 

_output_shapes

:dd: <

_output_shapes
:d:$= 

_output_shapes

:d:$> 

_output_shapes

:dd: ?

_output_shapes
:d:$@ 

_output_shapes

:d:$A 

_output_shapes

:dd: B

_output_shapes
:d:$C 

_output_shapes

::$D 

_output_shapes

:d: E

_output_shapes
::F

_output_shapes
: 
�
�
J__forward_layer_-1_input_layer_call_and_return_conditional_losses_98426722
inputs_00
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity
biasadd
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dX
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:���������de
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
biasaddBiasAdd:output:0"
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : *|
backward_function_nameb`__inference___backward_layer_-1_input_layer_call_and_return_conditional_losses_98426707_9842672320
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
R__forward_layer_1dense_component_layer_call_and_return_conditional_losses_98426612
inputs_00
matmul_readvariableop_resource:d
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������d^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: *�
backward_function_namejh__inference___backward_layer_1dense_component_layer_call_and_return_conditional_losses_98426602_984266132.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_layer_2nn_component_layer_call_fn_98428971

inputs
unknown:dd
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_98425914o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
9__inference_layer_2dense_component_layer_call_fn_98428955

inputs
unknown:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_98425900o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98428355
xG
9icnn_closure_mean_shift_layer_sub_readvariableop_resource:Q
?icnn_closure_decorrelation_layer_matmul_readvariableop_resource:L
:icnn_closure_layer__1_input_matmul_readvariableop_resource:dI
;icnn_closure_layer__1_input_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_0dense_component_matmul_readvariableop_resource:dQ
?icnn_closure_layer_0nn_component_matmul_readvariableop_resource:ddN
@icnn_closure_layer_0nn_component_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_1dense_component_matmul_readvariableop_resource:dQ
?icnn_closure_layer_1nn_component_matmul_readvariableop_resource:ddN
@icnn_closure_layer_1nn_component_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_2dense_component_matmul_readvariableop_resource:dQ
?icnn_closure_layer_2nn_component_matmul_readvariableop_resource:ddN
@icnn_closure_layer_2nn_component_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_5dense_component_matmul_readvariableop_resource:Q
?icnn_closure_layer_5nn_component_matmul_readvariableop_resource:dN
@icnn_closure_layer_5nn_component_biasadd_readvariableop_resource:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��6Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp�2Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp�1Icnn_closure/layer_-1_input/MatMul/ReadVariableOp�9Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp�9Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp�9Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp�9Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp�0Icnn_closure/mean_shift_layer/sub/ReadVariableOp�checked�	checked_1�
0Icnn_closure/mean_shift_layer/sub/ReadVariableOpReadVariableOp9icnn_closure_mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:*
dtype0�
!Icnn_closure/mean_shift_layer/subSubx8Icnn_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6Icnn_closure/decorrelation_layer/MatMul/ReadVariableOpReadVariableOp?icnn_closure_decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
'Icnn_closure/decorrelation_layer/MatMulMatMul%Icnn_closure/mean_shift_layer/sub:z:0>Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1Icnn_closure/layer_-1_input/MatMul/ReadVariableOpReadVariableOp:icnn_closure_layer__1_input_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
"Icnn_closure/layer_-1_input/MatMulMatMul1Icnn_closure/decorrelation_layer/MatMul:product:09Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
2Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOpReadVariableOp;icnn_closure_layer__1_input_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
#Icnn_closure/layer_-1_input/BiasAddBiasAdd,Icnn_closure/layer_-1_input/MatMul:product:0:Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
$Icnn_closure/layer_-1_input/SoftplusSoftplus,Icnn_closure/layer_-1_input/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
9Icnn_closure/layer_0dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_0dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
*Icnn_closure/layer_0dense_component/MatMulMatMulxAIcnn_closure/layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
6Icnn_closure/layer_0nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_0nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
'Icnn_closure/layer_0nn_component/MatMulMatMul2Icnn_closure/layer_-1_input/Softplus:activations:0>Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
7Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_0nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
(Icnn_closure/layer_0nn_component/BiasAddBiasAdd1Icnn_closure/layer_0nn_component/MatMul:product:0?Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
 Icnn_closure/add_component_0/addAddV24Icnn_closure/layer_0dense_component/MatMul:product:01Icnn_closure/layer_0nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
&Icnn_closure/tf.math.softplus/SoftplusSoftplus$Icnn_closure/add_component_0/add:z:0*
T0*'
_output_shapes
:���������d�
9Icnn_closure/layer_1dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_1dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
*Icnn_closure/layer_1dense_component/MatMulMatMulxAIcnn_closure/layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
6Icnn_closure/layer_1nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_1nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
'Icnn_closure/layer_1nn_component/MatMulMatMul4Icnn_closure/tf.math.softplus/Softplus:activations:0>Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
7Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_1nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
(Icnn_closure/layer_1nn_component/BiasAddBiasAdd1Icnn_closure/layer_1nn_component/MatMul:product:0?Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
 Icnn_closure/add_component_1/addAddV24Icnn_closure/layer_1dense_component/MatMul:product:01Icnn_closure/layer_1nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
(Icnn_closure/tf.math.softplus_1/SoftplusSoftplus$Icnn_closure/add_component_1/add:z:0*
T0*'
_output_shapes
:���������d�
9Icnn_closure/layer_2dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_2dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
*Icnn_closure/layer_2dense_component/MatMulMatMulxAIcnn_closure/layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
6Icnn_closure/layer_2nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_2nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
'Icnn_closure/layer_2nn_component/MatMulMatMul6Icnn_closure/tf.math.softplus_1/Softplus:activations:0>Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
7Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_2nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
(Icnn_closure/layer_2nn_component/BiasAddBiasAdd1Icnn_closure/layer_2nn_component/MatMul:product:0?Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
 Icnn_closure/add_component_2/addAddV24Icnn_closure/layer_2dense_component/MatMul:product:01Icnn_closure/layer_2nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
(Icnn_closure/tf.math.softplus_2/SoftplusSoftplus$Icnn_closure/add_component_2/add:z:0*
T0*'
_output_shapes
:���������d�
9Icnn_closure/layer_5dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
*Icnn_closure/layer_5dense_component/MatMulMatMulxAIcnn_closure/layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6Icnn_closure/layer_5nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_5nn_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
'Icnn_closure/layer_5nn_component/MatMulMatMul6Icnn_closure/tf.math.softplus_2/Softplus:activations:0>Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
7Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_5nn_component_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
(Icnn_closure/layer_5nn_component/BiasAddBiasAdd1Icnn_closure/layer_5nn_component/MatMul:product:0?Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Icnn_closure/add/addAddV24Icnn_closure/layer_5dense_component/MatMul:product:01Icnn_closure/layer_5nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������W
ones_like/ShapeShapeIcnn_closure/add/add:z:0*
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
(gradient_tape/Icnn_closure/add/add/ShapeShape4Icnn_closure/layer_5dense_component/MatMul:product:0*
T0*
_output_shapes
:�
*gradient_tape/Icnn_closure/add/add/Shape_1Shape1Icnn_closure/layer_5nn_component/BiasAdd:output:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add/add/BroadcastGradientArgsBroadcastGradientArgs1gradient_tape/Icnn_closure/add/add/Shape:output:03gradient_tape/Icnn_closure/add/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
&gradient_tape/Icnn_closure/add/add/SumSumones_like:output:0=gradient_tape/Icnn_closure/add/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
*gradient_tape/Icnn_closure/add/add/ReshapeReshape/gradient_tape/Icnn_closure/add/add/Sum:output:01gradient_tape/Icnn_closure/add/add/Shape:output:0*
T0*'
_output_shapes
:����������
(gradient_tape/Icnn_closure/add/add/Sum_1Sumones_like:output:0=gradient_tape/Icnn_closure/add/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
,gradient_tape/Icnn_closure/add/add/Reshape_1Reshape1gradient_tape/Icnn_closure/add/add/Sum_1:output:03gradient_tape/Icnn_closure/add/add/Shape_1:output:0*
T0*'
_output_shapes
:����������
?gradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMulMatMul3gradient_tape/Icnn_closure/add/add/Reshape:output:0AIcnn_closure/layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Agradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMul_1MatMulx3gradient_tape/Icnn_closure/add/add/Reshape:output:0*
T0*
_output_shapes

:*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_5nn_component/BiasAdd/BiasAddGradBiasAddGrad5gradient_tape/Icnn_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes
:�
<gradient_tape/Icnn_closure/layer_5nn_component/MatMul/MatMulMatMul5gradient_tape/Icnn_closure/add/add/Reshape_1:output:0>Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d*
transpose_b(�
>gradient_tape/Icnn_closure/layer_5nn_component/MatMul/MatMul_1MatMul6Icnn_closure/tf.math.softplus_2/Softplus:activations:05gradient_tape/Icnn_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes

:d*
transpose_a(�
5gradient_tape/Icnn_closure/tf.math.softplus_2/SigmoidSigmoid$Icnn_closure/add_component_2/add:z:0*
T0*'
_output_shapes
:���������d�
1gradient_tape/Icnn_closure/tf.math.softplus_2/mulMulFgradient_tape/Icnn_closure/layer_5nn_component/MatMul/MatMul:product:09gradient_tape/Icnn_closure/tf.math.softplus_2/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
4gradient_tape/Icnn_closure/add_component_2/add/ShapeShape4Icnn_closure/layer_2dense_component/MatMul:product:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_2/add/Shape_1Shape1Icnn_closure/layer_2nn_component/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/Icnn_closure/add_component_2/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/Icnn_closure/add_component_2/add/Shape:output:0?gradient_tape/Icnn_closure/add_component_2/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/Icnn_closure/add_component_2/add/SumSum5gradient_tape/Icnn_closure/tf.math.softplus_2/mul:z:0Igradient_tape/Icnn_closure/add_component_2/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_2/add/ReshapeReshape;gradient_tape/Icnn_closure/add_component_2/add/Sum:output:0=gradient_tape/Icnn_closure/add_component_2/add/Shape:output:0*
T0*'
_output_shapes
:���������d�
4gradient_tape/Icnn_closure/add_component_2/add/Sum_1Sum5gradient_tape/Icnn_closure/tf.math.softplus_2/mul:z:0Igradient_tape/Icnn_closure/add_component_2/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add_component_2/add/Reshape_1Reshape=gradient_tape/Icnn_closure/add_component_2/add/Sum_1:output:0?gradient_tape/Icnn_closure/add_component_2/add/Shape_1:output:0*
T0*'
_output_shapes
:���������d�
?gradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMulMatMul?gradient_tape/Icnn_closure/add_component_2/add/Reshape:output:0AIcnn_closure/layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Agradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMul_1MatMulx?gradient_tape/Icnn_closure/add_component_2/add/Reshape:output:0*
T0*
_output_shapes

:d*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_2nn_component/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/Icnn_closure/add_component_2/add/Reshape_1:output:0*
T0*
_output_shapes
:d�
<gradient_tape/Icnn_closure/layer_2nn_component/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/add_component_2/add/Reshape_1:output:0>Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d*
transpose_b(�
>gradient_tape/Icnn_closure/layer_2nn_component/MatMul/MatMul_1MatMul6Icnn_closure/tf.math.softplus_1/Softplus:activations:0Agradient_tape/Icnn_closure/add_component_2/add/Reshape_1:output:0*
T0*
_output_shapes

:dd*
transpose_a(�
5gradient_tape/Icnn_closure/tf.math.softplus_1/SigmoidSigmoid$Icnn_closure/add_component_1/add:z:0*
T0*'
_output_shapes
:���������d�
1gradient_tape/Icnn_closure/tf.math.softplus_1/mulMulFgradient_tape/Icnn_closure/layer_2nn_component/MatMul/MatMul:product:09gradient_tape/Icnn_closure/tf.math.softplus_1/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
4gradient_tape/Icnn_closure/add_component_1/add/ShapeShape4Icnn_closure/layer_1dense_component/MatMul:product:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_1/add/Shape_1Shape1Icnn_closure/layer_1nn_component/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/Icnn_closure/add_component_1/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/Icnn_closure/add_component_1/add/Shape:output:0?gradient_tape/Icnn_closure/add_component_1/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/Icnn_closure/add_component_1/add/SumSum5gradient_tape/Icnn_closure/tf.math.softplus_1/mul:z:0Igradient_tape/Icnn_closure/add_component_1/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_1/add/ReshapeReshape;gradient_tape/Icnn_closure/add_component_1/add/Sum:output:0=gradient_tape/Icnn_closure/add_component_1/add/Shape:output:0*
T0*'
_output_shapes
:���������d�
4gradient_tape/Icnn_closure/add_component_1/add/Sum_1Sum5gradient_tape/Icnn_closure/tf.math.softplus_1/mul:z:0Igradient_tape/Icnn_closure/add_component_1/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add_component_1/add/Reshape_1Reshape=gradient_tape/Icnn_closure/add_component_1/add/Sum_1:output:0?gradient_tape/Icnn_closure/add_component_1/add/Shape_1:output:0*
T0*'
_output_shapes
:���������d�
?gradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMulMatMul?gradient_tape/Icnn_closure/add_component_1/add/Reshape:output:0AIcnn_closure/layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Agradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMul_1MatMulx?gradient_tape/Icnn_closure/add_component_1/add/Reshape:output:0*
T0*
_output_shapes

:d*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_1nn_component/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/Icnn_closure/add_component_1/add/Reshape_1:output:0*
T0*
_output_shapes
:d�
<gradient_tape/Icnn_closure/layer_1nn_component/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/add_component_1/add/Reshape_1:output:0>Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d*
transpose_b(�
>gradient_tape/Icnn_closure/layer_1nn_component/MatMul/MatMul_1MatMul4Icnn_closure/tf.math.softplus/Softplus:activations:0Agradient_tape/Icnn_closure/add_component_1/add/Reshape_1:output:0*
T0*
_output_shapes

:dd*
transpose_a(�
3gradient_tape/Icnn_closure/tf.math.softplus/SigmoidSigmoid$Icnn_closure/add_component_0/add:z:0*
T0*'
_output_shapes
:���������d�
/gradient_tape/Icnn_closure/tf.math.softplus/mulMulFgradient_tape/Icnn_closure/layer_1nn_component/MatMul/MatMul:product:07gradient_tape/Icnn_closure/tf.math.softplus/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
4gradient_tape/Icnn_closure/add_component_0/add/ShapeShape4Icnn_closure/layer_0dense_component/MatMul:product:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_0/add/Shape_1Shape1Icnn_closure/layer_0nn_component/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/Icnn_closure/add_component_0/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/Icnn_closure/add_component_0/add/Shape:output:0?gradient_tape/Icnn_closure/add_component_0/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/Icnn_closure/add_component_0/add/SumSum3gradient_tape/Icnn_closure/tf.math.softplus/mul:z:0Igradient_tape/Icnn_closure/add_component_0/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_0/add/ReshapeReshape;gradient_tape/Icnn_closure/add_component_0/add/Sum:output:0=gradient_tape/Icnn_closure/add_component_0/add/Shape:output:0*
T0*'
_output_shapes
:���������d�
4gradient_tape/Icnn_closure/add_component_0/add/Sum_1Sum3gradient_tape/Icnn_closure/tf.math.softplus/mul:z:0Igradient_tape/Icnn_closure/add_component_0/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add_component_0/add/Reshape_1Reshape=gradient_tape/Icnn_closure/add_component_0/add/Sum_1:output:0?gradient_tape/Icnn_closure/add_component_0/add/Shape_1:output:0*
T0*'
_output_shapes
:���������d�
?gradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMulMatMul?gradient_tape/Icnn_closure/add_component_0/add/Reshape:output:0AIcnn_closure/layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Agradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMul_1MatMulx?gradient_tape/Icnn_closure/add_component_0/add/Reshape:output:0*
T0*
_output_shapes

:d*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_0nn_component/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/Icnn_closure/add_component_0/add/Reshape_1:output:0*
T0*
_output_shapes
:d�
<gradient_tape/Icnn_closure/layer_0nn_component/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/add_component_0/add/Reshape_1:output:0>Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d*
transpose_b(�
>gradient_tape/Icnn_closure/layer_0nn_component/MatMul/MatMul_1MatMul2Icnn_closure/layer_-1_input/Softplus:activations:0Agradient_tape/Icnn_closure/add_component_0/add/Reshape_1:output:0*
T0*
_output_shapes

:dd*
transpose_a(�
1gradient_tape/Icnn_closure/layer_-1_input/SigmoidSigmoid,Icnn_closure/layer_-1_input/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
-gradient_tape/Icnn_closure/layer_-1_input/mulMulFgradient_tape/Icnn_closure/layer_0nn_component/MatMul/MatMul:product:05gradient_tape/Icnn_closure/layer_-1_input/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
=gradient_tape/Icnn_closure/layer_-1_input/BiasAdd/BiasAddGradBiasAddGrad1gradient_tape/Icnn_closure/layer_-1_input/mul:z:0*
T0*
_output_shapes
:d�
7gradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMulMatMul1gradient_tape/Icnn_closure/layer_-1_input/mul:z:09Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
9gradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:01gradient_tape/Icnn_closure/layer_-1_input/mul:z:0*
T0*
_output_shapes

:d*
transpose_a(�
<gradient_tape/Icnn_closure/decorrelation_layer/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMul:product:0>Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(f
5gradient_tape/Icnn_closure/mean_shift_layer/sub/ShapeShapex*
T0*
_output_shapes
:�
7gradient_tape/Icnn_closure/mean_shift_layer/sub/Shape_1Shape8Icnn_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:�
Egradient_tape/Icnn_closure/mean_shift_layer/sub/BroadcastGradientArgsBroadcastGradientArgs>gradient_tape/Icnn_closure/mean_shift_layer/sub/Shape:output:0@gradient_tape/Icnn_closure/mean_shift_layer/sub/Shape_1:output:0*2
_output_shapes 
:���������:����������
3gradient_tape/Icnn_closure/mean_shift_layer/sub/SumSumFgradient_tape/Icnn_closure/decorrelation_layer/MatMul/MatMul:product:0Jgradient_tape/Icnn_closure/mean_shift_layer/sub/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
7gradient_tape/Icnn_closure/mean_shift_layer/sub/ReshapeReshape<gradient_tape/Icnn_closure/mean_shift_layer/sub/Sum:output:0>gradient_tape/Icnn_closure/mean_shift_layer/sub/Shape:output:0*
T0*'
_output_shapes
:����������
AddNAddNIgradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMul:product:0@gradient_tape/Icnn_closure/mean_shift_layer/sub/Reshape:output:0*
N*
T0*'
_output_shapes
:���������Y
CastCast
AddN:sum:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*e
messageZXinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 14), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
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
:	�*

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
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
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
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
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
:�����������
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
:	��
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
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
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
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
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
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
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
:	�*

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
:�����������
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
:	��
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
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
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
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
:���������*

begin_mask*
end_maskg
IdentityIdentityIcnn_closure/add/add:z:0^NoOp*
T0*'
_output_shapes
:���������[

Identity_1Identity
AddN:sum:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp3^Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp2^Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:^Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:^Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:^Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:^Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp1^Icnn_closure/mean_shift_layer/sub/ReadVariableOp^checked
^checked_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2p
6Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp6Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp2h
2Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp2Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp2f
1Icnn_closure/layer_-1_input/MatMul/ReadVariableOp1Icnn_closure/layer_-1_input/MatMul/ReadVariableOp2v
9Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp9Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp2r
7Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp7Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp2p
6Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp6Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp2v
9Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp9Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp2r
7Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp7Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp2p
6Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp6Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp2v
9Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp9Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp2r
7Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp7Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp2p
6Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp6Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp2v
9Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp9Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp2r
7Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp7Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp2p
6Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp6Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp2d
0Icnn_closure/mean_shift_layer/sub/ReadVariableOp0Icnn_closure/mean_shift_layer/sub/ReadVariableOp2
checkedchecked2
	checked_1	checked_1:J F
'
_output_shapes
:���������

_user_specified_namex:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
R__forward_layer_5dense_component_layer_call_and_return_conditional_losses_98426480
inputs_00
matmul_readvariableop_resource:
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: *�
backward_function_namejh__inference___backward_layer_5dense_component_layer_call_and_return_conditional_losses_98426470_984264812.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_98425864

inputs0
matmul_readvariableop_resource:d
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������d^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
y
M__inference_add_component_0_layer_call_and_return_conditional_losses_98428903
inputs_0
inputs_1
identityR
addAddV2inputs_0inputs_1*
T0*'
_output_shapes
:���������dO
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
inputs/1
�
R
&__inference_add_layer_call_fn_98429032
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_add_layer_call_and_return_conditional_losses_98425962`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:Q M
'
_output_shapes
:���������
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
y
M__inference_add_component_1_layer_call_and_return_conditional_losses_98428948
inputs_0
inputs_1
identityR
addAddV2inputs_0inputs_1*
T0*'
_output_shapes
:���������dO
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
inputs/1
�
�
6__inference_layer_0nn_component_layer_call_fn_98428881

inputs
unknown:dd
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_98425842o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
/__inference_Icnn_closure_layer_call_fn_98426291
input_1
unknown:
	unknown_0:
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:dd

unknown_11:d

unknown_12:

unknown_13:d

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
GPU2*0J 8� *S
fNRL
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98426219o
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
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
?__forward_add_layer_call_and_return_conditional_losses_98426462
inputs_0

inputs_1_0
identity

inputs
inputs_1T
addAddV2inputs_0
inputs_1_0*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0"
inputsinputs_0"
inputs_1
inputs_1_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������*q
backward_function_nameWU__inference___backward_add_layer_call_and_return_conditional_losses_98426446_98426463:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_98425936

inputs0
matmul_readvariableop_resource:
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
a__inference___backward_add_component_2_layer_call_and_return_conditional_losses_98426512_98426529
placeholder#
gradients_add_grad_shape_inputs'
#gradients_add_grad_shape_1_inputs_1
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������dg
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
T0*'
_output_shapes
:���������d�
gradients/add_grad/Sum_1Sumgradients/grad_ys_0:output:0-gradients/add_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/add_grad/Reshape_1Reshape!gradients/add_grad/Sum_1:output:0#gradients/add_grad/Shape_1:output:0*
T0*'
_output_shapes
:���������dk
IdentityIdentity#gradients/add_grad/Reshape:output:0*
T0*'
_output_shapes
:���������do

Identity_1Identity%gradients/add_grad/Reshape_1:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:���������d:���������d:���������d*f
forward_function_nameMK__forward_add_component_2_layer_call_and_return_conditional_losses_98426528:- )
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d
�
^
2__inference_add_component_2_layer_call_fn_98428987
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_add_component_2_layer_call_and_return_conditional_losses_98425926`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
inputs/1
�
�
`__inference___backward_layer_-1_input_layer_call_and_return_conditional_losses_98426707_98426723
placeholder+
'gradients_softplus_grad_sigmoid_biasadd6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������d�
gradients/Softplus_grad/SigmoidSigmoid'gradients_softplus_grad_sigmoid_biasadd*
T0*'
_output_shapes
:���������d�
gradients/Softplus_grad/mulMulgradients/grad_ys_0:output:0#gradients/Softplus_grad/Sigmoid:y:0*
T0*'
_output_shapes
:���������dw
"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/Softplus_grad/mul:z:0*
T0*
_output_shapes
:d�
gradients/MatMul_grad/MatMulMatMulgradients/Softplus_grad/mul:z:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/Softplus_grad/mul:z:0*
T0*
_output_shapes

:d*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:dh

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:d"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������d:���������d:d:���������*e
forward_function_nameLJ__forward_layer_-1_input_layer_call_and_return_conditional_losses_98426722:- )
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������
�
k
A__inference_add_layer_call_and_return_conditional_losses_98425962

inputs
inputs_1
identityP
addAddV2inputsinputs_1*
T0*'
_output_shapes
:���������O
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
R__forward_layer_0dense_component_layer_call_and_return_conditional_losses_98426678
inputs_00
matmul_readvariableop_resource:d
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������d^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: *�
backward_function_namejh__inference___backward_layer_0dense_component_layer_call_and_return_conditional_losses_98426668_984266792.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
0__inference_sobolev_model_layer_call_fn_98428047
x
unknown:
	unknown_0:
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:dd

unknown_11:d

unknown_12:

unknown_13:d

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
9:���������:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98426975o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:���������

_user_specified_namex:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�
�
1__inference_layer_-1_input_layer_call_fn_98428847

inputs
unknown:d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_98425815o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_layer_5nn_component_layer_call_fn_98429016

inputs
unknown:d
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
GPU2*0J 8� *Z
fURS
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_98425950o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
9__inference_layer_5dense_component_layer_call_fn_98429000

inputs
unknown:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_98425936o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
y
M__inference_add_component_2_layer_call_and_return_conditional_losses_98428993
inputs_0
inputs_1
identityR
addAddV2inputs_0inputs_1*
T0*'
_output_shapes
:���������dO
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:���������d:���������d:Q M
'
_output_shapes
:���������d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������d
"
_user_specified_name
inputs/1
�	
�
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_98425878

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_98428917

inputs0
matmul_readvariableop_resource:d
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������d^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_98425789

inputs)
sub_readvariableop_resource:
identity��sub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype0`
subSubinputssub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
IdentityIdentitysub:z:0^NoOp*
T0*'
_output_shapes
:���������[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
e__inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_98426733_98426744
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:����������
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������::���������*j
forward_function_nameQO__forward_decorrelation_layer_layer_call_and_return_conditional_losses_98426743:- )
'
_output_shapes
:���������:$ 

_output_shapes

::-)
'
_output_shapes
:���������
�
�
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_98428962

inputs0
matmul_readvariableop_resource:d
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������d^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_Icnn_closure_layer_call_fn_98426000
input_1
unknown:
	unknown_0:
	unknown_1:d
	unknown_2:d
	unknown_3:d
	unknown_4:dd
	unknown_5:d
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:d

unknown_10:dd

unknown_11:d

unknown_12:

unknown_13:d

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
GPU2*0J 8� *S
fNRL
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98425965o
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
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98428616
xG
9icnn_closure_mean_shift_layer_sub_readvariableop_resource:Q
?icnn_closure_decorrelation_layer_matmul_readvariableop_resource:L
:icnn_closure_layer__1_input_matmul_readvariableop_resource:dI
;icnn_closure_layer__1_input_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_0dense_component_matmul_readvariableop_resource:dQ
?icnn_closure_layer_0nn_component_matmul_readvariableop_resource:ddN
@icnn_closure_layer_0nn_component_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_1dense_component_matmul_readvariableop_resource:dQ
?icnn_closure_layer_1nn_component_matmul_readvariableop_resource:ddN
@icnn_closure_layer_1nn_component_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_2dense_component_matmul_readvariableop_resource:dQ
?icnn_closure_layer_2nn_component_matmul_readvariableop_resource:ddN
@icnn_closure_layer_2nn_component_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_5dense_component_matmul_readvariableop_resource:Q
?icnn_closure_layer_5nn_component_matmul_readvariableop_resource:dN
@icnn_closure_layer_5nn_component_biasadd_readvariableop_resource:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��6Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp�2Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp�1Icnn_closure/layer_-1_input/MatMul/ReadVariableOp�9Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp�9Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp�9Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp�9Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp�0Icnn_closure/mean_shift_layer/sub/ReadVariableOp�checked�	checked_1�
0Icnn_closure/mean_shift_layer/sub/ReadVariableOpReadVariableOp9icnn_closure_mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:*
dtype0�
!Icnn_closure/mean_shift_layer/subSubx8Icnn_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6Icnn_closure/decorrelation_layer/MatMul/ReadVariableOpReadVariableOp?icnn_closure_decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
'Icnn_closure/decorrelation_layer/MatMulMatMul%Icnn_closure/mean_shift_layer/sub:z:0>Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1Icnn_closure/layer_-1_input/MatMul/ReadVariableOpReadVariableOp:icnn_closure_layer__1_input_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
"Icnn_closure/layer_-1_input/MatMulMatMul1Icnn_closure/decorrelation_layer/MatMul:product:09Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
2Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOpReadVariableOp;icnn_closure_layer__1_input_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
#Icnn_closure/layer_-1_input/BiasAddBiasAdd,Icnn_closure/layer_-1_input/MatMul:product:0:Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
$Icnn_closure/layer_-1_input/SoftplusSoftplus,Icnn_closure/layer_-1_input/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
9Icnn_closure/layer_0dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_0dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
*Icnn_closure/layer_0dense_component/MatMulMatMulxAIcnn_closure/layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
6Icnn_closure/layer_0nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_0nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
'Icnn_closure/layer_0nn_component/MatMulMatMul2Icnn_closure/layer_-1_input/Softplus:activations:0>Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
7Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_0nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
(Icnn_closure/layer_0nn_component/BiasAddBiasAdd1Icnn_closure/layer_0nn_component/MatMul:product:0?Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
 Icnn_closure/add_component_0/addAddV24Icnn_closure/layer_0dense_component/MatMul:product:01Icnn_closure/layer_0nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
&Icnn_closure/tf.math.softplus/SoftplusSoftplus$Icnn_closure/add_component_0/add:z:0*
T0*'
_output_shapes
:���������d�
9Icnn_closure/layer_1dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_1dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
*Icnn_closure/layer_1dense_component/MatMulMatMulxAIcnn_closure/layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
6Icnn_closure/layer_1nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_1nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
'Icnn_closure/layer_1nn_component/MatMulMatMul4Icnn_closure/tf.math.softplus/Softplus:activations:0>Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
7Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_1nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
(Icnn_closure/layer_1nn_component/BiasAddBiasAdd1Icnn_closure/layer_1nn_component/MatMul:product:0?Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
 Icnn_closure/add_component_1/addAddV24Icnn_closure/layer_1dense_component/MatMul:product:01Icnn_closure/layer_1nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
(Icnn_closure/tf.math.softplus_1/SoftplusSoftplus$Icnn_closure/add_component_1/add:z:0*
T0*'
_output_shapes
:���������d�
9Icnn_closure/layer_2dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_2dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
*Icnn_closure/layer_2dense_component/MatMulMatMulxAIcnn_closure/layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
6Icnn_closure/layer_2nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_2nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
'Icnn_closure/layer_2nn_component/MatMulMatMul6Icnn_closure/tf.math.softplus_1/Softplus:activations:0>Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
7Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_2nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
(Icnn_closure/layer_2nn_component/BiasAddBiasAdd1Icnn_closure/layer_2nn_component/MatMul:product:0?Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
 Icnn_closure/add_component_2/addAddV24Icnn_closure/layer_2dense_component/MatMul:product:01Icnn_closure/layer_2nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
(Icnn_closure/tf.math.softplus_2/SoftplusSoftplus$Icnn_closure/add_component_2/add:z:0*
T0*'
_output_shapes
:���������d�
9Icnn_closure/layer_5dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
*Icnn_closure/layer_5dense_component/MatMulMatMulxAIcnn_closure/layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6Icnn_closure/layer_5nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_5nn_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
'Icnn_closure/layer_5nn_component/MatMulMatMul6Icnn_closure/tf.math.softplus_2/Softplus:activations:0>Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
7Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_5nn_component_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
(Icnn_closure/layer_5nn_component/BiasAddBiasAdd1Icnn_closure/layer_5nn_component/MatMul:product:0?Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Icnn_closure/add/addAddV24Icnn_closure/layer_5dense_component/MatMul:product:01Icnn_closure/layer_5nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������W
ones_like/ShapeShapeIcnn_closure/add/add:z:0*
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
(gradient_tape/Icnn_closure/add/add/ShapeShape4Icnn_closure/layer_5dense_component/MatMul:product:0*
T0*
_output_shapes
:�
*gradient_tape/Icnn_closure/add/add/Shape_1Shape1Icnn_closure/layer_5nn_component/BiasAdd:output:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add/add/BroadcastGradientArgsBroadcastGradientArgs1gradient_tape/Icnn_closure/add/add/Shape:output:03gradient_tape/Icnn_closure/add/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
&gradient_tape/Icnn_closure/add/add/SumSumones_like:output:0=gradient_tape/Icnn_closure/add/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
*gradient_tape/Icnn_closure/add/add/ReshapeReshape/gradient_tape/Icnn_closure/add/add/Sum:output:01gradient_tape/Icnn_closure/add/add/Shape:output:0*
T0*'
_output_shapes
:����������
(gradient_tape/Icnn_closure/add/add/Sum_1Sumones_like:output:0=gradient_tape/Icnn_closure/add/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
,gradient_tape/Icnn_closure/add/add/Reshape_1Reshape1gradient_tape/Icnn_closure/add/add/Sum_1:output:03gradient_tape/Icnn_closure/add/add/Shape_1:output:0*
T0*'
_output_shapes
:����������
?gradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMulMatMul3gradient_tape/Icnn_closure/add/add/Reshape:output:0AIcnn_closure/layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Agradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMul_1MatMulx3gradient_tape/Icnn_closure/add/add/Reshape:output:0*
T0*
_output_shapes

:*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_5nn_component/BiasAdd/BiasAddGradBiasAddGrad5gradient_tape/Icnn_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes
:�
<gradient_tape/Icnn_closure/layer_5nn_component/MatMul/MatMulMatMul5gradient_tape/Icnn_closure/add/add/Reshape_1:output:0>Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d*
transpose_b(�
>gradient_tape/Icnn_closure/layer_5nn_component/MatMul/MatMul_1MatMul6Icnn_closure/tf.math.softplus_2/Softplus:activations:05gradient_tape/Icnn_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes

:d*
transpose_a(�
5gradient_tape/Icnn_closure/tf.math.softplus_2/SigmoidSigmoid$Icnn_closure/add_component_2/add:z:0*
T0*'
_output_shapes
:���������d�
1gradient_tape/Icnn_closure/tf.math.softplus_2/mulMulFgradient_tape/Icnn_closure/layer_5nn_component/MatMul/MatMul:product:09gradient_tape/Icnn_closure/tf.math.softplus_2/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
4gradient_tape/Icnn_closure/add_component_2/add/ShapeShape4Icnn_closure/layer_2dense_component/MatMul:product:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_2/add/Shape_1Shape1Icnn_closure/layer_2nn_component/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/Icnn_closure/add_component_2/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/Icnn_closure/add_component_2/add/Shape:output:0?gradient_tape/Icnn_closure/add_component_2/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/Icnn_closure/add_component_2/add/SumSum5gradient_tape/Icnn_closure/tf.math.softplus_2/mul:z:0Igradient_tape/Icnn_closure/add_component_2/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_2/add/ReshapeReshape;gradient_tape/Icnn_closure/add_component_2/add/Sum:output:0=gradient_tape/Icnn_closure/add_component_2/add/Shape:output:0*
T0*'
_output_shapes
:���������d�
4gradient_tape/Icnn_closure/add_component_2/add/Sum_1Sum5gradient_tape/Icnn_closure/tf.math.softplus_2/mul:z:0Igradient_tape/Icnn_closure/add_component_2/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add_component_2/add/Reshape_1Reshape=gradient_tape/Icnn_closure/add_component_2/add/Sum_1:output:0?gradient_tape/Icnn_closure/add_component_2/add/Shape_1:output:0*
T0*'
_output_shapes
:���������d�
?gradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMulMatMul?gradient_tape/Icnn_closure/add_component_2/add/Reshape:output:0AIcnn_closure/layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Agradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMul_1MatMulx?gradient_tape/Icnn_closure/add_component_2/add/Reshape:output:0*
T0*
_output_shapes

:d*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_2nn_component/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/Icnn_closure/add_component_2/add/Reshape_1:output:0*
T0*
_output_shapes
:d�
<gradient_tape/Icnn_closure/layer_2nn_component/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/add_component_2/add/Reshape_1:output:0>Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d*
transpose_b(�
>gradient_tape/Icnn_closure/layer_2nn_component/MatMul/MatMul_1MatMul6Icnn_closure/tf.math.softplus_1/Softplus:activations:0Agradient_tape/Icnn_closure/add_component_2/add/Reshape_1:output:0*
T0*
_output_shapes

:dd*
transpose_a(�
5gradient_tape/Icnn_closure/tf.math.softplus_1/SigmoidSigmoid$Icnn_closure/add_component_1/add:z:0*
T0*'
_output_shapes
:���������d�
1gradient_tape/Icnn_closure/tf.math.softplus_1/mulMulFgradient_tape/Icnn_closure/layer_2nn_component/MatMul/MatMul:product:09gradient_tape/Icnn_closure/tf.math.softplus_1/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
4gradient_tape/Icnn_closure/add_component_1/add/ShapeShape4Icnn_closure/layer_1dense_component/MatMul:product:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_1/add/Shape_1Shape1Icnn_closure/layer_1nn_component/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/Icnn_closure/add_component_1/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/Icnn_closure/add_component_1/add/Shape:output:0?gradient_tape/Icnn_closure/add_component_1/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/Icnn_closure/add_component_1/add/SumSum5gradient_tape/Icnn_closure/tf.math.softplus_1/mul:z:0Igradient_tape/Icnn_closure/add_component_1/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_1/add/ReshapeReshape;gradient_tape/Icnn_closure/add_component_1/add/Sum:output:0=gradient_tape/Icnn_closure/add_component_1/add/Shape:output:0*
T0*'
_output_shapes
:���������d�
4gradient_tape/Icnn_closure/add_component_1/add/Sum_1Sum5gradient_tape/Icnn_closure/tf.math.softplus_1/mul:z:0Igradient_tape/Icnn_closure/add_component_1/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add_component_1/add/Reshape_1Reshape=gradient_tape/Icnn_closure/add_component_1/add/Sum_1:output:0?gradient_tape/Icnn_closure/add_component_1/add/Shape_1:output:0*
T0*'
_output_shapes
:���������d�
?gradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMulMatMul?gradient_tape/Icnn_closure/add_component_1/add/Reshape:output:0AIcnn_closure/layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Agradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMul_1MatMulx?gradient_tape/Icnn_closure/add_component_1/add/Reshape:output:0*
T0*
_output_shapes

:d*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_1nn_component/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/Icnn_closure/add_component_1/add/Reshape_1:output:0*
T0*
_output_shapes
:d�
<gradient_tape/Icnn_closure/layer_1nn_component/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/add_component_1/add/Reshape_1:output:0>Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d*
transpose_b(�
>gradient_tape/Icnn_closure/layer_1nn_component/MatMul/MatMul_1MatMul4Icnn_closure/tf.math.softplus/Softplus:activations:0Agradient_tape/Icnn_closure/add_component_1/add/Reshape_1:output:0*
T0*
_output_shapes

:dd*
transpose_a(�
3gradient_tape/Icnn_closure/tf.math.softplus/SigmoidSigmoid$Icnn_closure/add_component_0/add:z:0*
T0*'
_output_shapes
:���������d�
/gradient_tape/Icnn_closure/tf.math.softplus/mulMulFgradient_tape/Icnn_closure/layer_1nn_component/MatMul/MatMul:product:07gradient_tape/Icnn_closure/tf.math.softplus/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
4gradient_tape/Icnn_closure/add_component_0/add/ShapeShape4Icnn_closure/layer_0dense_component/MatMul:product:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_0/add/Shape_1Shape1Icnn_closure/layer_0nn_component/BiasAdd:output:0*
T0*
_output_shapes
:�
Dgradient_tape/Icnn_closure/add_component_0/add/BroadcastGradientArgsBroadcastGradientArgs=gradient_tape/Icnn_closure/add_component_0/add/Shape:output:0?gradient_tape/Icnn_closure/add_component_0/add/Shape_1:output:0*2
_output_shapes 
:���������:����������
2gradient_tape/Icnn_closure/add_component_0/add/SumSum3gradient_tape/Icnn_closure/tf.math.softplus/mul:z:0Igradient_tape/Icnn_closure/add_component_0/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_0/add/ReshapeReshape;gradient_tape/Icnn_closure/add_component_0/add/Sum:output:0=gradient_tape/Icnn_closure/add_component_0/add/Shape:output:0*
T0*'
_output_shapes
:���������d�
4gradient_tape/Icnn_closure/add_component_0/add/Sum_1Sum3gradient_tape/Icnn_closure/tf.math.softplus/mul:z:0Igradient_tape/Icnn_closure/add_component_0/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add_component_0/add/Reshape_1Reshape=gradient_tape/Icnn_closure/add_component_0/add/Sum_1:output:0?gradient_tape/Icnn_closure/add_component_0/add/Shape_1:output:0*
T0*'
_output_shapes
:���������d�
?gradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMulMatMul?gradient_tape/Icnn_closure/add_component_0/add/Reshape:output:0AIcnn_closure/layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
Agradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMul_1MatMulx?gradient_tape/Icnn_closure/add_component_0/add/Reshape:output:0*
T0*
_output_shapes

:d*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_0nn_component/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/Icnn_closure/add_component_0/add/Reshape_1:output:0*
T0*
_output_shapes
:d�
<gradient_tape/Icnn_closure/layer_0nn_component/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/add_component_0/add/Reshape_1:output:0>Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d*
transpose_b(�
>gradient_tape/Icnn_closure/layer_0nn_component/MatMul/MatMul_1MatMul2Icnn_closure/layer_-1_input/Softplus:activations:0Agradient_tape/Icnn_closure/add_component_0/add/Reshape_1:output:0*
T0*
_output_shapes

:dd*
transpose_a(�
1gradient_tape/Icnn_closure/layer_-1_input/SigmoidSigmoid,Icnn_closure/layer_-1_input/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
-gradient_tape/Icnn_closure/layer_-1_input/mulMulFgradient_tape/Icnn_closure/layer_0nn_component/MatMul/MatMul:product:05gradient_tape/Icnn_closure/layer_-1_input/Sigmoid:y:0*
T0*'
_output_shapes
:���������d�
=gradient_tape/Icnn_closure/layer_-1_input/BiasAdd/BiasAddGradBiasAddGrad1gradient_tape/Icnn_closure/layer_-1_input/mul:z:0*
T0*
_output_shapes
:d�
7gradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMulMatMul1gradient_tape/Icnn_closure/layer_-1_input/mul:z:09Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(�
9gradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:01gradient_tape/Icnn_closure/layer_-1_input/mul:z:0*
T0*
_output_shapes

:d*
transpose_a(�
<gradient_tape/Icnn_closure/decorrelation_layer/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMul:product:0>Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������*
transpose_b(f
5gradient_tape/Icnn_closure/mean_shift_layer/sub/ShapeShapex*
T0*
_output_shapes
:�
7gradient_tape/Icnn_closure/mean_shift_layer/sub/Shape_1Shape8Icnn_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:�
Egradient_tape/Icnn_closure/mean_shift_layer/sub/BroadcastGradientArgsBroadcastGradientArgs>gradient_tape/Icnn_closure/mean_shift_layer/sub/Shape:output:0@gradient_tape/Icnn_closure/mean_shift_layer/sub/Shape_1:output:0*2
_output_shapes 
:���������:����������
3gradient_tape/Icnn_closure/mean_shift_layer/sub/SumSumFgradient_tape/Icnn_closure/decorrelation_layer/MatMul/MatMul:product:0Jgradient_tape/Icnn_closure/mean_shift_layer/sub/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
7gradient_tape/Icnn_closure/mean_shift_layer/sub/ReshapeReshape<gradient_tape/Icnn_closure/mean_shift_layer/sub/Sum:output:0>gradient_tape/Icnn_closure/mean_shift_layer/sub/Shape:output:0*
T0*'
_output_shapes
:����������
AddNAddNIgradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMul:product:0@gradient_tape/Icnn_closure/mean_shift_layer/sub/Reshape:output:0*
N*
T0*'
_output_shapes
:���������Y
CastCast
AddN:sum:0*

DstT0*

SrcT0*'
_output_shapes
:����������
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������*e
messageZXinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 14), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������d
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
:	�*

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
:����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
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
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
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
:�����������
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
:	��
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
:����������
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������Z
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
:����������
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
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
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
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
:	�*

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
:�����������
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
:	��
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:[
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
:���������X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������f
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
:���������*

begin_mask*
end_maskg
IdentityIdentityIcnn_closure/add/add:z:0^NoOp*
T0*'
_output_shapes
:���������[

Identity_1Identity
AddN:sum:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp3^Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp2^Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:^Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:^Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:^Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:^Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp1^Icnn_closure/mean_shift_layer/sub/ReadVariableOp^checked
^checked_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������: : : : : : : : : : : : : : : : :	�:	�:2p
6Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp6Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp2h
2Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp2Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp2f
1Icnn_closure/layer_-1_input/MatMul/ReadVariableOp1Icnn_closure/layer_-1_input/MatMul/ReadVariableOp2v
9Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp9Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp2r
7Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp7Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp2p
6Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp6Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp2v
9Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp9Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp2r
7Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp7Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp2p
6Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp6Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp2v
9Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp9Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp2r
7Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp7Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp2p
6Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp6Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp2v
9Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp9Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp2r
7Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp7Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp2p
6Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp6Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp2d
0Icnn_closure/mean_shift_layer/sub/ReadVariableOp0Icnn_closure/mean_shift_layer/sub/ReadVariableOp2
checkedchecked2
	checked_1	checked_1:J F
'
_output_shapes
:���������

_user_specified_namex:%!

_output_shapes
:	�:%!

_output_shapes
:	�:$ 

_output_shapes

:
�S
�
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98428810

inputs:
,mean_shift_layer_sub_readvariableop_resource:D
2decorrelation_layer_matmul_readvariableop_resource:?
-layer__1_input_matmul_readvariableop_resource:d<
.layer__1_input_biasadd_readvariableop_resource:dG
5layer_0dense_component_matmul_readvariableop_resource:dD
2layer_0nn_component_matmul_readvariableop_resource:ddA
3layer_0nn_component_biasadd_readvariableop_resource:dG
5layer_1dense_component_matmul_readvariableop_resource:dD
2layer_1nn_component_matmul_readvariableop_resource:ddA
3layer_1nn_component_biasadd_readvariableop_resource:dG
5layer_2dense_component_matmul_readvariableop_resource:dD
2layer_2nn_component_matmul_readvariableop_resource:ddA
3layer_2nn_component_biasadd_readvariableop_resource:dG
5layer_5dense_component_matmul_readvariableop_resource:D
2layer_5nn_component_matmul_readvariableop_resource:dA
3layer_5nn_component_biasadd_readvariableop_resource:
identity��)decorrelation_layer/MatMul/ReadVariableOp�%layer_-1_input/BiasAdd/ReadVariableOp�$layer_-1_input/MatMul/ReadVariableOp�,layer_0dense_component/MatMul/ReadVariableOp�*layer_0nn_component/BiasAdd/ReadVariableOp�)layer_0nn_component/MatMul/ReadVariableOp�,layer_1dense_component/MatMul/ReadVariableOp�*layer_1nn_component/BiasAdd/ReadVariableOp�)layer_1nn_component/MatMul/ReadVariableOp�,layer_2dense_component/MatMul/ReadVariableOp�*layer_2nn_component/BiasAdd/ReadVariableOp�)layer_2nn_component/MatMul/ReadVariableOp�,layer_5dense_component/MatMul/ReadVariableOp�*layer_5nn_component/BiasAdd/ReadVariableOp�)layer_5nn_component/MatMul/ReadVariableOp�#mean_shift_layer/sub/ReadVariableOp�
#mean_shift_layer/sub/ReadVariableOpReadVariableOp,mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:*
dtype0�
mean_shift_layer/subSubinputs+mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)decorrelation_layer/MatMul/ReadVariableOpReadVariableOp2decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
decorrelation_layer/MatMulMatMulmean_shift_layer/sub:z:01decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$layer_-1_input/MatMul/ReadVariableOpReadVariableOp-layer__1_input_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
layer_-1_input/MatMulMatMul$decorrelation_layer/MatMul:product:0,layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
%layer_-1_input/BiasAdd/ReadVariableOpReadVariableOp.layer__1_input_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
layer_-1_input/BiasAddBiasAddlayer_-1_input/MatMul:product:0-layer_-1_input/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dv
layer_-1_input/SoftplusSoftpluslayer_-1_input/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
,layer_0dense_component/MatMul/ReadVariableOpReadVariableOp5layer_0dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
layer_0dense_component/MatMulMatMulinputs4layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
)layer_0nn_component/MatMul/ReadVariableOpReadVariableOp2layer_0nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
layer_0nn_component/MatMulMatMul%layer_-1_input/Softplus:activations:01layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
*layer_0nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_0nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
layer_0nn_component/BiasAddBiasAdd$layer_0nn_component/MatMul:product:02layer_0nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
add_component_0/addAddV2'layer_0dense_component/MatMul:product:0$layer_0nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������dp
tf.math.softplus/SoftplusSoftplusadd_component_0/add:z:0*
T0*'
_output_shapes
:���������d�
,layer_1dense_component/MatMul/ReadVariableOpReadVariableOp5layer_1dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
layer_1dense_component/MatMulMatMulinputs4layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
)layer_1nn_component/MatMul/ReadVariableOpReadVariableOp2layer_1nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
layer_1nn_component/MatMulMatMul'tf.math.softplus/Softplus:activations:01layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
*layer_1nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_1nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
layer_1nn_component/BiasAddBiasAdd$layer_1nn_component/MatMul:product:02layer_1nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
add_component_1/addAddV2'layer_1dense_component/MatMul:product:0$layer_1nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������dr
tf.math.softplus_1/SoftplusSoftplusadd_component_1/add:z:0*
T0*'
_output_shapes
:���������d�
,layer_2dense_component/MatMul/ReadVariableOpReadVariableOp5layer_2dense_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
layer_2dense_component/MatMulMatMulinputs4layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
)layer_2nn_component/MatMul/ReadVariableOpReadVariableOp2layer_2nn_component_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype0�
layer_2nn_component/MatMulMatMul)tf.math.softplus_1/Softplus:activations:01layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
*layer_2nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_2nn_component_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
layer_2nn_component/BiasAddBiasAdd$layer_2nn_component/MatMul:product:02layer_2nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
add_component_2/addAddV2'layer_2dense_component/MatMul:product:0$layer_2nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������dr
tf.math.softplus_2/SoftplusSoftplusadd_component_2/add:z:0*
T0*'
_output_shapes
:���������d�
,layer_5dense_component/MatMul/ReadVariableOpReadVariableOp5layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
layer_5dense_component/MatMulMatMulinputs4layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)layer_5nn_component/MatMul/ReadVariableOpReadVariableOp2layer_5nn_component_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0�
layer_5nn_component/MatMulMatMul)tf.math.softplus_2/Softplus:activations:01layer_5nn_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*layer_5nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_5nn_component_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
layer_5nn_component/BiasAddBiasAdd$layer_5nn_component/MatMul:product:02layer_5nn_component/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
add/addAddV2'layer_5dense_component/MatMul:product:0$layer_5nn_component/BiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentityadd/add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp*^decorrelation_layer/MatMul/ReadVariableOp&^layer_-1_input/BiasAdd/ReadVariableOp%^layer_-1_input/MatMul/ReadVariableOp-^layer_0dense_component/MatMul/ReadVariableOp+^layer_0nn_component/BiasAdd/ReadVariableOp*^layer_0nn_component/MatMul/ReadVariableOp-^layer_1dense_component/MatMul/ReadVariableOp+^layer_1nn_component/BiasAdd/ReadVariableOp*^layer_1nn_component/MatMul/ReadVariableOp-^layer_2dense_component/MatMul/ReadVariableOp+^layer_2nn_component/BiasAdd/ReadVariableOp*^layer_2nn_component/MatMul/ReadVariableOp-^layer_5dense_component/MatMul/ReadVariableOp+^layer_5nn_component/BiasAdd/ReadVariableOp*^layer_5nn_component/MatMul/ReadVariableOp$^mean_shift_layer/sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2V
)decorrelation_layer/MatMul/ReadVariableOp)decorrelation_layer/MatMul/ReadVariableOp2N
%layer_-1_input/BiasAdd/ReadVariableOp%layer_-1_input/BiasAdd/ReadVariableOp2L
$layer_-1_input/MatMul/ReadVariableOp$layer_-1_input/MatMul/ReadVariableOp2\
,layer_0dense_component/MatMul/ReadVariableOp,layer_0dense_component/MatMul/ReadVariableOp2X
*layer_0nn_component/BiasAdd/ReadVariableOp*layer_0nn_component/BiasAdd/ReadVariableOp2V
)layer_0nn_component/MatMul/ReadVariableOp)layer_0nn_component/MatMul/ReadVariableOp2\
,layer_1dense_component/MatMul/ReadVariableOp,layer_1dense_component/MatMul/ReadVariableOp2X
*layer_1nn_component/BiasAdd/ReadVariableOp*layer_1nn_component/BiasAdd/ReadVariableOp2V
)layer_1nn_component/MatMul/ReadVariableOp)layer_1nn_component/MatMul/ReadVariableOp2\
,layer_2dense_component/MatMul/ReadVariableOp,layer_2dense_component/MatMul/ReadVariableOp2X
*layer_2nn_component/BiasAdd/ReadVariableOp*layer_2nn_component/BiasAdd/ReadVariableOp2V
)layer_2nn_component/MatMul/ReadVariableOp)layer_2nn_component/MatMul/ReadVariableOp2\
,layer_5dense_component/MatMul/ReadVariableOp,layer_5dense_component/MatMul/ReadVariableOp2X
*layer_5nn_component/BiasAdd/ReadVariableOp*layer_5nn_component/BiasAdd/ReadVariableOp2V
)layer_5nn_component/MatMul/ReadVariableOp)layer_5nn_component/MatMul/ReadVariableOp2J
#mean_shift_layer/sub/ReadVariableOp#mean_shift_layer/sub/ReadVariableOp:O K
'
_output_shapes
:���������
 
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
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������<
output_20
StatefulPartitionedCall:1���������<
output_30
StatefulPartitionedCall:2���������tensorflow/serving/predict:��
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
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer-11
layer_with_weights-7
layer-12
layer_with_weights-8
layer-13
layer-14
layer-15
layer_with_weights-9
layer-16
layer_with_weights-10
layer-17
layer-18
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_network
�
 iter

!beta_1

"beta_2
	#decay
$learning_rate'm�(m�)m�*m�+m�,m�-m�.m�/m�0m�1m�2m�3m�4m�'v�(v�)v�*v�+v�,v�-v�.v�/v�0v�1v�2v�3v�4v�"
	optimizer
 "
trackable_dict_wrapper
�
%0
&1
'2
(3
)4
*5
+6
,7
-8
.9
/10
011
112
213
314
415"
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
413"
trackable_list_wrapper
 "
trackable_list_wrapper
�
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
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
%mu
:	variables
;trainable_variables
<regularization_losses
=	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
&
ev_cov_mat
>	variables
?trainable_variables
@regularization_losses
A	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

'kernel
(bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

)kernel
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

*kernel
+bias
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

,kernel
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

-kernel
.bias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
_	keras_api"
_tf_keras_layer
�

/kernel
`	variables
atrainable_variables
bregularization_losses
c	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

0kernel
1bias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
h	variables
itrainable_variables
jregularization_losses
k	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
l	keras_api"
_tf_keras_layer
�

2kernel
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

3kernel
4bias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
%0
&1
'2
(3
)4
*5
+6
,7
-8
.9
/10
011
112
213
314
415"
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
413"
trackable_list_wrapper
 "
trackable_list_wrapper
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
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
:2Variable
:2Variable
':%d2layer_-1_input/kernel
!:d2layer_-1_input/bias
/:-d2layer_0dense_component/kernel
,:*dd2layer_0nn_component/kernel
&:$d2layer_0nn_component/bias
/:-d2layer_1dense_component/kernel
,:*dd2layer_1nn_component/kernel
&:$d2layer_1nn_component/bias
/:-d2layer_2dense_component/kernel
,:*dd2layer_2nn_component/kernel
&:$d2layer_2nn_component/bias
/:-2layer_5dense_component/kernel
,:*d2layer_5nn_component/kernel
&:$2layer_5nn_component/bias
.
%0
&1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
n
~0
1
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
'
%0"
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
:	variables
;trainable_variables
<regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
'
&0"
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
>	variables
?trainable_variables
@regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
'
)0"
trackable_list_wrapper
'
)0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
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
'
,0"
trackable_list_wrapper
'
,0"
trackable_list_wrapper
 "
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
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
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
[	variables
\trainable_variables
]regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
'
/0"
trackable_list_wrapper
'
/0"
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
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
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
h	variables
itrainable_variables
jregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
'
20"
trackable_list_wrapper
'
20"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
m	variables
ntrainable_variables
oregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
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
u	variables
vtrainable_variables
wregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
%0
&1"
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
18"
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
�	keras_api"
_tf_keras_metric
'
%0"
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
&0"
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
':%d2layer_-1_input/kernel/m
!:d2layer_-1_input/bias/m
/:-d2layer_0dense_component/kernel/m
,:*dd2layer_0nn_component/kernel/m
&:$d2layer_0nn_component/bias/m
/:-d2layer_1dense_component/kernel/m
,:*dd2layer_1nn_component/kernel/m
&:$d2layer_1nn_component/bias/m
/:-d2layer_2dense_component/kernel/m
,:*dd2layer_2nn_component/kernel/m
&:$d2layer_2nn_component/bias/m
/:-2layer_5dense_component/kernel/m
,:*d2layer_5nn_component/kernel/m
&:$2layer_5nn_component/bias/m
':%d2layer_-1_input/kernel/v
!:d2layer_-1_input/bias/v
/:-d2layer_0dense_component/kernel/v
,:*dd2layer_0nn_component/kernel/v
&:$d2layer_0nn_component/bias/v
/:-d2layer_1dense_component/kernel/v
,:*dd2layer_1nn_component/kernel/v
&:$d2layer_1nn_component/bias/v
/:-d2layer_2dense_component/kernel/v
,:*dd2layer_2nn_component/kernel/v
&:$d2layer_2nn_component/bias/v
/:-2layer_5dense_component/kernel/v
,:*d2layer_5nn_component/kernel/v
&:$2layer_5nn_component/bias/v
�2�
0__inference_sobolev_model_layer_call_fn_98427020
0__inference_sobolev_model_layer_call_fn_98428047
0__inference_sobolev_model_layer_call_fn_98428094
0__inference_sobolev_model_layer_call_fn_98427509�
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
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98428355
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98428616
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98427727
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98427945�
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
#__inference__wrapped_model_98425775input_1"�
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
/__inference_Icnn_closure_layer_call_fn_98426000
/__inference_Icnn_closure_layer_call_fn_98428653
/__inference_Icnn_closure_layer_call_fn_98428690
/__inference_Icnn_closure_layer_call_fn_98426291�
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
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98428750
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98428810
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98426345
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98426399�
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
&__inference_signature_wrapper_98428000input_1"�
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
3__inference_mean_shift_layer_layer_call_fn_98428817�
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
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_98428824�
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
6__inference_decorrelation_layer_layer_call_fn_98428831�
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
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_98428838�
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
1__inference_layer_-1_input_layer_call_fn_98428847�
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
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_98428858�
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
9__inference_layer_0dense_component_layer_call_fn_98428865�
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
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_98428872�
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
6__inference_layer_0nn_component_layer_call_fn_98428881�
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
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_98428891�
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
2__inference_add_component_0_layer_call_fn_98428897�
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
M__inference_add_component_0_layer_call_and_return_conditional_losses_98428903�
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
9__inference_layer_1dense_component_layer_call_fn_98428910�
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
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_98428917�
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
6__inference_layer_1nn_component_layer_call_fn_98428926�
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
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_98428936�
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
2__inference_add_component_1_layer_call_fn_98428942�
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
M__inference_add_component_1_layer_call_and_return_conditional_losses_98428948�
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
9__inference_layer_2dense_component_layer_call_fn_98428955�
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
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_98428962�
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
6__inference_layer_2nn_component_layer_call_fn_98428971�
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
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_98428981�
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
2__inference_add_component_2_layer_call_fn_98428987�
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
M__inference_add_component_2_layer_call_and_return_conditional_losses_98428993�
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
9__inference_layer_5dense_component_layer_call_fn_98429000�
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
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_98429007�
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
6__inference_layer_5nn_component_layer_call_fn_98429016�
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
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_98429026�
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
&__inference_add_layer_call_fn_98429032�
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
A__inference_add_layer_call_and_return_conditional_losses_98429038�
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
	J
Const
J	
Const_1
J	
Const_2�
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98426345s%&'()*+,-./012348�5
.�+
!�
input_1���������
p 

 
� "%�"
�
0���������
� �
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98426399s%&'()*+,-./012348�5
.�+
!�
input_1���������
p

 
� "%�"
�
0���������
� �
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98428750r%&'()*+,-./012347�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_98428810r%&'()*+,-./012347�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
/__inference_Icnn_closure_layer_call_fn_98426000f%&'()*+,-./012348�5
.�+
!�
input_1���������
p 

 
� "�����������
/__inference_Icnn_closure_layer_call_fn_98426291f%&'()*+,-./012348�5
.�+
!�
input_1���������
p

 
� "�����������
/__inference_Icnn_closure_layer_call_fn_98428653e%&'()*+,-./012347�4
-�*
 �
inputs���������
p 

 
� "�����������
/__inference_Icnn_closure_layer_call_fn_98428690e%&'()*+,-./012347�4
-�*
 �
inputs���������
p

 
� "�����������
#__inference__wrapped_model_98425775�%&'()*+,-./01234���0�-
&�#
!�
input_1���������
� "���
.
output_1"�
output_1���������
.
output_2"�
output_2���������
.
output_3"�
output_3����������
M__inference_add_component_0_layer_call_and_return_conditional_losses_98428903�Z�W
P�M
K�H
"�
inputs/0���������d
"�
inputs/1���������d
� "%�"
�
0���������d
� �
2__inference_add_component_0_layer_call_fn_98428897vZ�W
P�M
K�H
"�
inputs/0���������d
"�
inputs/1���������d
� "����������d�
M__inference_add_component_1_layer_call_and_return_conditional_losses_98428948�Z�W
P�M
K�H
"�
inputs/0���������d
"�
inputs/1���������d
� "%�"
�
0���������d
� �
2__inference_add_component_1_layer_call_fn_98428942vZ�W
P�M
K�H
"�
inputs/0���������d
"�
inputs/1���������d
� "����������d�
M__inference_add_component_2_layer_call_and_return_conditional_losses_98428993�Z�W
P�M
K�H
"�
inputs/0���������d
"�
inputs/1���������d
� "%�"
�
0���������d
� �
2__inference_add_component_2_layer_call_fn_98428987vZ�W
P�M
K�H
"�
inputs/0���������d
"�
inputs/1���������d
� "����������d�
A__inference_add_layer_call_and_return_conditional_losses_98429038�Z�W
P�M
K�H
"�
inputs/0���������
"�
inputs/1���������
� "%�"
�
0���������
� �
&__inference_add_layer_call_fn_98429032vZ�W
P�M
K�H
"�
inputs/0���������
"�
inputs/1���������
� "�����������
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_98428838[&/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
6__inference_decorrelation_layer_layer_call_fn_98428831N&/�,
%�"
 �
inputs���������
� "�����������
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_98428858\'(/�,
%�"
 �
inputs���������
� "%�"
�
0���������d
� �
1__inference_layer_-1_input_layer_call_fn_98428847O'(/�,
%�"
 �
inputs���������
� "����������d�
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_98428872[)/�,
%�"
 �
inputs���������
� "%�"
�
0���������d
� �
9__inference_layer_0dense_component_layer_call_fn_98428865N)/�,
%�"
 �
inputs���������
� "����������d�
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_98428891\*+/�,
%�"
 �
inputs���������d
� "%�"
�
0���������d
� �
6__inference_layer_0nn_component_layer_call_fn_98428881O*+/�,
%�"
 �
inputs���������d
� "����������d�
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_98428917[,/�,
%�"
 �
inputs���������
� "%�"
�
0���������d
� �
9__inference_layer_1dense_component_layer_call_fn_98428910N,/�,
%�"
 �
inputs���������
� "����������d�
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_98428936\-./�,
%�"
 �
inputs���������d
� "%�"
�
0���������d
� �
6__inference_layer_1nn_component_layer_call_fn_98428926O-./�,
%�"
 �
inputs���������d
� "����������d�
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_98428962[//�,
%�"
 �
inputs���������
� "%�"
�
0���������d
� �
9__inference_layer_2dense_component_layer_call_fn_98428955N//�,
%�"
 �
inputs���������
� "����������d�
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_98428981\01/�,
%�"
 �
inputs���������d
� "%�"
�
0���������d
� �
6__inference_layer_2nn_component_layer_call_fn_98428971O01/�,
%�"
 �
inputs���������d
� "����������d�
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_98429007[2/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
9__inference_layer_5dense_component_layer_call_fn_98429000N2/�,
%�"
 �
inputs���������
� "�����������
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_98429026\34/�,
%�"
 �
inputs���������d
� "%�"
�
0���������
� �
6__inference_layer_5nn_component_layer_call_fn_98429016O34/�,
%�"
 �
inputs���������d
� "�����������
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_98428824[%/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
3__inference_mean_shift_layer_layer_call_fn_98428817N%/�,
%�"
 �
inputs���������
� "�����������
&__inference_signature_wrapper_98428000�%&'()*+,-./01234���;�8
� 
1�.
,
input_1!�
input_1���������"���
.
output_1"�
output_1���������
.
output_2"�
output_2���������
.
output_3"�
output_3����������
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98427727�%&'()*+,-./01234���4�1
*�'
!�
input_1���������
p 
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98427945�%&'()*+,-./01234���4�1
*�'
!�
input_1���������
p
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98428355�%&'()*+,-./01234���.�+
$�!
�
x���������
p 
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
K__inference_sobolev_model_layer_call_and_return_conditional_losses_98428616�%&'()*+,-./01234���.�+
$�!
�
x���������
p
� "j�g
`�]
�
0/0���������
�
0/1���������
�
0/2���������
� �
0__inference_sobolev_model_layer_call_fn_98427020�%&'()*+,-./01234���4�1
*�'
!�
input_1���������
p 
� "Z�W
�
0���������
�
1���������
�
2����������
0__inference_sobolev_model_layer_call_fn_98427509�%&'()*+,-./01234���4�1
*�'
!�
input_1���������
p
� "Z�W
�
0���������
�
1���������
�
2����������
0__inference_sobolev_model_layer_call_fn_98428047�%&'()*+,-./01234���.�+
$�!
�
x���������
p 
� "Z�W
�
0���������
�
1���������
�
2����������
0__inference_sobolev_model_layer_call_fn_98428094�%&'()*+,-./01234���.�+
$�!
�
x���������
p
� "Z�W
�
0���������
�
1���������
�
2���������
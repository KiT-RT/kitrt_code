��%
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
 �"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��#
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
shape:	*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:	*
dtype0
p

Variable_1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:		*
shared_name
Variable_1
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

:		*
dtype0
�
layer_-1_input/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	d*&
shared_namelayer_-1_input/kernel

)layer_-1_input/kernel/Read/ReadVariableOpReadVariableOplayer_-1_input/kernel*
_output_shapes

:	d*
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
:	d*.
shared_namelayer_0dense_component/kernel
�
1layer_0dense_component/kernel/Read/ReadVariableOpReadVariableOplayer_0dense_component/kernel*
_output_shapes

:	d*
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
:	d*.
shared_namelayer_1dense_component/kernel
�
1layer_1dense_component/kernel/Read/ReadVariableOpReadVariableOplayer_1dense_component/kernel*
_output_shapes

:	d*
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
:	d*.
shared_namelayer_2dense_component/kernel
�
1layer_2dense_component/kernel/Read/ReadVariableOpReadVariableOplayer_2dense_component/kernel*
_output_shapes

:	d*
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
:	*.
shared_namelayer_5dense_component/kernel
�
1layer_5dense_component/kernel/Read/ReadVariableOpReadVariableOplayer_5dense_component/kernel*
_output_shapes

:	*
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
:	d*(
shared_namelayer_-1_input/kernel/m
�
+layer_-1_input/kernel/m/Read/ReadVariableOpReadVariableOplayer_-1_input/kernel/m*
_output_shapes

:	d*
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
:	d*0
shared_name!layer_0dense_component/kernel/m
�
3layer_0dense_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_0dense_component/kernel/m*
_output_shapes

:	d*
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
:	d*0
shared_name!layer_1dense_component/kernel/m
�
3layer_1dense_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_1dense_component/kernel/m*
_output_shapes

:	d*
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
:	d*0
shared_name!layer_2dense_component/kernel/m
�
3layer_2dense_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_2dense_component/kernel/m*
_output_shapes

:	d*
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
:	*0
shared_name!layer_5dense_component/kernel/m
�
3layer_5dense_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_5dense_component/kernel/m*
_output_shapes

:	*
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
:	d*(
shared_namelayer_-1_input/kernel/v
�
+layer_-1_input/kernel/v/Read/ReadVariableOpReadVariableOplayer_-1_input/kernel/v*
_output_shapes

:	d*
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
:	d*0
shared_name!layer_0dense_component/kernel/v
�
3layer_0dense_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_0dense_component/kernel/v*
_output_shapes

:	d*
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
:	d*0
shared_name!layer_1dense_component/kernel/v
�
3layer_1dense_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_1dense_component/kernel/v*
_output_shapes

:	d*
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
:	d*0
shared_name!layer_2dense_component/kernel/v
�
3layer_2dense_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_2dense_component/kernel/v*
_output_shapes

:	d*
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
:	*0
shared_name!layer_5dense_component/kernel/v
�
3layer_5dense_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_5dense_component/kernel/v*
_output_shapes

:	*
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
��
ConstConst*
_output_shapes
:	
�*
dtype0*��
value��B��	
�"��      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?      �?r��+s"�?�?���,�?`�}�?�YV��?{�]5v�? *��-�?��;�?q�?Q�?%�o�ކ�?%�o�ކ�?r�?Q�?��;�? *��-�?{�]5v�?�YV��?a�}�?�?���,�?t��+s"�?a��+s"���?���,��V�}���YV���{�]5v��
 *��-����;��r�?Q��%�o�ކ��%�o�ކ��r�?Q����;�� *��-��{�]5v���YV���k�}���?���,��}��+s"��2�e�;�?&���y�?>��*Ϳ?U�>n���?�a�A���?�-X���?����?"����+�?���8���?���8���?#����+�?����?�-X���?�a�A���?T�>n���?@��*Ϳ?"���y�?5�e�;�? �e�;�����y��3��*Ϳ�S�>n��ſ�a�A��ʿ�-X��ο���ѿ#����+ҿ���8��ҿ���8��ҿ#����+ҿ���ѿ�-X��ο�a�A��ʿZ�>n��ſJ��*Ϳ�%���y��?�e�;���r��M�?yv��5߽?0R�tc�?C!͌�?�U�<$g�?�+��Ǣ�?ܹ4�&�?z�f����?E6=|���?E6=|���?{�f����?ݹ4�&�?�+��Ǣ�?�U�<$g�?B!͌�?0R�tc�?sv��5߽?�r��M�?�r��M��lv��5߽��/R�tcȿA!͌п�U�<$gԿ�+��Ǣ׿ڹ4�&ڿ{�f���ۿE6=|��ܿE6=|��ܿ|�f���ۿ߹4�&ڿ�+��Ǣ׿�U�<$gԿF!͌п0R�tcȿwv��5߽��r��M����}h��?��l��?̊@d�?�P+����?���v���?�8�1�?����A�?qj?@`d�?��5����?��5����?rj?@`d�?����A�?�8�1�?���v���?�P+����?͊@d�?��l��?��}h��?��}h�����l�ÿƊ@dп�P+���տ���v��ڿ�8�1߿����A�rj?@`d���5������5����rj?@`d⿛���A῞8�1߿���v��ڿ�P+���տҊ@dп��l�ÿ��}h����@�,�?5�:u���?�o q���?��q(Ղ�?���iW�?r8��L��?�`)d���?��?Y�R�?�1�L��?�1�L��?��?Y�R�?�`)d���?r8��L��?���iW�?��q(Ղ�?�o q���?1�:u���?�@�,�?�@�,��+�:u��ǿo q��ӿ��q(Ղڿ���iW�u8��L�⿎`)d��俞�?Y�R濤1�L�翤1�L�翞�?Y�R濑`)d���s8��L�����iW���q(Ղڿ�o q��ӿ4�:u��ǿ�@�,������}�?�+��s�?5�(ói�?�X��1k�?T,��	��?�(�)���?�e�bE�?�+/����?둍�rj�?둍�rj�?�+/����?�e�bE�?�(�)���?T,��	��?�X��1k�?5�(ói�?�+��s�?����}�?����}����+��s˿,�(óiֿ�X��1k޿T,��	�⿈(�)����e�bE��+/����둍�rj�둍�rj��+/�����e�bE迅(�)���U,��	�⿧X��1k޿=�(óiֿ	�+��s˿����}����gy-U�?�'�0�?�fTA���??u[��?�S�ʞ�?�0a�?��?g(�0�m�?�����*�?���{��?���{��?����*�?h(�0�m�?�0a�?��?�S�ʞ�?>u[��?�fTA���?쓽'�0�?»gy-U�?��gy-U��哽'�0ο�fTA��ؿ>u[���S�ʞ��0a�?��e(�0�m�����*쿆��{������{�������*�j(�0�m��0a�?���S�ʞ�Cu[�࿖fTA��ؿ�'�0ο˻gy-U���ٿͫ��?v�����?���,�?�]�n<��?��X����?0��I ^�?hɌ��?"����?y*t<���?y*t<���?"����?iɌ��?0��I ^�?��X����?�]�n<��?���,�?s�����?�ٿͫ��?�ٿͫ���o����п���,ڿ�]�n<����X����4��I ^�fɌ��"�����y*t<���y*t<���"�����kɌ��1��I ^���X�����]�n<�����,ڿu����п�ٿͫ�����y�F;�?�:?�9��?;�Z@��?L����I�?q�sċ�?a0])V�?�j���?�&a��?�(�r��?�(�r��?�&a��?�j���?a0])V�?r�sċ�?K����I�? ;�Z@��?�:?�9��?��y�F;�?��y�F;���:?�9�п;�Z@�ڿJ����I�q�sċ�e0])V��j����&a���(�r���(�r���&a��k���b0])V�s�sċ�P����I�(;�Z@�ڿ�:?�9�п��y�F;��%�o�ކ�?r�?Q�?��;�? *��-�?{�]5v�?�YV��?`�}�?�?���,�?p��+s"�?g��+s"���?���,��^�}���YV���{�]5v�� *��-����;��r�?Q��%�o�ކ��%�o�ކ��r�?Q����;��	 *��-��{�]5v���YV���j�}���?���,��x��+s"��]��+s"�?�?���,�?U�}�?�YV��?{�]5v�? *��-�?��;�?r�?Q�?%�o�ކ�?���8���?#����+�?����?�-X���?�a�A���?V�>n���?>��*Ϳ?+���y�?0�e�;�?%�e�;��(���y��<��*Ϳ�V�>n��ſ�a�A��ʿ�-X��ο���ѿ#����+ҿ���8��ҿ���8��ҿ#����+ҿ���ѿ�-X��ο�a�A��ʿR�>n��ſI��*Ϳ�$���y��9�e�;���e�;�?���y�?1��*Ϳ?U�>n���?�a�A���?�-X���?����?#����+�?���8���?E6=|���?{�f����?ܹ4�&�?�+��Ǣ�?�U�<$g�?D!͌�?0R�tc�?�v��5߽?�r��M�?�r��M��|v��5߽�0R�tcȿD!͌п�U�<$gԿ�+��Ǣ׿ܹ4�&ڿ{�f���ۿE6=|��ܿE6=|��ܿ|�f���ۿ߹4�&ڿ�+��Ǣ׿�U�<$gԿ@!͌п0R�tcȿuv��5߽��r��M���r��M�?jv��5߽?�/R�tc�?C!͌�?�U�<$g�?+��Ǣ�?ڹ4�&�?{�f����?E6=|���?��5����?rj?@`d�?����A�?�8�1�?���v���?�P+����?̊@d�?l��?��}h��?��}h�����l�ÿˊ@dп�P+���տ���v��ڿ�8�1߿����A�rj?@`d���5������5����rj?@`d⿛���Aῡ8�1߿���v��ڿ�P+���տъ@dп��l�ÿ��}h�����}h��?��l��?Ɗ@d�?�P+����?���v���?�8�1�?����A�?rj?@`d�?��5����?�1�L��?��?Y�R�?�`)d���?s8��L��?���iW�?��q(Ղ�?�o q���?;�:u���?�@�,�?�@�,��8�:u��ǿ�o q��ӿ��q(Ղڿ���iW�s8��L�⿏`)d��俞�?Y�R濤1�L�翤1�L�翞�?Y�R濑`)d���t8��L�����iW࿽�q(Ղڿ�o q��ӿ2�:u��ǿ�@�,���@�,�?)�:u���?~o q���?��q(Ղ�?���iW�?q8��L��?�`)d���?��?Y�R�?�1�L��?둍�rj�?�+/����?�e�bE�?�(�)���?T,��	��?�X��1k�?5�(ói�?�+��s�?����}�?����}���+��s˿3�(óiֿ�X��1k޿T,��	�⿆(�)����e�bE��+/����둍�rj�둍�rj��+/�����e�bE过(�)���U,��	�⿛X��1k޿<�(óiֿ�+��s˿����}������}�?��+��s�?+�(ói�?�X��1k�?S,��	��?�(�)���?�e�bE�?�+/����?둍�rj�?���{��?����*�?g(�0�m�?�0a�?��?�S�ʞ�?@u[��?�fTA���?���'�0�?��gy-U�?��gy-U�����'�0ο�fTA��ؿ@u[���S�ʞ��0a�?��g(�0�m�����*쿆��{������{�������*�j(�0�m��0a�?���S�ʞ�=u[�࿕fTA��ؿ'�0οƻgy-U����gy-U�?㓽'�0�?�fTA���??u[��?�S�ʞ�?�0a�?��?e(�0�m�?����*�?���{��?y*t<���?"����?hɌ��?1��I ^�?��X����?�]�n<��?���,�?z�����?�ٿͫ��?�ٿͫ���x����п���,ڿ�]�n<����X����2��I ^�hɌ��"�����y*t<���y*t<���"�����kɌ��3��I ^���X�����]�n<�����,ڿt����п�ٿͫ����ٿͫ��?n�����?���,�?�]�n<��?��X����?/��I ^�?fɌ��?"����?y*t<���?�(�r��?�&a��?�j���?b0])V�?r�sċ�?M����I�?;�Z@��?�:?�9��?��y�F;�?��y�F;���:?�9�п;�Z@�ڿM����I�q�sċ�c0])V��j����&a���(�r���(�r���&a��k���d0])V�s�sċ�I����I�';�Z@�ڿ�:?�9�п��y�F;����y�F;�?�:?�9��?;�Z@��?L����I�?p�sċ�?`0])V�?�j���?�&a��?�(�r��?E�U��� ?�P?��oR?��* �h?��k �v?�>�`�3�?.�����?��˻:B�?uI砤�?��`.�?��`.�?wI砤�?��˻:B�?.�����?�>�`�3�?��k �v?��* �h?�P?��oR?H�U��� ?-�U��� ?�P?��oR?��* �h?��k �v?�>�`�3�?5�����?��˻:B�?wI砤�?��`.�?��`.�?wI砤�?��˻:B�?0�����?�>�`�3�?��k �v?��* �h?�P?��oR?U�U��� ?L/Ӆ�E? E��w?�,Ф��?�hOl�?�'f&Y�?��$C���?Ϗ`�+�?���
��?uɿV�?uɿV�?���
��?Ϗ`�+�?��$C���?�'f&Y�?�hOl�?�,Ф��? E��w?Q/Ӆ�E?//Ӆ�E? E��w?��,Ф��?�hOl�?�'f&Y�?�$C���?ˏ`�+�?���
��?uɿV�?uɿV�?���
��?я`�+�?��$C���?�'f&Y�?�hOl�?&�,Ф��? E��w?b/Ӆ�E?��a�KY?�}�d��?pM-d��?�0Rq�?=�O{s�?�h7�:u�?���o�^�?_IF�?�����?�����?`IF�?���o�^�?�h7�:u�?@�O{s�?}�0Rq�?rM-d��?�}�d��?��a�KY?��a�KY?�}�d��?bM-d��?{�0Rq�?=�O{s�?i7�:u�?���o�^�?`IF�?�����?�����?bIF�?���o�^�?�h7�:u�?B�O{s�?��0Rq�?~M-d��?�}�d��?-��a�KY?�I�:f?ʴ�`I�?N��M0�?r��l�ѽ?y7�N��?7����h�?gB1ќ�?,��EN$�?F�H��|�?F�H��|�?.��EN$�?gB1ќ�?7����h�?{7�N��?o��l�ѽ?P��M0�?´�`I�?�I�:f?�I�:f?���`I�?B��M0�?m��l�ѽ?y7�N��?A����h�?dB1ќ�?.��EN$�?F�H��|�?F�H��|�?.��EN$�?kB1ќ�?9����h�?}7�N��?���l�ѽ?Z��M0�?Ǵ�`I�?�I�:f?
�/[:p?�l#�u�?�eI	ٷ?��-K���?��3����?O��p
f�?��� k�?�gCe�$�?����<��?����<��?hCe�$�?��� k�?O��p
f�?��3����?��-K���?�eI	ٷ?�l#�u�?�/[:p?��/[:p?�l#�u�?�eI	ٷ?��-K���?��3����?V��p
f�?��� k�?hCe�$�?����<��?����<��?hCe�$�?��� k�?R��p
f�?��3����?��-K���?�eI	ٷ?�l#�u�?�/[:p?U�V"L]u?=�jQ�?:N��he�?��%�d��?��L��?��zE�|�?�J7j�?�K�H��?�F³\��?�F³\��?�K�H��?�J7j�?��zE�|�?��L��?��%�d��?:N��he�?4�jQ�?W�V"L]u?7�V"L]u?(�jQ�?!N��he�?��%�d��?��L��?��zE�|�?�J7j�?�K�H��?�F³\��?�F³\��?�K�H��?�J7j�?��zE�|�?��L��?��%�d��?PN��he�?9�jQ�?i�V"L]u?�.#��y?xc�^�{�?�meFT��?����S|�?��D�"��?�Pu���?WI����?~^X�i��?�G�yu_�?�G�yu_�?^X�i��?YI����?�Pu���?��D�"��?����S|�?�meFT��?mc�^�{�?�.#��y?�.#��y?`c�^�{�?rmeFT��?����S|�?��D�"��?�Pu���?TI����?^X�i��?�G�yu_�?�G�yu_�?�^X�i��?\I����?�Pu���?��D�"��?���S|�?�meFT��?uc�^�{�?(�.#��y?����#}?ֻ+��?NҖ�=i�?o���.��?�
�>��?��.Q'�?`�d5��?1-�JM��?!x�.���?!x�.���?2-�JM��?b�d5��?��.Q'�?��
�>��?m���.��?OҖ�=i�?ֻ+��?����#}?����#}?ֻ+��??Җ�=i�?k���.��?�
�>��?��.Q'�?\�d5��?2-�JM��?!x�.���?!x�.���?4-�JM��?e�d5��?��.Q'�?��
�>��?x���.��?^Җ�=i�?ֻ+��?���#}?�I�|��~?�h��?�d����?~���n��?"a�. ��?����hQ�?=AB��?��AO��?���qX��?���qX��?��AO��??AB��?����hQ�?%a�. ��?{���n��?�d����?��h��?�I�|��~?�I�|��~?�h��?�d����?y���n��?"a�. ��?����hQ�?9AB��?��AO��?���qX��?���qX��?��AO��?BAB��?����hQ�?(a�. ��?����n��?�d����?�h��?�I�|��~?XS�u�W?�>�`�3q?�����Zz?&�*�?�>�`�3�?&�*�?�����Zz?�>�`�3q?VS�u�W?MS�u�W��>�`�3q������Zz�&�*���>�`�3��&�*�������Zz�}>�`�3q�ZS�u�W�GS�u�W?y>�`�3q?�����Zz?&�*�?�>�`�3�?&�*�?�����Zz?~>�`�3q?^S�u�W?CS�u�W�x>�`�3q������Zz�&�*���>�`�3��&�*�������Zz�>�`�3q�dS�u�W��Y�7�~?�'f&Y�?@��C��?|���Ȥ?�'f&Y�?}���Ȥ?@��C��?�'f&Y�?�Y�7�~?�Y�7�~��'f&Y��>��C��}���Ȥ��'f&Y��|���Ȥ�A��C�񠿬'f&Y���Y�7�~��Y�7�~?�'f&Y�?;��C��?|���Ȥ?�'f&Y�?|���Ȥ?C��C��?�'f&Y�?�Y�7�~?�Y�7�~��'f&Y��:��C��|���Ȥ��'f&Y������Ȥ�D��C�񠿯'f&Y���Y�7�~�-/ M�??�O{s�?�f�3�?w-��r�??�O{s�?x-��r�?�f�3�?D�O{s�?+/ M�?$/ M��A�O{s���f�3x-��r��?�O{s��w-��r���f�3:�O{s��./ M��/ M�?4�O{s�?�f�3�?v-��r�?@�O{s�?v-��r�?�f�3�?;�O{s�?1/ M�?/ M��3�O{s���f�3w-��r��?�O{s��z-��r���f�3=�O{s��6/ M��b����z�?y7�N䨶?����[�?�nT$K�?z7�N��?�nT$K�?����[�?~7�N䨶?_����z�?S����z��}7�N䨶�����[���nT$Kſz7�N�ƿ�nT$Kſ����[��v7�N䨶�e����z��L����z�?p7�N䨶?����[�?�nT$K�?{7�N��?�nT$K�?����[�?w7�N䨶?k����z�?F����z��o7�N䨶�����[���nT$Kſy7�N�ƿ�nT$Kſ����[��x7�N䨶�r����z��k�E�/�?��3����?J�r%��?��}�	^�?��3����?��}�	^�?J�r%��?��3����?i�E�/�?_�E�/����3�����H�r%�ɿ��}�	^Ͽ��3���п��}�	^ϿK�r%�ɿ��3�����m�E�/��[�E�/�?��3����?C�r%��?��}�	^�?��3����?��}�	^�?P�r%��?��3����?p�E�/�?V�E�/����3�����B�r%�ɿ��}�	^Ͽ��3���п��}�	^ϿR�r%�ɿ��3�����v�E�/���V�^K��?��L��?�8���?�.Dۥ�?��L��?�.Dۥ�?�8���?��L��?�V�^K��?�V�^K�����L�ſ�8��п�.DۥԿ��L�տ�.DۥԿ�8��п��L�ſ�V�^K����V�^K��?��L��?�8���?�.Dۥ�?��L��?�.Dۥ�?�8���?��L��?�V�^K��?�V�^K�����L�ſ�8��п�.DۥԿ��L�տ�.DۥԿ�8��п��L�ſ�V�^K���Zf-�hu�?��D�"��?[u�:�[�?��{f���?��D�"��?��{f���?[u�:�[�?��D�"��?Xf-�hu�?Pf-�hu����D�"�ʿZu�:�[Կ��{f��ؿ��D�"�ڿ��{f��ؿ[u�:�[Կ��D�"�ʿ[f-�hu��Lf-�hu�?��D�"��?Uu�:�[�?��{f���?��D�"��?��{f���?`u�:�[�?��D�"��?^f-�hu�?If-�hu����D�"�ʿUu�:�[Կ��{f��ؿ��D�"�ڿ��{f��ؿau�:�[Կ��D�"�ʿcf-�hu��/�e�Ѵ?��
�>��?�=�G��?d�H�)�?��
�>��?d�H�)�?�=�G��?��
�>��?-�e�Ѵ?&�e�Ѵ���
�>�Ϳ�=�G�ֿd�H�)ܿ��
�>�ݿd�H�)ܿ�=�G�ֿ�
�>�Ϳ1�e�Ѵ�!�e�Ѵ?�
�>��?�=�G��?d�H�)�?��
�>��?d�H�)�?�=�G��?�
�>��?5�e�Ѵ?�e�Ѵ��
�>�Ϳ�=�G�ֿd�H�)ܿ��
�>�ݿd�H�)ܿ�=�G�ֿ�
�>�Ϳ:�e�Ѵ�v���5�?$a�. ��?U��UV�?2�	b���?#a�. ��?3�	b���?U��UV�?*a�. ��?t���5�?k���5��'a�. �ϿT��UVؿ3�	b��ݿ#a�. �߿2�	b��ݿV��UVؿa�. �Ͽx���5��f���5�?a�. ��?O��UV�?1�	b���?%a�. ��?1�	b���?[��UV�? a�. ��?|���5�?b���5��a�. �ϿN��UVؿ2�	b��ݿ#a�. �߿6�	b��ݿ\��UVؿ"a�. �Ͽ����5����`.�?wI砤�?��˻:B�?0�����?�>�`�3�?��k �v?��* �h?�P?��oR?C�U��� ?6�U��� ?�P?��oR?��* �h?��k �v?�>�`�3�?2�����?��˻:B�?wI砤�?��`.�?��`.�?wI砤�?��˻:B�?3�����?�>�`�3�?��k �v?��* �h?�P?��oR?N�U��� ?'�U��� ?�P?��oR?��* �h?��k �v?~>�`�3�?-�����?��˻:B�?wI砤�?��`.�?uɿV�?���
��?Ϗ`�+�?��$C���?�'f&Y�?�hOl�?�,Ф��?" E��w?I/Ӆ�E?7/Ӆ�E? E��w?�,Ф��?�hOl�?�'f&Y�?�$C���?Ϗ`�+�?���
��?uɿV�?uɿV�?���
��?я`�+�?�$C���?�'f&Y�?�hOl�?$�,Ф��? E��w?X/Ӆ�E?'/Ӆ�E?��D��w?��,Ф��?�hOl�?�'f&Y�?��$C���?ˏ`�+�?���
��?uɿV�?�����?`IF�?���o�^�?�h7�:u�?@�O{s�?��0Rq�?pM-d��?�}�d��?��a�KY?���a�KY?�}�d��?mM-d��?��0Rq�?=�O{s�?i7�:u�?���o�^�?`IF�?�����?�����?bIF�?���o�^�?i7�:u�?B�O{s�?y�0Rq�?|M-d��?�}�d��? ��a�KY?��a�KY?�}�d��?aM-d��?�0Rq�?;�O{s�?�h7�:u�?���o�^�?`IF�?�����?F�H��|�?.��EN$�?gB1ќ�?9����h�?{7�N��?u��l�ѽ?N��M0�?ִ�`I�?�I�:f?�I�:f?Ѵ�`I�?L��M0�?u��l�ѽ?y7�N��?=����h�?gB1ќ�?.��EN$�?F�H��|�?F�H��|�?.��EN$�?kB1ќ�??����h�?}7�N��?j��l�ѽ?X��M0�?Ŵ�`I�?�I�:f?�I�:f?���`I�?B��M0�?r��l�ѽ?v7�N��?5����h�?dB1ќ�?.��EN$�?F�H��|�?����<��?hCe�$�?��� k�?R��p
f�?��3����?��-K���?�eI	ٷ?�l#�u�?�/[:p?��/[:p?�l#�u�?�eI	ٷ?��-K���?��3����?R��p
f�?��� k�?hCe�$�?����<��?����<��?hCe�$�?��� k�?T��p
f�?��3����?��-K���?�eI	ٷ?�l#�u�?�/[:p?�/[:p?�l#�u�?�eI	ٷ?��-K���?��3����?M��p
f�?��� k�?hCe�$�?����<��?�F³\��?�K�H��?�J7j�?��zE�|�?��L��?��%�d��?:N��he�?I�jQ�?P�V"L]u?@�V"L]u?B�jQ�?4N��he�?��%�d��?��L��?��zE�|�?�J7j�?�K�H��?�F³\��?�F³\��?�K�H��?�J7j�?��zE�|�?��L��?~�%�d��?NN��he�?8�jQ�?`�V"L]u?-�V"L]u?&�jQ�?N��he�?��%�d��?��L��?��zE�|�?�J7j�?�K�H��?�F³\��?�G�yu_�?^X�i��?WI����?�Pu���?��D�"��? ���S|�?�meFT��?�c�^�{�?	�.#��y?�.#��y?~c�^�{�?~meFT��? ���S|�?��D�"��?�Pu���?WI����?^X�i��?�G�yu_�?�G�yu_�?�^X�i��?\I����?�Pu���?��D�"��?����S|�?�meFT��?qc�^�{�?�.#��y?ށ.#��y?\c�^�{�?rmeFT��?����S|�?��D�"��?�Pu���?TI����?^X�i��?�G�yu_�?!x�.���?2-�JM��?`�d5��?��.Q'�?��
�>��?q���.��?NҖ�=i�?ֻ+��?����#}?����#}?ֻ+��?KҖ�=i�?q���.��?�
�>��?��.Q'�?`�d5��?2-�JM��?!x�.���?!x�.���?4-�JM��?e�d5��?��.Q'�?��
�>��?i���.��?\Җ�=i�?ֻ+��?���#}?����#}?ֻ+��?=Җ�=i�?o���.��?�
�>��?��.Q'�?\�d5��?2-�JM��?!x�.���?���qX��?��AO��?=AB��?����hQ�?%a�. ��?����n��?�d����?��h��?�I�|��~?�I�|��~?��h��?�d����?����n��?"a�. ��?����hQ�?=AB��?��AO��?���qX��?���qX��?��AO��?BAB��?����hQ�?(a�. ��?w���n��?�d����?�h��?�I�|��~?�I�|��~?�h��?�d����?~���n��?a�. ��?����hQ�?9AB��?��AO��?���qX��?�O�<�.�>4u��v�?nB�o�%?3�`3��:?�e� N9I?lobA~�S?�(j:1�Z?�}��`?{o���a?{o���a?�}��`?�(j:1�Z?lobA~�S?�e� N9I?/�`3��:?pB�o�%?*u��v�?�O�<�.�>tO�<�.��u��v��WB�o�%�+�`3��:��e� N9I�uobA~�S��(j:1�Z��}��`�{o���a�{o���a��}��`��(j:1�Z�nobA~�S��e� N9I�H�`3��:��B�o�%�1u��v���O�<�.��=
��c��>0(\MC�<?\Y�oh_?O�{�%�s?s'>��c�?�۸�Ɩ�?٣�U\�?�!�8�o�?�H�׵�?�H�׵�?�!�8�o�?٣�U\�?�۸�Ɩ�?u'>��c�?L�{�%�s?bY�oh_?(\MC�<?C
��c��>
��c��(\MC�<�;Y�oh_�I�{�%�s�s'>��c���۸�Ɩ��ң�U\���!�8�o���H�׵���H�׵���!�8�o��ܣ�U\���۸�Ɩ��w'>��c��]�{�%�s�Y�oh_�+(\MC�<�W
��c��g�`��?�i�Z?_�e U|?\f0+��?E[����?��0!ʩ?b��v�?>䝙l$�?wB�l[1�?wB�l[1�?@䝙l$�?d��v�?��0!ʩ?H[����?Yf0+��?_�e U|?�i�Z?�g�`��?Rg�`����i�Z��^�e U|�Vf0+���E[������0!ʩ�^��v��@䝙l$��wB�l[1��wB�l[1��B䝙l$��h��v����0!ʩ�J[�����ff0+���$_�e U|��i�Z��g�`����j(�H"?� f[	�m?M��H�?�"�4�Z�?{&^gn�?�MD��?��cd �?H�&zM�?FT���?FT���? H�&zM�?��cd �?�MD��?~&^gn�?�"�4�Z�?P��H�?� f[	�m?�j(�H"?hj(�H"�� f[	�m�;��H���"�4�Z��{&^gn���MD�����cd Ŀ H�&zMȿFT��ʿFT��ʿ H�&zMȿ��cd Ŀ�MD����&^gn���"�4�Z��`��H��� f[	�m��j(�H"�D��f�W0?� ���z?#L�{]�??6%�<2�?.?����?�sKce��?�<g@��?�br�ع�?�u6aE��?�u6aE��?�br�ع�?�<g@��?�sKce��?1?����?;6%�<2�?(L�{]�?� ���z?J��f�W0?#��f�W0�} ���z�L�{]��96%�<2��.?������sKce�ʿ�<g@�ѿ�br�عտ�u6aE�׿�u6aE�׿�br�عտ�<g@�ѿ�sKce�ʿ1?�����I6%�<2��CL�{]��� ���z�]��f�W0�h��� �8?{|	�4�?*�m��?�J2�|�?�����?�E�)�?��N���? �=��h�?x,#%5 �?x,#%5 �?"�=��h�?��N���?�E�)�?�����?�J2�|�?*�m��?p|	�4�?l��� �8?4��� �8�`|	�4���)�m����J2�|������ɿ��E�)Կ��N��ۿ"�=��h�x,#%5 �x,#%5 �$�=��h���N��ۿ�E�)Կ����ɿ�J2�|��.*�m���v|	�4������ �8���k��j@?u�uB1ߊ?�"؂q?�?B?��G�?����?Ȫ{fj��?�x0�A�?�N��F��?o��*��?o��*��?�N��F��?�x0�A�?Ȫ{fj��?�����???��G�?�"؂q?�?e�uB1ߊ?��k��j@?\�k��j@�R�uB1ߊ��"؂q?��??��G¿���ѿ֪{fj�ڿ�x0�A⿾N��F��o��*��o��*���N��F�志x0�A�̪{fj�ڿ����ѿP?��G¿#؂q?��p�uB1ߊ���k��j@��g����C?PjV�?2�S����?����P��?g���,��?̳�jK��?3e��U��?a0rr#�?Ha��m��?Ha��m��?a0rr#�?6e��U��?̳�jK��?i���,��?����P��?4�S����?�PjV�?�g����C?�g����C��PjV�� �S�����~���P�ſg���,�Կ۳�jK�߿/e��U��a0rr#�Ha��m��Ha��m��a0rr#�:e��U��г�jK�߿l���,�Կ����P�ſF�S�����PjV��h����C��gY��uE?hD�	��?5����?`�[����?1Ib�?&�-�Zf�?��ʐ�?�q�[��?7�Ȯ�K�?7�Ȯ�K�?�q�[��?��ʐ�?&�-�Zf�?4Ib�?\�[����?7����?uhD�	��?�gY��uE?sgY��uE�ihD�	��������X�[���ǿ1Ibֿ.�-�Zf���ʐ��q�[��7�Ȯ�K�7�Ȯ�K��q�[����ʐ�(�-�Zf�7Ibֿo�[���ǿH�����|hD�	����gY��uE�mJ�H�F�>�Rw"?��(l�7?��G:C?�e� N9I?�
�_uK?�j�'�H?���k:A?H:���(?>:���(����k:A��j�'�H��
�_uK��e� N9I���G:C���(l�7�	�Rw"�pJ�H�F�TJ�H�F� �Rw"�r�(l�7���G:C��e� N9I��
�_uK��j�'�H����k:A�Q:���(�4:���(?���k:A?�j�'�H?�
�_uK?�e� N9I? �G:C?��(l�7?�Rw"?~J�H�F�>6���0)?��o�h�Z?A�Ps��p?S3Kf�|?s'>��c�?I��w��?�v��'�? �ȴy?�53���a?�53���a� �ȴy��v��'��I��w���t'>��c��Q3Kf�|�B�Ps��p���o�h�Z�<���0)����0)���o�h�Z�6�Ps��p�O3Kf�|�t'>��c��K��w����v��'�� �ȴy��53���a��53���a? �ȴy?�v��'�?I��w��?t'>��c�?^3Kf�|?K�Ps��p?��o�h�Z?P���0)?oP5�F?/�da�Ix?<��0a�?`�"��I�?F[����?0 g��?#b9�I�?�.����?A����;�?:����;���.�����#b9�I��0 g���G[�����^�"��I��?��0a��%�da�Ix�sP5�F�LP5�F��da�Ix�)��0a��\�"��I��G[�����0 g���#b9�I���.�����G����;��4����;�?�.����?�"b9�I�?0 g��?H[����?h�"��I�?Q��0a�?,�da�Ix?�P5�F?ar���Z?`�pQ��?O��j�u�?=����?|&^gn�?�������?�i�Ӹ�?YS��(�?0=��˨�?)=��˨��XS��(���i�Ӹ����������}&^gn��<�����Q��j�u��W�pQ�ꋿfr���Z�<r���Z�I�pQ�ꋿD��j�u��;�����|&^gn�����������i�Ӹ��RS��(��7=��˨��"=��˨�?HS��(�?�i�Ӹ�?�������?}&^gn�?H����?[��j�u�?]�pQ��?{r���Z?h�dD�Yg?�i�R)��?3���7�?������?/?����?n�9|��?���\���?��3+I�?B�V��?B�V�����3+I�����\����n�9|�¿0?������������5���7���i�R)���n�dD�Yg�H�dD�Yg��i�R)������7���������/?�����o�9|�¿���\������3+I��B�V���B�V��?��3+I�?���\���?p�9|��?.?����?������?G���7�?�i�R)��?�dD�Yg?�0`�ߢq?�u��٢?@,p�+��?S�UW���?�����?���g��?�'�KNH�?W��c��?|�꟧2�?r�꟧2��U��c����'�KNHɿ���g�̿����ɿR�UW��ÿ@,p�+����u��٢��0`�ߢq�}0`�ߢq��u��٢�/,p�+���R�UW��ÿ����ɿ���g�̿�'�KNHɿQ��c�����꟧2��h�꟧2�?M��c��?�'�KNH�?���g��?�����?[�UW���?N,p�+��?�u��٢?�0`�ߢq?�aauw?J�]�_�?�@��o\�?I�Ɓ�?�����?���4��?Ɨ}B��?�&6�ld�?���v���?���v�����&6�ldǿƗ}B�п���4�ҿ����ѿH�Ɓʿ�@��o\��@�]�_���aauw��aauw�5�]�_���@��o\��I�Ɓʿ����ѿ���4�ҿƗ}B�п�&6�ldǿ��v�����v���?�&6�ld�?�ŗ}B��?���4��?�����?S�Ɓ�?�@��o\�?G�]�_�?bauw?�o,s�|?YO���?������?��e��C�?h���,��?��t�LS�?��_��"�?�V��?�WMK��?�WMK����V�̿��_��"Կ��t�LSֿh���,�Կ��e��CϿ�����¿ YO�����o,s�|�oo,s�|��XO���������¿��e��CϿi���,�Կ��t�LSֿ��_��"Կ�V�̿�WMK����WMK��?�V��?��_��"�?��t�LS�?i���,��?��e��C�?������?YO���?�o,s�|?|�ck�~?�n�/�b�?�|�d&�?�]gK��?2Ib�?�/�]�?��SF��?�Pl,���?b�x+t�?Y�x+t絿�Pl,��ο��SF�տ�/�]ؿ3Ibֿ�]gK�ѿ�|�d&Ŀ�n�/�b����ck�~�O�ck�~��n�/�b���|�d&Ŀ�]gK�ѿ3Ibֿ�/�]ؿ��SF�տ�Pl,��οj�x+t絿P�x+t�?�Pl,���?���SF��?�/�]�?4Ib�?�]gK��?�|�d&�?�n�/�b�?��ck�~?J:���(?���k:A?�j�'�H?�
�_uK?�e� N9I?��G:C?��(l�7?�Rw"?kJ�H�F�>^J�H�F�>�Rw"?}�(l�7?��G:C?�e� N9I?�
�_uK?�j�'�H?���k:A?L:���(?8:���(����k:A��j�'�H��
�_uK��e� N9I���G:C���(l�7��Rw"�wJ�H�F�NJ�H�F���Rw"�p�(l�7���G:C��e� N9I��
�_uK��j�'�H����k:A�V:���(��53���a? �ȴy?�v��'�?I��w��?t'>��c�?T3Kf�|?A�Ps��p?��o�h�Z?3���0)?���0)?��o�h�Z??�Ps��p?T3Kf�|?s'>��c�?J��w��?�v��'�? �ȴy?�53���a?�53���a� �ȴy��v��'��I��w���u'>��c��N3Kf�|�J�Ps��p���o�h�Z�D���0)����0)���o�h�Z�4�Ps��p�S3Kf�|�q'>��c��K��w����v��'�� �ȴy��53���a�B����;�?�.����?#b9�I�?0 g��?G[����?c�"��I�?<��0a�?:�da�Ix?jP5�F?WP5�F?4�da�Ix?8��0a�?c�"��I�?F[����?0 g��?#b9�I�?�.����?D����;�?6����;���.����� #b9�I��0 g���H[�����Z�"��I��M��0a��(�da�Ix�yP5�F�EP5�F��da�Ix�'��0a��`�"��I��F[�����0 g���#b9�I���.�����K����;��2=��˨�?TS��(�?�i�Ӹ�?�������?}&^gn�??����?O��j�u�?m�pQ��?[r���Z?Hr���Z?h�pQ��?M��j�u�??����?|&^gn�?�������?�i�Ӹ�?PS��(�?4=��˨�?%=��˨��JS��(���i�Ӹ����������~&^gn��9�����Y��j�u��[�pQ�ꋿor���Z�3r���Z�F�pQ�ꋿD��j�u��=�����z&^gn�����������i�Ӹ��SS��(��<=��˨��B�V��?��3+I�?���\���?p�9|��?0?����?������?3���7�?�i�R)��?e�dD�Yg?Q�dD�Yg?�i�R)��?.���7�?������?/?����?n�9|��?���\���?��3+I�?B�V��?B�V�����3+I�����\����o�9|�¿0?������������C���7���i�R)���t�dD�Yg�@�dD�Yg��i�R)������7���������,?�����o�9|�¿���\������3+I��"B�V����꟧2�?S��c��?�'�KNH�?���g��?�����?U�UW���?@,p�+��?$�u��٢?�0`�ߢq?�0`�ߢq?�u��٢?;,p�+��?U�UW���?�����?���g��?�'�KNH�?P��c��?��꟧2�?m�꟧2��M��c����'�KNHɿ���g�̿����ɿP�UW��ÿM,p�+����u��٢��0`�ߢq�u0`�ߢq�	�u��٢�-,p�+���S�UW��ÿ����ɿ���g�̿�'�KNHɿR��c�����꟧2�� ��v���?�&6�ld�?Ɨ}B��?���4��?�����?K�Ɓ�?�@��o\�?U�]�_�?�aauw?�aauw?O�]�_�?�@��o\�?K�Ɓ�?�����?���4��?Ɨ}B��?�&6�ld�?��v���?���v�����&6�ldǿ�ŗ}B�п���4�ҿ����ѿG�Ɓʿ�@��o\��C�]�_���aauw��aauw�2�]�_���@��o\��I�Ɓʿ���ѿ���4�ҿƗ}B�п�&6�ldǿ��v�����WMK��?�V��?��_��"�?��t�LS�?h���,��?��e��C�?������?YO���?�o,s�|?|o,s�|?YO���?������?��e��C�?h���,��?��t�LS�?��_��"�?�V��?�WMK��?�WMK����V�̿��_��"Կ��t�LSֿj���,�Կ��e��CϿ�����¿YO�����o,s�|�eo,s�|��XO���������¿��e��CϿg���,�Կ��t�LSֿ��_��"Կ�V�̿�WMK���d�x+t�?�Pl,���?��SF��?�/�]�?3Ib�?�]gK��?�|�d&�?�n�/�b�?v�ck�~?]�ck�~?�n�/�b�?�|�d&�?�]gK��?2Ib�?�/�]�?��SF��?�Pl,���?f�x+t�?T�x+t絿�Pl,��ο ��SF�տ�/�]ؿ5Ibֿ�]gK�ѿ�|�d&Ŀ�n�/�b����ck�~�D�ck�~��n�/�b���|�d&Ŀ�]gK�ѿ1Ibֿ�/�]ؿ��SF�տ�Pl,��οo�x+t絿{o���a?�}��`?�(j:1�Z?nobA~�S?�e� N9I?7�`3��:?nB�o�%?Bu��v�?�O�<�.�>�O�<�.��;u��v��iB�o�%�7�`3��:��e� N9I�qobA~�S��(j:1�Z��}��`�{o���a�{o���a��}��`��(j:1�Z�sobA~�S��e� N9I�&�`3��:��B�o�%�-u��v���O�<�.��hO�<�.�>u��v�?UB�o�%?3�`3��:?�e� N9I?jobA~�S?�(j:1�Z?�}��`?{o���a?�H�׵�?�!�8�o�?٣�U\�?�۸�Ɩ�?u'>��c�?R�{�%�s?\Y�oh_?F(\MC�<?9
��c��>"
��c��8(\MC�<�VY�oh_�R�{�%�s�s'>��c���۸�Ɩ��٣�U\���!�8�o���H�׵���H�׵���!�8�o��ܣ�U\���۸�Ɩ��w'>��c��G�{�%�s�|Y�oh_�'(\MC�<�K
��c��
��c��>(\MC�<?5Y�oh_?O�{�%�s?n'>��c�?�۸�Ɩ�?ң�U\�?�!�8�o�?�H�׵�?wB�l[1�?@䝙l$�?b��v�?��0!ʩ?H[����?`f0+��?_�e U|?�i�Z?�g�`��?ig�`����i�Z��^�e U|�`f0+���E[�������0!ʩ�b��v��@䝙l$��wB�l[1��wB�l[1��B䝙l$��h��v�� �0!ʩ�J[�����Sf0+��� _�e U|��i�Z��g�`���Dg�`��?�i�Z?�^�e U|?\f0+��?C[����?��0!ʩ?^��v�?@䝙l$�?wB�l[1�?FT���? H�&zM�?��cd �?�MD��?~&^gn�?�"�4�Z�?M��H�?� f[	�m?�j(�H"?uj(�H"�� f[	�m�J��H���"�4�Z��{&^gn���MD�����cd Ŀ H�&zMȿFT��ʿFT��ʿ H�&zMȿ��cd Ŀ�MD����&^gn���"�4�Z��]��H��� f[	�m��j(�H"�^j(�H"?� f[	�m?;��H�?�"�4�Z�?w&^gn�?�MD��?��cd �? H�&zM�?FT���?�u6aE��?�br�ع�?�<g@��?�sKce��?1?����?A6%�<2�?#L�{]�?� ���z?A��f�W0?,��f�W0�� ���z�L�{]��A6%�<2��.?������sKce�ʿ�<g@�ѿ�br�عտ�u6aE�׿�u6aE�׿�br�عտ�<g@�ѿ�sKce�ʿ1?�����56%�<2��>L�{]��� ���z�P��f�W0���f�W0?v ���z? L�{]�??6%�<2�?*?����?�sKce��?�<g@��?�br�ع�?�u6aE��?x,#%5 �?"�=��h�?��N���?�E�)�?�����?�J2�|�?*�m��?�|	�4�?`��� �8?D��� �8��|	�4��*�m����J2�|������ɿ��E�)Կ��N��ۿ"�=��h�x,#%5 �x,#%5 �$�=��h���N��ۿ��E�)Կ����ɿ�J2�|��+*�m���t|	�4��|��� �8�$��� �8?^|	�4�?�)�m��?�J2�|�?�����?�E�)�?��N���?"�=��h�?x,#%5 �?o��*��?�N��F��?�x0�A�?̪{fj��?�����?F?��G�?�"؂q?�?��uB1ߊ?|�k��j@?f�k��j@�}�uB1ߊ��"؂q?��F?��G¿���ѿϪ{fj�ڿ�x0�A⿾N��F��o��*��o��*���N��F�志x0�A�Ҫ{fj�ڿ����ѿ<?��G¿#؂q?��j�uB1ߊ���k��j@�S�k��j@?M�uB1ߊ?�"؂q?�?B?��G�?}����?Ū{fj��?�x0�A�?�N��F��?o��*��?Ha��m��?a0rr#�?3e��U��?г�jK��?i���,��?����P��?2�S����?PjV�?�g����C?�g����C�
PjV��.�S���������P�ſg���,�ԿԳ�jK�߿3e��U��a0rr#�Ha��m��Ha��m��a0rr#�:e��U��س�jK�߿l���,�Կ{���P�ſD�S������PjV���g����C��g����C?�PjV�?�S����?����P��?d���,��?ȳ�jK��?/e��U��?a0rr#�?Ha��m��?7�Ȯ�K�?�q�[��?��ʐ�?(�-�Zf�?4Ib�?d�[����?5����?�hD�	��?�gY��uE?�gY��uE��hD�	���1�����d�[���ǿ1Ibֿ*�-�Zf���ʐ��q�[��7�Ȯ�K�7�Ȯ�K��q�[����ʐ�,�-�Zf�7IbֿT�[���ǿF�����xhD�	����gY��uE�ggY��uE?ehD�	��?����?`�[����?.Ib�?$�-�Zf�?��ʐ�?�q�[��?7�Ȯ�K�?
�
Const_1Const*
_output_shapes
:	�*
dtype0*�
value�B�	�"�ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?ĀH&��^?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?����'�q?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?l�LE`Q{?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?��!�`
�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?%=�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?l��(�"�?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?9��,@��?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?t>z6\�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?�#��:�?
�
Const_2Const*
_output_shapes

:
*
dtype0*i
value`B^
"P        ����MbP?����MbP?����MbP?����MbP?����MbP?����MbP?����MbP?����MbP?����MbP?

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
:���������	*
dtype0*
shape:���������	
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
9:���������:���������	:���������	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� */
f*R(
&__inference_signature_wrapper_96855548
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
!__inference__traced_save_96856821
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
$__inference__traced_restore_96857038��
�
R
&__inference_add_layer_call_fn_96856580
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
A__inference_add_layer_call_and_return_conditional_losses_96853510`
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
�
�
a__inference___backward_add_component_1_layer_call_and_return_conditional_losses_96854126_96854143
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
forward_function_nameMK__forward_add_component_1_layer_call_and_return_conditional_losses_96854142:- )
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
e__inference___backward_layer_5nn_component_layer_call_and_return_conditional_losses_96854036_96854049
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
forward_function_nameQO__forward_layer_5nn_component_layer_call_and_return_conditional_losses_96854048:- )
'
_output_shapes
:���������:$ 

_output_shapes

:d:-)
'
_output_shapes
:���������d
�
w
M__inference_add_component_0_layer_call_and_return_conditional_losses_96853402

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
�
/__inference_Icnn_closure_layer_call_fn_96853839
input_1
unknown:	
	unknown_0:		
	unknown_1:	d
	unknown_2:d
	unknown_3:	d
	unknown_4:dd
	unknown_5:d
	unknown_6:	d
	unknown_7:dd
	unknown_8:d
	unknown_9:	d

unknown_10:dd

unknown_11:d

unknown_12:	

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
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96853767o
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
3:���������	: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_1
�
y
M__inference_add_component_0_layer_call_and_return_conditional_losses_96856451
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
�O
�

J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96853947
input_1'
mean_shift_layer_96853896:	.
decorrelation_layer_96853899:		)
layer__1_input_96853902:	d%
layer__1_input_96853904:d1
layer_0dense_component_96853907:	d.
layer_0nn_component_96853910:dd*
layer_0nn_component_96853912:d1
layer_1dense_component_96853917:	d.
layer_1nn_component_96853920:dd*
layer_1nn_component_96853922:d1
layer_2dense_component_96853927:	d.
layer_2nn_component_96853930:dd*
layer_2nn_component_96853932:d1
layer_5dense_component_96853937:	.
layer_5nn_component_96853940:d*
layer_5nn_component_96853942:
identity��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�.layer_0dense_component/StatefulPartitionedCall�+layer_0nn_component/StatefulPartitionedCall�.layer_1dense_component/StatefulPartitionedCall�+layer_1nn_component/StatefulPartitionedCall�.layer_2dense_component/StatefulPartitionedCall�+layer_2nn_component/StatefulPartitionedCall�.layer_5dense_component/StatefulPartitionedCall�+layer_5nn_component/StatefulPartitionedCall�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1mean_shift_layer_96853896*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_96853337�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_96853899*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_96853348�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_96853902layer__1_input_96853904*
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
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_96853363�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_0dense_component_96853907*
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
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_96853376�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_96853910layer_0nn_component_96853912*
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
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_96853390�
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
M__inference_add_component_0_layer_call_and_return_conditional_losses_96853402�
tf.math.softplus/SoftplusSoftplus(add_component_0/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_1dense_component_96853917*
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
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_96853412�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0layer_1nn_component_96853920layer_1nn_component_96853922*
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
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_96853426�
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
M__inference_add_component_1_layer_call_and_return_conditional_losses_96853438�
tf.math.softplus_1/SoftplusSoftplus(add_component_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_2dense_component_96853927*
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
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_96853448�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0layer_2nn_component_96853930layer_2nn_component_96853932*
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
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_96853462�
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
M__inference_add_component_2_layer_call_and_return_conditional_losses_96853474�
tf.math.softplus_2/SoftplusSoftplus(add_component_2/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_5dense_component_96853937*
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
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_96853484�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0layer_5nn_component_96853940layer_5nn_component_96853942*
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
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_96853498�
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
A__inference_add_layer_call_and_return_conditional_losses_96853510k
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
3:���������	: : : : : : : : : : : : : : : : 2Z
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
:���������	
!
_user_specified_name	input_1
�
�
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_96856386

inputs0
matmul_readvariableop_resource:		
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:		*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������	^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�	
�
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_96856529

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
R__forward_layer_1dense_component_layer_call_and_return_conditional_losses_96854160
inputs_00
matmul_readvariableop_resource:	d
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
:���������	: *�
backward_function_namejh__inference___backward_layer_1dense_component_layer_call_and_return_conditional_losses_96854150_968541612.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�	
�
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_96853390

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
�
y
M__inference_add_component_2_layer_call_and_return_conditional_losses_96856541
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

�
h__inference___backward_layer_5dense_component_layer_call_and_return_conditional_losses_96854018_96854029
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
:���������	*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:	*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������	i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������:	:���������	*m
forward_function_nameTR__forward_layer_5dense_component_layer_call_and_return_conditional_losses_96854028:- )
'
_output_shapes
:���������:$ 

_output_shapes

:	:-)
'
_output_shapes
:���������	
�
�
/__inference_Icnn_closure_layer_call_fn_96856201

inputs
unknown:	
	unknown_0:		
	unknown_1:	d
	unknown_2:d
	unknown_3:	d
	unknown_4:dd
	unknown_5:d
	unknown_6:	d
	unknown_7:dd
	unknown_8:d
	unknown_9:	d

unknown_10:dd

unknown_11:d

unknown_12:	

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
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96853513o
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
3:���������	: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�x
�
H__forward_Icnn_closure_layer_call_and_return_conditional_losses_96854784

inputs'
mean_shift_layer_96853716:	.
decorrelation_layer_96853719:		)
layer__1_input_96853722:	d%
layer__1_input_96853724:d1
layer_0dense_component_96853727:	d.
layer_0nn_component_96853730:dd*
layer_0nn_component_96853732:d1
layer_1dense_component_96853737:	d.
layer_1nn_component_96853740:dd*
layer_1nn_component_96853742:d1
layer_2dense_component_96853747:	d.
layer_2nn_component_96853750:dd*
layer_2nn_component_96853752:d1
layer_5dense_component_96853757:	.
layer_5nn_component_96853760:d*
layer_5nn_component_96853762:
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
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_96853716*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:���������	:���������	:	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__forward_mean_shift_layer_layer_call_and_return_conditional_losses_96854316�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_96853719*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������	:		:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__forward_decorrelation_layer_layer_call_and_return_conditional_losses_96854291�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_96853722layer__1_input_96853724*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:���������d:���������d:	d:���������	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__forward_layer_-1_input_layer_call_and_return_conditional_losses_96854270�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_0dense_component_96853727*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:	d:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_0dense_component_layer_call_and_return_conditional_losses_96854226�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_96853730layer_0nn_component_96853732*
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
O__forward_layer_0nn_component_layer_call_and_return_conditional_losses_96854246�
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
K__forward_add_component_0_layer_call_and_return_conditional_losses_96854208�
tf.math.softplus/SoftplusSoftplus(add_component_0/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1dense_component_96853737*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:	d:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_1dense_component_layer_call_and_return_conditional_losses_96854160�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0layer_1nn_component_96853740layer_1nn_component_96853742*
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
O__forward_layer_1nn_component_layer_call_and_return_conditional_losses_96854180�
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
K__forward_add_component_1_layer_call_and_return_conditional_losses_96854142�
tf.math.softplus_1/SoftplusSoftplus(add_component_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_2dense_component_96853747*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:	d:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_2dense_component_layer_call_and_return_conditional_losses_96854094�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0layer_2nn_component_96853750layer_2nn_component_96853752*
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
O__forward_layer_2nn_component_layer_call_and_return_conditional_losses_96854114�
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
K__forward_add_component_2_layer_call_and_return_conditional_losses_96854076�
tf.math.softplus_2/SoftplusSoftplus(add_component_2/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_5dense_component_96853757*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������:	:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_5dense_component_layer_call_and_return_conditional_losses_96854028�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0layer_5nn_component_96853760layer_5nn_component_96853762*
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
O__forward_layer_5nn_component_layer_call_and_return_conditional_losses_96854048�
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
?__forward_add_layer_call_and_return_conditional_losses_96854010k
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
3:���������	: : : : : : : : : : : : : : : : *z
backward_function_name`^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_96854656_968547852Z
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
:���������	
 
_user_specified_nameinputs
�	
�
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_96853462

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
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_96856372

inputs)
sub_readvariableop_resource:	
identity��sub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:	*
dtype0`
subSubinputssub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	V
IdentityIdentitysub:z:0^NoOp*
T0*'
_output_shapes
:���������	[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_96856420

inputs0
matmul_readvariableop_resource:	d
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
^
2__inference_add_component_0_layer_call_fn_96856445
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
M__inference_add_component_0_layer_call_and_return_conditional_losses_96853402`
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
�x
�
H__forward_Icnn_closure_layer_call_and_return_conditional_losses_96854342

inputs'
mean_shift_layer_96853338:	.
decorrelation_layer_96853349:		)
layer__1_input_96853364:	d%
layer__1_input_96853366:d1
layer_0dense_component_96853377:	d.
layer_0nn_component_96853391:dd*
layer_0nn_component_96853393:d1
layer_1dense_component_96853413:	d.
layer_1nn_component_96853427:dd*
layer_1nn_component_96853429:d1
layer_2dense_component_96853449:	d.
layer_2nn_component_96853463:dd*
layer_2nn_component_96853465:d1
layer_5dense_component_96853485:	.
layer_5nn_component_96853499:d*
layer_5nn_component_96853501:
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
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_96853338*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:���������	:���������	:	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__forward_mean_shift_layer_layer_call_and_return_conditional_losses_96854316�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_96853349*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������	:		:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__forward_decorrelation_layer_layer_call_and_return_conditional_losses_96854291�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_96853364layer__1_input_96853366*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:���������d:���������d:	d:���������	*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__forward_layer_-1_input_layer_call_and_return_conditional_losses_96854270�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_0dense_component_96853377*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:	d:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_0dense_component_layer_call_and_return_conditional_losses_96854226�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_96853391layer_0nn_component_96853393*
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
O__forward_layer_0nn_component_layer_call_and_return_conditional_losses_96854246�
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
K__forward_add_component_0_layer_call_and_return_conditional_losses_96854208�
tf.math.softplus/SoftplusSoftplus(add_component_0/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1dense_component_96853413*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:	d:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_1dense_component_layer_call_and_return_conditional_losses_96854160�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0layer_1nn_component_96853427layer_1nn_component_96853429*
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
O__forward_layer_1nn_component_layer_call_and_return_conditional_losses_96854180�
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
K__forward_add_component_1_layer_call_and_return_conditional_losses_96854142�
tf.math.softplus_1/SoftplusSoftplus(add_component_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_2dense_component_96853449*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������d:	d:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_2dense_component_layer_call_and_return_conditional_losses_96854094�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0layer_2nn_component_96853463layer_2nn_component_96853465*
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
O__forward_layer_2nn_component_layer_call_and_return_conditional_losses_96854114�
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
K__forward_add_component_2_layer_call_and_return_conditional_losses_96854076�
tf.math.softplus_2/SoftplusSoftplus(add_component_2/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_5dense_component_96853485*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������:	:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__forward_layer_5dense_component_layer_call_and_return_conditional_losses_96854028�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0layer_5nn_component_96853499layer_5nn_component_96853501*
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
O__forward_layer_5nn_component_layer_call_and_return_conditional_losses_96854048�
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
?__forward_add_layer_call_and_return_conditional_losses_96854010k
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
3:���������	: : : : : : : : : : : : : : : : *z
backward_function_name`^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_96853990_968543432Z
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
:���������	
 
_user_specified_nameinputs
�
�
0__inference_sobolev_model_layer_call_fn_96855057
input_1
unknown:	
	unknown_0:		
	unknown_1:	d
	unknown_2:d
	unknown_3:	d
	unknown_4:dd
	unknown_5:d
	unknown_6:	d
	unknown_7:dd
	unknown_8:d
	unknown_9:	d

unknown_10:dd

unknown_11:d

unknown_12:	

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
9:���������:���������	:���������	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96854965o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������	q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������	: : : : : : : : : : : : : : : : :	
�:	�:
22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_1:%!

_output_shapes
:	
�:%!

_output_shapes
:	�:$ 

_output_shapes

:

�
�
9__inference_layer_2dense_component_layer_call_fn_96856503

inputs
unknown:	d
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
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_96853448o
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
:���������	: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
^
2__inference_add_component_1_layer_call_fn_96856490
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
M__inference_add_component_1_layer_call_and_return_conditional_losses_96853438`
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
�
�
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_96853376

inputs0
matmul_readvariableop_resource:	d
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
e__inference___backward_layer_1nn_component_layer_call_and_return_conditional_losses_96854168_96854181
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
forward_function_nameQO__forward_layer_1nn_component_layer_call_and_return_conditional_losses_96854180:- )
'
_output_shapes
:���������d:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d
�
�
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_96853348

inputs0
matmul_readvariableop_resource:		
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:		*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������	^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�}
�
!__inference__traced_save_96856821
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
�: : : : : : :	:		:	d:d:	d:dd:d:	d:dd:d:	d:dd:d:	:d:: : : : : : : : : : : : : : : : : : : : :	d:d:	d:dd:d:	d:dd:d:	d:dd:d:	:d::	d:d:	d:dd:d:	d:dd:d:	d:dd:d:	:d:: 2(
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
:	:$ 

_output_shapes

:		:$ 

_output_shapes

:	d: 	

_output_shapes
:d:$
 

_output_shapes

:	d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:	d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:	d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:	:$ 

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

:	d: +

_output_shapes
:d:$, 

_output_shapes

:	d:$- 

_output_shapes

:dd: .

_output_shapes
:d:$/ 

_output_shapes

:	d:$0 

_output_shapes

:dd: 1

_output_shapes
:d:$2 

_output_shapes

:	d:$3 

_output_shapes

:dd: 4

_output_shapes
:d:$5 

_output_shapes

:	:$6 

_output_shapes

:d: 7

_output_shapes
::$8 

_output_shapes

:	d: 9

_output_shapes
:d:$: 

_output_shapes

:	d:$; 

_output_shapes

:dd: <

_output_shapes
:d:$= 

_output_shapes

:	d:$> 

_output_shapes

:dd: ?

_output_shapes
:d:$@ 

_output_shapes

:	d:$A 

_output_shapes

:dd: B

_output_shapes
:d:$C 

_output_shapes

:	:$D 

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
O__forward_layer_1nn_component_layer_call_and_return_conditional_losses_96854180
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
backward_function_namege__inference___backward_layer_1nn_component_layer_call_and_return_conditional_losses_96854168_9685418120
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
6__inference_layer_0nn_component_layer_call_fn_96856429

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
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_96853390o
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
�
y
M__inference_add_component_1_layer_call_and_return_conditional_losses_96856496
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
�
�
L__forward_mean_shift_layer_layer_call_and_return_conditional_losses_96854316
inputs_0)
sub_readvariableop_resource:	
identity

inputs
sub_readvariableop��sub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:	*
dtype0b
subSubinputs_0sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	V
IdentityIdentitysub:z:0^NoOp*
T0*'
_output_shapes
:���������	[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"0
sub_readvariableopsub/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: *~
backward_function_namedb__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_96854299_968543172(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
O__forward_decorrelation_layer_layer_call_and_return_conditional_losses_96854291
inputs_00
matmul_readvariableop_resource:		
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:		*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:���������	^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: *�
backward_function_namege__inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_96854281_968542922.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
`__inference___backward_layer_-1_input_layer_call_and_return_conditional_losses_96854255_96854271
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
:���������	*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/Softplus_grad/mul:z:0*
T0*
_output_shapes

:	d*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������	i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:	dh

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:d"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������d:���������d:	d:���������	*e
forward_function_nameLJ__forward_layer_-1_input_layer_call_and_return_conditional_losses_96854270:- )
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:$ 

_output_shapes

:	d:-)
'
_output_shapes
:���������	
�
�*
$__inference__traced_restore_96857038
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: )
assignvariableop_5_variable:	/
assignvariableop_6_variable_1:		:
(assignvariableop_7_layer__1_input_kernel:	d4
&assignvariableop_8_layer__1_input_bias:dB
0assignvariableop_9_layer_0dense_component_kernel:	d@
.assignvariableop_10_layer_0nn_component_kernel:dd:
,assignvariableop_11_layer_0nn_component_bias:dC
1assignvariableop_12_layer_1dense_component_kernel:	d@
.assignvariableop_13_layer_1nn_component_kernel:dd:
,assignvariableop_14_layer_1nn_component_bias:dC
1assignvariableop_15_layer_2dense_component_kernel:	d@
.assignvariableop_16_layer_2nn_component_kernel:dd:
,assignvariableop_17_layer_2nn_component_bias:dC
1assignvariableop_18_layer_5dense_component_kernel:	@
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
+assignvariableop_41_layer__1_input_kernel_m:	d7
)assignvariableop_42_layer__1_input_bias_m:dE
3assignvariableop_43_layer_0dense_component_kernel_m:	dB
0assignvariableop_44_layer_0nn_component_kernel_m:dd<
.assignvariableop_45_layer_0nn_component_bias_m:dE
3assignvariableop_46_layer_1dense_component_kernel_m:	dB
0assignvariableop_47_layer_1nn_component_kernel_m:dd<
.assignvariableop_48_layer_1nn_component_bias_m:dE
3assignvariableop_49_layer_2dense_component_kernel_m:	dB
0assignvariableop_50_layer_2nn_component_kernel_m:dd<
.assignvariableop_51_layer_2nn_component_bias_m:dE
3assignvariableop_52_layer_5dense_component_kernel_m:	B
0assignvariableop_53_layer_5nn_component_kernel_m:d<
.assignvariableop_54_layer_5nn_component_bias_m:=
+assignvariableop_55_layer__1_input_kernel_v:	d7
)assignvariableop_56_layer__1_input_bias_v:dE
3assignvariableop_57_layer_0dense_component_kernel_v:	dB
0assignvariableop_58_layer_0nn_component_kernel_v:dd<
.assignvariableop_59_layer_0nn_component_bias_v:dE
3assignvariableop_60_layer_1dense_component_kernel_v:	dB
0assignvariableop_61_layer_1nn_component_kernel_v:dd<
.assignvariableop_62_layer_1nn_component_bias_v:dE
3assignvariableop_63_layer_2dense_component_kernel_v:	dB
0assignvariableop_64_layer_2nn_component_kernel_v:dd<
.assignvariableop_65_layer_2nn_component_bias_v:dE
3assignvariableop_66_layer_5dense_component_kernel_v:	B
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
�

�
h__inference___backward_layer_1dense_component_layer_call_and_return_conditional_losses_96854150_96854161
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
:���������	*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:	d*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������	i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:	d"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������d:	d:���������	*m
forward_function_nameTR__forward_layer_1dense_component_layer_call_and_return_conditional_losses_96854160:- )
'
_output_shapes
:���������d:$ 

_output_shapes

:	d:-)
'
_output_shapes
:���������	
�
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96854965
x#
icnn_closure_96854620:	'
icnn_closure_96854622:		'
icnn_closure_96854624:	d#
icnn_closure_96854626:d'
icnn_closure_96854628:	d'
icnn_closure_96854630:dd#
icnn_closure_96854632:d'
icnn_closure_96854634:	d'
icnn_closure_96854636:dd#
icnn_closure_96854638:d'
icnn_closure_96854640:	d'
icnn_closure_96854642:dd#
icnn_closure_96854644:d'
icnn_closure_96854646:	'
icnn_closure_96854648:d#
icnn_closure_96854650:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��$Icnn_closure/StatefulPartitionedCall�checked�	checked_1�

$Icnn_closure/StatefulPartitionedCallStatefulPartitionedCallxicnn_closure_96854620icnn_closure_96854622icnn_closure_96854624icnn_closure_96854626icnn_closure_96854628icnn_closure_96854630icnn_closure_96854632icnn_closure_96854634icnn_closure_96854636icnn_closure_96854638icnn_closure_96854640icnn_closure_96854642icnn_closure_96854644icnn_closure_96854646icnn_closure_96854648icnn_closure_96854650*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������:	:���������	:d:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:	d:���������	:		:���������	:���������	:	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__forward_Icnn_closure_layer_call_and_return_conditional_losses_96854784l
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
�:���������	:	:		:	d:d:	d:dd:d:	d:dd:d:	d:dd:d:	:d:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *g
fbR`
^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_96854656_96854785g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������	�
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������	*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 9), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������	\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������	d
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
:		�*

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
:���������	�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
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
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
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
:�����������
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
:	��
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
:���������
�
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������
*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������
^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������
Z
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
:���������
�
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
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
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
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
:	
�*

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
:�����������
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
:	�
�
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������
]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
[
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
:���������
X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������
_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������
f
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
:���������	*

begin_mask*
end_mask|
IdentityIdentity-Icnn_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:���������	�
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
S:���������	: : : : : : : : : : : : : : : : :	
�:	�:
2L
$Icnn_closure/StatefulPartitionedCall$Icnn_closure/StatefulPartitionedCall2
checkedchecked2
	checked_1	checked_1:J F
'
_output_shapes
:���������	

_user_specified_namex:%!

_output_shapes
:	
�:%!

_output_shapes
:	�:$ 

_output_shapes

:

�
�
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_96856465

inputs0
matmul_readvariableop_resource:	d
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
w
M__inference_add_component_1_layer_call_and_return_conditional_losses_96853438

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
�P
�

J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96853513

inputs'
mean_shift_layer_96853338:	.
decorrelation_layer_96853349:		)
layer__1_input_96853364:	d%
layer__1_input_96853366:d1
layer_0dense_component_96853377:	d.
layer_0nn_component_96853391:dd*
layer_0nn_component_96853393:d1
layer_1dense_component_96853413:	d.
layer_1nn_component_96853427:dd*
layer_1nn_component_96853429:d1
layer_2dense_component_96853449:	d.
layer_2nn_component_96853463:dd*
layer_2nn_component_96853465:d1
layer_5dense_component_96853485:	.
layer_5nn_component_96853499:d*
layer_5nn_component_96853501:
identity��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�.layer_0dense_component/StatefulPartitionedCall�+layer_0nn_component/StatefulPartitionedCall�.layer_1dense_component/StatefulPartitionedCall�+layer_1nn_component/StatefulPartitionedCall�.layer_2dense_component/StatefulPartitionedCall�+layer_2nn_component/StatefulPartitionedCall�.layer_5dense_component/StatefulPartitionedCall�+layer_5nn_component/StatefulPartitionedCall�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_96853338*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_96853337�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_96853349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_96853348�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_96853364layer__1_input_96853366*
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
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_96853363�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_0dense_component_96853377*
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
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_96853376�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_96853391layer_0nn_component_96853393*
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
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_96853390�
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
M__inference_add_component_0_layer_call_and_return_conditional_losses_96853402�
tf.math.softplus/SoftplusSoftplus(add_component_0/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1dense_component_96853413*
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
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_96853412�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0layer_1nn_component_96853427layer_1nn_component_96853429*
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
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_96853426�
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
M__inference_add_component_1_layer_call_and_return_conditional_losses_96853438�
tf.math.softplus_1/SoftplusSoftplus(add_component_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_2dense_component_96853449*
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
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_96853448�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0layer_2nn_component_96853463layer_2nn_component_96853465*
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
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_96853462�
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
M__inference_add_component_2_layer_call_and_return_conditional_losses_96853474�
tf.math.softplus_2/SoftplusSoftplus(add_component_2/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_5dense_component_96853485*
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
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_96853484�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0layer_5nn_component_96853499layer_5nn_component_96853501*
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
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_96853498�
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
A__inference_add_layer_call_and_return_conditional_losses_96853510k
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
3:���������	: : : : : : : : : : : : : : : : 2Z
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
:���������	
 
_user_specified_nameinputs
�
^
2__inference_add_component_2_layer_call_fn_96856535
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
M__inference_add_component_2_layer_call_and_return_conditional_losses_96853474`
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
�
k
A__inference_add_layer_call_and_return_conditional_losses_96853510

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
�
�
O__forward_layer_0nn_component_layer_call_and_return_conditional_losses_96854246
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
backward_function_namege__inference___backward_layer_0nn_component_layer_call_and_return_conditional_losses_96854234_9685424720
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96856164
xG
9icnn_closure_mean_shift_layer_sub_readvariableop_resource:	Q
?icnn_closure_decorrelation_layer_matmul_readvariableop_resource:		L
:icnn_closure_layer__1_input_matmul_readvariableop_resource:	dI
;icnn_closure_layer__1_input_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_0dense_component_matmul_readvariableop_resource:	dQ
?icnn_closure_layer_0nn_component_matmul_readvariableop_resource:ddN
@icnn_closure_layer_0nn_component_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_1dense_component_matmul_readvariableop_resource:	dQ
?icnn_closure_layer_1nn_component_matmul_readvariableop_resource:ddN
@icnn_closure_layer_1nn_component_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_2dense_component_matmul_readvariableop_resource:	dQ
?icnn_closure_layer_2nn_component_matmul_readvariableop_resource:ddN
@icnn_closure_layer_2nn_component_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_5dense_component_matmul_readvariableop_resource:	Q
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
:	*
dtype0�
!Icnn_closure/mean_shift_layer/subSubx8Icnn_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
6Icnn_closure/decorrelation_layer/MatMul/ReadVariableOpReadVariableOp?icnn_closure_decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:		*
dtype0�
'Icnn_closure/decorrelation_layer/MatMulMatMul%Icnn_closure/mean_shift_layer/sub:z:0>Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
1Icnn_closure/layer_-1_input/MatMul/ReadVariableOpReadVariableOp:icnn_closure_layer__1_input_matmul_readvariableop_resource*
_output_shapes

:	d*
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

:	d*
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

:	d*
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

:	d*
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

:	*
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
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMul_1MatMulx3gradient_tape/Icnn_closure/add/add/Reshape:output:0*
T0*
_output_shapes

:	*
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
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMul_1MatMulx?gradient_tape/Icnn_closure/add_component_2/add/Reshape:output:0*
T0*
_output_shapes

:	d*
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
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMul_1MatMulx?gradient_tape/Icnn_closure/add_component_1/add/Reshape:output:0*
T0*
_output_shapes

:	d*
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
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMul_1MatMulx?gradient_tape/Icnn_closure/add_component_0/add/Reshape:output:0*
T0*
_output_shapes

:	d*
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
:���������	*
transpose_b(�
9gradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:01gradient_tape/Icnn_closure/layer_-1_input/mul:z:0*
T0*
_output_shapes

:	d*
transpose_a(�
<gradient_tape/Icnn_closure/decorrelation_layer/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMul:product:0>Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
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
:���������	�
AddNAddNIgradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMul:product:0@gradient_tape/Icnn_closure/mean_shift_layer/sub/Reshape:output:0*
N*
T0*'
_output_shapes
:���������	Y
CastCast
AddN:sum:0*

DstT0*

SrcT0*'
_output_shapes
:���������	�
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������	*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 9), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������	\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������	d
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
:		�*

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
:���������	�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
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
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
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
:�����������
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
:	��
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
:���������
�
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������
*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������
^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������
Z
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
:���������
�
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
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
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
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
:	
�*

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
:�����������
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
:	�
�
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������
]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
[
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
:���������
X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������
_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������
f
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
:���������	*

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
:���������	i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:���������	�
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
S:���������	: : : : : : : : : : : : : : : : :	
�:	�:
2p
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
:���������	

_user_specified_namex:%!

_output_shapes
:	
�:%!

_output_shapes
:	�:$ 

_output_shapes

:

�
�
6__inference_layer_1nn_component_layer_call_fn_96856474

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
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_96853426o
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
�
e__inference___backward_layer_2nn_component_layer_call_and_return_conditional_losses_96854102_96854115
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
forward_function_nameQO__forward_layer_2nn_component_layer_call_and_return_conditional_losses_96854114:- )
'
_output_shapes
:���������d:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d
�
�
/__inference_Icnn_closure_layer_call_fn_96856238

inputs
unknown:	
	unknown_0:		
	unknown_1:	d
	unknown_2:d
	unknown_3:	d
	unknown_4:dd
	unknown_5:d
	unknown_6:	d
	unknown_7:dd
	unknown_8:d
	unknown_9:	d

unknown_10:dd

unknown_11:d

unknown_12:	

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
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96853767o
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
3:���������	: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�	
�
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_96856439

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
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96855275
input_1#
icnn_closure_96855060:	'
icnn_closure_96855062:		'
icnn_closure_96855064:	d#
icnn_closure_96855066:d'
icnn_closure_96855068:	d'
icnn_closure_96855070:dd#
icnn_closure_96855072:d'
icnn_closure_96855074:	d'
icnn_closure_96855076:dd#
icnn_closure_96855078:d'
icnn_closure_96855080:	d'
icnn_closure_96855082:dd#
icnn_closure_96855084:d'
icnn_closure_96855086:	'
icnn_closure_96855088:d#
icnn_closure_96855090:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��$Icnn_closure/StatefulPartitionedCall�checked�	checked_1�

$Icnn_closure/StatefulPartitionedCallStatefulPartitionedCallinput_1icnn_closure_96855060icnn_closure_96855062icnn_closure_96855064icnn_closure_96855066icnn_closure_96855068icnn_closure_96855070icnn_closure_96855072icnn_closure_96855074icnn_closure_96855076icnn_closure_96855078icnn_closure_96855080icnn_closure_96855082icnn_closure_96855084icnn_closure_96855086icnn_closure_96855088icnn_closure_96855090*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������:	:���������	:d:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:	d:���������	:		:���������	:���������	:	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__forward_Icnn_closure_layer_call_and_return_conditional_losses_96854342l
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
�:���������	:	:		:	d:d:	d:dd:d:	d:dd:d:	d:dd:d:	:d:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *g
fbR`
^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_96853990_96854343g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������	�
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������	*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 9), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������	\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������	d
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
:		�*

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
:���������	�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
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
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
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
:�����������
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
:	��
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
:���������
�
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������
*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������
^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������
Z
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
:���������
�
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
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
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
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
:	
�*

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
:�����������
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
:	�
�
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������
]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
[
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
:���������
X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������
_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������
f
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
:���������	*

begin_mask*
end_mask|
IdentityIdentity-Icnn_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:���������	�
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
S:���������	: : : : : : : : : : : : : : : : :	
�:	�:
2L
$Icnn_closure/StatefulPartitionedCall$Icnn_closure/StatefulPartitionedCall2
checkedchecked2
	checked_1	checked_1:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_1:%!

_output_shapes
:	
�:%!

_output_shapes
:	�:$ 

_output_shapes

:

�
�
6__inference_layer_5nn_component_layer_call_fn_96856564

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
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_96853498o
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
��
�
^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_96854656_96854785
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
U__inference___backward_add_layer_call_and_return_conditional_losses_96853994_96854011�
Mgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall;gradients/add/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcallngradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������	:	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_5dense_component_layer_call_and_return_conditional_losses_96854018_96854029�
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
e__inference___backward_layer_5nn_component_layer_call_and_return_conditional_losses_96854036_96854049�
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
a__inference___backward_add_component_2_layer_call_and_return_conditional_losses_96854060_96854077�
Mgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_2/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcallngradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������	:	d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_2dense_component_layer_call_and_return_conditional_losses_96854084_96854095�
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
e__inference___backward_layer_2nn_component_layer_call_and_return_conditional_losses_96854102_96854115�
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
a__inference___backward_add_component_1_layer_call_and_return_conditional_losses_96854126_96854143�
Mgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_1/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcallngradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������	:	d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_1dense_component_layer_call_and_return_conditional_losses_96854150_96854161�
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
e__inference___backward_layer_1nn_component_layer_call_and_return_conditional_losses_96854168_96854181�
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
a__inference___backward_add_component_0_layer_call_and_return_conditional_losses_96854192_96854209�
Mgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_0/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcallngradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������	:	d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_0dense_component_layer_call_and_return_conditional_losses_96854216_96854227�
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
e__inference___backward_layer_0nn_component_layer_call_and_return_conditional_losses_96854234_96854247�
Egradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallSgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:0\gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_1^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *7
_output_shapes%
#:���������	:	d:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *i
fdRb
`__inference___backward_layer_-1_input_layer_call_and_return_conditional_losses_96854255_96854271�
Jgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:0fgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcallhgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������	:		* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *n
fiRg
e__inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_96854281_96854292�
Ggradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallSgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0`gradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcallbgradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������	:	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *k
ffRd
b__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_96854299_96854317�
gradients/AddNAddNVgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Pgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0*
N*
T0*`
_classV
TRloc:@gradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall*'
_output_shapes
:���������	\
IdentityIdentitygradients/AddN:sum:0*
T0*'
_output_shapes
:���������	�

Identity_1IdentityPgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	�

Identity_2IdentitySgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:		�

Identity_3IdentityNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:	d�

Identity_4IdentityNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:d�

Identity_5IdentityVgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:	d�

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

:	d�

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

:	d�
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

:	�
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
�:���������:���������:���������:	:���������	:d:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:	d:���������	:		:���������	:���������	:	*c
forward_function_nameJH__forward_Icnn_closure_layer_call_and_return_conditional_losses_96854784:- )
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

:	:-)
'
_output_shapes
:���������	:$ 

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

:	d:-)
'
_output_shapes
:���������	:$ 

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

:	d:-)
'
_output_shapes
:���������	:$ 

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

:	d:-)
'
_output_shapes
:���������	:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:$ 

_output_shapes

:	d:-)
'
_output_shapes
:���������	:$ 

_output_shapes

:		:- )
'
_output_shapes
:���������	:-!)
'
_output_shapes
:���������	: "

_output_shapes
:	
�

�
h__inference___backward_layer_0dense_component_layer_call_and_return_conditional_losses_96854216_96854227
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
:���������	*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:	d*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������	i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:	d"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������d:	d:���������	*m
forward_function_nameTR__forward_layer_0dense_component_layer_call_and_return_conditional_losses_96854226:- )
'
_output_shapes
:���������d:$ 

_output_shapes

:	d:-)
'
_output_shapes
:���������	
�
�
6__inference_layer_2nn_component_layer_call_fn_96856519

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
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_96853462o
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
�
w
M__inference_add_component_2_layer_call_and_return_conditional_losses_96853474

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
K__forward_add_component_1_layer_call_and_return_conditional_losses_96854142
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
backward_function_nameca__inference___backward_add_component_1_layer_call_and_return_conditional_losses_96854126_96854143:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�O
�

J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96853893
input_1'
mean_shift_layer_96853842:	.
decorrelation_layer_96853845:		)
layer__1_input_96853848:	d%
layer__1_input_96853850:d1
layer_0dense_component_96853853:	d.
layer_0nn_component_96853856:dd*
layer_0nn_component_96853858:d1
layer_1dense_component_96853863:	d.
layer_1nn_component_96853866:dd*
layer_1nn_component_96853868:d1
layer_2dense_component_96853873:	d.
layer_2nn_component_96853876:dd*
layer_2nn_component_96853878:d1
layer_5dense_component_96853883:	.
layer_5nn_component_96853886:d*
layer_5nn_component_96853888:
identity��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�.layer_0dense_component/StatefulPartitionedCall�+layer_0nn_component/StatefulPartitionedCall�.layer_1dense_component/StatefulPartitionedCall�+layer_1nn_component/StatefulPartitionedCall�.layer_2dense_component/StatefulPartitionedCall�+layer_2nn_component/StatefulPartitionedCall�.layer_5dense_component/StatefulPartitionedCall�+layer_5nn_component/StatefulPartitionedCall�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1mean_shift_layer_96853842*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_96853337�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_96853845*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_96853348�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_96853848layer__1_input_96853850*
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
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_96853363�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_0dense_component_96853853*
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
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_96853376�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_96853856layer_0nn_component_96853858*
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
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_96853390�
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
M__inference_add_component_0_layer_call_and_return_conditional_losses_96853402�
tf.math.softplus/SoftplusSoftplus(add_component_0/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_1dense_component_96853863*
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
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_96853412�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0layer_1nn_component_96853866layer_1nn_component_96853868*
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
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_96853426�
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
M__inference_add_component_1_layer_call_and_return_conditional_losses_96853438�
tf.math.softplus_1/SoftplusSoftplus(add_component_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_2dense_component_96853873*
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
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_96853448�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0layer_2nn_component_96853876layer_2nn_component_96853878*
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
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_96853462�
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
M__inference_add_component_2_layer_call_and_return_conditional_losses_96853474�
tf.math.softplus_2/SoftplusSoftplus(add_component_2/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_5dense_component_96853883*
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
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_96853484�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0layer_5nn_component_96853886layer_5nn_component_96853888*
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
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_96853498�
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
A__inference_add_layer_call_and_return_conditional_losses_96853510k
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
3:���������	: : : : : : : : : : : : : : : : 2Z
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
:���������	
!
_user_specified_name	input_1
�
�
9__inference_layer_1dense_component_layer_call_fn_96856458

inputs
unknown:	d
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
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_96853412o
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
:���������	: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
&__inference_signature_wrapper_96855548
input_1
unknown:	
	unknown_0:		
	unknown_1:	d
	unknown_2:d
	unknown_3:	d
	unknown_4:dd
	unknown_5:d
	unknown_6:	d
	unknown_7:dd
	unknown_8:d
	unknown_9:	d

unknown_10:dd

unknown_11:d

unknown_12:	

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
9:���������:���������	:���������	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference__wrapped_model_96853323o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������	q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������	: : : : : : : : : : : : : : : : :	
�:	�:
22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_1:%!

_output_shapes
:	
�:%!

_output_shapes
:	�:$ 

_output_shapes

:

�
�
b__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_96854299_96854317
placeholder#
gradients_sub_grad_shape_inputs1
-gradients_sub_grad_shape_1_sub_readvariableop
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������	g
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
:���������	m
gradients/sub_grad/NegNeggradients/grad_ys_0:output:0*
T0*'
_output_shapes
:���������	�
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg:y:0-gradients/sub_grad/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
gradients/sub_grad/Reshape_1Reshape!gradients/sub_grad/Sum_1:output:0#gradients/sub_grad/Shape_1:output:0*
T0*
_output_shapes
:	k
IdentityIdentity#gradients/sub_grad/Reshape:output:0*
T0*'
_output_shapes
:���������	b

Identity_1Identity%gradients/sub_grad/Reshape_1:output:0*
T0*
_output_shapes
:	"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������	:���������	:	*g
forward_function_nameNL__forward_mean_shift_layer_layer_call_and_return_conditional_losses_96854316:- )
'
_output_shapes
:���������	:-)
'
_output_shapes
:���������	: 

_output_shapes
:	
�
�
6__inference_decorrelation_layer_layer_call_fn_96856379

inputs
unknown:		
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_96853348o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96854523
x#
icnn_closure_96853954:	'
icnn_closure_96853956:		'
icnn_closure_96853958:	d#
icnn_closure_96853960:d'
icnn_closure_96853962:	d'
icnn_closure_96853964:dd#
icnn_closure_96853966:d'
icnn_closure_96853968:	d'
icnn_closure_96853970:dd#
icnn_closure_96853972:d'
icnn_closure_96853974:	d'
icnn_closure_96853976:dd#
icnn_closure_96853978:d'
icnn_closure_96853980:	'
icnn_closure_96853982:d#
icnn_closure_96853984:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��$Icnn_closure/StatefulPartitionedCall�checked�	checked_1�

$Icnn_closure/StatefulPartitionedCallStatefulPartitionedCallxicnn_closure_96853954icnn_closure_96853956icnn_closure_96853958icnn_closure_96853960icnn_closure_96853962icnn_closure_96853964icnn_closure_96853966icnn_closure_96853968icnn_closure_96853970icnn_closure_96853972icnn_closure_96853974icnn_closure_96853976icnn_closure_96853978icnn_closure_96853980icnn_closure_96853982icnn_closure_96853984*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������:	:���������	:d:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:	d:���������	:		:���������	:���������	:	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__forward_Icnn_closure_layer_call_and_return_conditional_losses_96854342l
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
�:���������	:	:		:	d:d:	d:dd:d:	d:dd:d:	d:dd:d:	:d:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *g
fbR`
^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_96853990_96854343g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������	�
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������	*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 9), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������	\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������	d
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
:		�*

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
:���������	�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
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
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
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
:�����������
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
:	��
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
:���������
�
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������
*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������
^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������
Z
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
:���������
�
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
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
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
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
:	
�*

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
:�����������
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
:	�
�
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������
]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
[
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
:���������
X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������
_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������
f
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
:���������	*

begin_mask*
end_mask|
IdentityIdentity-Icnn_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:���������	�
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
S:���������	: : : : : : : : : : : : : : : : :	
�:	�:
2L
$Icnn_closure/StatefulPartitionedCall$Icnn_closure/StatefulPartitionedCall2
checkedchecked2
	checked_1	checked_1:J F
'
_output_shapes
:���������	

_user_specified_namex:%!

_output_shapes
:	
�:%!

_output_shapes
:	�:$ 

_output_shapes

:

�
�
0__inference_sobolev_model_layer_call_fn_96855595
x
unknown:	
	unknown_0:		
	unknown_1:	d
	unknown_2:d
	unknown_3:	d
	unknown_4:dd
	unknown_5:d
	unknown_6:	d
	unknown_7:dd
	unknown_8:d
	unknown_9:	d

unknown_10:dd

unknown_11:d

unknown_12:	

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
9:���������:���������	:���������	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96854523o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������	q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������	: : : : : : : : : : : : : : : : :	
�:	�:
22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:���������	

_user_specified_namex:%!

_output_shapes
:	
�:%!

_output_shapes
:	�:$ 

_output_shapes

:

�
�
K__forward_add_component_2_layer_call_and_return_conditional_losses_96854076
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
backward_function_nameca__inference___backward_add_component_2_layer_call_and_return_conditional_losses_96854060_96854077:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
/__inference_Icnn_closure_layer_call_fn_96853548
input_1
unknown:	
	unknown_0:		
	unknown_1:	d
	unknown_2:d
	unknown_3:	d
	unknown_4:dd
	unknown_5:d
	unknown_6:	d
	unknown_7:dd
	unknown_8:d
	unknown_9:	d

unknown_10:dd

unknown_11:d

unknown_12:	

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
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96853513o
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
3:���������	: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_1
�
�
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_96853337

inputs)
sub_readvariableop_resource:	
identity��sub/ReadVariableOpj
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:	*
dtype0`
subSubinputssub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	V
IdentityIdentitysub:z:0^NoOp*
T0*'
_output_shapes
:���������	[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
e__inference___backward_layer_0nn_component_layer_call_and_return_conditional_losses_96854234_96854247
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
forward_function_nameQO__forward_layer_0nn_component_layer_call_and_return_conditional_losses_96854246:- )
'
_output_shapes
:���������d:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d
�
�
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_96856510

inputs0
matmul_readvariableop_resource:	d
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
R__forward_layer_2dense_component_layer_call_and_return_conditional_losses_96854094
inputs_00
matmul_readvariableop_resource:	d
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
:���������	: *�
backward_function_namejh__inference___backward_layer_2dense_component_layer_call_and_return_conditional_losses_96854084_968540952.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�	
�
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_96856574

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
�
�
a__inference___backward_add_component_2_layer_call_and_return_conditional_losses_96854060_96854077
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
forward_function_nameMK__forward_add_component_2_layer_call_and_return_conditional_losses_96854076:- )
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96855903
xG
9icnn_closure_mean_shift_layer_sub_readvariableop_resource:	Q
?icnn_closure_decorrelation_layer_matmul_readvariableop_resource:		L
:icnn_closure_layer__1_input_matmul_readvariableop_resource:	dI
;icnn_closure_layer__1_input_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_0dense_component_matmul_readvariableop_resource:	dQ
?icnn_closure_layer_0nn_component_matmul_readvariableop_resource:ddN
@icnn_closure_layer_0nn_component_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_1dense_component_matmul_readvariableop_resource:	dQ
?icnn_closure_layer_1nn_component_matmul_readvariableop_resource:ddN
@icnn_closure_layer_1nn_component_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_2dense_component_matmul_readvariableop_resource:	dQ
?icnn_closure_layer_2nn_component_matmul_readvariableop_resource:ddN
@icnn_closure_layer_2nn_component_biasadd_readvariableop_resource:dT
Bicnn_closure_layer_5dense_component_matmul_readvariableop_resource:	Q
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
:	*
dtype0�
!Icnn_closure/mean_shift_layer/subSubx8Icnn_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
6Icnn_closure/decorrelation_layer/MatMul/ReadVariableOpReadVariableOp?icnn_closure_decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:		*
dtype0�
'Icnn_closure/decorrelation_layer/MatMulMatMul%Icnn_closure/mean_shift_layer/sub:z:0>Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
1Icnn_closure/layer_-1_input/MatMul/ReadVariableOpReadVariableOp:icnn_closure_layer__1_input_matmul_readvariableop_resource*
_output_shapes

:	d*
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

:	d*
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

:	d*
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

:	d*
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

:	*
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
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMul_1MatMulx3gradient_tape/Icnn_closure/add/add/Reshape:output:0*
T0*
_output_shapes

:	*
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
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMul_1MatMulx?gradient_tape/Icnn_closure/add_component_2/add/Reshape:output:0*
T0*
_output_shapes

:	d*
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
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMul_1MatMulx?gradient_tape/Icnn_closure/add_component_1/add/Reshape:output:0*
T0*
_output_shapes

:	d*
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
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMul_1MatMulx?gradient_tape/Icnn_closure/add_component_0/add/Reshape:output:0*
T0*
_output_shapes

:	d*
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
:���������	*
transpose_b(�
9gradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:01gradient_tape/Icnn_closure/layer_-1_input/mul:z:0*
T0*
_output_shapes

:	d*
transpose_a(�
<gradient_tape/Icnn_closure/decorrelation_layer/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMul:product:0>Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
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
:���������	�
AddNAddNIgradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMul:product:0@gradient_tape/Icnn_closure/mean_shift_layer/sub/Reshape:output:0*
N*
T0*'
_output_shapes
:���������	Y
CastCast
AddN:sum:0*

DstT0*

SrcT0*'
_output_shapes
:���������	�
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������	*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 9), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������	\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������	d
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
:		�*

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
:���������	�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
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
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
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
:�����������
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
:	��
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
:���������
�
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������
*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������
^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������
Z
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
:���������
�
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
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
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
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
:	
�*

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
:�����������
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
:	�
�
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������
]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
[
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
:���������
X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������
_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������
f
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
:���������	*

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
:���������	i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:���������	�
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
S:���������	: : : : : : : : : : : : : : : : :	
�:	�:
2p
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
:���������	

_user_specified_namex:%!

_output_shapes
:	
�:%!

_output_shapes
:	�:$ 

_output_shapes

:

�
�
3__inference_mean_shift_layer_layer_call_fn_96856365

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_96853337o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�	
�
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_96856484

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
K__forward_add_component_0_layer_call_and_return_conditional_losses_96854208
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
backward_function_nameca__inference___backward_add_component_0_layer_call_and_return_conditional_losses_96854192_96854209:O K
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
0__inference_sobolev_model_layer_call_fn_96854568
input_1
unknown:	
	unknown_0:		
	unknown_1:	d
	unknown_2:d
	unknown_3:	d
	unknown_4:dd
	unknown_5:d
	unknown_6:	d
	unknown_7:dd
	unknown_8:d
	unknown_9:	d

unknown_10:dd

unknown_11:d

unknown_12:	

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
9:���������:���������	:���������	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96854523o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������	q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������	: : : : : : : : : : : : : : : : :	
�:	�:
22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_1:%!

_output_shapes
:	
�:%!

_output_shapes
:	�:$ 

_output_shapes

:

�

�
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_96856406

inputs0
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
:���������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
?__forward_add_layer_call_and_return_conditional_losses_96854010
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
backward_function_nameWU__inference___backward_add_layer_call_and_return_conditional_losses_96853994_96854011:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_96853426

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
��
�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96855493
input_1#
icnn_closure_96855278:	'
icnn_closure_96855280:		'
icnn_closure_96855282:	d#
icnn_closure_96855284:d'
icnn_closure_96855286:	d'
icnn_closure_96855288:dd#
icnn_closure_96855290:d'
icnn_closure_96855292:	d'
icnn_closure_96855294:dd#
icnn_closure_96855296:d'
icnn_closure_96855298:	d'
icnn_closure_96855300:dd#
icnn_closure_96855302:d'
icnn_closure_96855304:	'
icnn_closure_96855306:d#
icnn_closure_96855308:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��$Icnn_closure/StatefulPartitionedCall�checked�	checked_1�

$Icnn_closure/StatefulPartitionedCallStatefulPartitionedCallinput_1icnn_closure_96855278icnn_closure_96855280icnn_closure_96855282icnn_closure_96855284icnn_closure_96855286icnn_closure_96855288icnn_closure_96855290icnn_closure_96855292icnn_closure_96855294icnn_closure_96855296icnn_closure_96855298icnn_closure_96855300icnn_closure_96855302icnn_closure_96855304icnn_closure_96855306icnn_closure_96855308*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������:	:���������	:d:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:	d:���������	:		:���������	:���������	:	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__forward_Icnn_closure_layer_call_and_return_conditional_losses_96854784l
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
�:���������	:	:		:	d:d:	d:dd:d:	d:dd:d:	d:dd:d:	:d:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *g
fbR`
^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_96854656_96854785g
CastCastPartitionedCall:output:0*

DstT0*

SrcT0*'
_output_shapes
:���������	�
checkedCheckNumericsCast:y:0*
T0*'
_output_shapes
:���������	*d
messageYWinput tensor checking error at alpha = Tensor("Cast:0", shape=(None, 9), dtype=float64)d
checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped/MinimumMinimumchecked:output:0$checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������	\
checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclippedMaximumcheckedandclipped/Minimum:z:0checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������	d
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
:		�*

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
:���������	�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0strided_slice:output:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
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
:����������Q
ExpExpTensordot:output:0*
T0*(
_output_shapes
:����������Z
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
:�����������
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
:	��
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
:���������
�
	checked_1CheckNumericsconcat:output:0^checked*
T0*'
_output_shapes
:���������
*(
messageinput tensor checking errorf
checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
checkedandclipped_1/MinimumMinimumchecked_1:output:0&checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������
^
checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
checkedandclipped_1Maximumcheckedandclipped_1/Minimum:z:0checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������
Z
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
:���������
�
Tensordot_2/ReshapeReshapeTensordot_2/transpose:y:0Tensordot_2/stack:output:0*
T0*0
_output_shapes
:������������������v
Tensordot_2/MatMulMatMulTensordot_2/Reshape:output:0unknown*
T0*(
_output_shapes
:����������^
Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�[
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
:����������U
Exp_1ExpTensordot_2:output:0*
T0*(
_output_shapes
:����������W
MulMul	Exp_1:y:0tensordot_1_b*
T0*(
_output_shapes
:����������f
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
:	
�*

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
:�����������
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
:	�
�
Tensordot_3/MatMulMatMulTensordot_3/Reshape:output:0Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������
]
Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
[
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
:���������
X
Mul_1Mulmul_1_xconcat:output:0*
T0*'
_output_shapes
:���������
_
addAddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������
f
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
:���������	*

begin_mask*
end_mask|
IdentityIdentity-Icnn_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	i

Identity_2Identitystrided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:���������	�
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
S:���������	: : : : : : : : : : : : : : : : :	
�:	�:
2L
$Icnn_closure/StatefulPartitionedCall$Icnn_closure/StatefulPartitionedCall2
checkedchecked2
	checked_1	checked_1:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_1:%!

_output_shapes
:	
�:%!

_output_shapes
:	�:$ 

_output_shapes

:

�
�
R__forward_layer_5dense_component_layer_call_and_return_conditional_losses_96854028
inputs_00
matmul_readvariableop_resource:	
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
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
:���������	: *�
backward_function_namejh__inference___backward_layer_5dense_component_layer_call_and_return_conditional_losses_96854018_968540292.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_96853412

inputs0
matmul_readvariableop_resource:	d
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
O__forward_layer_2nn_component_layer_call_and_return_conditional_losses_96854114
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
backward_function_namege__inference___backward_layer_2nn_component_layer_call_and_return_conditional_losses_96854102_9685411520
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�
#__inference__wrapped_model_96853323
input_1U
Gsobolev_model_icnn_closure_mean_shift_layer_sub_readvariableop_resource:	_
Msobolev_model_icnn_closure_decorrelation_layer_matmul_readvariableop_resource:		Z
Hsobolev_model_icnn_closure_layer__1_input_matmul_readvariableop_resource:	dW
Isobolev_model_icnn_closure_layer__1_input_biasadd_readvariableop_resource:db
Psobolev_model_icnn_closure_layer_0dense_component_matmul_readvariableop_resource:	d_
Msobolev_model_icnn_closure_layer_0nn_component_matmul_readvariableop_resource:dd\
Nsobolev_model_icnn_closure_layer_0nn_component_biasadd_readvariableop_resource:db
Psobolev_model_icnn_closure_layer_1dense_component_matmul_readvariableop_resource:	d_
Msobolev_model_icnn_closure_layer_1nn_component_matmul_readvariableop_resource:dd\
Nsobolev_model_icnn_closure_layer_1nn_component_biasadd_readvariableop_resource:db
Psobolev_model_icnn_closure_layer_2dense_component_matmul_readvariableop_resource:	d_
Msobolev_model_icnn_closure_layer_2nn_component_matmul_readvariableop_resource:dd\
Nsobolev_model_icnn_closure_layer_2nn_component_biasadd_readvariableop_resource:db
Psobolev_model_icnn_closure_layer_5dense_component_matmul_readvariableop_resource:	_
Msobolev_model_icnn_closure_layer_5nn_component_matmul_readvariableop_resource:d\
Nsobolev_model_icnn_closure_layer_5nn_component_biasadd_readvariableop_resource:
sobolev_model_96853201
sobolev_model_tensordot_1_b
sobolev_model_mul_1_x
identity

identity_1

identity_2��Dsobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp�@sobolev_model/Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp�?sobolev_model/Icnn_closure/layer_-1_input/MatMul/ReadVariableOp�Gsobolev_model/Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp�Esobolev_model/Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp�Dsobolev_model/Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp�Gsobolev_model/Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp�Esobolev_model/Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp�Dsobolev_model/Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp�Gsobolev_model/Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp�Esobolev_model/Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp�Dsobolev_model/Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp�Gsobolev_model/Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp�Esobolev_model/Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp�Dsobolev_model/Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp�>sobolev_model/Icnn_closure/mean_shift_layer/sub/ReadVariableOp�sobolev_model/checked�sobolev_model/checked_1�
>sobolev_model/Icnn_closure/mean_shift_layer/sub/ReadVariableOpReadVariableOpGsobolev_model_icnn_closure_mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:	*
dtype0�
/sobolev_model/Icnn_closure/mean_shift_layer/subSubinput_1Fsobolev_model/Icnn_closure/mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
Dsobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOpReadVariableOpMsobolev_model_icnn_closure_decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:		*
dtype0�
5sobolev_model/Icnn_closure/decorrelation_layer/MatMulMatMul3sobolev_model/Icnn_closure/mean_shift_layer/sub:z:0Lsobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
?sobolev_model/Icnn_closure/layer_-1_input/MatMul/ReadVariableOpReadVariableOpHsobolev_model_icnn_closure_layer__1_input_matmul_readvariableop_resource*
_output_shapes

:	d*
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

:	d*
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

:	d*
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

:	d*
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

:	*
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
:���������	*
transpose_b(�
Ogradient_tape/sobolev_model/Icnn_closure/layer_5dense_component/MatMul/MatMul_1MatMulinput_1Agradient_tape/sobolev_model/Icnn_closure/add/add/Reshape:output:0*
T0*
_output_shapes

:	*
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
:���������	*
transpose_b(�
Ogradient_tape/sobolev_model/Icnn_closure/layer_2dense_component/MatMul/MatMul_1MatMulinput_1Mgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape:output:0*
T0*
_output_shapes

:	d*
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
:���������	*
transpose_b(�
Ogradient_tape/sobolev_model/Icnn_closure/layer_1dense_component/MatMul/MatMul_1MatMulinput_1Mgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape:output:0*
T0*
_output_shapes

:	d*
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
:���������	*
transpose_b(�
Ogradient_tape/sobolev_model/Icnn_closure/layer_0dense_component/MatMul/MatMul_1MatMulinput_1Mgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape:output:0*
T0*
_output_shapes

:	d*
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
:���������	*
transpose_b(�
Ggradient_tape/sobolev_model/Icnn_closure/layer_-1_input/MatMul/MatMul_1MatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0?gradient_tape/sobolev_model/Icnn_closure/layer_-1_input/mul:z:0*
T0*
_output_shapes

:	d*
transpose_a(�
Jgradient_tape/sobolev_model/Icnn_closure/decorrelation_layer/MatMul/MatMulMatMulOgradient_tape/sobolev_model/Icnn_closure/layer_-1_input/MatMul/MatMul:product:0Lsobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
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
:���������	�
sobolev_model/AddNAddNWgradient_tape/sobolev_model/Icnn_closure/layer_5dense_component/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/Icnn_closure/layer_2dense_component/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/Icnn_closure/layer_1dense_component/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/Icnn_closure/layer_0dense_component/MatMul/MatMul:product:0Ngradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/Reshape:output:0*
N*
T0*'
_output_shapes
:���������	u
sobolev_model/CastCastsobolev_model/AddN:sum:0*

DstT0*

SrcT0*'
_output_shapes
:���������	�
sobolev_model/checkedCheckNumericssobolev_model/Cast:y:0*
T0*'
_output_shapes
:���������	*r
messagegeinput tensor checking error at alpha = Tensor("sobolev_model/Cast:0", shape=(None, 9), dtype=float64)r
)sobolev_model/checkedandclipped/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
'sobolev_model/checkedandclipped/MinimumMinimumsobolev_model/checked:output:02sobolev_model/checkedandclipped/Minimum/y:output:0*
T0*'
_output_shapes
:���������	j
!sobolev_model/checkedandclipped/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
sobolev_model/checkedandclippedMaximum+sobolev_model/checkedandclipped/Minimum:z:0*sobolev_model/checkedandclipped/y:output:0*
T0*'
_output_shapes
:���������	r
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
sobolev_model/strided_sliceStridedSlicesobolev_model_96853201*sobolev_model/strided_slice/stack:output:0,sobolev_model/strided_slice/stack_1:output:0,sobolev_model/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:		�*

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
:���������	�
sobolev_model/Tensordot/ReshapeReshape%sobolev_model/Tensordot/transpose:y:0&sobolev_model/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
sobolev_model/Tensordot/MatMulMatMul(sobolev_model/Tensordot/Reshape:output:0$sobolev_model/strided_slice:output:0*
T0*(
_output_shapes
:����������j
sobolev_model/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�g
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
:����������m
sobolev_model/ExpExp sobolev_model/Tensordot:output:0*
T0*(
_output_shapes
:����������h
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
:�����������
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
:	��
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
:���������
�
sobolev_model/checked_1CheckNumericssobolev_model/concat:output:0^sobolev_model/checked*
T0*'
_output_shapes
:���������
*(
messageinput tensor checking errort
+sobolev_model/checkedandclipped_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB 2      I@�
)sobolev_model/checkedandclipped_1/MinimumMinimum sobolev_model/checked_1:output:04sobolev_model/checkedandclipped_1/Minimum/y:output:0*
T0*'
_output_shapes
:���������
l
#sobolev_model/checkedandclipped_1/yConst*
_output_shapes
: *
dtype0*
valueB 2      I��
!sobolev_model/checkedandclipped_1Maximum-sobolev_model/checkedandclipped_1/Minimum:z:0,sobolev_model/checkedandclipped_1/y:output:0*
T0*'
_output_shapes
:���������
h
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
:���������
�
!sobolev_model/Tensordot_2/ReshapeReshape'sobolev_model/Tensordot_2/transpose:y:0(sobolev_model/Tensordot_2/stack:output:0*
T0*0
_output_shapes
:�������������������
 sobolev_model/Tensordot_2/MatMulMatMul*sobolev_model/Tensordot_2/Reshape:output:0sobolev_model_96853201*
T0*(
_output_shapes
:����������l
!sobolev_model/Tensordot_2/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�i
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
:����������q
sobolev_model/Exp_1Exp"sobolev_model/Tensordot_2:output:0*
T0*(
_output_shapes
:�����������
sobolev_model/MulMulsobolev_model/Exp_1:y:0sobolev_model_tensordot_1_b*
T0*(
_output_shapes
:����������t
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
sobolev_model/strided_slice_1StridedSlicesobolev_model_96853201,sobolev_model/strided_slice_1/stack:output:0.sobolev_model/strided_slice_1/stack_1:output:0.sobolev_model/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	
�*

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
:�����������
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
:	�
�
 sobolev_model/Tensordot_3/MatMulMatMul*sobolev_model/Tensordot_3/Reshape:output:0)sobolev_model/Tensordot_3/transpose_1:y:0*
T0*'
_output_shapes
:���������
k
!sobolev_model/Tensordot_3/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
i
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
:���������
�
sobolev_model/Mul_1Mulsobolev_model_mul_1_xsobolev_model/concat:output:0*
T0*'
_output_shapes
:���������
�
sobolev_model/addAddV2"sobolev_model/Tensordot_3:output:0sobolev_model/Mul_1:z:0*
T0*'
_output_shapes
:���������
t
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
:���������	*

begin_mask*
end_masku
IdentityIdentity&sobolev_model/Icnn_closure/add/add:z:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1Identitysobolev_model/AddN:sum:0^NoOp*
T0*'
_output_shapes
:���������	w

Identity_2Identity&sobolev_model/strided_slice_2:output:0^NoOp*
T0*'
_output_shapes
:���������	�	
NoOpNoOpE^sobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOpA^sobolev_model/Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp@^sobolev_model/Icnn_closure/layer_-1_input/MatMul/ReadVariableOpH^sobolev_model/Icnn_closure/layer_0dense_component/MatMul/ReadVariableOpF^sobolev_model/Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOpE^sobolev_model/Icnn_closure/layer_0nn_component/MatMul/ReadVariableOpH^sobolev_model/Icnn_closure/layer_1dense_component/MatMul/ReadVariableOpF^sobolev_model/Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOpE^sobolev_model/Icnn_closure/layer_1nn_component/MatMul/ReadVariableOpH^sobolev_model/Icnn_closure/layer_2dense_component/MatMul/ReadVariableOpF^sobolev_model/Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOpE^sobolev_model/Icnn_closure/layer_2nn_component/MatMul/ReadVariableOpH^sobolev_model/Icnn_closure/layer_5dense_component/MatMul/ReadVariableOpF^sobolev_model/Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOpE^sobolev_model/Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp?^sobolev_model/Icnn_closure/mean_shift_layer/sub/ReadVariableOp^sobolev_model/checked^sobolev_model/checked_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������	: : : : : : : : : : : : : : : : :	
�:	�:
2�
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
:���������	
!
_user_specified_name	input_1:%!

_output_shapes
:	
�:%!

_output_shapes
:	�:$ 

_output_shapes

:

�P
�

J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96853767

inputs'
mean_shift_layer_96853716:	.
decorrelation_layer_96853719:		)
layer__1_input_96853722:	d%
layer__1_input_96853724:d1
layer_0dense_component_96853727:	d.
layer_0nn_component_96853730:dd*
layer_0nn_component_96853732:d1
layer_1dense_component_96853737:	d.
layer_1nn_component_96853740:dd*
layer_1nn_component_96853742:d1
layer_2dense_component_96853747:	d.
layer_2nn_component_96853750:dd*
layer_2nn_component_96853752:d1
layer_5dense_component_96853757:	.
layer_5nn_component_96853760:d*
layer_5nn_component_96853762:
identity��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�.layer_0dense_component/StatefulPartitionedCall�+layer_0nn_component/StatefulPartitionedCall�.layer_1dense_component/StatefulPartitionedCall�+layer_1nn_component/StatefulPartitionedCall�.layer_2dense_component/StatefulPartitionedCall�+layer_2nn_component/StatefulPartitionedCall�.layer_5dense_component/StatefulPartitionedCall�+layer_5nn_component/StatefulPartitionedCall�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_96853716*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_96853337�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_96853719*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_96853348�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_96853722layer__1_input_96853724*
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
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_96853363�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_0dense_component_96853727*
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
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_96853376�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_96853730layer_0nn_component_96853732*
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
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_96853390�
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
M__inference_add_component_0_layer_call_and_return_conditional_losses_96853402�
tf.math.softplus/SoftplusSoftplus(add_component_0/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1dense_component_96853737*
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
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_96853412�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCall'tf.math.softplus/Softplus:activations:0layer_1nn_component_96853740layer_1nn_component_96853742*
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
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_96853426�
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
M__inference_add_component_1_layer_call_and_return_conditional_losses_96853438�
tf.math.softplus_1/SoftplusSoftplus(add_component_1/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_2dense_component_96853747*
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
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_96853448�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_1/Softplus:activations:0layer_2nn_component_96853750layer_2nn_component_96853752*
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
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_96853462�
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
M__inference_add_component_2_layer_call_and_return_conditional_losses_96853474�
tf.math.softplus_2/SoftplusSoftplus(add_component_2/PartitionedCall:output:0*
T0*'
_output_shapes
:���������d�
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCallinputslayer_5dense_component_96853757*
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
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_96853484�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCall)tf.math.softplus_2/Softplus:activations:0layer_5nn_component_96853760layer_5nn_component_96853762*
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
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_96853498�
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
A__inference_add_layer_call_and_return_conditional_losses_96853510k
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
3:���������	: : : : : : : : : : : : : : : : 2Z
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
:���������	
 
_user_specified_nameinputs
�S
�
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96856298

inputs:
,mean_shift_layer_sub_readvariableop_resource:	D
2decorrelation_layer_matmul_readvariableop_resource:		?
-layer__1_input_matmul_readvariableop_resource:	d<
.layer__1_input_biasadd_readvariableop_resource:dG
5layer_0dense_component_matmul_readvariableop_resource:	dD
2layer_0nn_component_matmul_readvariableop_resource:ddA
3layer_0nn_component_biasadd_readvariableop_resource:dG
5layer_1dense_component_matmul_readvariableop_resource:	dD
2layer_1nn_component_matmul_readvariableop_resource:ddA
3layer_1nn_component_biasadd_readvariableop_resource:dG
5layer_2dense_component_matmul_readvariableop_resource:	dD
2layer_2nn_component_matmul_readvariableop_resource:ddA
3layer_2nn_component_biasadd_readvariableop_resource:dG
5layer_5dense_component_matmul_readvariableop_resource:	D
2layer_5nn_component_matmul_readvariableop_resource:dA
3layer_5nn_component_biasadd_readvariableop_resource:
identity��)decorrelation_layer/MatMul/ReadVariableOp�%layer_-1_input/BiasAdd/ReadVariableOp�$layer_-1_input/MatMul/ReadVariableOp�,layer_0dense_component/MatMul/ReadVariableOp�*layer_0nn_component/BiasAdd/ReadVariableOp�)layer_0nn_component/MatMul/ReadVariableOp�,layer_1dense_component/MatMul/ReadVariableOp�*layer_1nn_component/BiasAdd/ReadVariableOp�)layer_1nn_component/MatMul/ReadVariableOp�,layer_2dense_component/MatMul/ReadVariableOp�*layer_2nn_component/BiasAdd/ReadVariableOp�)layer_2nn_component/MatMul/ReadVariableOp�,layer_5dense_component/MatMul/ReadVariableOp�*layer_5nn_component/BiasAdd/ReadVariableOp�)layer_5nn_component/MatMul/ReadVariableOp�#mean_shift_layer/sub/ReadVariableOp�
#mean_shift_layer/sub/ReadVariableOpReadVariableOp,mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:	*
dtype0�
mean_shift_layer/subSubinputs+mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
)decorrelation_layer/MatMul/ReadVariableOpReadVariableOp2decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:		*
dtype0�
decorrelation_layer/MatMulMatMulmean_shift_layer/sub:z:01decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
$layer_-1_input/MatMul/ReadVariableOpReadVariableOp-layer__1_input_matmul_readvariableop_resource*
_output_shapes

:	d*
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

:	d*
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

:	d*
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

:	d*
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

:	*
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
3:���������	: : : : : : : : : : : : : : : : 2V
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
:���������	
 
_user_specified_nameinputs
�
�
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_96853484

inputs0
matmul_readvariableop_resource:	
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
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
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�S
�
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96856358

inputs:
,mean_shift_layer_sub_readvariableop_resource:	D
2decorrelation_layer_matmul_readvariableop_resource:		?
-layer__1_input_matmul_readvariableop_resource:	d<
.layer__1_input_biasadd_readvariableop_resource:dG
5layer_0dense_component_matmul_readvariableop_resource:	dD
2layer_0nn_component_matmul_readvariableop_resource:ddA
3layer_0nn_component_biasadd_readvariableop_resource:dG
5layer_1dense_component_matmul_readvariableop_resource:	dD
2layer_1nn_component_matmul_readvariableop_resource:ddA
3layer_1nn_component_biasadd_readvariableop_resource:dG
5layer_2dense_component_matmul_readvariableop_resource:	dD
2layer_2nn_component_matmul_readvariableop_resource:ddA
3layer_2nn_component_biasadd_readvariableop_resource:dG
5layer_5dense_component_matmul_readvariableop_resource:	D
2layer_5nn_component_matmul_readvariableop_resource:dA
3layer_5nn_component_biasadd_readvariableop_resource:
identity��)decorrelation_layer/MatMul/ReadVariableOp�%layer_-1_input/BiasAdd/ReadVariableOp�$layer_-1_input/MatMul/ReadVariableOp�,layer_0dense_component/MatMul/ReadVariableOp�*layer_0nn_component/BiasAdd/ReadVariableOp�)layer_0nn_component/MatMul/ReadVariableOp�,layer_1dense_component/MatMul/ReadVariableOp�*layer_1nn_component/BiasAdd/ReadVariableOp�)layer_1nn_component/MatMul/ReadVariableOp�,layer_2dense_component/MatMul/ReadVariableOp�*layer_2nn_component/BiasAdd/ReadVariableOp�)layer_2nn_component/MatMul/ReadVariableOp�,layer_5dense_component/MatMul/ReadVariableOp�*layer_5nn_component/BiasAdd/ReadVariableOp�)layer_5nn_component/MatMul/ReadVariableOp�#mean_shift_layer/sub/ReadVariableOp�
#mean_shift_layer/sub/ReadVariableOpReadVariableOp,mean_shift_layer_sub_readvariableop_resource*
_output_shapes
:	*
dtype0�
mean_shift_layer/subSubinputs+mean_shift_layer/sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
)decorrelation_layer/MatMul/ReadVariableOpReadVariableOp2decorrelation_layer_matmul_readvariableop_resource*
_output_shapes

:		*
dtype0�
decorrelation_layer/MatMulMatMulmean_shift_layer/sub:z:01decorrelation_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
$layer_-1_input/MatMul/ReadVariableOpReadVariableOp-layer__1_input_matmul_readvariableop_resource*
_output_shapes

:	d*
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

:	d*
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

:	d*
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

:	d*
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

:	*
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
3:���������	: : : : : : : : : : : : : : : : 2V
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
:���������	
 
_user_specified_nameinputs
�

�
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_96853363

inputs0
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
:���������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
9__inference_layer_0dense_component_layer_call_fn_96856413

inputs
unknown:	d
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
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_96853376o
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
:���������	: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
9__inference_layer_5dense_component_layer_call_fn_96856548

inputs
unknown:	
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
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_96853484o
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
:���������	: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�

�
h__inference___backward_layer_2dense_component_layer_call_and_return_conditional_losses_96854084_96854095
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
:���������	*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:	d*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������	i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:	d"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������d:	d:���������	*m
forward_function_nameTR__forward_layer_2dense_component_layer_call_and_return_conditional_losses_96854094:- )
'
_output_shapes
:���������d:$ 

_output_shapes

:	d:-)
'
_output_shapes
:���������	
�
�
J__forward_layer_-1_input_layer_call_and_return_conditional_losses_96854270
inputs_00
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity
biasadd
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
:���������	: : *|
backward_function_nameb`__inference___backward_layer_-1_input_layer_call_and_return_conditional_losses_96854255_9685427120
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
a__inference___backward_add_component_0_layer_call_and_return_conditional_losses_96854192_96854209
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
forward_function_nameMK__forward_add_component_0_layer_call_and_return_conditional_losses_96854208:- )
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d
�
�
R__forward_layer_0dense_component_layer_call_and_return_conditional_losses_96854226
inputs_00
matmul_readvariableop_resource:	d
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
:���������	: *�
backward_function_namejh__inference___backward_layer_0dense_component_layer_call_and_return_conditional_losses_96854216_968542272.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
U__inference___backward_add_layer_call_and_return_conditional_losses_96853994_96854011
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
forward_function_nameA?__forward_add_layer_call_and_return_conditional_losses_96854010:- )
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������
�
�
O__forward_layer_5nn_component_layer_call_and_return_conditional_losses_96854048
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
backward_function_namege__inference___backward_layer_5nn_component_layer_call_and_return_conditional_losses_96854036_9685404920
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
��
�
^__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_96853990_96854343
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
U__inference___backward_add_layer_call_and_return_conditional_losses_96853994_96854011�
Mgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall;gradients/add/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcallngradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������	:	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_5dense_component_layer_call_and_return_conditional_losses_96854018_96854029�
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
e__inference___backward_layer_5nn_component_layer_call_and_return_conditional_losses_96854036_96854049�
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
a__inference___backward_add_component_2_layer_call_and_return_conditional_losses_96854060_96854077�
Mgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_2/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcallngradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������	:	d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_2dense_component_layer_call_and_return_conditional_losses_96854084_96854095�
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
e__inference___backward_layer_2nn_component_layer_call_and_return_conditional_losses_96854102_96854115�
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
a__inference___backward_add_component_1_layer_call_and_return_conditional_losses_96854126_96854143�
Mgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_1/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcallngradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������	:	d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_1dense_component_layer_call_and_return_conditional_losses_96854150_96854161�
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
e__inference___backward_layer_1nn_component_layer_call_and_return_conditional_losses_96854168_96854181�
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
a__inference___backward_add_component_0_layer_call_and_return_conditional_losses_96854192_96854209�
Mgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_0/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcallngradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������	:	d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *q
flRj
h__inference___backward_layer_0dense_component_layer_call_and_return_conditional_losses_96854216_96854227�
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
e__inference___backward_layer_0nn_component_layer_call_and_return_conditional_losses_96854234_96854247�
Egradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallSgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:0\gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_1^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *7
_output_shapes%
#:���������	:	d:d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *i
fdRb
`__inference___backward_layer_-1_input_layer_call_and_return_conditional_losses_96854255_96854271�
Jgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:0fgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcallhgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������	:		* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *n
fiRg
e__inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_96854281_96854292�
Ggradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallSgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0`gradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcallbgradients_mean_shift_layer_statefulpartitionedcall_grad_mean_shift_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:���������	:	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *k
ffRd
b__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_96854299_96854317�
gradients/AddNAddNVgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Pgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0*
N*
T0*`
_classV
TRloc:@gradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall*'
_output_shapes
:���������	\
IdentityIdentitygradients/AddN:sum:0*
T0*'
_output_shapes
:���������	�

Identity_1IdentityPgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	�

Identity_2IdentitySgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:		�

Identity_3IdentityNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:	d�

Identity_4IdentityNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
:d�

Identity_5IdentityVgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:	d�

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

:	d�

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

:	d�
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

:	�
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
�:���������:���������:���������:	:���������	:d:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:���������d:���������d:	d:���������	:dd:���������d:���������d:	d:���������	:		:���������	:���������	:	*c
forward_function_nameJH__forward_Icnn_closure_layer_call_and_return_conditional_losses_96854342:- )
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

:	:-)
'
_output_shapes
:���������	:$ 

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

:	d:-)
'
_output_shapes
:���������	:$ 

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

:	d:-)
'
_output_shapes
:���������	:$ 

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

:	d:-)
'
_output_shapes
:���������	:$ 

_output_shapes

:dd:-)
'
_output_shapes
:���������d:-)
'
_output_shapes
:���������d:$ 

_output_shapes

:	d:-)
'
_output_shapes
:���������	:$ 

_output_shapes

:		:- )
'
_output_shapes
:���������	:-!)
'
_output_shapes
:���������	: "

_output_shapes
:	
�
�
1__inference_layer_-1_input_layer_call_fn_96856395

inputs
unknown:	d
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
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_96853363o
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
:���������	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�	
�
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_96853498

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
�
�
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_96856555

inputs0
matmul_readvariableop_resource:	
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
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
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
m
A__inference_add_layer_call_and_return_conditional_losses_96856586
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

�
e__inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_96854281_96854292
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:���������	�
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������	*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes

:		*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������	i

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes

:		"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������	:		:���������	*j
forward_function_nameQO__forward_decorrelation_layer_layer_call_and_return_conditional_losses_96854291:- )
'
_output_shapes
:���������	:$ 

_output_shapes

:		:-)
'
_output_shapes
:���������	
�
�
0__inference_sobolev_model_layer_call_fn_96855642
x
unknown:	
	unknown_0:		
	unknown_1:	d
	unknown_2:d
	unknown_3:	d
	unknown_4:dd
	unknown_5:d
	unknown_6:	d
	unknown_7:dd
	unknown_8:d
	unknown_9:	d

unknown_10:dd

unknown_11:d

unknown_12:	

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
9:���������:���������	:���������	*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96854965o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������	q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:���������	: : : : : : : : : : : : : : : : :	
�:	�:
22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:���������	

_user_specified_namex:%!

_output_shapes
:	
�:%!

_output_shapes
:	�:$ 

_output_shapes

:

�
�
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_96853448

inputs0
matmul_readvariableop_resource:	d
identity��MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
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
serving_default_input_1:0���������	<
output_10
StatefulPartitionedCall:0���������<
output_20
StatefulPartitionedCall:1���������	<
output_30
StatefulPartitionedCall:2���������	tensorflow/serving/predict:��
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
:	2Variable
:		2Variable
':%	d2layer_-1_input/kernel
!:d2layer_-1_input/bias
/:-	d2layer_0dense_component/kernel
,:*dd2layer_0nn_component/kernel
&:$d2layer_0nn_component/bias
/:-	d2layer_1dense_component/kernel
,:*dd2layer_1nn_component/kernel
&:$d2layer_1nn_component/bias
/:-	d2layer_2dense_component/kernel
,:*dd2layer_2nn_component/kernel
&:$d2layer_2nn_component/bias
/:-	2layer_5dense_component/kernel
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
':%	d2layer_-1_input/kernel/m
!:d2layer_-1_input/bias/m
/:-	d2layer_0dense_component/kernel/m
,:*dd2layer_0nn_component/kernel/m
&:$d2layer_0nn_component/bias/m
/:-	d2layer_1dense_component/kernel/m
,:*dd2layer_1nn_component/kernel/m
&:$d2layer_1nn_component/bias/m
/:-	d2layer_2dense_component/kernel/m
,:*dd2layer_2nn_component/kernel/m
&:$d2layer_2nn_component/bias/m
/:-	2layer_5dense_component/kernel/m
,:*d2layer_5nn_component/kernel/m
&:$2layer_5nn_component/bias/m
':%	d2layer_-1_input/kernel/v
!:d2layer_-1_input/bias/v
/:-	d2layer_0dense_component/kernel/v
,:*dd2layer_0nn_component/kernel/v
&:$d2layer_0nn_component/bias/v
/:-	d2layer_1dense_component/kernel/v
,:*dd2layer_1nn_component/kernel/v
&:$d2layer_1nn_component/bias/v
/:-	d2layer_2dense_component/kernel/v
,:*dd2layer_2nn_component/kernel/v
&:$d2layer_2nn_component/bias/v
/:-	2layer_5dense_component/kernel/v
,:*d2layer_5nn_component/kernel/v
&:$2layer_5nn_component/bias/v
�2�
0__inference_sobolev_model_layer_call_fn_96854568
0__inference_sobolev_model_layer_call_fn_96855595
0__inference_sobolev_model_layer_call_fn_96855642
0__inference_sobolev_model_layer_call_fn_96855057�
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
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96855903
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96856164
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96855275
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96855493�
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
#__inference__wrapped_model_96853323input_1"�
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
/__inference_Icnn_closure_layer_call_fn_96853548
/__inference_Icnn_closure_layer_call_fn_96856201
/__inference_Icnn_closure_layer_call_fn_96856238
/__inference_Icnn_closure_layer_call_fn_96853839�
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
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96856298
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96856358
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96853893
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96853947�
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
&__inference_signature_wrapper_96855548input_1"�
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
3__inference_mean_shift_layer_layer_call_fn_96856365�
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
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_96856372�
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
6__inference_decorrelation_layer_layer_call_fn_96856379�
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
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_96856386�
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
1__inference_layer_-1_input_layer_call_fn_96856395�
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
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_96856406�
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
9__inference_layer_0dense_component_layer_call_fn_96856413�
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
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_96856420�
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
6__inference_layer_0nn_component_layer_call_fn_96856429�
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
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_96856439�
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
2__inference_add_component_0_layer_call_fn_96856445�
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
M__inference_add_component_0_layer_call_and_return_conditional_losses_96856451�
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
9__inference_layer_1dense_component_layer_call_fn_96856458�
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
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_96856465�
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
6__inference_layer_1nn_component_layer_call_fn_96856474�
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
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_96856484�
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
2__inference_add_component_1_layer_call_fn_96856490�
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
M__inference_add_component_1_layer_call_and_return_conditional_losses_96856496�
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
9__inference_layer_2dense_component_layer_call_fn_96856503�
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
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_96856510�
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
6__inference_layer_2nn_component_layer_call_fn_96856519�
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
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_96856529�
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
2__inference_add_component_2_layer_call_fn_96856535�
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
M__inference_add_component_2_layer_call_and_return_conditional_losses_96856541�
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
9__inference_layer_5dense_component_layer_call_fn_96856548�
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
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_96856555�
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
6__inference_layer_5nn_component_layer_call_fn_96856564�
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
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_96856574�
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
&__inference_add_layer_call_fn_96856580�
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
A__inference_add_layer_call_and_return_conditional_losses_96856586�
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
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96853893s%&'()*+,-./012348�5
.�+
!�
input_1���������	
p 

 
� "%�"
�
0���������
� �
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96853947s%&'()*+,-./012348�5
.�+
!�
input_1���������	
p

 
� "%�"
�
0���������
� �
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96856298r%&'()*+,-./012347�4
-�*
 �
inputs���������	
p 

 
� "%�"
�
0���������
� �
J__inference_Icnn_closure_layer_call_and_return_conditional_losses_96856358r%&'()*+,-./012347�4
-�*
 �
inputs���������	
p

 
� "%�"
�
0���������
� �
/__inference_Icnn_closure_layer_call_fn_96853548f%&'()*+,-./012348�5
.�+
!�
input_1���������	
p 

 
� "�����������
/__inference_Icnn_closure_layer_call_fn_96853839f%&'()*+,-./012348�5
.�+
!�
input_1���������	
p

 
� "�����������
/__inference_Icnn_closure_layer_call_fn_96856201e%&'()*+,-./012347�4
-�*
 �
inputs���������	
p 

 
� "�����������
/__inference_Icnn_closure_layer_call_fn_96856238e%&'()*+,-./012347�4
-�*
 �
inputs���������	
p

 
� "�����������
#__inference__wrapped_model_96853323�%&'()*+,-./01234���0�-
&�#
!�
input_1���������	
� "���
.
output_1"�
output_1���������
.
output_2"�
output_2���������	
.
output_3"�
output_3���������	�
M__inference_add_component_0_layer_call_and_return_conditional_losses_96856451�Z�W
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
2__inference_add_component_0_layer_call_fn_96856445vZ�W
P�M
K�H
"�
inputs/0���������d
"�
inputs/1���������d
� "����������d�
M__inference_add_component_1_layer_call_and_return_conditional_losses_96856496�Z�W
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
2__inference_add_component_1_layer_call_fn_96856490vZ�W
P�M
K�H
"�
inputs/0���������d
"�
inputs/1���������d
� "����������d�
M__inference_add_component_2_layer_call_and_return_conditional_losses_96856541�Z�W
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
2__inference_add_component_2_layer_call_fn_96856535vZ�W
P�M
K�H
"�
inputs/0���������d
"�
inputs/1���������d
� "����������d�
A__inference_add_layer_call_and_return_conditional_losses_96856586�Z�W
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
&__inference_add_layer_call_fn_96856580vZ�W
P�M
K�H
"�
inputs/0���������
"�
inputs/1���������
� "�����������
Q__inference_decorrelation_layer_layer_call_and_return_conditional_losses_96856386[&/�,
%�"
 �
inputs���������	
� "%�"
�
0���������	
� �
6__inference_decorrelation_layer_layer_call_fn_96856379N&/�,
%�"
 �
inputs���������	
� "����������	�
L__inference_layer_-1_input_layer_call_and_return_conditional_losses_96856406\'(/�,
%�"
 �
inputs���������	
� "%�"
�
0���������d
� �
1__inference_layer_-1_input_layer_call_fn_96856395O'(/�,
%�"
 �
inputs���������	
� "����������d�
T__inference_layer_0dense_component_layer_call_and_return_conditional_losses_96856420[)/�,
%�"
 �
inputs���������	
� "%�"
�
0���������d
� �
9__inference_layer_0dense_component_layer_call_fn_96856413N)/�,
%�"
 �
inputs���������	
� "����������d�
Q__inference_layer_0nn_component_layer_call_and_return_conditional_losses_96856439\*+/�,
%�"
 �
inputs���������d
� "%�"
�
0���������d
� �
6__inference_layer_0nn_component_layer_call_fn_96856429O*+/�,
%�"
 �
inputs���������d
� "����������d�
T__inference_layer_1dense_component_layer_call_and_return_conditional_losses_96856465[,/�,
%�"
 �
inputs���������	
� "%�"
�
0���������d
� �
9__inference_layer_1dense_component_layer_call_fn_96856458N,/�,
%�"
 �
inputs���������	
� "����������d�
Q__inference_layer_1nn_component_layer_call_and_return_conditional_losses_96856484\-./�,
%�"
 �
inputs���������d
� "%�"
�
0���������d
� �
6__inference_layer_1nn_component_layer_call_fn_96856474O-./�,
%�"
 �
inputs���������d
� "����������d�
T__inference_layer_2dense_component_layer_call_and_return_conditional_losses_96856510[//�,
%�"
 �
inputs���������	
� "%�"
�
0���������d
� �
9__inference_layer_2dense_component_layer_call_fn_96856503N//�,
%�"
 �
inputs���������	
� "����������d�
Q__inference_layer_2nn_component_layer_call_and_return_conditional_losses_96856529\01/�,
%�"
 �
inputs���������d
� "%�"
�
0���������d
� �
6__inference_layer_2nn_component_layer_call_fn_96856519O01/�,
%�"
 �
inputs���������d
� "����������d�
T__inference_layer_5dense_component_layer_call_and_return_conditional_losses_96856555[2/�,
%�"
 �
inputs���������	
� "%�"
�
0���������
� �
9__inference_layer_5dense_component_layer_call_fn_96856548N2/�,
%�"
 �
inputs���������	
� "�����������
Q__inference_layer_5nn_component_layer_call_and_return_conditional_losses_96856574\34/�,
%�"
 �
inputs���������d
� "%�"
�
0���������
� �
6__inference_layer_5nn_component_layer_call_fn_96856564O34/�,
%�"
 �
inputs���������d
� "�����������
N__inference_mean_shift_layer_layer_call_and_return_conditional_losses_96856372[%/�,
%�"
 �
inputs���������	
� "%�"
�
0���������	
� �
3__inference_mean_shift_layer_layer_call_fn_96856365N%/�,
%�"
 �
inputs���������	
� "����������	�
&__inference_signature_wrapper_96855548�%&'()*+,-./01234���;�8
� 
1�.
,
input_1!�
input_1���������	"���
.
output_1"�
output_1���������
.
output_2"�
output_2���������	
.
output_3"�
output_3���������	�
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96855275�%&'()*+,-./01234���4�1
*�'
!�
input_1���������	
p 
� "j�g
`�]
�
0/0���������
�
0/1���������	
�
0/2���������	
� �
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96855493�%&'()*+,-./01234���4�1
*�'
!�
input_1���������	
p
� "j�g
`�]
�
0/0���������
�
0/1���������	
�
0/2���������	
� �
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96855903�%&'()*+,-./01234���.�+
$�!
�
x���������	
p 
� "j�g
`�]
�
0/0���������
�
0/1���������	
�
0/2���������	
� �
K__inference_sobolev_model_layer_call_and_return_conditional_losses_96856164�%&'()*+,-./01234���.�+
$�!
�
x���������	
p
� "j�g
`�]
�
0/0���������
�
0/1���������	
�
0/2���������	
� �
0__inference_sobolev_model_layer_call_fn_96854568�%&'()*+,-./01234���4�1
*�'
!�
input_1���������	
p 
� "Z�W
�
0���������
�
1���������	
�
2���������	�
0__inference_sobolev_model_layer_call_fn_96855057�%&'()*+,-./01234���4�1
*�'
!�
input_1���������	
p
� "Z�W
�
0���������
�
1���������	
�
2���������	�
0__inference_sobolev_model_layer_call_fn_96855595�%&'()*+,-./01234���.�+
$�!
�
x���������	
p 
� "Z�W
�
0���������
�
1���������	
�
2���������	�
0__inference_sobolev_model_layer_call_fn_96855642�%&'()*+,-./01234���.�+
$�!
�
x���������	
p
� "Z�W
�
0���������
�
1���������	
�
2���������	
��5
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
 �"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��2
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
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
dtype0*
shape:		�*&
shared_namelayer_-1_input/kernel
�
)layer_-1_input/kernel/Read/ReadVariableOpReadVariableOplayer_-1_input/kernel*
_output_shapes
:		�*
dtype0

layer_-1_input/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namelayer_-1_input/bias
x
'layer_-1_input/bias/Read/ReadVariableOpReadVariableOplayer_-1_input/bias*
_output_shapes	
:�*
dtype0
�
layer_0dense_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		�*.
shared_namelayer_0dense_component/kernel
�
1layer_0dense_component/kernel/Read/ReadVariableOpReadVariableOplayer_0dense_component/kernel*
_output_shapes
:		�*
dtype0
�
layer_0nn_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*+
shared_namelayer_0nn_component/kernel
�
.layer_0nn_component/kernel/Read/ReadVariableOpReadVariableOplayer_0nn_component/kernel* 
_output_shapes
:
��*
dtype0
�
layer_0nn_component/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_namelayer_0nn_component/bias
�
,layer_0nn_component/bias/Read/ReadVariableOpReadVariableOplayer_0nn_component/bias*
_output_shapes	
:�*
dtype0
�
layer_1dense_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		�*.
shared_namelayer_1dense_component/kernel
�
1layer_1dense_component/kernel/Read/ReadVariableOpReadVariableOplayer_1dense_component/kernel*
_output_shapes
:		�*
dtype0
�
layer_1nn_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*+
shared_namelayer_1nn_component/kernel
�
.layer_1nn_component/kernel/Read/ReadVariableOpReadVariableOplayer_1nn_component/kernel* 
_output_shapes
:
��*
dtype0
�
layer_1nn_component/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_namelayer_1nn_component/bias
�
,layer_1nn_component/bias/Read/ReadVariableOpReadVariableOplayer_1nn_component/bias*
_output_shapes	
:�*
dtype0
�
layer_2dense_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		�*.
shared_namelayer_2dense_component/kernel
�
1layer_2dense_component/kernel/Read/ReadVariableOpReadVariableOplayer_2dense_component/kernel*
_output_shapes
:		�*
dtype0
�
layer_2nn_component/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*+
shared_namelayer_2nn_component/kernel
�
.layer_2nn_component/kernel/Read/ReadVariableOpReadVariableOplayer_2nn_component/kernel* 
_output_shapes
:
��*
dtype0
�
layer_2nn_component/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_namelayer_2nn_component/bias
�
,layer_2nn_component/bias/Read/ReadVariableOpReadVariableOplayer_2nn_component/bias*
_output_shapes	
:�*
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
dtype0*
shape:	�*+
shared_namelayer_5nn_component/kernel
�
.layer_5nn_component/kernel/Read/ReadVariableOpReadVariableOplayer_5nn_component/kernel*
_output_shapes
:	�*
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
dtype0*
shape:		�*(
shared_namelayer_-1_input/kernel/m
�
+layer_-1_input/kernel/m/Read/ReadVariableOpReadVariableOplayer_-1_input/kernel/m*
_output_shapes
:		�*
dtype0
�
layer_-1_input/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_namelayer_-1_input/bias/m
|
)layer_-1_input/bias/m/Read/ReadVariableOpReadVariableOplayer_-1_input/bias/m*
_output_shapes	
:�*
dtype0
�
layer_0dense_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:		�*0
shared_name!layer_0dense_component/kernel/m
�
3layer_0dense_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_0dense_component/kernel/m*
_output_shapes
:		�*
dtype0
�
layer_0nn_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_namelayer_0nn_component/kernel/m
�
0layer_0nn_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_0nn_component/kernel/m* 
_output_shapes
:
��*
dtype0
�
layer_0nn_component/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namelayer_0nn_component/bias/m
�
.layer_0nn_component/bias/m/Read/ReadVariableOpReadVariableOplayer_0nn_component/bias/m*
_output_shapes	
:�*
dtype0
�
layer_1dense_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:		�*0
shared_name!layer_1dense_component/kernel/m
�
3layer_1dense_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_1dense_component/kernel/m*
_output_shapes
:		�*
dtype0
�
layer_1nn_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_namelayer_1nn_component/kernel/m
�
0layer_1nn_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_1nn_component/kernel/m* 
_output_shapes
:
��*
dtype0
�
layer_1nn_component/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namelayer_1nn_component/bias/m
�
.layer_1nn_component/bias/m/Read/ReadVariableOpReadVariableOplayer_1nn_component/bias/m*
_output_shapes	
:�*
dtype0
�
layer_2dense_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:		�*0
shared_name!layer_2dense_component/kernel/m
�
3layer_2dense_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_2dense_component/kernel/m*
_output_shapes
:		�*
dtype0
�
layer_2nn_component/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_namelayer_2nn_component/kernel/m
�
0layer_2nn_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_2nn_component/kernel/m* 
_output_shapes
:
��*
dtype0
�
layer_2nn_component/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namelayer_2nn_component/bias/m
�
.layer_2nn_component/bias/m/Read/ReadVariableOpReadVariableOplayer_2nn_component/bias/m*
_output_shapes	
:�*
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
dtype0*
shape:	�*-
shared_namelayer_5nn_component/kernel/m
�
0layer_5nn_component/kernel/m/Read/ReadVariableOpReadVariableOplayer_5nn_component/kernel/m*
_output_shapes
:	�*
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
dtype0*
shape:		�*(
shared_namelayer_-1_input/kernel/v
�
+layer_-1_input/kernel/v/Read/ReadVariableOpReadVariableOplayer_-1_input/kernel/v*
_output_shapes
:		�*
dtype0
�
layer_-1_input/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_namelayer_-1_input/bias/v
|
)layer_-1_input/bias/v/Read/ReadVariableOpReadVariableOplayer_-1_input/bias/v*
_output_shapes	
:�*
dtype0
�
layer_0dense_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:		�*0
shared_name!layer_0dense_component/kernel/v
�
3layer_0dense_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_0dense_component/kernel/v*
_output_shapes
:		�*
dtype0
�
layer_0nn_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_namelayer_0nn_component/kernel/v
�
0layer_0nn_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_0nn_component/kernel/v* 
_output_shapes
:
��*
dtype0
�
layer_0nn_component/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namelayer_0nn_component/bias/v
�
.layer_0nn_component/bias/v/Read/ReadVariableOpReadVariableOplayer_0nn_component/bias/v*
_output_shapes	
:�*
dtype0
�
layer_1dense_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:		�*0
shared_name!layer_1dense_component/kernel/v
�
3layer_1dense_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_1dense_component/kernel/v*
_output_shapes
:		�*
dtype0
�
layer_1nn_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_namelayer_1nn_component/kernel/v
�
0layer_1nn_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_1nn_component/kernel/v* 
_output_shapes
:
��*
dtype0
�
layer_1nn_component/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namelayer_1nn_component/bias/v
�
.layer_1nn_component/bias/v/Read/ReadVariableOpReadVariableOplayer_1nn_component/bias/v*
_output_shapes	
:�*
dtype0
�
layer_2dense_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:		�*0
shared_name!layer_2dense_component/kernel/v
�
3layer_2dense_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_2dense_component/kernel/v*
_output_shapes
:		�*
dtype0
�
layer_2nn_component/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_namelayer_2nn_component/kernel/v
�
0layer_2nn_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_2nn_component/kernel/v* 
_output_shapes
:
��*
dtype0
�
layer_2nn_component/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namelayer_2nn_component/bias/v
�
.layer_2nn_component/bias/v/Read/ReadVariableOpReadVariableOplayer_2nn_component/bias/v*
_output_shapes	
:�*
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
dtype0*
shape:	�*-
shared_namelayer_5nn_component/kernel/v
�
0layer_5nn_component/kernel/v/Read/ReadVariableOpReadVariableOplayer_5nn_component/kernel/v*
_output_shapes
:	�*
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
�"��m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?m�BP��?B�r�v�d/ɨ�Ȑ�e��g���_���؛L���GÇoR���p����b���p �Q��K�3Km&��K�3Km&���p �Q��q����b��GÇoR����؛L����_��e��g��`/ɨ�Ȑ�D�r�v�2�r�v?]/ɨ�Ȑ?e��g�?�_�?�؛L��?KÇoR��?m����b�?�p �Q�?K�3Km&�?K�3Km&�?�p �Q�?s����b�?IÇoR��?�؛L��?�_�?e��g�?b/ɨ�Ȑ?M�r�v?sX����̅%��Yw�&���hbC����:Q/y�����V���'��3���$�������
C�8P¿
C�8P¿%�������(��3�����V���:Q/y���hbC����Yw�&���̅%��sX�����rX���?̅%�?Nw�&��?fbC���?:Q/y��?��V��?&��3��?%������?
C�8P�?
C�8P�?%������?)��3��?��V��?<Q/y��?mbC���?dw�&��?̅%�?sX���?��;�樓���D[�0��g�<�"շ�M�e79,���t��ÿ�G��ǿyĘ���ɿ\���M<˿�烯�̿�烯�̿]���M<˿{Ę���ɿ�G��ǿ�t��ÿL�e79,��h�<�"շ���D[�0����;�樓�s�;�樓?��D[�0�?^�<�"շ?K�e79,�?�t���?�G���?xĘ����?]���M<�?�烯��?�烯��?]���M<�?|Ę����?�G���?�t���?P�e79,�?o�<�"շ?��D[�0�?��;�樓?�Vv�k.��cC��9X8St��6�0LXſA�igPʿ�Fd�{ο�w�п;+u�ѿ�`M�:�ҿ�`M�:�ҿ<+u�ѿ�w�п�Fd�{οB�igPʿ5�0LXſ:X8St��i.��cC���Vv���Vv�?d.��cC�?-X8St�?4�0LX�?A�igP�?�Fd�{�?�w��?<+u��?�`M�:��?�`M�:��?=+u��?�w��?�Fd�{�?D�igP�?;�0LX�?FX8St�?k.��cC�?�Vv�?B;J|~���IDSa��^��<�ÿ.�n� �ɿ&/&:�Ͽ�$�V�ҿFȉ��wԿ7^%nb�տ��^aֿ��^aֿ8^%nb�տGȉ��wԿ�$�V�ҿ'/&:�Ͽ,�n� �ɿ_��<�ÿ�IDSa��E;J|~��+;J|~�?�IDSa�?W��<��?+�n� ��?&/&:��?�$�V��?Eȉ��w�?8^%nb��?��^a�?��^a�?8^%nb��?Iȉ��w�?�$�V��?(/&:��?4�n� ��?e��<��?�IDSa�?R;J|~�?ځ��5������Ӻ��XFR��ſE/0���Ϳ~ &?�Rҿ�E�9տ
���|׿��F�ٿ�C�wL�ٿ�C�wL�ٿ��F�ٿ���|׿�E�9տ &?�RҿD/0���Ϳ�XFR��ſ����Ӻ�ہ��5��́��5�?����Ӻ?�XFR���?C/0����?~ &?�R�?�E�9�?���|�?��F��?�C�wL��?�C�wL��?��F��?���|�?�E�9�?� &?�R�?K/0����?�XFR���?����Ӻ?ね�5�?�wx��ޣ�FB�I�����aK$ȿ���VXп��Sv&Կ����W׿᝶���ٿ'�y%��ۿ|a*hcܿ|a*hcܿ(�y%��ۿ᝶���ٿ����W׿��Sv&Կ���VXп�aK$ȿAB�I�����wx��ޣ��wx��ޣ?:B�I���?�aK$�?���VX�?��Sv&�?����W�?ߝ�����?(�y%���?|a*hc�?|a*hc�?*�y%���?䝶����?����W�?��Sv&�?���VX�?�aK$�?DB�I���?�wx��ޣ?��� ���[��@pT����J,�ɿ<]��[ѿ�k��fտ�B���ؿtb�MmۿzS��+;ݿ޾��%޿޾��%޿|S��+;ݿub�Mmۿ�B���ؿ�k��fտ<]��[ѿ��J,�ɿU��@pT����� ������ ��?N��@pT�?��J,��?<]��[�?�k��f�?�B����?rb�Mm�?|S��+;�?޾��%�?޾��%�?|S��+;�?vb�Mm�?�B����?�k��f�?<]��[�?��J,��?Y��@pT�?��� ��?� W�������{� ��{a[��Uʿ��s��ѿ!��2ֿ,���ٿ?c{^=ܿuc՞�޿�J!�
߿�J!�
߿uc՞�޿@c{^=ܿ,���ٿ!��2ֿ��s��ѿ{a[��Uʿ���{� ��� W����} W���?���{� �?qa[��U�?��s���?!��2�?0����?=c{^=�?uc՞��?�J!�
�?�J!�
�?vc՞��?Ac{^=�?-����?!��2�?�s���?�a[��U�?���{� �?� W���?K�3Km&���p �Q��p����b��IÇoR����؛L����_��e��g��g/ɨ�Ȑ�@�r�v�7�r�v?e/ɨ�Ȑ?
e��g�?�_�?�؛L��?IÇoR��?p����b�?�p �Q�?K�3Km&�?K�3Km&�?�p �Q�?s����b�?JÇoR��?�؛L��?�_�?e��g�?b/ɨ�Ȑ?H�r�v?.�r�v�[/ɨ�Ȑ�e��g���_���؛L���FÇoR���m����b���p �Q��K�3Km&��
C�8P¿%�������'��3�����V���:Q/y���jbC����Yw�&���!̅%�� sX�����rX���?̅%�?Vw�&��?jbC���?:Q/y��?��V��?'��3��?%������?
C�8P�?
C�8P�?%������?)��3��?��V��?<Q/y��?ebC���?cw�&��?̅%�?	sX���?�rX����̅%��Lw�&���hbC����9Q/y�����V���&��3���%�������
C�8P¿�烯�̿]���M<˿yĘ���ɿ�G��ǿ�t��ÿM�e79,��g�<�"շ���D[�0���;�樓�w�;�樓?��D[�0�?e�<�"շ?M�e79,�?�t���?�G���?yĘ����?]���M<�?�烯��?�烯��?]���M<�?|Ę����?�G���?�t���?J�e79,�?o�<�"շ?��D[�0�?��;�樓?o�;�樓���D[�0��]�<�"շ�M�e79,���t��ÿ�G��ǿxĘ���ɿ]���M<˿�烯�̿�`M�:�ҿ<+u�ѿ�w�п�Fd�{οB�igPʿ7�0LXſ9X8St��p.��cC���Vv���Vv�?n.��cC�?7X8St�?7�0LX�?A�igP�?�Fd�{�?�w��?<+u��?�`M�:��?�`M�:��?=+u��?�w��?�Fd�{�?D�igP�?2�0LX�?DX8St�?i.��cC�?
�Vv�?��Vv�b.��cC��,X8St��6�0LXſ@�igPʿ�Fd�{ο�w�п<+u�ѿ�`M�:�ҿ��^aֿ8^%nb�տFȉ��wԿ�$�V�ҿ'/&:�Ͽ/�n� �ɿ^��<�ÿ�IDSa��?;J|~��2;J|~�?�IDSa�?]��<��?/�n� ��?&/&:��?�$�V��?Fȉ��w�?8^%nb��?��^a�?��^a�?8^%nb��?Iȉ��w�?�$�V��?(/&:��?*�n� ��?d��<��?�IDSa�?K;J|~�?&;J|~���IDSa��V��<�ÿ.�n� �ɿ$/&:�Ͽ�$�V�ҿEȉ��wԿ8^%nb�տ��^aֿ�C�wL�ٿ��F�ٿ
���|׿�E�9տ &?�RҿG/0���Ϳ�XFR��ſ����Ӻ�؁��5��с��5�?����Ӻ?�XFR���?G/0����?~ &?�R�?�E�9�?
���|�?��F��?�C�wL��?�C�wL��?��F��?���|�?�E�9�?� &?�R�?@/0����?�XFR���?����Ӻ?߁��5�?ʁ��5������Ӻ��XFR��ſE/0���Ϳ} &?�Rҿ�E�9տ���|׿��F�ٿ�C�wL�ٿ|a*hcܿ(�y%��ۿ᝶���ٿ����W׿��Sv&Կ���VXп�aK$ȿMB�I�����wx��ޣ��wx��ޣ?JB�I���?�aK$�?���VX�?��Sv&�?����W�?᝶����?(�y%���?|a*hc�?|a*hc�?*�y%���?䝶����?����W�?��Sv&�?���VX�?�aK$�?CB�I���?�wx��ޣ?�wx��ޣ�7B�I�����aK$ȿ���VXп��Sv&Կ����W׿ߝ����ٿ(�y%��ۿ|a*hcܿ޾��%޿|S��+;ݿtb�Mmۿ�B���ؿ�k��fտ<]��[ѿ��J,�ɿb��@pT����� ������ ��?_��@pT�?��J,��?<]��[�?�k��f�?�B����?tb�Mm�?|S��+;�?޾��%�?޾��%�?|S��+;�?vb�Mm�?�B����?�k��f�?<]��[�?��J,��?W��@pT�?��� ��?��� ���K��@pT����J,�ɿ<]��[ѿ�k��fտ�B���ؿrb�Mmۿ|S��+;ݿ޾��%޿�J!�
߿uc՞�޿?c{^=ܿ-���ٿ!��2ֿ��s��ѿ{a[��Uʿ�{� ��� W����� W���?���{� �?xa[��U�?��s���?!��2�?.����??c{^=�?uc՞��?�J!�
�?�J!�
�?vc՞��?Ac{^=�?0����?!��2�?��s���?�a[��U�?���{� �?� W���?z W�������{� ��pa[��Uʿ��s��ѿ!��2ֿ,���ٿ=c{^=ܿuc՞�޿�J!�
߿��pОZ?�8�-�r?zǒ'�|?�q���?�8�-˂?�q���?zǒ'�|?�8�-�r?��pОZ?��pОZ��8�-�r�zǒ'�|��q�����8�-˂��q����zǒ'�|��8�-�r���pОZ���pОZ?ܲ8�-�r?zǒ'�|?�q���?�8�-˂?�q���?zǒ'�|?�8�-�r?��pОZ?��pОZ�۲8�-�r�zǒ'�|��q�����8�-˂��q����zǒ'�|��8�-�r���pОZ���lɀ?\�l�c*�?��2���?f�9N��?]�l�c*�?f�9N��?��2���?a�l�c*�?��lɀ?��lɀ�_�l�c*����2����f�9N���]�l�c*��f�9N�����2����Y�l�c*����lɀ���lɀ?S�l�c*�?��2���?c�9N��?]�l�c*�?c�9N��?��2���?Z�l�c*�?��lɀ?��lɀ�R�l�c*����2����f�9N���]�l�c*��h�9N�����2����\�l�c*����lɀ���F)u��?;����l�?�*�fƵ?�{G��?=����l�?�{G��?�*�fƵ?B����l�?��F)u��?��F)u���>����l���*�fƵ��{G���=����l���{G����*�fƵ�7����l��F)u�����F)u��?1����l�?�*�fƵ?�{G��?=����l�?�{G��?�*�fƵ?8����l�?ƛF)u��?��F)u���0����l���*�fƵ��{G���=����l���{G����*�fƵ�;����l��ʛF)u���V�X�(2�?~'�X���?N�� ��?�����C�?'�X���?�����C�?N�� ��?�'�X���?T�X�(2�?M�X�(2���'�X����M�� �¿�����Cǿ'�X��ȿ�����CǿO�� �¿{'�X����W�X�(2��J�X�(2�?u'�X���?H�� ��?�����C�?'�X���?�����C�?T�� ��?|'�X���?Z�X�(2�?F�X�(2��t'�X����H�� �¿�����Cǿ'�X��ȿ�����CǿT�� �¿~'�X����^�X�(2��8��T�?�ɀ�<�?�ĚY���?:C-�"�?�ɀ�<�?;C-�"�?�ĚY���?�ɀ�<�?5��T�?+��T���ɀ�<¿�ĚY��˿;C-�"ѿ�ɀ�<ҿ:C-�"ѿ�ĚY��˿�ɀ�<¿;��T��'��T�?�ɀ�<�?�ĚY���?:C-�"�?�ɀ�<�?9C-�"�?�ĚY���?�ɀ�<�??��T�?!��T���ɀ�<¿�ĚY��˿;C-�"ѿ�ɀ�<ҿ=C-�"ѿ�ĚY��˿�ɀ�<¿E��T����t_���?U&q1��?uC
�c�?�C ���?W&q1��?�C ���?uC
�c�?[&q1��?��t_���?��t_����X&q1�ȿtC
�cҿ�C ��ֿW&q1�ؿ�C ��ֿvC
�cҿR&q1�ȿ��t_������t_���?M&q1��?oC
�c�?�C ���?W&q1��?�C ���?zC
�c�?T&q1��?��t_���?��t_����K&q1�ȿoC
�cҿ�C ��ֿW&q1�ؿ�C ��ֿzC
�cҿU&q1�ȿ��t_������L��*�?M����?r�F�=�?:�Ճ�H�?O����?<�Ճ�H�?r�F�=�?T����?��L��*�?��L��*��P���Ϳr�F�=ֿ<�Ճ�HۿO���ݿ:�Ճ�Hۿr�F�=ֿI���Ϳ��L��*��}�L��*�?C����?r�F�=�?9�Ճ�H�?O����?7�Ճ�H�?r�F�=�?J����?��L��*�?x�L��*��A���Ϳr�F�=ֿ<�Ճ�HۿO���ݿ=�Ճ�Hۿr�F�=ֿM���Ϳ��L��*��],o�H��?J��H&_�?��M�6�?������?K��H&_�?������?��M�6�?N��H&_�?[,o�H��?Q,o�H���L��H&_п��M�6ٿ�����޿K��H&_������޿��M�6ٿH��H&_п_,o�H���M,o�H��?E��H&_�?��M�6�?������?K��H&_�?������?�M�6�?I��H&_�?d,o�H��?I,o�H���C��H&_п��M�6ٿ�����޿K��H&_������޿�M�6ٿJ��H&_пh,o�H������	�?|���Z�?������?C����N�?}���Z�?C����N�?������?����Z�?���	�?��	��~���Zѿ�����ڿC����N�}���Z�C����N࿈����ڿy���Zѿ ��	����	�?u���Z�?�����?A����N�?}���Z�?A����N�?������?z���Z�?��	�?��	��t���Zѿ~����ڿC����N�}���Z�D����N࿍����ڿ{���Zѿ��	���(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?�(MF+��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?Pd�׭��?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?0[���?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?1, ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?æĤ��?P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^��P��	0^����+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ��+�Q�ÿ$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�Wп$��-�WпU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿU5L���ӿǹ�:��?��燚F�?�GV")x?�W���i?���	�$<�W���i��GV")x���燚F��ǹ�:���ȹ�:�����燚F���GV")x��W���i��]?��?��W���i?�GV")x?��燚F�?ǹ�:��?ȹ�:��?��燚F�?�GV")x?�W���i?�x_��I<�W���i��GV")x���燚F��ǹ�:���ȹ�:�����燚F���GV")x��W���i�D�v�#R��W���i?�GV")x?��燚F�?ǹ�:��?����ģ?\����?^:#��?�b�a���?��g{��J<�b�a����^:#���[���������ģ�����ģ�\�����_:#����b�a����lԍ���c��b�a���?\:#��?]����?����ģ?����ģ?_����?k:#��?c�a���?�� -��p<	c�a����S:#���]���������ģ�����ģ�_�����l:#����b�a����*���Rw��b�a���?P:#��?\����?����ģ?Y\�>P��?�nF�?��!�zE�?�4�I�q�?����Z_<�4�I�q����!�zE��
�nF󝸿Y\�>P���Z\�>P���
�nF󝸿��!�zE���4�I�q��(.S�"�w��4�I�q�?��!�zE�?�nF�?Y\�>P��?Z\�>P��?�nF�?��!�zE�?�4�I�q�?���tǘ�<�4�I�q����!�zE���nF󝸿Y\�>P���Z\�>P����nF󝸿��!�zE���4�I�q���`��}o���4�I�q�?��!�zE�?�nF�?Y\�>P��? -�sxa�?��4�p�?�p]>�ӿ?}��G�?�Id��Nk<y��Gﰿ�p]>�ӿ���4�pſ -�sxaȿ-�sxaȿ��4�pſ�p]>�ӿ�z��Gﰿq7�6{�����G�?�p]>�ӿ? ��4�p�? -�sxa�?-�sxa�?!��4�p�?�p]>�ӿ?���G�?5���W�<���Gﰿxp]>�ӿ� ��4�pſ -�sxaȿ-�sxaȿ"��4�pſ�p]>�ӿ�}��Gﰿ��wg嗼q��G�?wp]>�ӿ?��4�p�? -�sxa�?���4��?���m��?f��9q�?�{?�^�?���8=t<�{?�^�f��9qǿ���m�Ͽ���4�ѿ���4�ѿ���m�Ͽf��9qǿ�{?�^򸿾aT��+���{?�^�?f��9q�?���m��?���4��?���4��?���m��?f��9q�?�{?�^�?˦��$�<�{?�^��e��9qǿ���m�Ͽ���4�ѿ���4�ѿ���m�Ͽf��9qǿ�{?�^�Z�Ƒ�����{?�^�?�e��9q�?���m��?���4��?r=�MQ��?�ۚQ��?2$P���?�j~K�k�?�.��{z<�j~K�k��2$P��ο�ۚQ�Կr=�MQ�׿r=�MQ�׿�ۚQ�Կ3$P��ο�j~K�k����Oܓ��j~K�k�?1$P���?�ۚQ��?r=�MQ��?r=�MQ��?�ۚQ��??$P���?�j~K�k�?0=@팠<�j~K�k��'$P��ο�ۚQ�Կr=�MQ�׿r=�MQ�׿�ۚQ�Կ@$P��ο�j~K�k��݈�P�+���j~K�k�?$$P���?�ۚQ��?r=�MQ��?T�y�՗�?`י�$�?*�G����?V�c�M��?����f�<Q�c�M�ÿ*�G���ҿ`י�$ٿT�y�՗ܿU�y�՗ܿ`י�$ٿ,�G���ҿR�c�M�ÿ�ɬU��Y�c�M��?*�G����?`י�$�?T�y�՗�?U�y�՗�?`י�$�?2�G����?a�c�M��?U���@�<e�c�M�ÿ#�G���ҿ`י�$ٿT�y�՗ܿU�y�՗ܿ`י�$ٿ3�G���ҿU�c�M�ÿ�����H�c�M��?#�G����?`י�$�?T�y�՗�?�Gj z�?-���H[�?��U�	�?cO���e�?a[���<]O���eƿ��U�	տ+���H[ܿ�Gj z࿸Gj z�+���H[ܿ��U�	տ^O���eƿ�&i���fO���e�?��U�	�?.���H[�?�Gj z�?�Gj z�?/���H[�?��U�	�?oO���e�?:r��ᒦ<sO���eƿ��U�	տ.���H[ܿ�Gj z࿸Gj z�1���H[ܿ��U�	տbO���eƿ�W%o���RO���e�?��U�	�?-���H[�?�Gj z�?���Ak�?G�2�[�?'{�-�O�?�-8�D��?G��$�<�-8�D�ǿ'{�-�OֿE�2�[޿���Ak����Ak�F�2�[޿({�-�Oֿ�-8�D�ǿkܖ ;����-8�D��?%{�-�O�?G�2�[�?���Ak�?���Ak�?J�2�[�?/{�-�O�?�-8�D��?Zb(��<�-8�D�ǿ{�-�OֿG�2�[޿���Ak����Ak�L�2�[޿0{�-�Oֿ�-8�D�ǿ>��7���|-8�D��?{�-�O�?G�2�[�?���Ak�?H��u\�5��*��.�M��<K��TT��<K��TT��*��.�M�O��u\�5�I��u\�5?�*��.�M?�<K��TT?�<K��TT?�*��.�M?G��u\�5?P��u\�5��*��.�M��<K��TT��<K��TT��*��.�M�I��u\�5�:��u\�5?�*��.�M?�<K��TT?�<K��TT?+��.�M?%��u\�5?��u\�5��*��.�M��<K��TT��<K��TT�+��.�M�y��u\�5�\��u\�5?�*��.�M?�<K��TT?�<K��TT?�*��.�M?|��u\�5?�����o�3V#�a����>ˤ���>ˤ��4V#�a��������o������o?0V#�a��?�>ˤ�?�>ˤ�?/V#�a��?�����o?�����o�2V#�a����>ˤ���>ˤ��0V#�a��������o�w����o?+V#�a��?�>ˤ�?�>ˤ�?<V#�a��?X����o?7����o�6V#�a����>ˤ���>ˤ��<V#�a��������o������o?5V#�a��?�>ˤ�?�>ˤ�?'V#�a��?�����o?�6�&5���U���g���n�9����n�9����V���g����6�&5����6�&5��?S���g��?n�9���?n�9���?Q���g��?�6�&5��?�6�&5���T���g���n�9����n�9����S���g����6�&5����6�&5��?N���g��?	n�9���?n�9���?\���g��?�6�&5��?�6�&5���W���g���n�9����n�9����^���g���7�&5����6�&5��?W���g��?n�9���?n�9���?K���g��?!7�&5��?@�x��^�P������LXS����LXS���_�P�����#@�x��@�x�?[�P����?�LXS��?�LXS��?Z�P����?@�x�?$@�x��]�P������LXS����LXS���[�P�����@�x��@�x�?V�P����?�LXS��?�LXS��?g�P����?@�x�?�@�x��a�P������LXS����LXS���h�P�����C@�x��-@�x�?`�P����?�LXS��?�LXS��?R�P����?E@�x�?��ny�s��+f���Ŀ�F�z˿�F�z˿,f���Ŀ��ny�s����ny�s�?)f����?�F�z�?�F�z�?'f����?��ny�s�?��ny�s��*f���Ŀ�F�z˿�F�z˿)f���Ŀ��ny�s��s�ny�s�?$f����?�F�z�?�F�z�?3f����?W�ny�s�?7�ny�s��-f���Ŀ�F�z˿�F�z˿4f���Ŀȅny�s����ny�s�?-f����?�F�z�?�F�z�? f����?̅ny�s�?�K�>�>��#�[qcο��U�6�Կ��U�6�Կ%�[qcο�K�>�>���K�>�>�?�[qc�?��U�6��?��U�6��?�[qc�?�K�>�>�?�K�>�>��"�[qcο��U�6�Կ��U�6�Կ�[qcο�K�>�>��zK�>�>�?�[qc�?��U�6��?��U�6��?/�[qc�?dK�>�>�?MK�>�>��&�[qcο��U�6�Կ��U�6�Կ0�[qcο�K�>�>���K�>�>�?%�[qc�?��U�6��?��U�6��?�[qc�?�K�>�>�?�I��=����1]zM5ԿZ��ܚۿZ��ܚۿ�1]zM5Կ�I��=����I��=��?�1]zM5�?Z��ܚ�?[��ܚ�?�1]zM5�?�I��=��?�I��=����1]zM5ԿZ��ܚۿ[��ܚۿ�1]zM5Կ�I��=����I��=��?�1]zM5�?V��ܚ�?[��ܚ�?�1]zM5�?�I��=��?jI��=����1]zM5ԿY��ܚۿ[��ܚۿ�1]zM5Կ�I��=����I��=��?�1]zM5�?Y��ܚ�?[��ܚ�?�1]zM5�?�I��=��?�,Q����|$̩3ؿ�c]z����c]z���|$̩3ؿ�,Q�����,Q���?|$̩3�?�c]z���?�c]z���?|$̩3�?�,Q���?�,Q����|$̩3ؿ�c]z����c]z���|$̩3ؿ�,Q����	�,Q���?|$̩3�?�c]z���?�c]z���?|$̩3�?��,Q���?�,Q����|$̩3ؿ�c]z����c]z���|$̩3ؿ<�,Q����$�,Q���?|$̩3�?�c]z���?�c]z���?|$̩3�?>�,Q���?� .�LVÿ�j�<jڿ�����
⿵����
��j�<jڿ� .�LVÿ� .�LV�?�j�<j�?�����
�?�����
�?�j�<j�?� .�LV�?� .�LVÿ�j�<jڿ�����
⿶����
��j�<jڿ� .�LVÿ� .�LV�?�j�<j�?�����
�?�����
�?k�<j�?� .�LV�?� .�LVÿ�j�<jڿ�����
⿶����
�k�<jڿ.�LVÿ� .�LV�?�j�<j�?�����
�?�����
�?�j�<j�?.�LV�?ؕ������S{du����jX����&��������Ŀb���Rȿ~� !�ʿ|j8N�̿EgKRc�ͿEgKRc�Ϳ}j8N�̿~� !�ʿb���Rȿ�����Ŀ�&�����jX����S{du���ٕ�����ɕ����?�S{du��?w�jX��?�&��?������?f���R�?~� !��?}j8N��?EgKRc��?EgKRc��?}j8N��?!~� !��?c���R�?������?�&��?��jX��?�S{du��?╻���?����c�����¿���̢�ɿ05��ѿτ�@�տ����2!ٿ����ۿ���ݿ��h癏޿��h癏޿���ݿ����ۿ����2!ٿτ�@�տ05��ѿ��̢�ɿ���¿�����c������c�?���¿?��̢��?.5���?τ�@��?����2!�?�����?����?��h癏�?��h癏�?����?�����?����2!�?τ�@��?55���?��̢��?���¿?����c�?��do��z��1^Ŀk��:�п�EB��ֿc�5��ۿ���0��N;����P� 㿮�U>\�㿮�U>\��P� �O;���῞��0��e�5��ۿ�EB��ֿl��:�пv��1^Ŀ��do�����do�?q��1^�?e��:��?�EB���?c�5���?���0��?M;����?P� �?��U>\��?��U>\��?Q� �?P;����?���0��?e�5���?�EB���?r��:��?y��1^�?��do�?-F;������Ŀ�Ԣ��fп�
%rBֿ��h�qۿ��
`9�߿-s�3��+�{�4��2y�ݐT�2y�ݐT�,�{�4��-s�3�῔�
`9�߿��h�qۿ�
%rBֿ�Ԣ��fп����Ŀ/F;��F;�?�����?Ԣ��f�?�
%rB�?��h�q�?��
`9��?,s�3��?,�{�4��?2y�ݐT�?2y�ݐT�?,�{�4��?/s�3��?��
`9��?��h�q�?�
%rB�?�Ԣ��f�?�����?:F;�?s���d���I���Vr���l��ȿȽ�P�п�K��Կw/\�1ؿ%�mE^�ڿ���7hܿV~��LݿV~��Lݿ���7hܿ'�mE^�ڿw/\�1ؿ�K��Կ
Ƚ�P�п�l��ȿC���Vr��u���d���e���d��?<���Vr�?�l���?	Ƚ�P��?�K���?{/\�1�?$�mE^��?���7h�?V~��L�?V~��L�?���7h�?(�mE^��?x/\�1�?�K���?Ƚ�P��?�l���?G���Vr�?}���d��?��
��'���z.q��1�L �8��t������`�5�#mÿ縵)�ƿ�@�"�ȿ�*�So�ʿT��|Q^˿T��|Q^˿�*�So�ʿ�@�"�ȿ縵)�ƿa�5�#mÿr������2�L �8��z�z.q����
��'����
��'�?s�z.q�?(�L �8�?q�����?`�5�#m�?縵)��?�@�"��?�*�So��?T��|Q^�?T��|Q^�?�*�So��?�@�"��?縵)��?b�5�#m�?{�����?;�L �8�?~�z.q�?��
��'�?<xUX�v?Hxf��ϐ?ͧ�&�s�?U����?&Hk�U��?�� �?r�v+�o�?K���Q_�?��P-�?��P-�?K���Q_�?t�v+�o�?�� �?'Hk�U��?T����?ϧ�&�s�?Exf��ϐ?<xUX�v?�;xUX�v�Axf��ϐ�ç�&�s��S�����&Hk�U����� 󚪿o�v+�o��K���Q_����P-����P-��L���Q_��u�v+�o���� 󚪿(Hk�U���Y�����ק�&�s��Gxf��ϐ�<xUX�v�Df�u��?=�Bi�?cr�V�?�mja�+�?��)XU�?-Q�J��?����J��?b�SRF��?r<n�
A�?r<n�
A�?c�SRF��?����J��?-Q�J��?��)XU�?mja�+�?dr�V�?9�Bi�?Ff�u��?0f�u��4�Bi��^r�V��}mja�+ƿ��)XU˿1Q�J�Ͽ����J�ѿc�SRF�ҿr<n�
Aӿr<n�
Aӿc�SRF�ҿ����J�ѿ.Q�J�Ͽ��)XU˿�mja�+ƿjr�V��;�Bi��Pf�u��P׋5h��?Ǵ�P��?�������?�b���?�!vV��?p�zQL�?[L,X9w�?��?
$�?��ݮ���?��ݮ���?��?
$�?\L,X9w�?p�zQL�?�!vV��?�b���?�������?´�P��?R׋5h��?B׋5h������P���������ǿ�b��п�!vV�ӿt�zQL׿ZL,X9wٿ��?
$ۿ��ݮ��ۿ��ݮ��ۿ��?
$ۿ^L,X9wٿq�zQL׿�!vV�ӿ�b��п������ǿƴ�P���Y׋5h���EgKRc�Ϳ}j8N�̿~� !�ʿc���Rȿ�����Ŀ�&����jX����S{du���֕�����͕����?�S{du��?~�jX��?�&��?������?d���R�?~� !��?}j8N��?EgKRc��?EgKRc��?}j8N��?!~� !��?d���R�?������?�&��?��jX��?�S{du��?ݕ����?ŕ������S{du���u�jX����&��������Ŀb���Rȿ~� !�ʿ}j8N�̿EgKRc�Ϳ��h癏޿���ݿ����ۿ����2!ٿτ�@�տ25��ѿ��̢�ɿ���¿�����c������c�?���¿?��̢��?25���?τ�@��?����2!�?�����?����?��h癏�?��h癏�?����?�����?����2!�?τ�@��?-5���?��̢��?���¿?����c�?����c�����¿���̢�ɿ05��ѿτ�@�տ����2!ٿ����ۿ���ݿ��h癏޿��U>\��P� �N;���῞��0��e�5��ۿ�EB��ֿk��:�п��1^Ŀ���do�����do�?|��1^�?j��:��?�EB���?c�5���?���0��?N;����?P� �?��U>\��?��U>\��?Q� �?P;����?���0��?e�5���?�EB���?q��:��?w��1^�?	��do�?���do��p��1^Ŀd��:�п�EB��ֿb�5��ۿ���0��M;����P� 㿮�U>\��2y�ݐT�,�{�4��-s�3�῕�
`9�߿��h�qۿ�
%rBֿ�Ԣ��fп����Ŀ*F;��F;�?�����?�Ԣ��f�?�
%rB�?��h�q�?��
`9��?-s�3��?,�{�4��?2y�ݐT�?2y�ݐT�?,�{�4��?/s�3��?��
`9��?��h�q�?�
%rB�?�Ԣ��f�?�����?4F;�?F;������Ŀ~Ԣ��fп�
%rBֿ��h�qۿ��
`9�߿,s�3��,�{�4��2y�ݐT�V~��Lݿ���7hܿ%�mE^�ڿx/\�1ؿ�K��ԿȽ�P�п�l��ȿP���Vr��q���d���i���d��?M���Vr�?�l���?Ƚ�P��?�K���?x/\�1�?%�mE^��?���7h�?V~��L�?V~��L�?���7h�?(�mE^��?y/\�1�?�K���?Ƚ�P��?�l���?F���Vr�?x���d��?`���d���;���Vr���l��ȿȽ�P�п�K��Կu/\�1ؿ$�mE^�ڿ���7hܿV~��LݿT��|Q^˿�*�So�ʿ�@�"�ȿ縵)�ƿa�5�#mÿu������1�L �8����z.q����
��'����
��'�?��z.q�?0�L �8�?u�����?`�5�#m�?縵)��?�@�"��?�*�So��?T��|Q^�?T��|Q^�?�*�So��?�@�"��?縵)��?b�5�#m�?n�����?9�L �8�?{�z.q�?��
��'�?��
��'��q�z.q��(�L �8��t������_�5�#mÿ縵)�ƿ�@�"�ȿ�*�So�ʿT��|Q^˿��P-�?K���Q_�?r�v+�o�?�� �?'Hk�U��?V����?ͧ�&�s�?Lxf��ϐ?<xUX�v?<xUX�v�Jxf��ϐ�ʧ�&�s��V�����&Hk�U����� 󚪿r�v+�o��K���Q_����P-����P-��L���Q_��u�v+�o���� 󚪿(Hk�U���R�����֧�&�s��Fxf��ϐ�<xUX�v��;xUX�v?@xf��ϐ?§�&�s�?U����?$Hk�U��?�� �?o�v+�o�?K���Q_�?��P-�?r<n�
A�?c�SRF��?����J��?.Q�J��?��)XU�?�mja�+�?cr�V�?A�Bi�?Af�u��?7f�u��?�Bi��cr�V���mja�+ƿ��)XU˿/Q�J�Ͽ����J�ѿc�SRF�ҿr<n�
Aӿr<n�
Aӿc�SRF�ҿ����J�ѿ/Q�J�Ͽ��)XU˿|mja�+ƿir�V��:�Bi��Kf�u��+f�u��?3�Bi�?]r�V�?�mja�+�?��)XU�?+Q�J��?����J��?c�SRF��?r<n�
A�?��ݮ���?��?
$�?[L,X9w�?q�zQL�?�!vV��?�b���?�������?δ�P��?N׋5h��?F׋5h���ʴ�P���������ǿ�b��п�!vV�ӿs�zQL׿[L,X9wٿ��?
$ۿ��ݮ��ۿ��ݮ��ۿ��?
$ۿ^L,X9wٿs�zQL׿�!vV�ӿ�b��п������ǿô�P���U׋5h���>׋5h��?���P��?�������?�b���?�!vV��?p�zQL�?ZL,X9w�?��?
$�?��ݮ���?�<K��TT��*��.�M�H��u\�5�F��u\�5?�*��.�M?�<K��TT?�<K��TT?�*��.�M?F��u\�5?>��u\�5��*��.�M��<K��TT��<K��TT��*��.�M�H��u\�5�;��u\�5?�*��.�M?�<K��TT?�<K��TT?+��.�M?t��u\�5?8��u\�5��*��.�M��<K��TT��<K��TT��*��.�M�O��u\�5�6��u\�5?�*��.�M?�<K��TT?�<K��TT?�*��.�M?Q��u\�5?2��u\�5�	+��.�M��<K��TT��>ˤ��4V#�a��������o������o?3V#�a��?�>ˤ�?�>ˤ�?7V#�a��?�����o?}����o�7V#�a����>ˤ���>ˤ��5V#�a��������o�x����o?7V#�a��?�>ˤ�?�>ˤ�?<V#�a��?�����o?v����o�+V#�a����>ˤ���>ˤ��1V#�a��������o�q����o?*V#�a��?�>ˤ�?�>ˤ�?2V#�a��?�����o?l����o�?V#�a����>ˤ��n�9����V���g����6�&5����6�&5��?U���g��?n�9���?n�9���?X���g��?�6�&5��?�6�&5���Y���g���n�9����n�9����W���g����6�&5����6�&5��?X���g��?n�9���?n�9���?\���g��?7�&5��?�6�&5���N���g���n�9����n�9����S���g����6�&5����6�&5��?M���g��?	n�9���?n�9���?T���g��?�6�&5��?�6�&5���`���g���	n�9�����LXS���_�P�����@�x��@�x�?^�P����?�LXS��?�LXS��?b�P����?@�x�?@�x��c�P������LXS����LXS���`�P�����@�x��@�x�?b�P����?�LXS��?�LXS��?g�P����??@�x�?@�x��V�P������LXS����LXS���\�P�����#@�x��@�x�?U�P����?�LXS��?�LXS��?]�P����?&@�x�?@�x��k�P������LXS����F�z˿,f���Ŀ��ny�s����ny�s�?+f����?�F�z�?�F�z�?.f����?��ny�s�?x�ny�s��0f���Ŀ�F�z˿�F�z˿-f���Ŀ��ny�s��t�ny�s�?.f����?�F�z�?�F�z�?3f����?��ny�s�?q�ny�s��$f���Ŀ�F�z˿�F�z˿)f���Ŀ��ny�s��m�ny�s�?#f����?�F�z�?�F�z�?*f����?��ny�s�?g�ny�s��7f���Ŀ�F�z˿��U�6�Կ%�[qcο�K�>�>���K�>�>�?#�[qc�?��U�6��?��U�6��?(�[qc�?�K�>�>�?}K�>�>��)�[qcο��U�6�Կ��U�6�Կ%�[qcο�K�>�>��zK�>�>�?(�[qc�?��U�6��?��U�6��?/�[qc�?�K�>�>�?xK�>�>���[qcο��U�6�Կ��U�6�Կ!�[qcο�K�>�>��uK�>�>�?�[qc�?��U�6��?��U�6��?"�[qc�?�K�>�>�?qK�>�>��4�[qcο��U�6�ԿZ��ܚۿ�1]zM5Կ�I��=����I��=��?�1]zM5�?Y��ܚ�?Z��ܚ�?�1]zM5�?�I��=��?�I��=����1]zM5ԿZ��ܚۿY��ܚۿ�1]zM5Կ�I��=����I��=��?�1]zM5�?Z��ܚ�?[��ܚ�?�1]zM5�?�I��=��?�I��=����1]zM5Կ]��ܚۿ`��ܚۿ�1]zM5Կ�I��=����I��=��?�1]zM5�?V��ܚ�?Y��ܚ�?�1]zM5�?�I��=��?�I��=����1]zM5ԿV��ܚۿ�c]z���|$̩3ؿ�,Q�����,Q���?|$̩3�?�c]z���?�c]z���?|$̩3�?�,Q���?�,Q����|$̩3ؿ�c]z����c]z���|$̩3ؿ�,Q����
�,Q���?|$̩3�?�c]z���?�c]z���?|$̩3�?7�,Q���?�,Q����|$̩3ؿ�c]z����c]z���|$̩3ؿ�,Q�����,Q���?|$̩3�?�c]z���?�c]z���?|$̩3�?�,Q���?�,Q����!|$̩3ؿ�c]z��࿵����
��j�<jڿ� .�LVÿ� .�LV�?�j�<j�?�����
�?�����
�?�j�<j�?� .�LV�?� .�LVÿk�<jڿ�����
⿴����
��j�<jڿ� .�LVÿ� .�LV�?�j�<j�?�����
�?�����
�?k�<j�?.�LV�?� .�LVÿ�j�<jڿ�����
⿸����
��j�<jڿ� .�LVÿ� .�LV�?�j�<j�?�����
�?�����
�?�j�<j�?� .�LV�?� .�LVÿk�<jڿ�����
�
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
`
Const_2Const*
_output_shapes

:
*
dtype0*!
valueB
2        

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

 beta_1

!beta_2
	"decay
#learning_rate
$iter'm�(m�)m�*m�+m�,m�-m�.m�/m�0m�1m�2m�3m�4m�'v�(v�)v�*v�+v�,v�-v�.v�/v�0v�1v�2v�3v�4v�
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
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
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
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_59518
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamebeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOp)layer_-1_input/kernel/Read/ReadVariableOp'layer_-1_input/bias/Read/ReadVariableOp1layer_0dense_component/kernel/Read/ReadVariableOp.layer_0nn_component/kernel/Read/ReadVariableOp,layer_0nn_component/bias/Read/ReadVariableOp1layer_1dense_component/kernel/Read/ReadVariableOp.layer_1nn_component/kernel/Read/ReadVariableOp,layer_1nn_component/bias/Read/ReadVariableOp1layer_2dense_component/kernel/Read/ReadVariableOp.layer_2nn_component/kernel/Read/ReadVariableOp,layer_2nn_component/bias/Read/ReadVariableOp1layer_5dense_component/kernel/Read/ReadVariableOp.layer_5nn_component/kernel/Read/ReadVariableOp,layer_5nn_component/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOptotal_6/Read/ReadVariableOpcount_6/Read/ReadVariableOptotal_7/Read/ReadVariableOpcount_7/Read/ReadVariableOptotal_8/Read/ReadVariableOpcount_8/Read/ReadVariableOptotal_9/Read/ReadVariableOpcount_9/Read/ReadVariableOp+layer_-1_input/kernel/m/Read/ReadVariableOp)layer_-1_input/bias/m/Read/ReadVariableOp3layer_0dense_component/kernel/m/Read/ReadVariableOp0layer_0nn_component/kernel/m/Read/ReadVariableOp.layer_0nn_component/bias/m/Read/ReadVariableOp3layer_1dense_component/kernel/m/Read/ReadVariableOp0layer_1nn_component/kernel/m/Read/ReadVariableOp.layer_1nn_component/bias/m/Read/ReadVariableOp3layer_2dense_component/kernel/m/Read/ReadVariableOp0layer_2nn_component/kernel/m/Read/ReadVariableOp.layer_2nn_component/bias/m/Read/ReadVariableOp3layer_5dense_component/kernel/m/Read/ReadVariableOp0layer_5nn_component/kernel/m/Read/ReadVariableOp.layer_5nn_component/bias/m/Read/ReadVariableOp+layer_-1_input/kernel/v/Read/ReadVariableOp)layer_-1_input/bias/v/Read/ReadVariableOp3layer_0dense_component/kernel/v/Read/ReadVariableOp0layer_0nn_component/kernel/v/Read/ReadVariableOp.layer_0nn_component/bias/v/Read/ReadVariableOp3layer_1dense_component/kernel/v/Read/ReadVariableOp0layer_1nn_component/kernel/v/Read/ReadVariableOp.layer_1nn_component/bias/v/Read/ReadVariableOp3layer_2dense_component/kernel/v/Read/ReadVariableOp0layer_2nn_component/kernel/v/Read/ReadVariableOp.layer_2nn_component/bias/v/Read/ReadVariableOp3layer_5dense_component/kernel/v/Read/ReadVariableOp0layer_5nn_component/kernel/v/Read/ReadVariableOp.layer_5nn_component/bias/v/Read/ReadVariableOpConst_3*R
TinK
I2G	*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_61430
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebeta_1beta_2decaylearning_rate	Adam/iterVariable
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
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_61647��.
�
�
[__inference___backward_add_component_2_layer_call_and_return_conditional_losses_57624_57641
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
<:����������:����������:����������*c
forward_function_nameJH__forward_add_component_2_layer_call_and_return_conditional_losses_57640:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������
��
�
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_57386
input_1$
mean_shift_layer_57263:	+
decorrelation_layer_57266:		'
layer__1_input_57269:		�#
layer__1_input_57271:	�/
layer_0dense_component_57274:		�-
layer_0nn_component_57277:
��(
layer_0nn_component_57279:	�/
layer_1dense_component_57284:		�-
layer_1nn_component_57287:
��(
layer_1nn_component_57289:	�/
layer_2dense_component_57294:		�-
layer_2nn_component_57297:
��(
layer_2nn_component_57299:	�.
layer_5dense_component_57304:	,
layer_5nn_component_57307:	�'
layer_5nn_component_57309:
identity��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�.layer_0dense_component/StatefulPartitionedCall�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_0nn_component/StatefulPartitionedCall�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_1dense_component/StatefulPartitionedCall�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_1nn_component/StatefulPartitionedCall�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_2dense_component/StatefulPartitionedCall�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_2nn_component/StatefulPartitionedCall�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_5dense_component/StatefulPartitionedCall�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_5nn_component/StatefulPartitionedCall�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1mean_shift_layer_57263*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_mean_shift_layer_layer_call_and_return_conditional_losses_56542�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_57266*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_decorrelation_layer_layer_call_and_return_conditional_losses_56553�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_57269layer__1_input_57271*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_layer_-1_input_layer_call_and_return_conditional_losses_56576�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_0dense_component_57274*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_0dense_component_layer_call_and_return_conditional_losses_56597�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_57277layer_0nn_component_57279*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_0nn_component_layer_call_and_return_conditional_losses_56619�
add_component_0/PartitionedCallPartitionedCall7layer_0dense_component/StatefulPartitionedCall:output:04layer_0nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_0_layer_call_and_return_conditional_losses_56631q
tf.nn.elu/EluElu(add_component_0/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_1dense_component_57284*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_1dense_component_layer_call_and_return_conditional_losses_56649�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu/Elu:activations:0layer_1nn_component_57287layer_1nn_component_57289*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_1nn_component_layer_call_and_return_conditional_losses_56671�
add_component_1/PartitionedCallPartitionedCall7layer_1dense_component/StatefulPartitionedCall:output:04layer_1nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_1_layer_call_and_return_conditional_losses_56683s
tf.nn.elu_1/EluElu(add_component_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_2dense_component_57294*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_2dense_component_layer_call_and_return_conditional_losses_56701�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_1/Elu:activations:0layer_2nn_component_57297layer_2nn_component_57299*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_2nn_component_layer_call_and_return_conditional_losses_56723�
add_component_2/PartitionedCallPartitionedCall7layer_2dense_component/StatefulPartitionedCall:output:04layer_2nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_2_layer_call_and_return_conditional_losses_56735s
tf.nn.elu_2/EluElu(add_component_2/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_5dense_component_57304*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_5dense_component_layer_call_and_return_conditional_losses_56753�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_2/Elu:activations:0layer_5nn_component_57307layer_5nn_component_57309*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_5nn_component_layer_call_and_return_conditional_losses_56775�
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
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_56787l
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer__1_input_57269*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_0dense_component_57274*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_0nn_component_57277* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_1dense_component_57284*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_1nn_component_57287* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_2dense_component_57294*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_2nn_component_57297* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_5dense_component_57304*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_5nn_component_57307*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: k
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp,^decorrelation_layer/StatefulPartitionedCall'^layer_-1_input/StatefulPartitionedCall8^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp/^layer_0dense_component/StatefulPartitionedCall@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_0nn_component/StatefulPartitionedCall=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_1dense_component/StatefulPartitionedCall@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_1nn_component/StatefulPartitionedCall=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_2dense_component/StatefulPartitionedCall@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_2nn_component/StatefulPartitionedCall=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_5dense_component/StatefulPartitionedCall@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_5nn_component/StatefulPartitionedCall=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������	: : : : : : : : : : : : : : : : 2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2P
&layer_-1_input/StatefulPartitionedCall&layer_-1_input/StatefulPartitionedCall2r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2`
.layer_0dense_component/StatefulPartitionedCall.layer_0dense_component/StatefulPartitionedCall2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_0nn_component/StatefulPartitionedCall+layer_0nn_component/StatefulPartitionedCall2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_1dense_component/StatefulPartitionedCall.layer_1dense_component/StatefulPartitionedCall2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_1nn_component/StatefulPartitionedCall+layer_1nn_component/StatefulPartitionedCall2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_2dense_component/StatefulPartitionedCall.layer_2dense_component/StatefulPartitionedCall2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_2nn_component/StatefulPartitionedCall+layer_2nn_component/StatefulPartitionedCall2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_5dense_component/StatefulPartitionedCall.layer_5dense_component/StatefulPartitionedCall2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_5nn_component/StatefulPartitionedCall+layer_5nn_component/StatefulPartitionedCall2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_1
�

�
b__inference___backward_layer_5dense_component_layer_call_and_return_conditional_losses_57583_57594
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
0:���������:	:���������	*j
forward_function_nameQO__forward_layer_5dense_component_layer_call_and_return_conditional_losses_57593:- )
'
_output_shapes
:���������:$ 

_output_shapes

:	:-)
'
_output_shapes
:���������	
�
�
3__inference_layer_2nn_component_layer_call_fn_60971

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
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_2nn_component_layer_call_and_return_conditional_losses_56723p
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
�
�
L__forward_layer_1nn_component_layer_call_and_return_conditional_losses_57743
inputs_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpv
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
:����������q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *{
backward_function_namea___inference___backward_layer_1nn_component_layer_call_and_return_conditional_losses_57731_5774420
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
\__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_57861_57879
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
,:���������	:���������	:	*d
forward_function_nameKI__forward_mean_shift_layer_layer_call_and_return_conditional_losses_57878:- )
'
_output_shapes
:���������	:-)
'
_output_shapes
:���������	: 

_output_shapes
:	
�
�
__inference_loss_fn_5_61156[
Hlayer_2dense_component_kernel_regularizer_square_readvariableop_resource:		�
identity��?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpt
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpHlayer_2dense_component_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: o
IdentityIdentity1layer_2dense_component/kernel/Regularizer/add:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp
�
�
__inference_loss_fn_3_61130[
Hlayer_1dense_component_kernel_regularizer_square_readvariableop_resource:		�
identity��?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpt
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpHlayer_1dense_component_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: o
IdentityIdentity1layer_1dense_component/kernel/Regularizer/add:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp
�
�
H__forward_add_component_0_layer_call_and_return_conditional_losses_57770
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
(:����������:����������*w
backward_function_name][__inference___backward_add_component_0_layer_call_and_return_conditional_losses_57754_57771:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
N__inference_layer_0nn_component_layer_call_and_return_conditional_losses_56619

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpv
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
:����������q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
I__forward_mean_shift_layer_layer_call_and_return_conditional_losses_57878
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
:���������	: *x
backward_function_name^\__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_57861_578792(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
Q__inference_layer_2dense_component_layer_call_and_return_conditional_losses_60954

inputs1
matmul_readvariableop_resource:		�
identity��MatMul/ReadVariableOp�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityMatMul:product:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
Ҡ
�
X__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_58302_58428
placeholder:
6gradients_add_partitionedcall_grad_add_partitionedcall<
8gradients_add_partitionedcall_grad_add_partitionedcall_1p
lgradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcallr
ngradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcall_1j
fgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcalll
hgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcall_1:
6gradients_tf_nn_elu_2_elu_grad_elugrad_tf_nn_elu_2_eluR
Ngradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcallT
Pgradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcall_1p
lgradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcallr
ngradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcall_1j
fgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcalll
hgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcall_1:
6gradients_tf_nn_elu_1_elu_grad_elugrad_tf_nn_elu_1_eluR
Ngradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcallT
Pgradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcall_1p
lgradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcallr
ngradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcall_1j
fgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcalll
hgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcall_16
2gradients_tf_nn_elu_elu_grad_elugrad_tf_nn_elu_eluR
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
:����������
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
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference___backward_add_layer_call_and_return_conditional_losses_57559_57576�
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
 *-
config_proto

CPU

GPU 2J 8� *k
ffRd
b__inference___backward_layer_5dense_component_layer_call_and_return_conditional_losses_57583_57594�
Jgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall;gradients/add/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcallhgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:����������:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *h
fcRa
___inference___backward_layer_5nn_component_layer_call_and_return_conditional_losses_57601_57614�
&gradients/tf.nn.elu_2/Elu_grad/EluGradEluGradSgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients_tf_nn_elu_2_elu_grad_elugrad_tf_nn_elu_2_elu*
T0*(
_output_shapes
:�����������
>gradients/add_component_2/PartitionedCall_grad/PartitionedCallPartitionedCall2gradients/tf.nn.elu_2/Elu_grad/EluGrad:backprops:0Ngradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcallPgradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *d
f_R]
[__inference___backward_add_component_2_layer_call_and_return_conditional_losses_57624_57641�
Mgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_2/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcallngradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������	:		�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *k
ffRd
b__inference___backward_layer_2dense_component_layer_call_and_return_conditional_losses_57648_57659�
Jgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_2/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcallhgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcall_1*
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
 *-
config_proto

CPU

GPU 2J 8� *h
fcRa
___inference___backward_layer_2nn_component_layer_call_and_return_conditional_losses_57666_57679�
&gradients/tf.nn.elu_1/Elu_grad/EluGradEluGradSgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients_tf_nn_elu_1_elu_grad_elugrad_tf_nn_elu_1_elu*
T0*(
_output_shapes
:�����������
>gradients/add_component_1/PartitionedCall_grad/PartitionedCallPartitionedCall2gradients/tf.nn.elu_1/Elu_grad/EluGrad:backprops:0Ngradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcallPgradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *d
f_R]
[__inference___backward_add_component_1_layer_call_and_return_conditional_losses_57689_57706�
Mgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_1/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcallngradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������	:		�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *k
ffRd
b__inference___backward_layer_1dense_component_layer_call_and_return_conditional_losses_57713_57724�
Jgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_1/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcallhgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcall_1*
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
 *-
config_proto

CPU

GPU 2J 8� *h
fcRa
___inference___backward_layer_1nn_component_layer_call_and_return_conditional_losses_57731_57744�
$gradients/tf.nn.elu/Elu_grad/EluGradEluGradSgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:02gradients_tf_nn_elu_elu_grad_elugrad_tf_nn_elu_elu*
T0*(
_output_shapes
:�����������
>gradients/add_component_0/PartitionedCall_grad/PartitionedCallPartitionedCall0gradients/tf.nn.elu/Elu_grad/EluGrad:backprops:0Ngradients_add_component_0_partitionedcall_grad_add_component_0_partitionedcallPgradients_add_component_0_partitionedcall_grad_add_component_0_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *d
f_R]
[__inference___backward_add_component_0_layer_call_and_return_conditional_losses_57754_57771�
Mgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_0/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcallngradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������	:		�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *k
ffRd
b__inference___backward_layer_0dense_component_layer_call_and_return_conditional_losses_57778_57789�
Jgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_0/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_0nn_component_statefulpartitionedcall_grad_layer_0nn_component_statefulpartitionedcallhgradients_layer_0nn_component_statefulpartitionedcall_grad_layer_0nn_component_statefulpartitionedcall_1*
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
 *-
config_proto

CPU

GPU 2J 8� *h
fcRa
___inference___backward_layer_0nn_component_layer_call_and_return_conditional_losses_57796_57809�
Egradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallSgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:0\gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_1^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:���������	:		�:�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *c
f^R\
Z__inference___backward_layer_-1_input_layer_call_and_return_conditional_losses_57817_57832�
gradients/AddNAddNVgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Ngradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:0*
N*
T0*`
_classV
TRloc:@gradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall*'
_output_shapes
:���������	�
Jgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN:sum:0fgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcallhgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������	:		* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *h
fcRa
___inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_57843_57854�
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
 *-
config_proto

CPU

GPU 2J 8� *e
f`R^
\__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_57861_57879�
IdentityIdentityPgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0*
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
:		��

Identity_4IdentityNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_5IdentityVgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:		��

Identity_6IdentitySgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���

Identity_7IdentitySgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_8IdentityVgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:		��

Identity_9IdentitySgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���
Identity_10IdentitySgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��
Identity_11IdentityVgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:		��
Identity_12IdentitySgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���
Identity_13IdentitySgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��
Identity_14IdentityVgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:	�
Identity_15IdentitySgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	��
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
�:���������:���������:���������:	:���������	:	�:����������:����������:����������:����������:		�:���������	:
��:����������:����������:����������:����������:		�:���������	:
��:����������:����������:����������:����������:		�:���������	:
��:����������:����������:		�:���������	:		:���������	:���������	:	*`
forward_function_nameGE__forward_Icnn_closure_layer_call_and_return_conditional_losses_58427:- )
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
:���������	:%!

_output_shapes
:	�:.*
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
:����������:%
!

_output_shapes
:		�:-)
'
_output_shapes
:���������	:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:%!

_output_shapes
:		�:-)
'
_output_shapes
:���������	:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:%!

_output_shapes
:		�:-)
'
_output_shapes
:���������	:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:%!

_output_shapes
:		�:-)
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
�
j
>__inference_add_layer_call_and_return_conditional_losses_61078
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
�
[
/__inference_add_component_0_layer_call_fn_60841
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
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_0_layer_call_and_return_conditional_losses_56631a
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
___inference___backward_layer_2nn_component_layer_call_and_return_conditional_losses_57666_57679
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
��:����������*g
forward_function_nameNL__forward_layer_2nn_component_layer_call_and_return_conditional_losses_57678:. *
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������
͓
�
H__inference_sobolev_model_layer_call_and_return_conditional_losses_58169
x 
icnn_closure_57519:	$
icnn_closure_57521:		%
icnn_closure_57523:		�!
icnn_closure_57525:	�%
icnn_closure_57527:		�&
icnn_closure_57529:
��!
icnn_closure_57531:	�%
icnn_closure_57533:		�&
icnn_closure_57535:
��!
icnn_closure_57537:	�%
icnn_closure_57539:		�&
icnn_closure_57541:
��!
icnn_closure_57543:	�$
icnn_closure_57545:	%
icnn_closure_57547:	� 
icnn_closure_57549:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��$Icnn_closure/StatefulPartitionedCall�checked�	checked_1�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�

$Icnn_closure/StatefulPartitionedCallStatefulPartitionedCallxicnn_closure_57519icnn_closure_57521icnn_closure_57523icnn_closure_57525icnn_closure_57527icnn_closure_57529icnn_closure_57531icnn_closure_57533icnn_closure_57535icnn_closure_57537icnn_closure_57539icnn_closure_57541icnn_closure_57543icnn_closure_57545icnn_closure_57547icnn_closure_57549*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������:	:���������	:	�:����������:����������:����������:����������:		�:���������	:
��:����������:����������:����������:����������:		�:���������	:
��:����������:����������:����������:����������:		�:���������	:
��:����������:����������:		�:���������	:		:���������	:���������	:	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__forward_Icnn_closure_layer_call_and_return_conditional_losses_57903l
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
�:���������	:	:		:		�:�:		�:
��:�:		�:
��:�:		�:
��:�:	:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *a
f\RZ
X__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_57555_57904g
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
Tensordot_3/transpose_1	Transposestrided_slice_3:output:0%Tensordot_3/transpose_1/perm:output:0*
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
a
add_1AddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������
f
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
:���������	*

begin_mask*
end_maskl
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_57523*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_57527*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_57529* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_57533*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_57535* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_57539*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_57541* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_57545*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_57547*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: |
IdentityIdentity-Icnn_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	i

Identity_2Identitystrided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp%^Icnn_closure/StatefulPartitionedCall^checked
^checked_18^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp*"
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
	checked_1	checked_12r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:J F
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

Ҡ
�
X__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_57555_57904
placeholder:
6gradients_add_partitionedcall_grad_add_partitionedcall<
8gradients_add_partitionedcall_grad_add_partitionedcall_1p
lgradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcallr
ngradients_layer_5dense_component_statefulpartitionedcall_grad_layer_5dense_component_statefulpartitionedcall_1j
fgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcalll
hgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcall_1:
6gradients_tf_nn_elu_2_elu_grad_elugrad_tf_nn_elu_2_eluR
Ngradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcallT
Pgradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcall_1p
lgradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcallr
ngradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcall_1j
fgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcalll
hgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcall_1:
6gradients_tf_nn_elu_1_elu_grad_elugrad_tf_nn_elu_1_eluR
Ngradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcallT
Pgradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcall_1p
lgradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcallr
ngradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcall_1j
fgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcalll
hgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcall_16
2gradients_tf_nn_elu_elu_grad_elugrad_tf_nn_elu_eluR
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
:����������
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
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference___backward_add_layer_call_and_return_conditional_losses_57559_57576�
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
 *-
config_proto

CPU

GPU 2J 8� *k
ffRd
b__inference___backward_layer_5dense_component_layer_call_and_return_conditional_losses_57583_57594�
Jgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCall;gradients/add/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcallhgradients_layer_5nn_component_statefulpartitionedcall_grad_layer_5nn_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:����������:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *h
fcRa
___inference___backward_layer_5nn_component_layer_call_and_return_conditional_losses_57601_57614�
&gradients/tf.nn.elu_2/Elu_grad/EluGradEluGradSgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients_tf_nn_elu_2_elu_grad_elugrad_tf_nn_elu_2_elu*
T0*(
_output_shapes
:�����������
>gradients/add_component_2/PartitionedCall_grad/PartitionedCallPartitionedCall2gradients/tf.nn.elu_2/Elu_grad/EluGrad:backprops:0Ngradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcallPgradients_add_component_2_partitionedcall_grad_add_component_2_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *d
f_R]
[__inference___backward_add_component_2_layer_call_and_return_conditional_losses_57624_57641�
Mgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_2/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcallngradients_layer_2dense_component_statefulpartitionedcall_grad_layer_2dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������	:		�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *k
ffRd
b__inference___backward_layer_2dense_component_layer_call_and_return_conditional_losses_57648_57659�
Jgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_2/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcallhgradients_layer_2nn_component_statefulpartitionedcall_grad_layer_2nn_component_statefulpartitionedcall_1*
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
 *-
config_proto

CPU

GPU 2J 8� *h
fcRa
___inference___backward_layer_2nn_component_layer_call_and_return_conditional_losses_57666_57679�
&gradients/tf.nn.elu_1/Elu_grad/EluGradEluGradSgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:06gradients_tf_nn_elu_1_elu_grad_elugrad_tf_nn_elu_1_elu*
T0*(
_output_shapes
:�����������
>gradients/add_component_1/PartitionedCall_grad/PartitionedCallPartitionedCall2gradients/tf.nn.elu_1/Elu_grad/EluGrad:backprops:0Ngradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcallPgradients_add_component_1_partitionedcall_grad_add_component_1_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *d
f_R]
[__inference___backward_add_component_1_layer_call_and_return_conditional_losses_57689_57706�
Mgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_1/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcallngradients_layer_1dense_component_statefulpartitionedcall_grad_layer_1dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������	:		�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *k
ffRd
b__inference___backward_layer_1dense_component_layer_call_and_return_conditional_losses_57713_57724�
Jgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_1/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcallhgradients_layer_1nn_component_statefulpartitionedcall_grad_layer_1nn_component_statefulpartitionedcall_1*
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
 *-
config_proto

CPU

GPU 2J 8� *h
fcRa
___inference___backward_layer_1nn_component_layer_call_and_return_conditional_losses_57731_57744�
$gradients/tf.nn.elu/Elu_grad/EluGradEluGradSgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:02gradients_tf_nn_elu_elu_grad_elugrad_tf_nn_elu_elu*
T0*(
_output_shapes
:�����������
>gradients/add_component_0/PartitionedCall_grad/PartitionedCallPartitionedCall0gradients/tf.nn.elu/Elu_grad/EluGrad:backprops:0Ngradients_add_component_0_partitionedcall_grad_add_component_0_partitionedcallPgradients_add_component_0_partitionedcall_grad_add_component_0_partitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *d
f_R]
[__inference___backward_add_component_0_layer_call_and_return_conditional_losses_57754_57771�
Mgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_0/PartitionedCall_grad/PartitionedCall:output:0lgradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcallngradients_layer_0dense_component_statefulpartitionedcall_grad_layer_0dense_component_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������	:		�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *k
ffRd
b__inference___backward_layer_0dense_component_layer_call_and_return_conditional_losses_57778_57789�
Jgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallGgradients/add_component_0/PartitionedCall_grad/PartitionedCall:output:1fgradients_layer_0nn_component_statefulpartitionedcall_grad_layer_0nn_component_statefulpartitionedcallhgradients_layer_0nn_component_statefulpartitionedcall_grad_layer_0nn_component_statefulpartitionedcall_1*
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
 *-
config_proto

CPU

GPU 2J 8� *h
fcRa
___inference___backward_layer_0nn_component_layer_call_and_return_conditional_losses_57796_57809�
Egradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallSgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:0\gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_1^gradients_layer__1_input_statefulpartitionedcall_grad_layer__1_input_statefulpartitionedcall_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *9
_output_shapes'
%:���������	:		�:�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *c
f^R\
Z__inference___backward_layer_-1_input_layer_call_and_return_conditional_losses_57817_57832�
gradients/AddNAddNVgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Vgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:0Ngradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:0*
N*
T0*`
_classV
TRloc:@gradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall*'
_output_shapes
:���������	�
Jgradients/decorrelation_layer/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN:sum:0fgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcallhgradients_decorrelation_layer_statefulpartitionedcall_grad_decorrelation_layer_statefulpartitionedcall_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:���������	:		* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *h
fcRa
___inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_57843_57854�
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
 *-
config_proto

CPU

GPU 2J 8� *e
f`R^
\__inference___backward_mean_shift_layer_layer_call_and_return_conditional_losses_57861_57879�
IdentityIdentityPgradients/mean_shift_layer/StatefulPartitionedCall_grad/PartitionedCall:output:0*
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
:		��

Identity_4IdentityNgradients/layer_-1_input/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_5IdentityVgradients/layer_0dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:		��

Identity_6IdentitySgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���

Identity_7IdentitySgradients/layer_0nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��

Identity_8IdentityVgradients/layer_1dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:		��

Identity_9IdentitySgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���
Identity_10IdentitySgradients/layer_1nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��
Identity_11IdentityVgradients/layer_2dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:		��
Identity_12IdentitySgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0* 
_output_shapes
:
���
Identity_13IdentitySgradients/layer_2nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:��
Identity_14IdentityVgradients/layer_5dense_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes

:	�
Identity_15IdentitySgradients/layer_5nn_component/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	��
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
�:���������:���������:���������:	:���������	:	�:����������:����������:����������:����������:		�:���������	:
��:����������:����������:����������:����������:		�:���������	:
��:����������:����������:����������:����������:		�:���������	:
��:����������:����������:		�:���������	:		:���������	:���������	:	*`
forward_function_nameGE__forward_Icnn_closure_layer_call_and_return_conditional_losses_57903:- )
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
:���������	:%!

_output_shapes
:	�:.*
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
:����������:%
!

_output_shapes
:		�:-)
'
_output_shapes
:���������	:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:%!

_output_shapes
:		�:-)
'
_output_shapes
:���������	:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:%!

_output_shapes
:		�:-)
'
_output_shapes
:���������	:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:%!

_output_shapes
:		�:-)
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
�
�
[__inference___backward_add_component_0_layer_call_and_return_conditional_losses_57754_57771
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
<:����������:����������:����������*c
forward_function_nameJH__forward_add_component_0_layer_call_and_return_conditional_losses_57770:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������
�
�
K__inference_mean_shift_layer_layer_call_and_return_conditional_losses_56542

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
�
�
O__inference___backward_add_layer_call_and_return_conditional_losses_57559_57576
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
9:���������:���������:���������*W
forward_function_name><__forward_add_layer_call_and_return_conditional_losses_57575:- )
'
_output_shapes
:���������:-)
'
_output_shapes
:���������:-)
'
_output_shapes
:���������
�
v
J__inference_add_component_0_layer_call_and_return_conditional_losses_60847
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
�
�
L__forward_decorrelation_layer_layer_call_and_return_conditional_losses_57853
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
:���������	: *{
backward_function_namea___inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_57843_578542.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
ߓ
�
H__inference_sobolev_model_layer_call_and_return_conditional_losses_59391
input_1 
icnn_closure_59091:	$
icnn_closure_59093:		%
icnn_closure_59095:		�!
icnn_closure_59097:	�%
icnn_closure_59099:		�&
icnn_closure_59101:
��!
icnn_closure_59103:	�%
icnn_closure_59105:		�&
icnn_closure_59107:
��!
icnn_closure_59109:	�%
icnn_closure_59111:		�&
icnn_closure_59113:
��!
icnn_closure_59115:	�$
icnn_closure_59117:	%
icnn_closure_59119:	� 
icnn_closure_59121:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��$Icnn_closure/StatefulPartitionedCall�checked�	checked_1�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�

$Icnn_closure/StatefulPartitionedCallStatefulPartitionedCallinput_1icnn_closure_59091icnn_closure_59093icnn_closure_59095icnn_closure_59097icnn_closure_59099icnn_closure_59101icnn_closure_59103icnn_closure_59105icnn_closure_59107icnn_closure_59109icnn_closure_59111icnn_closure_59113icnn_closure_59115icnn_closure_59117icnn_closure_59119icnn_closure_59121*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������:	:���������	:	�:����������:����������:����������:����������:		�:���������	:
��:����������:����������:����������:����������:		�:���������	:
��:����������:����������:����������:����������:		�:���������	:
��:����������:����������:		�:���������	:		:���������	:���������	:	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__forward_Icnn_closure_layer_call_and_return_conditional_losses_58427l
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
�:���������	:	:		:		�:�:		�:
��:�:		�:
��:�:		�:
��:�:	:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *a
f\RZ
X__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_58302_58428g
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
Tensordot_3/transpose_1	Transposestrided_slice_3:output:0%Tensordot_3/transpose_1/perm:output:0*
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
a
add_1AddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������
f
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
:���������	*

begin_mask*
end_maskl
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_59095*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_59099*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_59101* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_59105*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_59107* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_59111*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_59113* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_59117*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_59119*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: |
IdentityIdentity-Icnn_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	i

Identity_2Identitystrided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp%^Icnn_closure/StatefulPartitionedCall^checked
^checked_18^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp*"
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
	checked_1	checked_12r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
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

�
�
__inference_loss_fn_2_61117Y
Elayer_0nn_component_kernel_regularizer_square_readvariableop_resource:
��
identity��<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpq
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpElayer_0nn_component_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: l
IdentityIdentity.layer_0nn_component/kernel/Regularizer/add:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp
�
�
6__inference_layer_1dense_component_layer_call_fn_60862

inputs
unknown:		�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_1dense_component_layer_call_and_return_conditional_losses_56649p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
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
�
t
J__inference_add_component_1_layer_call_and_return_conditional_losses_56683

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
�
�
-__inference_sobolev_model_layer_call_fn_59565
x
unknown:	
	unknown_0:		
	unknown_1:		�
	unknown_2:	�
	unknown_3:		�
	unknown_4:
��
	unknown_5:	�
	unknown_6:		�
	unknown_7:
��
	unknown_8:	�
	unknown_9:		�

unknown_10:
��

unknown_11:	�

unknown_12:	

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
9:���������:���������	:���������	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sobolev_model_layer_call_and_return_conditional_losses_58169o
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

�
�
-__inference_sobolev_model_layer_call_fn_58785
input_1
unknown:	
	unknown_0:		
	unknown_1:		�
	unknown_2:	�
	unknown_3:		�
	unknown_4:
��
	unknown_5:	�
	unknown_6:		�
	unknown_7:
��
	unknown_8:	�
	unknown_9:		�

unknown_10:
��

unknown_11:	�

unknown_12:	

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
9:���������:���������	:���������	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sobolev_model_layer_call_and_return_conditional_losses_58693o
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
3__inference_decorrelation_layer_layer_call_fn_60727

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
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_decorrelation_layer_layer_call_and_return_conditional_losses_56553o
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
�
t
J__inference_add_component_0_layer_call_and_return_conditional_losses_56631

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
�
�
6__inference_layer_5dense_component_layer_call_fn_61016

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
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_5dense_component_layer_call_and_return_conditional_losses_56753o
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
�
�
Q__inference_layer_5dense_component_layer_call_and_return_conditional_losses_61031

inputs0
matmul_readvariableop_resource:	
identity��MatMul/ReadVariableOp�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: _
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^MatMul/ReadVariableOp@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
Q__inference_layer_0dense_component_layer_call_and_return_conditional_losses_56597

inputs1
matmul_readvariableop_resource:		�
identity��MatMul/ReadVariableOp�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityMatMul:product:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
K__inference_mean_shift_layer_layer_call_and_return_conditional_losses_60720

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
��
�
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_57188

inputs$
mean_shift_layer_57065:	+
decorrelation_layer_57068:		'
layer__1_input_57071:		�#
layer__1_input_57073:	�/
layer_0dense_component_57076:		�-
layer_0nn_component_57079:
��(
layer_0nn_component_57081:	�/
layer_1dense_component_57086:		�-
layer_1nn_component_57089:
��(
layer_1nn_component_57091:	�/
layer_2dense_component_57096:		�-
layer_2nn_component_57099:
��(
layer_2nn_component_57101:	�.
layer_5dense_component_57106:	,
layer_5nn_component_57109:	�'
layer_5nn_component_57111:
identity��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�.layer_0dense_component/StatefulPartitionedCall�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_0nn_component/StatefulPartitionedCall�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_1dense_component/StatefulPartitionedCall�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_1nn_component/StatefulPartitionedCall�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_2dense_component/StatefulPartitionedCall�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_2nn_component/StatefulPartitionedCall�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_5dense_component/StatefulPartitionedCall�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_5nn_component/StatefulPartitionedCall�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_57065*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_mean_shift_layer_layer_call_and_return_conditional_losses_56542�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_57068*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_decorrelation_layer_layer_call_and_return_conditional_losses_56553�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_57071layer__1_input_57073*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_layer_-1_input_layer_call_and_return_conditional_losses_56576�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_0dense_component_57076*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_0dense_component_layer_call_and_return_conditional_losses_56597�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_57079layer_0nn_component_57081*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_0nn_component_layer_call_and_return_conditional_losses_56619�
add_component_0/PartitionedCallPartitionedCall7layer_0dense_component/StatefulPartitionedCall:output:04layer_0nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_0_layer_call_and_return_conditional_losses_56631q
tf.nn.elu/EluElu(add_component_0/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_1dense_component_57086*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_1dense_component_layer_call_and_return_conditional_losses_56649�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu/Elu:activations:0layer_1nn_component_57089layer_1nn_component_57091*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_1nn_component_layer_call_and_return_conditional_losses_56671�
add_component_1/PartitionedCallPartitionedCall7layer_1dense_component/StatefulPartitionedCall:output:04layer_1nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_1_layer_call_and_return_conditional_losses_56683s
tf.nn.elu_1/EluElu(add_component_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_2dense_component_57096*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_2dense_component_layer_call_and_return_conditional_losses_56701�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_1/Elu:activations:0layer_2nn_component_57099layer_2nn_component_57101*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_2nn_component_layer_call_and_return_conditional_losses_56723�
add_component_2/PartitionedCallPartitionedCall7layer_2dense_component/StatefulPartitionedCall:output:04layer_2nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_2_layer_call_and_return_conditional_losses_56735s
tf.nn.elu_2/EluElu(add_component_2/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_5dense_component_57106*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_5dense_component_layer_call_and_return_conditional_losses_56753�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_2/Elu:activations:0layer_5nn_component_57109layer_5nn_component_57111*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_5nn_component_layer_call_and_return_conditional_losses_56775�
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
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_56787l
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer__1_input_57071*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_0dense_component_57076*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_0nn_component_57079* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_1dense_component_57086*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_1nn_component_57089* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_2dense_component_57096*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_2nn_component_57099* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_5dense_component_57106*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_5nn_component_57109*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: k
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp,^decorrelation_layer/StatefulPartitionedCall'^layer_-1_input/StatefulPartitionedCall8^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp/^layer_0dense_component/StatefulPartitionedCall@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_0nn_component/StatefulPartitionedCall=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_1dense_component/StatefulPartitionedCall@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_1nn_component/StatefulPartitionedCall=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_2dense_component/StatefulPartitionedCall@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_2nn_component/StatefulPartitionedCall=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_5dense_component/StatefulPartitionedCall@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_5nn_component/StatefulPartitionedCall=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������	: : : : : : : : : : : : : : : : 2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2P
&layer_-1_input/StatefulPartitionedCall&layer_-1_input/StatefulPartitionedCall2r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2`
.layer_0dense_component/StatefulPartitionedCall.layer_0dense_component/StatefulPartitionedCall2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_0nn_component/StatefulPartitionedCall+layer_0nn_component/StatefulPartitionedCall2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_1dense_component/StatefulPartitionedCall.layer_1dense_component/StatefulPartitionedCall2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_1nn_component/StatefulPartitionedCall+layer_1nn_component/StatefulPartitionedCall2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_2dense_component/StatefulPartitionedCall.layer_2dense_component/StatefulPartitionedCall2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_2nn_component/StatefulPartitionedCall+layer_2nn_component/StatefulPartitionedCall2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_5dense_component/StatefulPartitionedCall.layer_5dense_component/StatefulPartitionedCall2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_5nn_component/StatefulPartitionedCall+layer_5nn_component/StatefulPartitionedCall2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
3__inference_layer_0nn_component_layer_call_fn_60817

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
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_0nn_component_layer_call_and_return_conditional_losses_56619p
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
3__inference_layer_5nn_component_layer_call_fn_61048

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
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_5nn_component_layer_call_and_return_conditional_losses_56775o
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
�
�
Z__inference___backward_layer_-1_input_layer_call_and_return_conditional_losses_57817_57832
placeholder"
gradients_elu_grad_elugrad_elu6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1

identity_2_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:�����������
gradients/Elu_grad/EluGradEluGradgradients/grad_ys_0:output:0gradients_elu_grad_elugrad_elu*
T0*(
_output_shapes
:����������
"gradients/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/Elu_grad/EluGrad:backprops:0*
T0*
_output_shapes	
:��
gradients/MatMul_grad/MatMulMatMul&gradients/Elu_grad/EluGrad:backprops:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������	*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputs&gradients/Elu_grad/EluGrad:backprops:0*
T0*
_output_shapes
:		�*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������	j

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes
:		�i

Identity_2Identity+gradients/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:�"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:����������:����������:		�:���������	*b
forward_function_nameIG__forward_layer_-1_input_layer_call_and_return_conditional_losses_57831:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:%!

_output_shapes
:		�:-)
'
_output_shapes
:���������	
�
�
L__forward_layer_5nn_component_layer_call_and_return_conditional_losses_57613
inputs_01
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpu
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
:���������q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *{
backward_function_namea___inference___backward_layer_5nn_component_layer_call_and_return_conditional_losses_57601_5761420
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
,__inference_Icnn_closure_layer_call_fn_56897
input_1
unknown:	
	unknown_0:		
	unknown_1:		�
	unknown_2:	�
	unknown_3:		�
	unknown_4:
��
	unknown_5:	�
	unknown_6:		�
	unknown_7:
��
	unknown_8:	�
	unknown_9:		�

unknown_10:
��

unknown_11:	�

unknown_12:	

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
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_56862o
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
��
�
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_56862

inputs$
mean_shift_layer_56543:	+
decorrelation_layer_56554:		'
layer__1_input_56577:		�#
layer__1_input_56579:	�/
layer_0dense_component_56598:		�-
layer_0nn_component_56620:
��(
layer_0nn_component_56622:	�/
layer_1dense_component_56650:		�-
layer_1nn_component_56672:
��(
layer_1nn_component_56674:	�/
layer_2dense_component_56702:		�-
layer_2nn_component_56724:
��(
layer_2nn_component_56726:	�.
layer_5dense_component_56754:	,
layer_5nn_component_56776:	�'
layer_5nn_component_56778:
identity��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�.layer_0dense_component/StatefulPartitionedCall�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_0nn_component/StatefulPartitionedCall�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_1dense_component/StatefulPartitionedCall�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_1nn_component/StatefulPartitionedCall�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_2dense_component/StatefulPartitionedCall�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_2nn_component/StatefulPartitionedCall�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_5dense_component/StatefulPartitionedCall�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_5nn_component/StatefulPartitionedCall�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_56543*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_mean_shift_layer_layer_call_and_return_conditional_losses_56542�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_56554*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_decorrelation_layer_layer_call_and_return_conditional_losses_56553�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_56577layer__1_input_56579*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_layer_-1_input_layer_call_and_return_conditional_losses_56576�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_0dense_component_56598*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_0dense_component_layer_call_and_return_conditional_losses_56597�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_56620layer_0nn_component_56622*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_0nn_component_layer_call_and_return_conditional_losses_56619�
add_component_0/PartitionedCallPartitionedCall7layer_0dense_component/StatefulPartitionedCall:output:04layer_0nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_0_layer_call_and_return_conditional_losses_56631q
tf.nn.elu/EluElu(add_component_0/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_1dense_component_56650*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_1dense_component_layer_call_and_return_conditional_losses_56649�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu/Elu:activations:0layer_1nn_component_56672layer_1nn_component_56674*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_1nn_component_layer_call_and_return_conditional_losses_56671�
add_component_1/PartitionedCallPartitionedCall7layer_1dense_component/StatefulPartitionedCall:output:04layer_1nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_1_layer_call_and_return_conditional_losses_56683s
tf.nn.elu_1/EluElu(add_component_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_2dense_component_56702*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_2dense_component_layer_call_and_return_conditional_losses_56701�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_1/Elu:activations:0layer_2nn_component_56724layer_2nn_component_56726*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_2nn_component_layer_call_and_return_conditional_losses_56723�
add_component_2/PartitionedCallPartitionedCall7layer_2dense_component/StatefulPartitionedCall:output:04layer_2nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_2_layer_call_and_return_conditional_losses_56735s
tf.nn.elu_2/EluElu(add_component_2/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_5dense_component_56754*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_5dense_component_layer_call_and_return_conditional_losses_56753�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_2/Elu:activations:0layer_5nn_component_56776layer_5nn_component_56778*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_5nn_component_layer_call_and_return_conditional_losses_56775�
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
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_56787l
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer__1_input_56577*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_0dense_component_56598*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_0nn_component_56620* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_1dense_component_56650*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_1nn_component_56672* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_2dense_component_56702*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_2nn_component_56724* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_5dense_component_56754*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_5nn_component_56776*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: k
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp,^decorrelation_layer/StatefulPartitionedCall'^layer_-1_input/StatefulPartitionedCall8^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp/^layer_0dense_component/StatefulPartitionedCall@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_0nn_component/StatefulPartitionedCall=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_1dense_component/StatefulPartitionedCall@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_1nn_component/StatefulPartitionedCall=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_2dense_component/StatefulPartitionedCall@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_2nn_component/StatefulPartitionedCall=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_5dense_component/StatefulPartitionedCall@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_5nn_component/StatefulPartitionedCall=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������	: : : : : : : : : : : : : : : : 2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2P
&layer_-1_input/StatefulPartitionedCall&layer_-1_input/StatefulPartitionedCall2r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2`
.layer_0dense_component/StatefulPartitionedCall.layer_0dense_component/StatefulPartitionedCall2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_0nn_component/StatefulPartitionedCall+layer_0nn_component/StatefulPartitionedCall2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_1dense_component/StatefulPartitionedCall.layer_1dense_component/StatefulPartitionedCall2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_1nn_component/StatefulPartitionedCall+layer_1nn_component/StatefulPartitionedCall2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_2dense_component/StatefulPartitionedCall.layer_2dense_component/StatefulPartitionedCall2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_2nn_component/StatefulPartitionedCall+layer_2nn_component/StatefulPartitionedCall2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_5dense_component/StatefulPartitionedCall.layer_5dense_component/StatefulPartitionedCall2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_5nn_component/StatefulPartitionedCall+layer_5nn_component/StatefulPartitionedCall2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�

�
___inference___backward_decorrelation_layer_layer_call_and_return_conditional_losses_57843_57854
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
0:���������	:		:���������	*g
forward_function_nameNL__forward_decorrelation_layer_layer_call_and_return_conditional_losses_57853:- )
'
_output_shapes
:���������	:$ 

_output_shapes

:		:-)
'
_output_shapes
:���������	
�
�
6__inference_layer_0dense_component_layer_call_fn_60785

inputs
unknown:		�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_0dense_component_layer_call_and_return_conditional_losses_56597p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
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
�
�
N__inference_layer_5nn_component_layer_call_and_return_conditional_losses_56775

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpu
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
:���������q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
O
#__inference_add_layer_call_fn_61072
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
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_56787`
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
�
�
N__inference_decorrelation_layer_layer_call_and_return_conditional_losses_60734

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
�
�
L__forward_layer_2nn_component_layer_call_and_return_conditional_losses_57678
inputs_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpv
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
:����������q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *{
backward_function_namea___inference___backward_layer_2nn_component_layer_call_and_return_conditional_losses_57666_5767920
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_layer_2dense_component_layer_call_and_return_conditional_losses_56701

inputs1
matmul_readvariableop_resource:		�
identity��MatMul/ReadVariableOp�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityMatMul:product:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
__inference_loss_fn_7_61182Z
Hlayer_5dense_component_kernel_regularizer_square_readvariableop_resource:	
identity��?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpt
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpHlayer_5dense_component_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: o
IdentityIdentity1layer_5dense_component/kernel/Regularizer/add:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp
�
�
__inference_loss_fn_0_61091S
@layer__1_input_kernel_regularizer_square_readvariableop_resource:		�
identity��7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpl
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOp@layer__1_input_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: g
IdentityIdentity)layer_-1_input/kernel/Regularizer/add:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp8^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp
�
�
O__forward_layer_1dense_component_layer_call_and_return_conditional_losses_57723
inputs_01
matmul_readvariableop_resource:		�
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOp�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityMatMul:product:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: *~
backward_function_namedb__inference___backward_layer_1dense_component_layer_call_and_return_conditional_losses_57713_577242.
MatMul/ReadVariableOpMatMul/ReadVariableOp2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
H__forward_add_component_2_layer_call_and_return_conditional_losses_57640
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
(:����������:����������*w
backward_function_name][__inference___backward_add_component_2_layer_call_and_return_conditional_losses_57624_57641:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
[
/__inference_add_component_2_layer_call_fn_60995
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
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_2_layer_call_and_return_conditional_losses_56735a
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
�
�
O__forward_layer_5dense_component_layer_call_and_return_conditional_losses_57593
inputs_00
matmul_readvariableop_resource:	
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOp�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0k
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: _
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^MatMul/ReadVariableOp@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: *~
backward_function_namedb__inference___backward_layer_5dense_component_layer_call_and_return_conditional_losses_57583_575942.
MatMul/ReadVariableOpMatMul/ReadVariableOp2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
.__inference_layer_-1_input_layer_call_fn_60751

inputs
unknown:		�
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
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_layer_-1_input_layer_call_and_return_conditional_losses_56576p
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
:���������	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
Q__inference_layer_1dense_component_layer_call_and_return_conditional_losses_60877

inputs1
matmul_readvariableop_resource:		�
identity��MatMul/ReadVariableOp�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityMatMul:product:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
,__inference_Icnn_closure_layer_call_fn_60405

inputs
unknown:	
	unknown_0:		
	unknown_1:		�
	unknown_2:	�
	unknown_3:		�
	unknown_4:
��
	unknown_5:	�
	unknown_6:		�
	unknown_7:
��
	unknown_8:	�
	unknown_9:		�

unknown_10:
��

unknown_11:	�

unknown_12:	

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
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_56862o
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
�
�
L__forward_layer_0nn_component_layer_call_and_return_conditional_losses_57808
inputs_02
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpv
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
:����������q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : *{
backward_function_namea___inference___backward_layer_0nn_component_layer_call_and_return_conditional_losses_57796_5780920
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__forward_layer_-1_input_layer_call_and_return_conditional_losses_57831
inputs_01
matmul_readvariableop_resource:		�.
biasadd_readvariableop_resource:	�
identity
elu
matmul_readvariableop

inputs��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
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
:����������O
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:����������l
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: a
IdentityIdentityElu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp8^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
eluElu:activations:0"
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������	: : *v
backward_function_name\Z__inference___backward_layer_-1_input_layer_call_and_return_conditional_losses_57817_5783220
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
N__inference_layer_1nn_component_layer_call_and_return_conditional_losses_56671

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpv
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
:����������q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
E__forward_Icnn_closure_layer_call_and_return_conditional_losses_58427

inputs$
mean_shift_layer_57065:	+
decorrelation_layer_57068:		'
layer__1_input_57071:		�#
layer__1_input_57073:	�/
layer_0dense_component_57076:		�-
layer_0nn_component_57079:
��(
layer_0nn_component_57081:	�/
layer_1dense_component_57086:		�-
layer_1nn_component_57089:
��(
layer_1nn_component_57091:	�/
layer_2dense_component_57096:		�-
layer_2nn_component_57099:
��(
layer_2nn_component_57101:	�.
layer_5dense_component_57106:	,
layer_5nn_component_57109:	�'
layer_5nn_component_57111:
identity
add_partitionedcall
add_partitionedcall_02
.layer_5dense_component_statefulpartitionedcall4
0layer_5dense_component_statefulpartitionedcall_0/
+layer_5nn_component_statefulpartitionedcall1
-layer_5nn_component_statefulpartitionedcall_0
tf_nn_elu_2_elu#
add_component_2_partitionedcall%
!add_component_2_partitionedcall_02
.layer_2dense_component_statefulpartitionedcall4
0layer_2dense_component_statefulpartitionedcall_0/
+layer_2nn_component_statefulpartitionedcall1
-layer_2nn_component_statefulpartitionedcall_0
tf_nn_elu_1_elu#
add_component_1_partitionedcall%
!add_component_1_partitionedcall_02
.layer_1dense_component_statefulpartitionedcall4
0layer_1dense_component_statefulpartitionedcall_0/
+layer_1nn_component_statefulpartitionedcall1
-layer_1nn_component_statefulpartitionedcall_0
tf_nn_elu_elu#
add_component_0_partitionedcall%
!add_component_0_partitionedcall_02
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
*mean_shift_layer_statefulpartitionedcall_0��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�.layer_0dense_component/StatefulPartitionedCall�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_0nn_component/StatefulPartitionedCall�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_1dense_component/StatefulPartitionedCall�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_1nn_component/StatefulPartitionedCall�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_2dense_component/StatefulPartitionedCall�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_2nn_component/StatefulPartitionedCall�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_5dense_component/StatefulPartitionedCall�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_5nn_component/StatefulPartitionedCall�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_57065*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:���������	:���������	:	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__forward_mean_shift_layer_layer_call_and_return_conditional_losses_57878�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_57068*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������	:		:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__forward_decorrelation_layer_layer_call_and_return_conditional_losses_57853�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_57071layer__1_input_57073*
Tin
2*
Tout
2*
_collective_manager_ids
 *Z
_output_shapesH
F:����������:����������:		�:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__forward_layer_-1_input_layer_call_and_return_conditional_losses_57831�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_0dense_component_57076*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:����������:		�:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__forward_layer_0dense_component_layer_call_and_return_conditional_losses_57788�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_57079layer_0nn_component_57081*
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
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__forward_layer_0nn_component_layer_call_and_return_conditional_losses_57808�
add_component_0/PartitionedCallPartitionedCall7layer_0dense_component/StatefulPartitionedCall:output:04layer_0nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__forward_add_component_0_layer_call_and_return_conditional_losses_57770q
tf.nn.elu/EluElu(add_component_0/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_1dense_component_57086*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:����������:		�:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__forward_layer_1dense_component_layer_call_and_return_conditional_losses_57723�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu/Elu:activations:0layer_1nn_component_57089layer_1nn_component_57091*
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
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__forward_layer_1nn_component_layer_call_and_return_conditional_losses_57743�
add_component_1/PartitionedCallPartitionedCall7layer_1dense_component/StatefulPartitionedCall:output:04layer_1nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__forward_add_component_1_layer_call_and_return_conditional_losses_57705s
tf.nn.elu_1/EluElu(add_component_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_2dense_component_57096*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:����������:		�:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__forward_layer_2dense_component_layer_call_and_return_conditional_losses_57658�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_1/Elu:activations:0layer_2nn_component_57099layer_2nn_component_57101*
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
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__forward_layer_2nn_component_layer_call_and_return_conditional_losses_57678�
add_component_2/PartitionedCallPartitionedCall7layer_2dense_component/StatefulPartitionedCall:output:04layer_2nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__forward_add_component_2_layer_call_and_return_conditional_losses_57640s
tf.nn.elu_2/EluElu(add_component_2/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_5dense_component_57106*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������:	:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__forward_layer_5dense_component_layer_call_and_return_conditional_losses_57593�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_2/Elu:activations:0layer_5nn_component_57109layer_5nn_component_57111*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:���������:	�:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__forward_layer_5nn_component_layer_call_and_return_conditional_losses_57613�
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
 *-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__forward_add_layer_call_and_return_conditional_losses_57575l
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer__1_input_57071*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_0dense_component_57076*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_0nn_component_57079* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_1dense_component_57086*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_1nn_component_57089* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_2dense_component_57096*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_2nn_component_57099* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_5dense_component_57106*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_5nn_component_57109*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: k
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp,^decorrelation_layer/StatefulPartitionedCall'^layer_-1_input/StatefulPartitionedCall8^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp/^layer_0dense_component/StatefulPartitionedCall@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_0nn_component/StatefulPartitionedCall=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_1dense_component/StatefulPartitionedCall@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_1nn_component/StatefulPartitionedCall=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_2dense_component/StatefulPartitionedCall@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_2nn_component/StatefulPartitionedCall=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_5dense_component/StatefulPartitionedCall@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_5nn_component/StatefulPartitionedCall=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "K
add_component_0_partitionedcall(add_component_0/PartitionedCall:output:1"M
!add_component_0_partitionedcall_0(add_component_0/PartitionedCall:output:2"K
add_component_1_partitionedcall(add_component_1/PartitionedCall:output:1"M
!add_component_1_partitionedcall_0(add_component_1/PartitionedCall:output:2"K
add_component_2_partitionedcall(add_component_2/PartitionedCall:output:1"M
!add_component_2_partitionedcall_0(add_component_2/PartitionedCall:output:2"3
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
*mean_shift_layer_statefulpartitionedcall_01mean_shift_layer/StatefulPartitionedCall:output:2"0
tf_nn_elu_1_elutf.nn.elu_1/Elu:activations:0"0
tf_nn_elu_2_elutf.nn.elu_2/Elu:activations:0",
tf_nn_elu_elutf.nn.elu/Elu:activations:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������	: : : : : : : : : : : : : : : : *t
backward_function_nameZX__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_58302_584282Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2P
&layer_-1_input/StatefulPartitionedCall&layer_-1_input/StatefulPartitionedCall2r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2`
.layer_0dense_component/StatefulPartitionedCall.layer_0dense_component/StatefulPartitionedCall2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_0nn_component/StatefulPartitionedCall+layer_0nn_component/StatefulPartitionedCall2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_1dense_component/StatefulPartitionedCall.layer_1dense_component/StatefulPartitionedCall2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_1nn_component/StatefulPartitionedCall+layer_1nn_component/StatefulPartitionedCall2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_2dense_component/StatefulPartitionedCall.layer_2dense_component/StatefulPartitionedCall2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_2nn_component/StatefulPartitionedCall+layer_2nn_component/StatefulPartitionedCall2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_5dense_component/StatefulPartitionedCall.layer_5dense_component/StatefulPartitionedCall2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_5nn_component/StatefulPartitionedCall+layer_5nn_component/StatefulPartitionedCall2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
͓
�
H__inference_sobolev_model_layer_call_and_return_conditional_losses_58693
x 
icnn_closure_58266:	$
icnn_closure_58268:		%
icnn_closure_58270:		�!
icnn_closure_58272:	�%
icnn_closure_58274:		�&
icnn_closure_58276:
��!
icnn_closure_58278:	�%
icnn_closure_58280:		�&
icnn_closure_58282:
��!
icnn_closure_58284:	�%
icnn_closure_58286:		�&
icnn_closure_58288:
��!
icnn_closure_58290:	�$
icnn_closure_58292:	%
icnn_closure_58294:	� 
icnn_closure_58296:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��$Icnn_closure/StatefulPartitionedCall�checked�	checked_1�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�

$Icnn_closure/StatefulPartitionedCallStatefulPartitionedCallxicnn_closure_58266icnn_closure_58268icnn_closure_58270icnn_closure_58272icnn_closure_58274icnn_closure_58276icnn_closure_58278icnn_closure_58280icnn_closure_58282icnn_closure_58284icnn_closure_58286icnn_closure_58288icnn_closure_58290icnn_closure_58292icnn_closure_58294icnn_closure_58296*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������:	:���������	:	�:����������:����������:����������:����������:		�:���������	:
��:����������:����������:����������:����������:		�:���������	:
��:����������:����������:����������:����������:		�:���������	:
��:����������:����������:		�:���������	:		:���������	:���������	:	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__forward_Icnn_closure_layer_call_and_return_conditional_losses_58427l
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
�:���������	:	:		:		�:�:		�:
��:�:		�:
��:�:		�:
��:�:	:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *a
f\RZ
X__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_58302_58428g
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
Tensordot_3/transpose_1	Transposestrided_slice_3:output:0%Tensordot_3/transpose_1/perm:output:0*
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
a
add_1AddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������
f
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
:���������	*

begin_mask*
end_maskl
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58270*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58274*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58276* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58280*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58282* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58286*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58288* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58292*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58294*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: |
IdentityIdentity-Icnn_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	i

Identity_2Identitystrided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp%^Icnn_closure/StatefulPartitionedCall^checked
^checked_18^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp*"
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
	checked_1	checked_12r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:J F
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

�
�
O__forward_layer_0dense_component_layer_call_and_return_conditional_losses_57788
inputs_01
matmul_readvariableop_resource:		�
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOp�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityMatMul:product:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: *~
backward_function_namedb__inference___backward_layer_0dense_component_layer_call_and_return_conditional_losses_57778_577892.
MatMul/ReadVariableOpMatMul/ReadVariableOp2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
-__inference_sobolev_model_layer_call_fn_58214
input_1
unknown:	
	unknown_0:		
	unknown_1:		�
	unknown_2:	�
	unknown_3:		�
	unknown_4:
��
	unknown_5:	�
	unknown_6:		�
	unknown_7:
��
	unknown_8:	�
	unknown_9:		�

unknown_10:
��

unknown_11:	�

unknown_12:	

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
9:���������:���������	:���������	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sobolev_model_layer_call_and_return_conditional_losses_58169o
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

�
�*
!__inference__traced_restore_61647
file_prefix!
assignvariableop_beta_1: #
assignvariableop_1_beta_2: "
assignvariableop_2_decay: *
 assignvariableop_3_learning_rate: &
assignvariableop_4_adam_iter:	 )
assignvariableop_5_variable:	/
assignvariableop_6_variable_1:		;
(assignvariableop_7_layer__1_input_kernel:		�5
&assignvariableop_8_layer__1_input_bias:	�C
0assignvariableop_9_layer_0dense_component_kernel:		�B
.assignvariableop_10_layer_0nn_component_kernel:
��;
,assignvariableop_11_layer_0nn_component_bias:	�D
1assignvariableop_12_layer_1dense_component_kernel:		�B
.assignvariableop_13_layer_1nn_component_kernel:
��;
,assignvariableop_14_layer_1nn_component_bias:	�D
1assignvariableop_15_layer_2dense_component_kernel:		�B
.assignvariableop_16_layer_2nn_component_kernel:
��;
,assignvariableop_17_layer_2nn_component_bias:	�C
1assignvariableop_18_layer_5dense_component_kernel:	A
.assignvariableop_19_layer_5nn_component_kernel:	�:
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
assignvariableop_40_count_9: >
+assignvariableop_41_layer__1_input_kernel_m:		�8
)assignvariableop_42_layer__1_input_bias_m:	�F
3assignvariableop_43_layer_0dense_component_kernel_m:		�D
0assignvariableop_44_layer_0nn_component_kernel_m:
��=
.assignvariableop_45_layer_0nn_component_bias_m:	�F
3assignvariableop_46_layer_1dense_component_kernel_m:		�D
0assignvariableop_47_layer_1nn_component_kernel_m:
��=
.assignvariableop_48_layer_1nn_component_bias_m:	�F
3assignvariableop_49_layer_2dense_component_kernel_m:		�D
0assignvariableop_50_layer_2nn_component_kernel_m:
��=
.assignvariableop_51_layer_2nn_component_bias_m:	�E
3assignvariableop_52_layer_5dense_component_kernel_m:	C
0assignvariableop_53_layer_5nn_component_kernel_m:	�<
.assignvariableop_54_layer_5nn_component_bias_m:>
+assignvariableop_55_layer__1_input_kernel_v:		�8
)assignvariableop_56_layer__1_input_bias_v:	�F
3assignvariableop_57_layer_0dense_component_kernel_v:		�D
0assignvariableop_58_layer_0nn_component_kernel_v:
��=
.assignvariableop_59_layer_0nn_component_bias_v:	�F
3assignvariableop_60_layer_1dense_component_kernel_v:		�D
0assignvariableop_61_layer_1nn_component_kernel_v:
��=
.assignvariableop_62_layer_1nn_component_bias_v:	�F
3assignvariableop_63_layer_2dense_component_kernel_v:		�D
0assignvariableop_64_layer_2nn_component_kernel_v:
��=
.assignvariableop_65_layer_2nn_component_bias_v:	�E
3assignvariableop_66_layer_5dense_component_kernel_v:	C
0assignvariableop_67_layer_5nn_component_kernel_v:	�<
.assignvariableop_68_layer_5nn_component_bias_v:
identity_70��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*�
value�B�FB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*�
value�B�FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*T
dtypesJ
H2F	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_beta_1Identity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_beta_2Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_decayIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_learning_rateIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

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
�
�
Q__inference_layer_5dense_component_layer_call_and_return_conditional_losses_56753

inputs0
matmul_readvariableop_resource:	
identity��MatMul/ReadVariableOp�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: _
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^MatMul/ReadVariableOp@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
��
�
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_60574

inputs:
,mean_shift_layer_sub_readvariableop_resource:	D
2decorrelation_layer_matmul_readvariableop_resource:		@
-layer__1_input_matmul_readvariableop_resource:		�=
.layer__1_input_biasadd_readvariableop_resource:	�H
5layer_0dense_component_matmul_readvariableop_resource:		�F
2layer_0nn_component_matmul_readvariableop_resource:
��B
3layer_0nn_component_biasadd_readvariableop_resource:	�H
5layer_1dense_component_matmul_readvariableop_resource:		�F
2layer_1nn_component_matmul_readvariableop_resource:
��B
3layer_1nn_component_biasadd_readvariableop_resource:	�H
5layer_2dense_component_matmul_readvariableop_resource:		�F
2layer_2nn_component_matmul_readvariableop_resource:
��B
3layer_2nn_component_biasadd_readvariableop_resource:	�G
5layer_5dense_component_matmul_readvariableop_resource:	E
2layer_5nn_component_matmul_readvariableop_resource:	�A
3layer_5nn_component_biasadd_readvariableop_resource:
identity��)decorrelation_layer/MatMul/ReadVariableOp�%layer_-1_input/BiasAdd/ReadVariableOp�$layer_-1_input/MatMul/ReadVariableOp�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�,layer_0dense_component/MatMul/ReadVariableOp�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�*layer_0nn_component/BiasAdd/ReadVariableOp�)layer_0nn_component/MatMul/ReadVariableOp�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�,layer_1dense_component/MatMul/ReadVariableOp�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�*layer_1nn_component/BiasAdd/ReadVariableOp�)layer_1nn_component/MatMul/ReadVariableOp�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�,layer_2dense_component/MatMul/ReadVariableOp�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�*layer_2nn_component/BiasAdd/ReadVariableOp�)layer_2nn_component/MatMul/ReadVariableOp�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�,layer_5dense_component/MatMul/ReadVariableOp�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�*layer_5nn_component/BiasAdd/ReadVariableOp�)layer_5nn_component/MatMul/ReadVariableOp�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�#mean_shift_layer/sub/ReadVariableOp�
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
:		�*
dtype0�
layer_-1_input/MatMulMatMul$decorrelation_layer/MatMul:product:0,layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%layer_-1_input/BiasAdd/ReadVariableOpReadVariableOp.layer__1_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_-1_input/BiasAddBiasAddlayer_-1_input/MatMul:product:0-layer_-1_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
layer_-1_input/EluElulayer_-1_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
,layer_0dense_component/MatMul/ReadVariableOpReadVariableOp5layer_0dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
layer_0dense_component/MatMulMatMul$decorrelation_layer/MatMul:product:04layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)layer_0nn_component/MatMul/ReadVariableOpReadVariableOp2layer_0nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_0nn_component/MatMulMatMul layer_-1_input/Elu:activations:01layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*layer_0nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_0nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_0nn_component/BiasAddBiasAdd$layer_0nn_component/MatMul:product:02layer_0nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
add_component_0/addAddV2'layer_0dense_component/MatMul:product:0$layer_0nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:����������`
tf.nn.elu/EluEluadd_component_0/add:z:0*
T0*(
_output_shapes
:�����������
,layer_1dense_component/MatMul/ReadVariableOpReadVariableOp5layer_1dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
layer_1dense_component/MatMulMatMul$decorrelation_layer/MatMul:product:04layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)layer_1nn_component/MatMul/ReadVariableOpReadVariableOp2layer_1nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_1nn_component/MatMulMatMultf.nn.elu/Elu:activations:01layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*layer_1nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_1nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_1nn_component/BiasAddBiasAdd$layer_1nn_component/MatMul:product:02layer_1nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
add_component_1/addAddV2'layer_1dense_component/MatMul:product:0$layer_1nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:����������b
tf.nn.elu_1/EluEluadd_component_1/add:z:0*
T0*(
_output_shapes
:�����������
,layer_2dense_component/MatMul/ReadVariableOpReadVariableOp5layer_2dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
layer_2dense_component/MatMulMatMul$decorrelation_layer/MatMul:product:04layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)layer_2nn_component/MatMul/ReadVariableOpReadVariableOp2layer_2nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_2nn_component/MatMulMatMultf.nn.elu_1/Elu:activations:01layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*layer_2nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_2nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_2nn_component/BiasAddBiasAdd$layer_2nn_component/MatMul:product:02layer_2nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
add_component_2/addAddV2'layer_2dense_component/MatMul:product:0$layer_2nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:����������b
tf.nn.elu_2/EluEluadd_component_2/add:z:0*
T0*(
_output_shapes
:�����������
,layer_5dense_component/MatMul/ReadVariableOpReadVariableOp5layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
layer_5dense_component/MatMulMatMul$decorrelation_layer/MatMul:product:04layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)layer_5nn_component/MatMul/ReadVariableOpReadVariableOp2layer_5nn_component_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
layer_5nn_component/MatMulMatMultf.nn.elu_2/Elu:activations:01layer_5nn_component/MatMul/ReadVariableOp:value:0*
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
:���������l
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOp-layer__1_input_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5layer_0dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2layer_0nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5layer_1dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2layer_1nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5layer_2dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2layer_2nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2layer_5nn_component_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: Z
IdentityIdentityadd/add:z:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp*^decorrelation_layer/MatMul/ReadVariableOp&^layer_-1_input/BiasAdd/ReadVariableOp%^layer_-1_input/MatMul/ReadVariableOp8^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp-^layer_0dense_component/MatMul/ReadVariableOp@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp+^layer_0nn_component/BiasAdd/ReadVariableOp*^layer_0nn_component/MatMul/ReadVariableOp=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp-^layer_1dense_component/MatMul/ReadVariableOp@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp+^layer_1nn_component/BiasAdd/ReadVariableOp*^layer_1nn_component/MatMul/ReadVariableOp=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp-^layer_2dense_component/MatMul/ReadVariableOp@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp+^layer_2nn_component/BiasAdd/ReadVariableOp*^layer_2nn_component/MatMul/ReadVariableOp=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp-^layer_5dense_component/MatMul/ReadVariableOp@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp+^layer_5nn_component/BiasAdd/ReadVariableOp*^layer_5nn_component/MatMul/ReadVariableOp=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp$^mean_shift_layer/sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������	: : : : : : : : : : : : : : : : 2V
)decorrelation_layer/MatMul/ReadVariableOp)decorrelation_layer/MatMul/ReadVariableOp2N
%layer_-1_input/BiasAdd/ReadVariableOp%layer_-1_input/BiasAdd/ReadVariableOp2L
$layer_-1_input/MatMul/ReadVariableOp$layer_-1_input/MatMul/ReadVariableOp2r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2\
,layer_0dense_component/MatMul/ReadVariableOp,layer_0dense_component/MatMul/ReadVariableOp2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2X
*layer_0nn_component/BiasAdd/ReadVariableOp*layer_0nn_component/BiasAdd/ReadVariableOp2V
)layer_0nn_component/MatMul/ReadVariableOp)layer_0nn_component/MatMul/ReadVariableOp2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2\
,layer_1dense_component/MatMul/ReadVariableOp,layer_1dense_component/MatMul/ReadVariableOp2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2X
*layer_1nn_component/BiasAdd/ReadVariableOp*layer_1nn_component/BiasAdd/ReadVariableOp2V
)layer_1nn_component/MatMul/ReadVariableOp)layer_1nn_component/MatMul/ReadVariableOp2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2\
,layer_2dense_component/MatMul/ReadVariableOp,layer_2dense_component/MatMul/ReadVariableOp2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2X
*layer_2nn_component/BiasAdd/ReadVariableOp*layer_2nn_component/BiasAdd/ReadVariableOp2V
)layer_2nn_component/MatMul/ReadVariableOp)layer_2nn_component/MatMul/ReadVariableOp2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2\
,layer_5dense_component/MatMul/ReadVariableOp,layer_5dense_component/MatMul/ReadVariableOp2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2X
*layer_5nn_component/BiasAdd/ReadVariableOp*layer_5nn_component/BiasAdd/ReadVariableOp2V
)layer_5nn_component/MatMul/ReadVariableOp)layer_5nn_component/MatMul/ReadVariableOp2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp2J
#mean_shift_layer/sub/ReadVariableOp#mean_shift_layer/sub/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�

�
b__inference___backward_layer_1dense_component_layer_call_and_return_conditional_losses_57713_57724
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:�����������
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������	*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes
:		�*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������	j

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes
:		�"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������:		�:���������	*j
forward_function_nameQO__forward_layer_1dense_component_layer_call_and_return_conditional_losses_57723:. *
(
_output_shapes
:����������:%!

_output_shapes
:		�:-)
'
_output_shapes
:���������	
�
�
H__forward_add_component_1_layer_call_and_return_conditional_losses_57705
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
(:����������:����������*w
backward_function_name][__inference___backward_add_component_1_layer_call_and_return_conditional_losses_57689_57706:P L
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
0__inference_mean_shift_layer_layer_call_fn_60713

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
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_mean_shift_layer_layer_call_and_return_conditional_losses_56542o
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

�
b__inference___backward_layer_0dense_component_layer_call_and_return_conditional_losses_57778_57789
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:�����������
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������	*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes
:		�*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������	j

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes
:		�"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������:		�:���������	*j
forward_function_nameQO__forward_layer_0dense_component_layer_call_and_return_conditional_losses_57788:. *
(
_output_shapes
:����������:%!

_output_shapes
:		�:-)
'
_output_shapes
:���������	
�
�
N__inference_layer_0nn_component_layer_call_and_return_conditional_losses_60835

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpv
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
:����������q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
[
/__inference_add_component_1_layer_call_fn_60918
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
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_1_layer_call_and_return_conditional_losses_56683a
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
ޡ
�
 __inference__wrapped_model_56528
input_1U
Gsobolev_model_icnn_closure_mean_shift_layer_sub_readvariableop_resource:	_
Msobolev_model_icnn_closure_decorrelation_layer_matmul_readvariableop_resource:		[
Hsobolev_model_icnn_closure_layer__1_input_matmul_readvariableop_resource:		�X
Isobolev_model_icnn_closure_layer__1_input_biasadd_readvariableop_resource:	�c
Psobolev_model_icnn_closure_layer_0dense_component_matmul_readvariableop_resource:		�a
Msobolev_model_icnn_closure_layer_0nn_component_matmul_readvariableop_resource:
��]
Nsobolev_model_icnn_closure_layer_0nn_component_biasadd_readvariableop_resource:	�c
Psobolev_model_icnn_closure_layer_1dense_component_matmul_readvariableop_resource:		�a
Msobolev_model_icnn_closure_layer_1nn_component_matmul_readvariableop_resource:
��]
Nsobolev_model_icnn_closure_layer_1nn_component_biasadd_readvariableop_resource:	�c
Psobolev_model_icnn_closure_layer_2dense_component_matmul_readvariableop_resource:		�a
Msobolev_model_icnn_closure_layer_2nn_component_matmul_readvariableop_resource:
��]
Nsobolev_model_icnn_closure_layer_2nn_component_biasadd_readvariableop_resource:	�b
Psobolev_model_icnn_closure_layer_5dense_component_matmul_readvariableop_resource:	`
Msobolev_model_icnn_closure_layer_5nn_component_matmul_readvariableop_resource:	�\
Nsobolev_model_icnn_closure_layer_5nn_component_biasadd_readvariableop_resource:
sobolev_model_56393
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
:		�*
dtype0�
0sobolev_model/Icnn_closure/layer_-1_input/MatMulMatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0Gsobolev_model/Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
@sobolev_model/Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOpReadVariableOpIsobolev_model_icnn_closure_layer__1_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
1sobolev_model/Icnn_closure/layer_-1_input/BiasAddBiasAdd:sobolev_model/Icnn_closure/layer_-1_input/MatMul:product:0Hsobolev_model/Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sobolev_model/Icnn_closure/layer_-1_input/EluElu:sobolev_model/Icnn_closure/layer_-1_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
Gsobolev_model/Icnn_closure/layer_0dense_component/MatMul/ReadVariableOpReadVariableOpPsobolev_model_icnn_closure_layer_0dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
8sobolev_model/Icnn_closure/layer_0dense_component/MatMulMatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0Osobolev_model/Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Dsobolev_model/Icnn_closure/layer_0nn_component/MatMul/ReadVariableOpReadVariableOpMsobolev_model_icnn_closure_layer_0nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
5sobolev_model/Icnn_closure/layer_0nn_component/MatMulMatMul;sobolev_model/Icnn_closure/layer_-1_input/Elu:activations:0Lsobolev_model/Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Esobolev_model/Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOpReadVariableOpNsobolev_model_icnn_closure_layer_0nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6sobolev_model/Icnn_closure/layer_0nn_component/BiasAddBiasAdd?sobolev_model/Icnn_closure/layer_0nn_component/MatMul:product:0Msobolev_model/Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.sobolev_model/Icnn_closure/add_component_0/addAddV2Bsobolev_model/Icnn_closure/layer_0dense_component/MatMul:product:0?sobolev_model/Icnn_closure/layer_0nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
(sobolev_model/Icnn_closure/tf.nn.elu/EluElu2sobolev_model/Icnn_closure/add_component_0/add:z:0*
T0*(
_output_shapes
:�����������
Gsobolev_model/Icnn_closure/layer_1dense_component/MatMul/ReadVariableOpReadVariableOpPsobolev_model_icnn_closure_layer_1dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
8sobolev_model/Icnn_closure/layer_1dense_component/MatMulMatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0Osobolev_model/Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Dsobolev_model/Icnn_closure/layer_1nn_component/MatMul/ReadVariableOpReadVariableOpMsobolev_model_icnn_closure_layer_1nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
5sobolev_model/Icnn_closure/layer_1nn_component/MatMulMatMul6sobolev_model/Icnn_closure/tf.nn.elu/Elu:activations:0Lsobolev_model/Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Esobolev_model/Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOpReadVariableOpNsobolev_model_icnn_closure_layer_1nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6sobolev_model/Icnn_closure/layer_1nn_component/BiasAddBiasAdd?sobolev_model/Icnn_closure/layer_1nn_component/MatMul:product:0Msobolev_model/Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.sobolev_model/Icnn_closure/add_component_1/addAddV2Bsobolev_model/Icnn_closure/layer_1dense_component/MatMul:product:0?sobolev_model/Icnn_closure/layer_1nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sobolev_model/Icnn_closure/tf.nn.elu_1/EluElu2sobolev_model/Icnn_closure/add_component_1/add:z:0*
T0*(
_output_shapes
:�����������
Gsobolev_model/Icnn_closure/layer_2dense_component/MatMul/ReadVariableOpReadVariableOpPsobolev_model_icnn_closure_layer_2dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
8sobolev_model/Icnn_closure/layer_2dense_component/MatMulMatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0Osobolev_model/Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Dsobolev_model/Icnn_closure/layer_2nn_component/MatMul/ReadVariableOpReadVariableOpMsobolev_model_icnn_closure_layer_2nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
5sobolev_model/Icnn_closure/layer_2nn_component/MatMulMatMul8sobolev_model/Icnn_closure/tf.nn.elu_1/Elu:activations:0Lsobolev_model/Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Esobolev_model/Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOpReadVariableOpNsobolev_model_icnn_closure_layer_2nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6sobolev_model/Icnn_closure/layer_2nn_component/BiasAddBiasAdd?sobolev_model/Icnn_closure/layer_2nn_component/MatMul:product:0Msobolev_model/Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.sobolev_model/Icnn_closure/add_component_2/addAddV2Bsobolev_model/Icnn_closure/layer_2dense_component/MatMul:product:0?sobolev_model/Icnn_closure/layer_2nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sobolev_model/Icnn_closure/tf.nn.elu_2/EluElu2sobolev_model/Icnn_closure/add_component_2/add:z:0*
T0*(
_output_shapes
:�����������
Gsobolev_model/Icnn_closure/layer_5dense_component/MatMul/ReadVariableOpReadVariableOpPsobolev_model_icnn_closure_layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
8sobolev_model/Icnn_closure/layer_5dense_component/MatMulMatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0Osobolev_model/Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Dsobolev_model/Icnn_closure/layer_5nn_component/MatMul/ReadVariableOpReadVariableOpMsobolev_model_icnn_closure_layer_5nn_component_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
5sobolev_model/Icnn_closure/layer_5nn_component/MatMulMatMul8sobolev_model/Icnn_closure/tf.nn.elu_2/Elu:activations:0Lsobolev_model/Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp:value:0*
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
transpose_b(�
Ogradient_tape/sobolev_model/Icnn_closure/layer_5dense_component/MatMul/MatMul_1MatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0Agradient_tape/sobolev_model/Icnn_closure/add/add/Reshape:output:0*
T0*
_output_shapes

:	*
transpose_a(�
Pgradient_tape/sobolev_model/Icnn_closure/layer_5nn_component/BiasAdd/BiasAddGradBiasAddGradCgradient_tape/sobolev_model/Icnn_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes
:�
Jgradient_tape/sobolev_model/Icnn_closure/layer_5nn_component/MatMul/MatMulMatMulCgradient_tape/sobolev_model/Icnn_closure/add/add/Reshape_1:output:0Lsobolev_model/Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Lgradient_tape/sobolev_model/Icnn_closure/layer_5nn_component/MatMul/MatMul_1MatMul8sobolev_model/Icnn_closure/tf.nn.elu_2/Elu:activations:0Cgradient_tape/sobolev_model/Icnn_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes
:	�*
transpose_a(�
<gradient_tape/sobolev_model/Icnn_closure/tf.nn.elu_2/EluGradEluGradTgradient_tape/sobolev_model/Icnn_closure/layer_5nn_component/MatMul/MatMul:product:08sobolev_model/Icnn_closure/tf.nn.elu_2/Elu:activations:0*
T0*(
_output_shapes
:�����������
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
@gradient_tape/sobolev_model/Icnn_closure/add_component_2/add/SumSumHgradient_tape/sobolev_model/Icnn_closure/tf.nn.elu_2/EluGrad:backprops:0Wgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/ReshapeReshapeIgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Sum:output:0Kgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Shape:output:0*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Sum_1SumHgradient_tape/sobolev_model/Icnn_closure/tf.nn.elu_2/EluGrad:backprops:0Wgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape_1ReshapeKgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Sum_1:output:0Mgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Mgradient_tape/sobolev_model/Icnn_closure/layer_2dense_component/MatMul/MatMulMatMulMgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape:output:0Osobolev_model/Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
transpose_b(�
Ogradient_tape/sobolev_model/Icnn_closure/layer_2dense_component/MatMul/MatMul_1MatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0Mgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape:output:0*
T0*
_output_shapes
:		�*
transpose_a(�
Pgradient_tape/sobolev_model/Icnn_closure/layer_2nn_component/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Jgradient_tape/sobolev_model/Icnn_closure/layer_2nn_component/MatMul/MatMulMatMulOgradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape_1:output:0Lsobolev_model/Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Lgradient_tape/sobolev_model/Icnn_closure/layer_2nn_component/MatMul/MatMul_1MatMul8sobolev_model/Icnn_closure/tf.nn.elu_1/Elu:activations:0Ogradient_tape/sobolev_model/Icnn_closure/add_component_2/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
<gradient_tape/sobolev_model/Icnn_closure/tf.nn.elu_1/EluGradEluGradTgradient_tape/sobolev_model/Icnn_closure/layer_2nn_component/MatMul/MatMul:product:08sobolev_model/Icnn_closure/tf.nn.elu_1/Elu:activations:0*
T0*(
_output_shapes
:�����������
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
@gradient_tape/sobolev_model/Icnn_closure/add_component_1/add/SumSumHgradient_tape/sobolev_model/Icnn_closure/tf.nn.elu_1/EluGrad:backprops:0Wgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/ReshapeReshapeIgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Sum:output:0Kgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Shape:output:0*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Sum_1SumHgradient_tape/sobolev_model/Icnn_closure/tf.nn.elu_1/EluGrad:backprops:0Wgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape_1ReshapeKgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Sum_1:output:0Mgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Mgradient_tape/sobolev_model/Icnn_closure/layer_1dense_component/MatMul/MatMulMatMulMgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape:output:0Osobolev_model/Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
transpose_b(�
Ogradient_tape/sobolev_model/Icnn_closure/layer_1dense_component/MatMul/MatMul_1MatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0Mgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape:output:0*
T0*
_output_shapes
:		�*
transpose_a(�
Pgradient_tape/sobolev_model/Icnn_closure/layer_1nn_component/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Jgradient_tape/sobolev_model/Icnn_closure/layer_1nn_component/MatMul/MatMulMatMulOgradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape_1:output:0Lsobolev_model/Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Lgradient_tape/sobolev_model/Icnn_closure/layer_1nn_component/MatMul/MatMul_1MatMul6sobolev_model/Icnn_closure/tf.nn.elu/Elu:activations:0Ogradient_tape/sobolev_model/Icnn_closure/add_component_1/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
:gradient_tape/sobolev_model/Icnn_closure/tf.nn.elu/EluGradEluGradTgradient_tape/sobolev_model/Icnn_closure/layer_1nn_component/MatMul/MatMul:product:06sobolev_model/Icnn_closure/tf.nn.elu/Elu:activations:0*
T0*(
_output_shapes
:�����������
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
@gradient_tape/sobolev_model/Icnn_closure/add_component_0/add/SumSumFgradient_tape/sobolev_model/Icnn_closure/tf.nn.elu/EluGrad:backprops:0Wgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
Dgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/ReshapeReshapeIgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Sum:output:0Kgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Shape:output:0*
T0*(
_output_shapes
:�����������
Bgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Sum_1SumFgradient_tape/sobolev_model/Icnn_closure/tf.nn.elu/EluGrad:backprops:0Wgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
Fgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape_1ReshapeKgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Sum_1:output:0Mgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
Mgradient_tape/sobolev_model/Icnn_closure/layer_0dense_component/MatMul/MatMulMatMulMgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape:output:0Osobolev_model/Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
transpose_b(�
Ogradient_tape/sobolev_model/Icnn_closure/layer_0dense_component/MatMul/MatMul_1MatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0Mgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape:output:0*
T0*
_output_shapes
:		�*
transpose_a(�
Pgradient_tape/sobolev_model/Icnn_closure/layer_0nn_component/BiasAdd/BiasAddGradBiasAddGradOgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
Jgradient_tape/sobolev_model/Icnn_closure/layer_0nn_component/MatMul/MatMulMatMulOgradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape_1:output:0Lsobolev_model/Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
Lgradient_tape/sobolev_model/Icnn_closure/layer_0nn_component/MatMul/MatMul_1MatMul;sobolev_model/Icnn_closure/layer_-1_input/Elu:activations:0Ogradient_tape/sobolev_model/Icnn_closure/add_component_0/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
?gradient_tape/sobolev_model/Icnn_closure/layer_-1_input/EluGradEluGradTgradient_tape/sobolev_model/Icnn_closure/layer_0nn_component/MatMul/MatMul:product:0;sobolev_model/Icnn_closure/layer_-1_input/Elu:activations:0*
T0*(
_output_shapes
:�����������
Kgradient_tape/sobolev_model/Icnn_closure/layer_-1_input/BiasAdd/BiasAddGradBiasAddGradKgradient_tape/sobolev_model/Icnn_closure/layer_-1_input/EluGrad:backprops:0*
T0*
_output_shapes	
:��
Egradient_tape/sobolev_model/Icnn_closure/layer_-1_input/MatMul/MatMulMatMulKgradient_tape/sobolev_model/Icnn_closure/layer_-1_input/EluGrad:backprops:0Gsobolev_model/Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
transpose_b(�
Ggradient_tape/sobolev_model/Icnn_closure/layer_-1_input/MatMul/MatMul_1MatMul?sobolev_model/Icnn_closure/decorrelation_layer/MatMul:product:0Kgradient_tape/sobolev_model/Icnn_closure/layer_-1_input/EluGrad:backprops:0*
T0*
_output_shapes
:		�*
transpose_a(�
sobolev_model/AddNAddNWgradient_tape/sobolev_model/Icnn_closure/layer_5dense_component/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/Icnn_closure/layer_2dense_component/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/Icnn_closure/layer_1dense_component/MatMul/MatMul:product:0Wgradient_tape/sobolev_model/Icnn_closure/layer_0dense_component/MatMul/MatMul:product:0Ogradient_tape/sobolev_model/Icnn_closure/layer_-1_input/MatMul/MatMul:product:0*
N*
T0*'
_output_shapes
:���������	�
Jgradient_tape/sobolev_model/Icnn_closure/decorrelation_layer/MatMul/MatMulMatMulsobolev_model/AddN:sum:0Lsobolev_model/Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
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
:���������	�
sobolev_model/CastCastNgradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/Reshape:output:0*

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
sobolev_model/strided_sliceStridedSlicesobolev_model_56393*sobolev_model/strided_slice/stack:output:0,sobolev_model/strided_slice/stack_1:output:0,sobolev_model/strided_slice/stack_2:output:0*
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
valueB"      v
%sobolev_model/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
sobolev_model/strided_slice_1StridedSlicesobolev_model_56393,sobolev_model/strided_slice_1/stack:output:0.sobolev_model/strided_slice_1/stack_1:output:0.sobolev_model/strided_slice_1/stack_2:output:0*
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
sobolev_model/strided_slice_2StridedSlicesobolev_model_56393,sobolev_model/strided_slice_2/stack:output:0.sobolev_model/strided_slice_2/stack_1:output:0.sobolev_model/strided_slice_2/stack_2:output:0*
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
 sobolev_model/Tensordot_2/MatMulMatMul*sobolev_model/Tensordot_2/Reshape:output:0sobolev_model_56393*
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
sobolev_model/strided_slice_3StridedSlicesobolev_model_56393,sobolev_model/strided_slice_3/stack:output:0.sobolev_model/strided_slice_3/stack_1:output:0.sobolev_model/strided_slice_3/stack_2:output:0*
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
%sobolev_model/Tensordot_3/transpose_1	Transpose&sobolev_model/strided_slice_3:output:03sobolev_model/Tensordot_3/transpose_1/perm:output:0*
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
sobolev_model/add_1AddV2"sobolev_model/Tensordot_3:output:0sobolev_model/Mul_1:z:0*
T0*'
_output_shapes
:���������
t
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
:���������	*

begin_mask*
end_masku
IdentityIdentity&sobolev_model/Icnn_closure/add/add:z:0^NoOp*
T0*'
_output_shapes
:����������

Identity_1IdentityNgradient_tape/sobolev_model/Icnn_closure/mean_shift_layer/sub/Reshape:output:0^NoOp*
T0*'
_output_shapes
:���������	w

Identity_2Identity&sobolev_model/strided_slice_4:output:0^NoOp*
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

�
v
J__inference_add_component_1_layer_call_and_return_conditional_losses_60924
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
�
�
N__inference_layer_2nn_component_layer_call_and_return_conditional_losses_60989

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpv
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
:����������q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
3__inference_layer_1nn_component_layer_call_fn_60894

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
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_1nn_component_layer_call_and_return_conditional_losses_56671p
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
�
�
___inference___backward_layer_1nn_component_layer_call_and_return_conditional_losses_57731_57744
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
��:����������*g
forward_function_nameNL__forward_layer_1nn_component_layer_call_and_return_conditional_losses_57743:. *
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
N__inference_decorrelation_layer_layer_call_and_return_conditional_losses_56553

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
__inference__traced_save_61430
file_prefix%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	'
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
value�B�FB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/7/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/8/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/9/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*�
value�B�FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop0savev2_layer__1_input_kernel_read_readvariableop.savev2_layer__1_input_bias_read_readvariableop8savev2_layer_0dense_component_kernel_read_readvariableop5savev2_layer_0nn_component_kernel_read_readvariableop3savev2_layer_0nn_component_bias_read_readvariableop8savev2_layer_1dense_component_kernel_read_readvariableop5savev2_layer_1nn_component_kernel_read_readvariableop3savev2_layer_1nn_component_bias_read_readvariableop8savev2_layer_2dense_component_kernel_read_readvariableop5savev2_layer_2nn_component_kernel_read_readvariableop3savev2_layer_2nn_component_bias_read_readvariableop8savev2_layer_5dense_component_kernel_read_readvariableop5savev2_layer_5nn_component_kernel_read_readvariableop3savev2_layer_5nn_component_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop"savev2_total_7_read_readvariableop"savev2_count_7_read_readvariableop"savev2_total_8_read_readvariableop"savev2_count_8_read_readvariableop"savev2_total_9_read_readvariableop"savev2_count_9_read_readvariableop2savev2_layer__1_input_kernel_m_read_readvariableop0savev2_layer__1_input_bias_m_read_readvariableop:savev2_layer_0dense_component_kernel_m_read_readvariableop7savev2_layer_0nn_component_kernel_m_read_readvariableop5savev2_layer_0nn_component_bias_m_read_readvariableop:savev2_layer_1dense_component_kernel_m_read_readvariableop7savev2_layer_1nn_component_kernel_m_read_readvariableop5savev2_layer_1nn_component_bias_m_read_readvariableop:savev2_layer_2dense_component_kernel_m_read_readvariableop7savev2_layer_2nn_component_kernel_m_read_readvariableop5savev2_layer_2nn_component_bias_m_read_readvariableop:savev2_layer_5dense_component_kernel_m_read_readvariableop7savev2_layer_5nn_component_kernel_m_read_readvariableop5savev2_layer_5nn_component_bias_m_read_readvariableop2savev2_layer__1_input_kernel_v_read_readvariableop0savev2_layer__1_input_bias_v_read_readvariableop:savev2_layer_0dense_component_kernel_v_read_readvariableop7savev2_layer_0nn_component_kernel_v_read_readvariableop5savev2_layer_0nn_component_bias_v_read_readvariableop:savev2_layer_1dense_component_kernel_v_read_readvariableop7savev2_layer_1nn_component_kernel_v_read_readvariableop5savev2_layer_1nn_component_bias_v_read_readvariableop:savev2_layer_2dense_component_kernel_v_read_readvariableop7savev2_layer_2nn_component_kernel_v_read_readvariableop5savev2_layer_2nn_component_bias_v_read_readvariableop:savev2_layer_5dense_component_kernel_v_read_readvariableop7savev2_layer_5nn_component_kernel_v_read_readvariableop5savev2_layer_5nn_component_bias_v_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *T
dtypesJ
H2F	�
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
�: : : : : : :	:		:		�:�:		�:
��:�:		�:
��:�:		�:
��:�:	:	�:: : : : : : : : : : : : : : : : : : : : :		�:�:		�:
��:�:		�:
��:�:		�:
��:�:	:	�::		�:�:		�:
��:�:		�:
��:�:		�:
��:�:	:	�:: 2(
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

:		:%!

_output_shapes
:		�:!	

_output_shapes	
:�:%
!

_output_shapes
:		�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:		�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:		�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:$ 

_output_shapes

:	:%!

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
:		�:!+

_output_shapes	
:�:%,!

_output_shapes
:		�:&-"
 
_output_shapes
:
��:!.

_output_shapes	
:�:%/!

_output_shapes
:		�:&0"
 
_output_shapes
:
��:!1

_output_shapes	
:�:%2!

_output_shapes
:		�:&3"
 
_output_shapes
:
��:!4

_output_shapes	
:�:$5 

_output_shapes

:	:%6!

_output_shapes
:	�: 7

_output_shapes
::%8!

_output_shapes
:		�:!9

_output_shapes	
:�:%:!

_output_shapes
:		�:&;"
 
_output_shapes
:
��:!<

_output_shapes	
:�:%=!

_output_shapes
:		�:&>"
 
_output_shapes
:
��:!?

_output_shapes	
:�:%@!

_output_shapes
:		�:&A"
 
_output_shapes
:
��:!B

_output_shapes	
:�:$C 

_output_shapes

:	:%D!

_output_shapes
:	�: E

_output_shapes
::F

_output_shapes
: 
�
�
N__inference_layer_5nn_component_layer_call_and_return_conditional_losses_61066

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpu
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
:���������q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_layer_1dense_component_layer_call_and_return_conditional_losses_56649

inputs1
matmul_readvariableop_resource:		�
identity��MatMul/ReadVariableOp�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityMatMul:product:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�

�
b__inference___backward_layer_2dense_component_layer_call_and_return_conditional_losses_57648_57659
placeholder6
2gradients_matmul_grad_matmul_matmul_readvariableop)
%gradients_matmul_grad_matmul_1_inputs
identity

identity_1_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:�����������
gradients/MatMul_grad/MatMulMatMulgradients/grad_ys_0:output:02gradients_matmul_grad_matmul_matmul_readvariableop*
T0*'
_output_shapes
:���������	*
transpose_b(�
gradients/MatMul_grad/MatMul_1MatMul%gradients_matmul_grad_matmul_1_inputsgradients/grad_ys_0:output:0*
T0*
_output_shapes
:		�*
transpose_a(n
IdentityIdentity&gradients/MatMul_grad/MatMul:product:0*
T0*'
_output_shapes
:���������	j

Identity_1Identity(gradients/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes
:		�"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������:		�:���������	*j
forward_function_nameQO__forward_layer_2dense_component_layer_call_and_return_conditional_losses_57658:. *
(
_output_shapes
:����������:%!

_output_shapes
:		�:-)
'
_output_shapes
:���������	
�
�
N__inference_layer_2nn_component_layer_call_and_return_conditional_losses_56723

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpv
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
:����������q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
O__forward_layer_2dense_component_layer_call_and_return_conditional_losses_57658
inputs_01
matmul_readvariableop_resource:		�
identity
matmul_readvariableop

inputs��MatMul/ReadVariableOp�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0l
MatMulMatMulinputs_0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityMatMul:product:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"
inputsinputs_0"6
matmul_readvariableopMatMul/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: *~
backward_function_namedb__inference___backward_layer_2dense_component_layer_call_and_return_conditional_losses_57648_576592.
MatMul/ReadVariableOpMatMul/ReadVariableOp2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
��
�
E__forward_Icnn_closure_layer_call_and_return_conditional_losses_57903

inputs$
mean_shift_layer_56543:	+
decorrelation_layer_56554:		'
layer__1_input_56577:		�#
layer__1_input_56579:	�/
layer_0dense_component_56598:		�-
layer_0nn_component_56620:
��(
layer_0nn_component_56622:	�/
layer_1dense_component_56650:		�-
layer_1nn_component_56672:
��(
layer_1nn_component_56674:	�/
layer_2dense_component_56702:		�-
layer_2nn_component_56724:
��(
layer_2nn_component_56726:	�.
layer_5dense_component_56754:	,
layer_5nn_component_56776:	�'
layer_5nn_component_56778:
identity
add_partitionedcall
add_partitionedcall_02
.layer_5dense_component_statefulpartitionedcall4
0layer_5dense_component_statefulpartitionedcall_0/
+layer_5nn_component_statefulpartitionedcall1
-layer_5nn_component_statefulpartitionedcall_0
tf_nn_elu_2_elu#
add_component_2_partitionedcall%
!add_component_2_partitionedcall_02
.layer_2dense_component_statefulpartitionedcall4
0layer_2dense_component_statefulpartitionedcall_0/
+layer_2nn_component_statefulpartitionedcall1
-layer_2nn_component_statefulpartitionedcall_0
tf_nn_elu_1_elu#
add_component_1_partitionedcall%
!add_component_1_partitionedcall_02
.layer_1dense_component_statefulpartitionedcall4
0layer_1dense_component_statefulpartitionedcall_0/
+layer_1nn_component_statefulpartitionedcall1
-layer_1nn_component_statefulpartitionedcall_0
tf_nn_elu_elu#
add_component_0_partitionedcall%
!add_component_0_partitionedcall_02
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
*mean_shift_layer_statefulpartitionedcall_0��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�.layer_0dense_component/StatefulPartitionedCall�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_0nn_component/StatefulPartitionedCall�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_1dense_component/StatefulPartitionedCall�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_1nn_component/StatefulPartitionedCall�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_2dense_component/StatefulPartitionedCall�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_2nn_component/StatefulPartitionedCall�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_5dense_component/StatefulPartitionedCall�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_5nn_component/StatefulPartitionedCall�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinputsmean_shift_layer_56543*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:���������	:���������	:	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__forward_mean_shift_layer_layer_call_and_return_conditional_losses_57878�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_56554*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������	:		:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__forward_decorrelation_layer_layer_call_and_return_conditional_losses_57853�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_56577layer__1_input_56579*
Tin
2*
Tout
2*
_collective_manager_ids
 *Z
_output_shapesH
F:����������:����������:		�:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__forward_layer_-1_input_layer_call_and_return_conditional_losses_57831�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_0dense_component_56598*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:����������:		�:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__forward_layer_0dense_component_layer_call_and_return_conditional_losses_57788�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_56620layer_0nn_component_56622*
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
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__forward_layer_0nn_component_layer_call_and_return_conditional_losses_57808�
add_component_0/PartitionedCallPartitionedCall7layer_0dense_component/StatefulPartitionedCall:output:04layer_0nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__forward_add_component_0_layer_call_and_return_conditional_losses_57770q
tf.nn.elu/EluElu(add_component_0/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_1dense_component_56650*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:����������:		�:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__forward_layer_1dense_component_layer_call_and_return_conditional_losses_57723�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu/Elu:activations:0layer_1nn_component_56672layer_1nn_component_56674*
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
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__forward_layer_1nn_component_layer_call_and_return_conditional_losses_57743�
add_component_1/PartitionedCallPartitionedCall7layer_1dense_component/StatefulPartitionedCall:output:04layer_1nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__forward_add_component_1_layer_call_and_return_conditional_losses_57705s
tf.nn.elu_1/EluElu(add_component_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_2dense_component_56702*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:����������:		�:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__forward_layer_2dense_component_layer_call_and_return_conditional_losses_57658�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_1/Elu:activations:0layer_2nn_component_56724layer_2nn_component_56726*
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
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__forward_layer_2nn_component_layer_call_and_return_conditional_losses_57678�
add_component_2/PartitionedCallPartitionedCall7layer_2dense_component/StatefulPartitionedCall:output:04layer_2nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__forward_add_component_2_layer_call_and_return_conditional_losses_57640s
tf.nn.elu_2/EluElu(add_component_2/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_5dense_component_56754*
Tin
2*
Tout
2*
_collective_manager_ids
 *D
_output_shapes2
0:���������:	:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__forward_layer_5dense_component_layer_call_and_return_conditional_losses_57593�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_2/Elu:activations:0layer_5nn_component_56776layer_5nn_component_56778*
Tin
2*
Tout
2*
_collective_manager_ids
 *F
_output_shapes4
2:���������:	�:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__forward_layer_5nn_component_layer_call_and_return_conditional_losses_57613�
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
 *-
config_proto

CPU

GPU 2J 8� *E
f@R>
<__forward_add_layer_call_and_return_conditional_losses_57575l
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer__1_input_56577*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_0dense_component_56598*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_0nn_component_56620* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_1dense_component_56650*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_1nn_component_56672* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_2dense_component_56702*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_2nn_component_56724* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_5dense_component_56754*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_5nn_component_56776*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: k
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp,^decorrelation_layer/StatefulPartitionedCall'^layer_-1_input/StatefulPartitionedCall8^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp/^layer_0dense_component/StatefulPartitionedCall@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_0nn_component/StatefulPartitionedCall=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_1dense_component/StatefulPartitionedCall@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_1nn_component/StatefulPartitionedCall=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_2dense_component/StatefulPartitionedCall@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_2nn_component/StatefulPartitionedCall=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_5dense_component/StatefulPartitionedCall@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_5nn_component/StatefulPartitionedCall=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "K
add_component_0_partitionedcall(add_component_0/PartitionedCall:output:1"M
!add_component_0_partitionedcall_0(add_component_0/PartitionedCall:output:2"K
add_component_1_partitionedcall(add_component_1/PartitionedCall:output:1"M
!add_component_1_partitionedcall_0(add_component_1/PartitionedCall:output:2"K
add_component_2_partitionedcall(add_component_2/PartitionedCall:output:1"M
!add_component_2_partitionedcall_0(add_component_2/PartitionedCall:output:2"3
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
*mean_shift_layer_statefulpartitionedcall_01mean_shift_layer/StatefulPartitionedCall:output:2"0
tf_nn_elu_1_elutf.nn.elu_1/Elu:activations:0"0
tf_nn_elu_2_elutf.nn.elu_2/Elu:activations:0",
tf_nn_elu_elutf.nn.elu/Elu:activations:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������	: : : : : : : : : : : : : : : : *t
backward_function_nameZX__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_57555_579042Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2P
&layer_-1_input/StatefulPartitionedCall&layer_-1_input/StatefulPartitionedCall2r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2`
.layer_0dense_component/StatefulPartitionedCall.layer_0dense_component/StatefulPartitionedCall2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_0nn_component/StatefulPartitionedCall+layer_0nn_component/StatefulPartitionedCall2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_1dense_component/StatefulPartitionedCall.layer_1dense_component/StatefulPartitionedCall2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_1nn_component/StatefulPartitionedCall+layer_1nn_component/StatefulPartitionedCall2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_2dense_component/StatefulPartitionedCall.layer_2dense_component/StatefulPartitionedCall2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_2nn_component/StatefulPartitionedCall+layer_2nn_component/StatefulPartitionedCall2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_5dense_component/StatefulPartitionedCall.layer_5dense_component/StatefulPartitionedCall2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_5nn_component/StatefulPartitionedCall+layer_5nn_component/StatefulPartitionedCall2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_61104[
Hlayer_0dense_component_kernel_regularizer_square_readvariableop_resource:		�
identity��?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpt
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpHlayer_0dense_component_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: o
IdentityIdentity1layer_0dense_component/kernel/Regularizer/add:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp
�
�
6__inference_layer_2dense_component_layer_call_fn_60939

inputs
unknown:		�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_2dense_component_layer_call_and_return_conditional_losses_56701p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
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
�
,__inference_Icnn_closure_layer_call_fn_57260
input_1
unknown:	
	unknown_0:		
	unknown_1:		�
	unknown_2:	�
	unknown_3:		�
	unknown_4:
��
	unknown_5:	�
	unknown_6:		�
	unknown_7:
��
	unknown_8:	�
	unknown_9:		�

unknown_10:
��

unknown_11:	�

unknown_12:	

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
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_57188o
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
�
�
-__inference_sobolev_model_layer_call_fn_59612
x
unknown:	
	unknown_0:		
	unknown_1:		�
	unknown_2:	�
	unknown_3:		�
	unknown_4:
��
	unknown_5:	�
	unknown_6:		�
	unknown_7:
��
	unknown_8:	�
	unknown_9:		�

unknown_10:
��

unknown_11:	�

unknown_12:	

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
9:���������:���������	:���������	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sobolev_model_layer_call_and_return_conditional_losses_58693o
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

�
�
I__inference_layer_-1_input_layer_call_and_return_conditional_losses_56576

inputs1
matmul_readvariableop_resource:		�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
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
:����������O
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:����������l
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: a
IdentityIdentityElu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp8^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
��
�
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_60706

inputs:
,mean_shift_layer_sub_readvariableop_resource:	D
2decorrelation_layer_matmul_readvariableop_resource:		@
-layer__1_input_matmul_readvariableop_resource:		�=
.layer__1_input_biasadd_readvariableop_resource:	�H
5layer_0dense_component_matmul_readvariableop_resource:		�F
2layer_0nn_component_matmul_readvariableop_resource:
��B
3layer_0nn_component_biasadd_readvariableop_resource:	�H
5layer_1dense_component_matmul_readvariableop_resource:		�F
2layer_1nn_component_matmul_readvariableop_resource:
��B
3layer_1nn_component_biasadd_readvariableop_resource:	�H
5layer_2dense_component_matmul_readvariableop_resource:		�F
2layer_2nn_component_matmul_readvariableop_resource:
��B
3layer_2nn_component_biasadd_readvariableop_resource:	�G
5layer_5dense_component_matmul_readvariableop_resource:	E
2layer_5nn_component_matmul_readvariableop_resource:	�A
3layer_5nn_component_biasadd_readvariableop_resource:
identity��)decorrelation_layer/MatMul/ReadVariableOp�%layer_-1_input/BiasAdd/ReadVariableOp�$layer_-1_input/MatMul/ReadVariableOp�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�,layer_0dense_component/MatMul/ReadVariableOp�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�*layer_0nn_component/BiasAdd/ReadVariableOp�)layer_0nn_component/MatMul/ReadVariableOp�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�,layer_1dense_component/MatMul/ReadVariableOp�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�*layer_1nn_component/BiasAdd/ReadVariableOp�)layer_1nn_component/MatMul/ReadVariableOp�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�,layer_2dense_component/MatMul/ReadVariableOp�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�*layer_2nn_component/BiasAdd/ReadVariableOp�)layer_2nn_component/MatMul/ReadVariableOp�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�,layer_5dense_component/MatMul/ReadVariableOp�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�*layer_5nn_component/BiasAdd/ReadVariableOp�)layer_5nn_component/MatMul/ReadVariableOp�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�#mean_shift_layer/sub/ReadVariableOp�
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
:		�*
dtype0�
layer_-1_input/MatMulMatMul$decorrelation_layer/MatMul:product:0,layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%layer_-1_input/BiasAdd/ReadVariableOpReadVariableOp.layer__1_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_-1_input/BiasAddBiasAddlayer_-1_input/MatMul:product:0-layer_-1_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
layer_-1_input/EluElulayer_-1_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
,layer_0dense_component/MatMul/ReadVariableOpReadVariableOp5layer_0dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
layer_0dense_component/MatMulMatMul$decorrelation_layer/MatMul:product:04layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)layer_0nn_component/MatMul/ReadVariableOpReadVariableOp2layer_0nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_0nn_component/MatMulMatMul layer_-1_input/Elu:activations:01layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*layer_0nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_0nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_0nn_component/BiasAddBiasAdd$layer_0nn_component/MatMul:product:02layer_0nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
add_component_0/addAddV2'layer_0dense_component/MatMul:product:0$layer_0nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:����������`
tf.nn.elu/EluEluadd_component_0/add:z:0*
T0*(
_output_shapes
:�����������
,layer_1dense_component/MatMul/ReadVariableOpReadVariableOp5layer_1dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
layer_1dense_component/MatMulMatMul$decorrelation_layer/MatMul:product:04layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)layer_1nn_component/MatMul/ReadVariableOpReadVariableOp2layer_1nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_1nn_component/MatMulMatMultf.nn.elu/Elu:activations:01layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*layer_1nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_1nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_1nn_component/BiasAddBiasAdd$layer_1nn_component/MatMul:product:02layer_1nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
add_component_1/addAddV2'layer_1dense_component/MatMul:product:0$layer_1nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:����������b
tf.nn.elu_1/EluEluadd_component_1/add:z:0*
T0*(
_output_shapes
:�����������
,layer_2dense_component/MatMul/ReadVariableOpReadVariableOp5layer_2dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
layer_2dense_component/MatMulMatMul$decorrelation_layer/MatMul:product:04layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)layer_2nn_component/MatMul/ReadVariableOpReadVariableOp2layer_2nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
layer_2nn_component/MatMulMatMultf.nn.elu_1/Elu:activations:01layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*layer_2nn_component/BiasAdd/ReadVariableOpReadVariableOp3layer_2nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
layer_2nn_component/BiasAddBiasAdd$layer_2nn_component/MatMul:product:02layer_2nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
add_component_2/addAddV2'layer_2dense_component/MatMul:product:0$layer_2nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:����������b
tf.nn.elu_2/EluEluadd_component_2/add:z:0*
T0*(
_output_shapes
:�����������
,layer_5dense_component/MatMul/ReadVariableOpReadVariableOp5layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
layer_5dense_component/MatMulMatMul$decorrelation_layer/MatMul:product:04layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)layer_5nn_component/MatMul/ReadVariableOpReadVariableOp2layer_5nn_component_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
layer_5nn_component/MatMulMatMultf.nn.elu_2/Elu:activations:01layer_5nn_component/MatMul/ReadVariableOp:value:0*
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
:���������l
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOp-layer__1_input_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5layer_0dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2layer_0nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5layer_1dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2layer_1nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5layer_2dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2layer_2nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp2layer_5nn_component_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: Z
IdentityIdentityadd/add:z:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp*^decorrelation_layer/MatMul/ReadVariableOp&^layer_-1_input/BiasAdd/ReadVariableOp%^layer_-1_input/MatMul/ReadVariableOp8^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp-^layer_0dense_component/MatMul/ReadVariableOp@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp+^layer_0nn_component/BiasAdd/ReadVariableOp*^layer_0nn_component/MatMul/ReadVariableOp=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp-^layer_1dense_component/MatMul/ReadVariableOp@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp+^layer_1nn_component/BiasAdd/ReadVariableOp*^layer_1nn_component/MatMul/ReadVariableOp=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp-^layer_2dense_component/MatMul/ReadVariableOp@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp+^layer_2nn_component/BiasAdd/ReadVariableOp*^layer_2nn_component/MatMul/ReadVariableOp=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp-^layer_5dense_component/MatMul/ReadVariableOp@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp+^layer_5nn_component/BiasAdd/ReadVariableOp*^layer_5nn_component/MatMul/ReadVariableOp=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp$^mean_shift_layer/sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������	: : : : : : : : : : : : : : : : 2V
)decorrelation_layer/MatMul/ReadVariableOp)decorrelation_layer/MatMul/ReadVariableOp2N
%layer_-1_input/BiasAdd/ReadVariableOp%layer_-1_input/BiasAdd/ReadVariableOp2L
$layer_-1_input/MatMul/ReadVariableOp$layer_-1_input/MatMul/ReadVariableOp2r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2\
,layer_0dense_component/MatMul/ReadVariableOp,layer_0dense_component/MatMul/ReadVariableOp2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2X
*layer_0nn_component/BiasAdd/ReadVariableOp*layer_0nn_component/BiasAdd/ReadVariableOp2V
)layer_0nn_component/MatMul/ReadVariableOp)layer_0nn_component/MatMul/ReadVariableOp2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2\
,layer_1dense_component/MatMul/ReadVariableOp,layer_1dense_component/MatMul/ReadVariableOp2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2X
*layer_1nn_component/BiasAdd/ReadVariableOp*layer_1nn_component/BiasAdd/ReadVariableOp2V
)layer_1nn_component/MatMul/ReadVariableOp)layer_1nn_component/MatMul/ReadVariableOp2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2\
,layer_2dense_component/MatMul/ReadVariableOp,layer_2dense_component/MatMul/ReadVariableOp2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2X
*layer_2nn_component/BiasAdd/ReadVariableOp*layer_2nn_component/BiasAdd/ReadVariableOp2V
)layer_2nn_component/MatMul/ReadVariableOp)layer_2nn_component/MatMul/ReadVariableOp2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2\
,layer_5dense_component/MatMul/ReadVariableOp,layer_5dense_component/MatMul/ReadVariableOp2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2X
*layer_5nn_component/BiasAdd/ReadVariableOp*layer_5nn_component/BiasAdd/ReadVariableOp2V
)layer_5nn_component/MatMul/ReadVariableOp)layer_5nn_component/MatMul/ReadVariableOp2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp2J
#mean_shift_layer/sub/ReadVariableOp#mean_shift_layer/sub/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
�
__inference_loss_fn_6_61169Y
Elayer_2nn_component_kernel_regularizer_square_readvariableop_resource:
��
identity��<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpq
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpElayer_2nn_component_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: l
IdentityIdentity.layer_2nn_component/kernel/Regularizer/add:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp
�
�
___inference___backward_layer_5nn_component_layer_call_and_return_conditional_losses_57601_57614
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
2:���������:	�:����������*g
forward_function_nameNL__forward_layer_5nn_component_layer_call_and_return_conditional_losses_57613:- )
'
_output_shapes
:���������:%!

_output_shapes
:	�:.*
(
_output_shapes
:����������
�
t
J__inference_add_component_2_layer_call_and_return_conditional_losses_56735

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
�
�
__inference_loss_fn_8_61195X
Elayer_5nn_component_kernel_regularizer_square_readvariableop_resource:	�
identity��<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpq
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpElayer_5nn_component_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: l
IdentityIdentity.layer_5nn_component/kernel/Regularizer/add:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp
�
�
I__inference_layer_-1_input_layer_call_and_return_conditional_losses_60770

inputs1
matmul_readvariableop_resource:		�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
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
:����������O
EluEluBiasAdd:output:0*
T0*(
_output_shapes
:����������l
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: a
IdentityIdentityElu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp8^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
��
�
H__inference_sobolev_model_layer_call_and_return_conditional_losses_59954
xG
9icnn_closure_mean_shift_layer_sub_readvariableop_resource:	Q
?icnn_closure_decorrelation_layer_matmul_readvariableop_resource:		M
:icnn_closure_layer__1_input_matmul_readvariableop_resource:		�J
;icnn_closure_layer__1_input_biasadd_readvariableop_resource:	�U
Bicnn_closure_layer_0dense_component_matmul_readvariableop_resource:		�S
?icnn_closure_layer_0nn_component_matmul_readvariableop_resource:
��O
@icnn_closure_layer_0nn_component_biasadd_readvariableop_resource:	�U
Bicnn_closure_layer_1dense_component_matmul_readvariableop_resource:		�S
?icnn_closure_layer_1nn_component_matmul_readvariableop_resource:
��O
@icnn_closure_layer_1nn_component_biasadd_readvariableop_resource:	�U
Bicnn_closure_layer_2dense_component_matmul_readvariableop_resource:		�S
?icnn_closure_layer_2nn_component_matmul_readvariableop_resource:
��O
@icnn_closure_layer_2nn_component_biasadd_readvariableop_resource:	�T
Bicnn_closure_layer_5dense_component_matmul_readvariableop_resource:	R
?icnn_closure_layer_5nn_component_matmul_readvariableop_resource:	�N
@icnn_closure_layer_5nn_component_biasadd_readvariableop_resource:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��6Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp�2Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp�1Icnn_closure/layer_-1_input/MatMul/ReadVariableOp�9Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp�9Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp�9Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp�9Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp�0Icnn_closure/mean_shift_layer/sub/ReadVariableOp�checked�	checked_1�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�
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
:		�*
dtype0�
"Icnn_closure/layer_-1_input/MatMulMatMul1Icnn_closure/decorrelation_layer/MatMul:product:09Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOpReadVariableOp;icnn_closure_layer__1_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#Icnn_closure/layer_-1_input/BiasAddBiasAdd,Icnn_closure/layer_-1_input/MatMul:product:0:Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Icnn_closure/layer_-1_input/EluElu,Icnn_closure/layer_-1_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
9Icnn_closure/layer_0dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_0dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
*Icnn_closure/layer_0dense_component/MatMulMatMul1Icnn_closure/decorrelation_layer/MatMul:product:0AIcnn_closure/layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6Icnn_closure/layer_0nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_0nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
'Icnn_closure/layer_0nn_component/MatMulMatMul-Icnn_closure/layer_-1_input/Elu:activations:0>Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_0nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(Icnn_closure/layer_0nn_component/BiasAddBiasAdd1Icnn_closure/layer_0nn_component/MatMul:product:0?Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 Icnn_closure/add_component_0/addAddV24Icnn_closure/layer_0dense_component/MatMul:product:01Icnn_closure/layer_0nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:����������z
Icnn_closure/tf.nn.elu/EluElu$Icnn_closure/add_component_0/add:z:0*
T0*(
_output_shapes
:�����������
9Icnn_closure/layer_1dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_1dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
*Icnn_closure/layer_1dense_component/MatMulMatMul1Icnn_closure/decorrelation_layer/MatMul:product:0AIcnn_closure/layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6Icnn_closure/layer_1nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_1nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
'Icnn_closure/layer_1nn_component/MatMulMatMul(Icnn_closure/tf.nn.elu/Elu:activations:0>Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_1nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(Icnn_closure/layer_1nn_component/BiasAddBiasAdd1Icnn_closure/layer_1nn_component/MatMul:product:0?Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 Icnn_closure/add_component_1/addAddV24Icnn_closure/layer_1dense_component/MatMul:product:01Icnn_closure/layer_1nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:����������|
Icnn_closure/tf.nn.elu_1/EluElu$Icnn_closure/add_component_1/add:z:0*
T0*(
_output_shapes
:�����������
9Icnn_closure/layer_2dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_2dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
*Icnn_closure/layer_2dense_component/MatMulMatMul1Icnn_closure/decorrelation_layer/MatMul:product:0AIcnn_closure/layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6Icnn_closure/layer_2nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_2nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
'Icnn_closure/layer_2nn_component/MatMulMatMul*Icnn_closure/tf.nn.elu_1/Elu:activations:0>Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_2nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(Icnn_closure/layer_2nn_component/BiasAddBiasAdd1Icnn_closure/layer_2nn_component/MatMul:product:0?Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 Icnn_closure/add_component_2/addAddV24Icnn_closure/layer_2dense_component/MatMul:product:01Icnn_closure/layer_2nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:����������|
Icnn_closure/tf.nn.elu_2/EluElu$Icnn_closure/add_component_2/add:z:0*
T0*(
_output_shapes
:�����������
9Icnn_closure/layer_5dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
*Icnn_closure/layer_5dense_component/MatMulMatMul1Icnn_closure/decorrelation_layer/MatMul:product:0AIcnn_closure/layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6Icnn_closure/layer_5nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_5nn_component_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
'Icnn_closure/layer_5nn_component/MatMulMatMul*Icnn_closure/tf.nn.elu_2/Elu:activations:0>Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp:value:0*
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
Agradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:03gradient_tape/Icnn_closure/add/add/Reshape:output:0*
T0*
_output_shapes

:	*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_5nn_component/BiasAdd/BiasAddGradBiasAddGrad5gradient_tape/Icnn_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes
:�
<gradient_tape/Icnn_closure/layer_5nn_component/MatMul/MatMulMatMul5gradient_tape/Icnn_closure/add/add/Reshape_1:output:0>Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
>gradient_tape/Icnn_closure/layer_5nn_component/MatMul/MatMul_1MatMul*Icnn_closure/tf.nn.elu_2/Elu:activations:05gradient_tape/Icnn_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes
:	�*
transpose_a(�
.gradient_tape/Icnn_closure/tf.nn.elu_2/EluGradEluGradFgradient_tape/Icnn_closure/layer_5nn_component/MatMul/MatMul:product:0*Icnn_closure/tf.nn.elu_2/Elu:activations:0*
T0*(
_output_shapes
:�����������
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
2gradient_tape/Icnn_closure/add_component_2/add/SumSum:gradient_tape/Icnn_closure/tf.nn.elu_2/EluGrad:backprops:0Igradient_tape/Icnn_closure/add_component_2/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_2/add/ReshapeReshape;gradient_tape/Icnn_closure/add_component_2/add/Sum:output:0=gradient_tape/Icnn_closure/add_component_2/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/Icnn_closure/add_component_2/add/Sum_1Sum:gradient_tape/Icnn_closure/tf.nn.elu_2/EluGrad:backprops:0Igradient_tape/Icnn_closure/add_component_2/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add_component_2/add/Reshape_1Reshape=gradient_tape/Icnn_closure/add_component_2/add/Sum_1:output:0?gradient_tape/Icnn_closure/add_component_2/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
?gradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMulMatMul?gradient_tape/Icnn_closure/add_component_2/add/Reshape:output:0AIcnn_closure/layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:0?gradient_tape/Icnn_closure/add_component_2/add/Reshape:output:0*
T0*
_output_shapes
:		�*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_2nn_component/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/Icnn_closure/add_component_2/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
<gradient_tape/Icnn_closure/layer_2nn_component/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/add_component_2/add/Reshape_1:output:0>Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
>gradient_tape/Icnn_closure/layer_2nn_component/MatMul/MatMul_1MatMul*Icnn_closure/tf.nn.elu_1/Elu:activations:0Agradient_tape/Icnn_closure/add_component_2/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
.gradient_tape/Icnn_closure/tf.nn.elu_1/EluGradEluGradFgradient_tape/Icnn_closure/layer_2nn_component/MatMul/MatMul:product:0*Icnn_closure/tf.nn.elu_1/Elu:activations:0*
T0*(
_output_shapes
:�����������
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
2gradient_tape/Icnn_closure/add_component_1/add/SumSum:gradient_tape/Icnn_closure/tf.nn.elu_1/EluGrad:backprops:0Igradient_tape/Icnn_closure/add_component_1/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_1/add/ReshapeReshape;gradient_tape/Icnn_closure/add_component_1/add/Sum:output:0=gradient_tape/Icnn_closure/add_component_1/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/Icnn_closure/add_component_1/add/Sum_1Sum:gradient_tape/Icnn_closure/tf.nn.elu_1/EluGrad:backprops:0Igradient_tape/Icnn_closure/add_component_1/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add_component_1/add/Reshape_1Reshape=gradient_tape/Icnn_closure/add_component_1/add/Sum_1:output:0?gradient_tape/Icnn_closure/add_component_1/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
?gradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMulMatMul?gradient_tape/Icnn_closure/add_component_1/add/Reshape:output:0AIcnn_closure/layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:0?gradient_tape/Icnn_closure/add_component_1/add/Reshape:output:0*
T0*
_output_shapes
:		�*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_1nn_component/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/Icnn_closure/add_component_1/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
<gradient_tape/Icnn_closure/layer_1nn_component/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/add_component_1/add/Reshape_1:output:0>Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
>gradient_tape/Icnn_closure/layer_1nn_component/MatMul/MatMul_1MatMul(Icnn_closure/tf.nn.elu/Elu:activations:0Agradient_tape/Icnn_closure/add_component_1/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
,gradient_tape/Icnn_closure/tf.nn.elu/EluGradEluGradFgradient_tape/Icnn_closure/layer_1nn_component/MatMul/MatMul:product:0(Icnn_closure/tf.nn.elu/Elu:activations:0*
T0*(
_output_shapes
:�����������
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
2gradient_tape/Icnn_closure/add_component_0/add/SumSum8gradient_tape/Icnn_closure/tf.nn.elu/EluGrad:backprops:0Igradient_tape/Icnn_closure/add_component_0/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_0/add/ReshapeReshape;gradient_tape/Icnn_closure/add_component_0/add/Sum:output:0=gradient_tape/Icnn_closure/add_component_0/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/Icnn_closure/add_component_0/add/Sum_1Sum8gradient_tape/Icnn_closure/tf.nn.elu/EluGrad:backprops:0Igradient_tape/Icnn_closure/add_component_0/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add_component_0/add/Reshape_1Reshape=gradient_tape/Icnn_closure/add_component_0/add/Sum_1:output:0?gradient_tape/Icnn_closure/add_component_0/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
?gradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMulMatMul?gradient_tape/Icnn_closure/add_component_0/add/Reshape:output:0AIcnn_closure/layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:0?gradient_tape/Icnn_closure/add_component_0/add/Reshape:output:0*
T0*
_output_shapes
:		�*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_0nn_component/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/Icnn_closure/add_component_0/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
<gradient_tape/Icnn_closure/layer_0nn_component/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/add_component_0/add/Reshape_1:output:0>Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
>gradient_tape/Icnn_closure/layer_0nn_component/MatMul/MatMul_1MatMul-Icnn_closure/layer_-1_input/Elu:activations:0Agradient_tape/Icnn_closure/add_component_0/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
1gradient_tape/Icnn_closure/layer_-1_input/EluGradEluGradFgradient_tape/Icnn_closure/layer_0nn_component/MatMul/MatMul:product:0-Icnn_closure/layer_-1_input/Elu:activations:0*
T0*(
_output_shapes
:�����������
=gradient_tape/Icnn_closure/layer_-1_input/BiasAdd/BiasAddGradBiasAddGrad=gradient_tape/Icnn_closure/layer_-1_input/EluGrad:backprops:0*
T0*
_output_shapes	
:��
7gradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMulMatMul=gradient_tape/Icnn_closure/layer_-1_input/EluGrad:backprops:09Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
transpose_b(�
9gradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:0=gradient_tape/Icnn_closure/layer_-1_input/EluGrad:backprops:0*
T0*
_output_shapes
:		�*
transpose_a(�
AddNAddNIgradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMul:product:0Agradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMul:product:0*
N*
T0*'
_output_shapes
:���������	�
<gradient_tape/Icnn_closure/decorrelation_layer/MatMul/MatMulMatMul
AddN:sum:0>Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
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
:���������	�
CastCast@gradient_tape/Icnn_closure/mean_shift_layer/sub/Reshape:output:0*

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
Tensordot_3/transpose_1	Transposestrided_slice_3:output:0%Tensordot_3/transpose_1/perm:output:0*
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
a
add_1AddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������
f
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
:���������	*

begin_mask*
end_maskl
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:icnn_closure_layer__1_input_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBicnn_closure_layer_0dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?icnn_closure_layer_0nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBicnn_closure_layer_1dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?icnn_closure_layer_1nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBicnn_closure_layer_2dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?icnn_closure_layer_2nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBicnn_closure_layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?icnn_closure_layer_5nn_component_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: g
IdentityIdentityIcnn_closure/add/add:z:0^NoOp*
T0*'
_output_shapes
:����������

Identity_1Identity@gradient_tape/Icnn_closure/mean_shift_layer/sub/Reshape:output:0^NoOp*
T0*'
_output_shapes
:���������	i

Identity_2Identitystrided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp7^Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp3^Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp2^Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:^Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:^Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:^Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:^Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp1^Icnn_closure/mean_shift_layer/sub/ReadVariableOp^checked
^checked_18^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp*"
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
	checked_1	checked_12r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:J F
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

�
�
__inference_loss_fn_4_61143Y
Elayer_1nn_component_kernel_regularizer_square_readvariableop_resource:
��
identity��<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpq
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpElayer_1nn_component_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: l
IdentityIdentity.layer_1nn_component/kernel/Regularizer/add:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp
�
�
Q__inference_layer_0dense_component_layer_call_and_return_conditional_losses_60800

inputs1
matmul_readvariableop_resource:		�
identity��MatMul/ReadVariableOp�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityMatMul:product:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^MatMul/ReadVariableOp@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������	: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������	
 
_user_specified_nameinputs
�
h
>__inference_add_layer_call_and_return_conditional_losses_56787

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
�
�
<__forward_add_layer_call_and_return_conditional_losses_57575
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
&:���������:���������*k
backward_function_nameQO__inference___backward_add_layer_call_and_return_conditional_losses_57559_57576:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
v
J__inference_add_component_2_layer_call_and_return_conditional_losses_61001
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
�
,__inference_Icnn_closure_layer_call_fn_60442

inputs
unknown:	
	unknown_0:		
	unknown_1:		�
	unknown_2:	�
	unknown_3:		�
	unknown_4:
��
	unknown_5:	�
	unknown_6:		�
	unknown_7:
��
	unknown_8:	�
	unknown_9:		�

unknown_10:
��

unknown_11:	�

unknown_12:	

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
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_57188o
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
ߓ
�
H__inference_sobolev_model_layer_call_and_return_conditional_losses_59088
input_1 
icnn_closure_58788:	$
icnn_closure_58790:		%
icnn_closure_58792:		�!
icnn_closure_58794:	�%
icnn_closure_58796:		�&
icnn_closure_58798:
��!
icnn_closure_58800:	�%
icnn_closure_58802:		�&
icnn_closure_58804:
��!
icnn_closure_58806:	�%
icnn_closure_58808:		�&
icnn_closure_58810:
��!
icnn_closure_58812:	�$
icnn_closure_58814:	%
icnn_closure_58816:	� 
icnn_closure_58818:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��$Icnn_closure/StatefulPartitionedCall�checked�	checked_1�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�

$Icnn_closure/StatefulPartitionedCallStatefulPartitionedCallinput_1icnn_closure_58788icnn_closure_58790icnn_closure_58792icnn_closure_58794icnn_closure_58796icnn_closure_58798icnn_closure_58800icnn_closure_58802icnn_closure_58804icnn_closure_58806icnn_closure_58808icnn_closure_58810icnn_closure_58812icnn_closure_58814icnn_closure_58816icnn_closure_58818*
Tin
2*/
Tout'
%2#*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������:	:���������	:	�:����������:����������:����������:����������:		�:���������	:
��:����������:����������:����������:����������:		�:���������	:
��:����������:����������:����������:����������:		�:���������	:
��:����������:����������:		�:���������	:		:���������	:���������	:	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__forward_Icnn_closure_layer_call_and_return_conditional_losses_57903l
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
�:���������	:	:		:		�:�:		�:
��:�:		�:
��:�:		�:
��:�:	:	�:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *a
f\RZ
X__inference___backward_Icnn_closure_layer_call_and_return_conditional_losses_57555_57904g
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
Tensordot_3/transpose_1	Transposestrided_slice_3:output:0%Tensordot_3/transpose_1/perm:output:0*
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
a
add_1AddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������
f
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
:���������	*

begin_mask*
end_maskl
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58792*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58796*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58798* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58802*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58804* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58808*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58810* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58814*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpicnn_closure_58816*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: |
IdentityIdentity-Icnn_closure/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	i

Identity_2Identitystrided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp%^Icnn_closure/StatefulPartitionedCall^checked
^checked_18^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp*"
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
	checked_1	checked_12r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
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
�
___inference___backward_layer_0nn_component_layer_call_and_return_conditional_losses_57796_57809
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
��:����������*g
forward_function_nameNL__forward_layer_0nn_component_layer_call_and_return_conditional_losses_57808:. *
(
_output_shapes
:����������:&"
 
_output_shapes
:
��:.*
(
_output_shapes
:����������
�
�
N__inference_layer_1nn_component_layer_call_and_return_conditional_losses_60912

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpv
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
:����������q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
[__inference___backward_add_component_1_layer_call_and_return_conditional_losses_57689_57706
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
<:����������:����������:����������*c
forward_function_nameJH__forward_add_component_1_layer_call_and_return_conditional_losses_57705:. *
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������
��
�
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_57512
input_1$
mean_shift_layer_57389:	+
decorrelation_layer_57392:		'
layer__1_input_57395:		�#
layer__1_input_57397:	�/
layer_0dense_component_57400:		�-
layer_0nn_component_57403:
��(
layer_0nn_component_57405:	�/
layer_1dense_component_57410:		�-
layer_1nn_component_57413:
��(
layer_1nn_component_57415:	�/
layer_2dense_component_57420:		�-
layer_2nn_component_57423:
��(
layer_2nn_component_57425:	�.
layer_5dense_component_57430:	,
layer_5nn_component_57433:	�'
layer_5nn_component_57435:
identity��+decorrelation_layer/StatefulPartitionedCall�&layer_-1_input/StatefulPartitionedCall�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�.layer_0dense_component/StatefulPartitionedCall�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_0nn_component/StatefulPartitionedCall�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_1dense_component/StatefulPartitionedCall�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_1nn_component/StatefulPartitionedCall�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_2dense_component/StatefulPartitionedCall�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_2nn_component/StatefulPartitionedCall�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�.layer_5dense_component/StatefulPartitionedCall�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�+layer_5nn_component/StatefulPartitionedCall�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�(mean_shift_layer/StatefulPartitionedCall�
(mean_shift_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1mean_shift_layer_57389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_mean_shift_layer_layer_call_and_return_conditional_losses_56542�
+decorrelation_layer/StatefulPartitionedCallStatefulPartitionedCall1mean_shift_layer/StatefulPartitionedCall:output:0decorrelation_layer_57392*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_decorrelation_layer_layer_call_and_return_conditional_losses_56553�
&layer_-1_input/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer__1_input_57395layer__1_input_57397*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_layer_-1_input_layer_call_and_return_conditional_losses_56576�
.layer_0dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_0dense_component_57400*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_0dense_component_layer_call_and_return_conditional_losses_56597�
+layer_0nn_component/StatefulPartitionedCallStatefulPartitionedCall/layer_-1_input/StatefulPartitionedCall:output:0layer_0nn_component_57403layer_0nn_component_57405*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_0nn_component_layer_call_and_return_conditional_losses_56619�
add_component_0/PartitionedCallPartitionedCall7layer_0dense_component/StatefulPartitionedCall:output:04layer_0nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_0_layer_call_and_return_conditional_losses_56631q
tf.nn.elu/EluElu(add_component_0/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_1dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_1dense_component_57410*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_1dense_component_layer_call_and_return_conditional_losses_56649�
+layer_1nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu/Elu:activations:0layer_1nn_component_57413layer_1nn_component_57415*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_1nn_component_layer_call_and_return_conditional_losses_56671�
add_component_1/PartitionedCallPartitionedCall7layer_1dense_component/StatefulPartitionedCall:output:04layer_1nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_1_layer_call_and_return_conditional_losses_56683s
tf.nn.elu_1/EluElu(add_component_1/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_2dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_2dense_component_57420*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_2dense_component_layer_call_and_return_conditional_losses_56701�
+layer_2nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_1/Elu:activations:0layer_2nn_component_57423layer_2nn_component_57425*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_2nn_component_layer_call_and_return_conditional_losses_56723�
add_component_2/PartitionedCallPartitionedCall7layer_2dense_component/StatefulPartitionedCall:output:04layer_2nn_component/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_add_component_2_layer_call_and_return_conditional_losses_56735s
tf.nn.elu_2/EluElu(add_component_2/PartitionedCall:output:0*
T0*(
_output_shapes
:�����������
.layer_5dense_component/StatefulPartitionedCallStatefulPartitionedCall4decorrelation_layer/StatefulPartitionedCall:output:0layer_5dense_component_57430*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_layer_5dense_component_layer_call_and_return_conditional_losses_56753�
+layer_5nn_component/StatefulPartitionedCallStatefulPartitionedCalltf.nn.elu_2/Elu:activations:0layer_5nn_component_57433layer_5nn_component_57435*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_5nn_component_layer_call_and_return_conditional_losses_56775�
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
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_56787l
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer__1_input_57395*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_0dense_component_57400*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_0nn_component_57403* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_1dense_component_57410*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_1nn_component_57413* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_2dense_component_57420*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_2nn_component_57423* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_5dense_component_57430*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOplayer_5nn_component_57433*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: k
IdentityIdentityadd/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp,^decorrelation_layer/StatefulPartitionedCall'^layer_-1_input/StatefulPartitionedCall8^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp/^layer_0dense_component/StatefulPartitionedCall@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_0nn_component/StatefulPartitionedCall=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_1dense_component/StatefulPartitionedCall@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_1nn_component/StatefulPartitionedCall=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_2dense_component/StatefulPartitionedCall@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_2nn_component/StatefulPartitionedCall=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp/^layer_5dense_component/StatefulPartitionedCall@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp,^layer_5nn_component/StatefulPartitionedCall=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp)^mean_shift_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������	: : : : : : : : : : : : : : : : 2Z
+decorrelation_layer/StatefulPartitionedCall+decorrelation_layer/StatefulPartitionedCall2P
&layer_-1_input/StatefulPartitionedCall&layer_-1_input/StatefulPartitionedCall2r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2`
.layer_0dense_component/StatefulPartitionedCall.layer_0dense_component/StatefulPartitionedCall2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_0nn_component/StatefulPartitionedCall+layer_0nn_component/StatefulPartitionedCall2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_1dense_component/StatefulPartitionedCall.layer_1dense_component/StatefulPartitionedCall2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_1nn_component/StatefulPartitionedCall+layer_1nn_component/StatefulPartitionedCall2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_2dense_component/StatefulPartitionedCall.layer_2dense_component/StatefulPartitionedCall2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_2nn_component/StatefulPartitionedCall+layer_2nn_component/StatefulPartitionedCall2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2`
.layer_5dense_component/StatefulPartitionedCall.layer_5dense_component/StatefulPartitionedCall2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2Z
+layer_5nn_component/StatefulPartitionedCall+layer_5nn_component/StatefulPartitionedCall2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp2T
(mean_shift_layer/StatefulPartitionedCall(mean_shift_layer/StatefulPartitionedCall:P L
'
_output_shapes
:���������	
!
_user_specified_name	input_1
�
�
#__inference_signature_wrapper_59518
input_1
unknown:	
	unknown_0:		
	unknown_1:		�
	unknown_2:	�
	unknown_3:		�
	unknown_4:
��
	unknown_5:	�
	unknown_6:		�
	unknown_7:
��
	unknown_8:	�
	unknown_9:		�

unknown_10:
��

unknown_11:	�

unknown_12:	

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
9:���������:���������	:���������	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_56528o
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

��
�
H__inference_sobolev_model_layer_call_and_return_conditional_losses_60296
xG
9icnn_closure_mean_shift_layer_sub_readvariableop_resource:	Q
?icnn_closure_decorrelation_layer_matmul_readvariableop_resource:		M
:icnn_closure_layer__1_input_matmul_readvariableop_resource:		�J
;icnn_closure_layer__1_input_biasadd_readvariableop_resource:	�U
Bicnn_closure_layer_0dense_component_matmul_readvariableop_resource:		�S
?icnn_closure_layer_0nn_component_matmul_readvariableop_resource:
��O
@icnn_closure_layer_0nn_component_biasadd_readvariableop_resource:	�U
Bicnn_closure_layer_1dense_component_matmul_readvariableop_resource:		�S
?icnn_closure_layer_1nn_component_matmul_readvariableop_resource:
��O
@icnn_closure_layer_1nn_component_biasadd_readvariableop_resource:	�U
Bicnn_closure_layer_2dense_component_matmul_readvariableop_resource:		�S
?icnn_closure_layer_2nn_component_matmul_readvariableop_resource:
��O
@icnn_closure_layer_2nn_component_biasadd_readvariableop_resource:	�T
Bicnn_closure_layer_5dense_component_matmul_readvariableop_resource:	R
?icnn_closure_layer_5nn_component_matmul_readvariableop_resource:	�N
@icnn_closure_layer_5nn_component_biasadd_readvariableop_resource:
unknown
tensordot_1_b
mul_1_x
identity

identity_1

identity_2��6Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp�2Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp�1Icnn_closure/layer_-1_input/MatMul/ReadVariableOp�9Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp�9Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp�9Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp�9Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp�7Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp�6Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp�0Icnn_closure/mean_shift_layer/sub/ReadVariableOp�checked�	checked_1�7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp�?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp�?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp�<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp�
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
:		�*
dtype0�
"Icnn_closure/layer_-1_input/MatMulMatMul1Icnn_closure/decorrelation_layer/MatMul:product:09Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOpReadVariableOp;icnn_closure_layer__1_input_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#Icnn_closure/layer_-1_input/BiasAddBiasAdd,Icnn_closure/layer_-1_input/MatMul:product:0:Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Icnn_closure/layer_-1_input/EluElu,Icnn_closure/layer_-1_input/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
9Icnn_closure/layer_0dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_0dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
*Icnn_closure/layer_0dense_component/MatMulMatMul1Icnn_closure/decorrelation_layer/MatMul:product:0AIcnn_closure/layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6Icnn_closure/layer_0nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_0nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
'Icnn_closure/layer_0nn_component/MatMulMatMul-Icnn_closure/layer_-1_input/Elu:activations:0>Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_0nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(Icnn_closure/layer_0nn_component/BiasAddBiasAdd1Icnn_closure/layer_0nn_component/MatMul:product:0?Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 Icnn_closure/add_component_0/addAddV24Icnn_closure/layer_0dense_component/MatMul:product:01Icnn_closure/layer_0nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:����������z
Icnn_closure/tf.nn.elu/EluElu$Icnn_closure/add_component_0/add:z:0*
T0*(
_output_shapes
:�����������
9Icnn_closure/layer_1dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_1dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
*Icnn_closure/layer_1dense_component/MatMulMatMul1Icnn_closure/decorrelation_layer/MatMul:product:0AIcnn_closure/layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6Icnn_closure/layer_1nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_1nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
'Icnn_closure/layer_1nn_component/MatMulMatMul(Icnn_closure/tf.nn.elu/Elu:activations:0>Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_1nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(Icnn_closure/layer_1nn_component/BiasAddBiasAdd1Icnn_closure/layer_1nn_component/MatMul:product:0?Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 Icnn_closure/add_component_1/addAddV24Icnn_closure/layer_1dense_component/MatMul:product:01Icnn_closure/layer_1nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:����������|
Icnn_closure/tf.nn.elu_1/EluElu$Icnn_closure/add_component_1/add:z:0*
T0*(
_output_shapes
:�����������
9Icnn_closure/layer_2dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_2dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
*Icnn_closure/layer_2dense_component/MatMulMatMul1Icnn_closure/decorrelation_layer/MatMul:product:0AIcnn_closure/layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6Icnn_closure/layer_2nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_2nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
'Icnn_closure/layer_2nn_component/MatMulMatMul*Icnn_closure/tf.nn.elu_1/Elu:activations:0>Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOpReadVariableOp@icnn_closure_layer_2nn_component_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(Icnn_closure/layer_2nn_component/BiasAddBiasAdd1Icnn_closure/layer_2nn_component/MatMul:product:0?Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 Icnn_closure/add_component_2/addAddV24Icnn_closure/layer_2dense_component/MatMul:product:01Icnn_closure/layer_2nn_component/BiasAdd:output:0*
T0*(
_output_shapes
:����������|
Icnn_closure/tf.nn.elu_2/EluElu$Icnn_closure/add_component_2/add:z:0*
T0*(
_output_shapes
:�����������
9Icnn_closure/layer_5dense_component/MatMul/ReadVariableOpReadVariableOpBicnn_closure_layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
*Icnn_closure/layer_5dense_component/MatMulMatMul1Icnn_closure/decorrelation_layer/MatMul:product:0AIcnn_closure/layer_5dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6Icnn_closure/layer_5nn_component/MatMul/ReadVariableOpReadVariableOp?icnn_closure_layer_5nn_component_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
'Icnn_closure/layer_5nn_component/MatMulMatMul*Icnn_closure/tf.nn.elu_2/Elu:activations:0>Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp:value:0*
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
Agradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:03gradient_tape/Icnn_closure/add/add/Reshape:output:0*
T0*
_output_shapes

:	*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_5nn_component/BiasAdd/BiasAddGradBiasAddGrad5gradient_tape/Icnn_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes
:�
<gradient_tape/Icnn_closure/layer_5nn_component/MatMul/MatMulMatMul5gradient_tape/Icnn_closure/add/add/Reshape_1:output:0>Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
>gradient_tape/Icnn_closure/layer_5nn_component/MatMul/MatMul_1MatMul*Icnn_closure/tf.nn.elu_2/Elu:activations:05gradient_tape/Icnn_closure/add/add/Reshape_1:output:0*
T0*
_output_shapes
:	�*
transpose_a(�
.gradient_tape/Icnn_closure/tf.nn.elu_2/EluGradEluGradFgradient_tape/Icnn_closure/layer_5nn_component/MatMul/MatMul:product:0*Icnn_closure/tf.nn.elu_2/Elu:activations:0*
T0*(
_output_shapes
:�����������
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
2gradient_tape/Icnn_closure/add_component_2/add/SumSum:gradient_tape/Icnn_closure/tf.nn.elu_2/EluGrad:backprops:0Igradient_tape/Icnn_closure/add_component_2/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_2/add/ReshapeReshape;gradient_tape/Icnn_closure/add_component_2/add/Sum:output:0=gradient_tape/Icnn_closure/add_component_2/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/Icnn_closure/add_component_2/add/Sum_1Sum:gradient_tape/Icnn_closure/tf.nn.elu_2/EluGrad:backprops:0Igradient_tape/Icnn_closure/add_component_2/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add_component_2/add/Reshape_1Reshape=gradient_tape/Icnn_closure/add_component_2/add/Sum_1:output:0?gradient_tape/Icnn_closure/add_component_2/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
?gradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMulMatMul?gradient_tape/Icnn_closure/add_component_2/add/Reshape:output:0AIcnn_closure/layer_2dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:0?gradient_tape/Icnn_closure/add_component_2/add/Reshape:output:0*
T0*
_output_shapes
:		�*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_2nn_component/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/Icnn_closure/add_component_2/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
<gradient_tape/Icnn_closure/layer_2nn_component/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/add_component_2/add/Reshape_1:output:0>Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
>gradient_tape/Icnn_closure/layer_2nn_component/MatMul/MatMul_1MatMul*Icnn_closure/tf.nn.elu_1/Elu:activations:0Agradient_tape/Icnn_closure/add_component_2/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
.gradient_tape/Icnn_closure/tf.nn.elu_1/EluGradEluGradFgradient_tape/Icnn_closure/layer_2nn_component/MatMul/MatMul:product:0*Icnn_closure/tf.nn.elu_1/Elu:activations:0*
T0*(
_output_shapes
:�����������
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
2gradient_tape/Icnn_closure/add_component_1/add/SumSum:gradient_tape/Icnn_closure/tf.nn.elu_1/EluGrad:backprops:0Igradient_tape/Icnn_closure/add_component_1/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_1/add/ReshapeReshape;gradient_tape/Icnn_closure/add_component_1/add/Sum:output:0=gradient_tape/Icnn_closure/add_component_1/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/Icnn_closure/add_component_1/add/Sum_1Sum:gradient_tape/Icnn_closure/tf.nn.elu_1/EluGrad:backprops:0Igradient_tape/Icnn_closure/add_component_1/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add_component_1/add/Reshape_1Reshape=gradient_tape/Icnn_closure/add_component_1/add/Sum_1:output:0?gradient_tape/Icnn_closure/add_component_1/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
?gradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMulMatMul?gradient_tape/Icnn_closure/add_component_1/add/Reshape:output:0AIcnn_closure/layer_1dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:0?gradient_tape/Icnn_closure/add_component_1/add/Reshape:output:0*
T0*
_output_shapes
:		�*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_1nn_component/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/Icnn_closure/add_component_1/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
<gradient_tape/Icnn_closure/layer_1nn_component/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/add_component_1/add/Reshape_1:output:0>Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
>gradient_tape/Icnn_closure/layer_1nn_component/MatMul/MatMul_1MatMul(Icnn_closure/tf.nn.elu/Elu:activations:0Agradient_tape/Icnn_closure/add_component_1/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
,gradient_tape/Icnn_closure/tf.nn.elu/EluGradEluGradFgradient_tape/Icnn_closure/layer_1nn_component/MatMul/MatMul:product:0(Icnn_closure/tf.nn.elu/Elu:activations:0*
T0*(
_output_shapes
:�����������
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
2gradient_tape/Icnn_closure/add_component_0/add/SumSum8gradient_tape/Icnn_closure/tf.nn.elu/EluGrad:backprops:0Igradient_tape/Icnn_closure/add_component_0/add/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:�
6gradient_tape/Icnn_closure/add_component_0/add/ReshapeReshape;gradient_tape/Icnn_closure/add_component_0/add/Sum:output:0=gradient_tape/Icnn_closure/add_component_0/add/Shape:output:0*
T0*(
_output_shapes
:�����������
4gradient_tape/Icnn_closure/add_component_0/add/Sum_1Sum8gradient_tape/Icnn_closure/tf.nn.elu/EluGrad:backprops:0Igradient_tape/Icnn_closure/add_component_0/add/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:�
8gradient_tape/Icnn_closure/add_component_0/add/Reshape_1Reshape=gradient_tape/Icnn_closure/add_component_0/add/Sum_1:output:0?gradient_tape/Icnn_closure/add_component_0/add/Shape_1:output:0*
T0*(
_output_shapes
:�����������
?gradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMulMatMul?gradient_tape/Icnn_closure/add_component_0/add/Reshape:output:0AIcnn_closure/layer_0dense_component/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
transpose_b(�
Agradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:0?gradient_tape/Icnn_closure/add_component_0/add/Reshape:output:0*
T0*
_output_shapes
:		�*
transpose_a(�
Bgradient_tape/Icnn_closure/layer_0nn_component/BiasAdd/BiasAddGradBiasAddGradAgradient_tape/Icnn_closure/add_component_0/add/Reshape_1:output:0*
T0*
_output_shapes	
:��
<gradient_tape/Icnn_closure/layer_0nn_component/MatMul/MatMulMatMulAgradient_tape/Icnn_closure/add_component_0/add/Reshape_1:output:0>Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������*
transpose_b(�
>gradient_tape/Icnn_closure/layer_0nn_component/MatMul/MatMul_1MatMul-Icnn_closure/layer_-1_input/Elu:activations:0Agradient_tape/Icnn_closure/add_component_0/add/Reshape_1:output:0*
T0* 
_output_shapes
:
��*
transpose_a(�
1gradient_tape/Icnn_closure/layer_-1_input/EluGradEluGradFgradient_tape/Icnn_closure/layer_0nn_component/MatMul/MatMul:product:0-Icnn_closure/layer_-1_input/Elu:activations:0*
T0*(
_output_shapes
:�����������
=gradient_tape/Icnn_closure/layer_-1_input/BiasAdd/BiasAddGradBiasAddGrad=gradient_tape/Icnn_closure/layer_-1_input/EluGrad:backprops:0*
T0*
_output_shapes	
:��
7gradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMulMatMul=gradient_tape/Icnn_closure/layer_-1_input/EluGrad:backprops:09Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	*
transpose_b(�
9gradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMul_1MatMul1Icnn_closure/decorrelation_layer/MatMul:product:0=gradient_tape/Icnn_closure/layer_-1_input/EluGrad:backprops:0*
T0*
_output_shapes
:		�*
transpose_a(�
AddNAddNIgradient_tape/Icnn_closure/layer_5dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_2dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_1dense_component/MatMul/MatMul:product:0Igradient_tape/Icnn_closure/layer_0dense_component/MatMul/MatMul:product:0Agradient_tape/Icnn_closure/layer_-1_input/MatMul/MatMul:product:0*
N*
T0*'
_output_shapes
:���������	�
<gradient_tape/Icnn_closure/decorrelation_layer/MatMul/MatMulMatMul
AddN:sum:0>Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp:value:0*
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
:���������	�
CastCast@gradient_tape/Icnn_closure/mean_shift_layer/sub/Reshape:output:0*

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
Tensordot_3/transpose_1	Transposestrided_slice_3:output:0%Tensordot_3/transpose_1/perm:output:0*
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
a
add_1AddV2Tensordot_3:output:0	Mul_1:z:0*
T0*'
_output_shapes
:���������
f
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
:���������	*

begin_mask*
end_maskl
'layer_-1_input/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:icnn_closure_layer__1_input_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
(layer_-1_input/kernel/Regularizer/SquareSquare?layer_-1_input/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		�z
)layer_-1_input/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
%layer_-1_input/kernel/Regularizer/SumSum,layer_-1_input/kernel/Regularizer/Square:y:02layer_-1_input/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: l
'layer_-1_input/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
%layer_-1_input/kernel/Regularizer/mulMul0layer_-1_input/kernel/Regularizer/mul/x:output:0.layer_-1_input/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
%layer_-1_input/kernel/Regularizer/addAddV20layer_-1_input/kernel/Regularizer/Const:output:0)layer_-1_input/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBicnn_closure_layer_0dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_0dense_component/kernel/Regularizer/SquareSquareGlayer_0dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_0dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_0dense_component/kernel/Regularizer/SumSum4layer_0dense_component/kernel/Regularizer/Square:y:0:layer_0dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_0dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_0dense_component/kernel/Regularizer/mulMul8layer_0dense_component/kernel/Regularizer/mul/x:output:06layer_0dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_0dense_component/kernel/Regularizer/addAddV28layer_0dense_component/kernel/Regularizer/Const:output:01layer_0dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?icnn_closure_layer_0nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_0nn_component/kernel/Regularizer/SquareSquareDlayer_0nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_0nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_0nn_component/kernel/Regularizer/SumSum1layer_0nn_component/kernel/Regularizer/Square:y:07layer_0nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_0nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_0nn_component/kernel/Regularizer/mulMul5layer_0nn_component/kernel/Regularizer/mul/x:output:03layer_0nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_0nn_component/kernel/Regularizer/addAddV25layer_0nn_component/kernel/Regularizer/Const:output:0.layer_0nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBicnn_closure_layer_1dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_1dense_component/kernel/Regularizer/SquareSquareGlayer_1dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_1dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_1dense_component/kernel/Regularizer/SumSum4layer_1dense_component/kernel/Regularizer/Square:y:0:layer_1dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_1dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_1dense_component/kernel/Regularizer/mulMul8layer_1dense_component/kernel/Regularizer/mul/x:output:06layer_1dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_1dense_component/kernel/Regularizer/addAddV28layer_1dense_component/kernel/Regularizer/Const:output:01layer_1dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?icnn_closure_layer_1nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_1nn_component/kernel/Regularizer/SquareSquareDlayer_1nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_1nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_1nn_component/kernel/Regularizer/SumSum1layer_1nn_component/kernel/Regularizer/Square:y:07layer_1nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_1nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_1nn_component/kernel/Regularizer/mulMul5layer_1nn_component/kernel/Regularizer/mul/x:output:03layer_1nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_1nn_component/kernel/Regularizer/addAddV25layer_1nn_component/kernel/Regularizer/Const:output:0.layer_1nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBicnn_closure_layer_2dense_component_matmul_readvariableop_resource*
_output_shapes
:		�*
dtype0�
0layer_2dense_component/kernel/Regularizer/SquareSquareGlayer_2dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:		��
1layer_2dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_2dense_component/kernel/Regularizer/SumSum4layer_2dense_component/kernel/Regularizer/Square:y:0:layer_2dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_2dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_2dense_component/kernel/Regularizer/mulMul8layer_2dense_component/kernel/Regularizer/mul/x:output:06layer_2dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_2dense_component/kernel/Regularizer/addAddV28layer_2dense_component/kernel/Regularizer/Const:output:01layer_2dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?icnn_closure_layer_2nn_component_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
-layer_2nn_component/kernel/Regularizer/SquareSquareDlayer_2nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��
.layer_2nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_2nn_component/kernel/Regularizer/SumSum1layer_2nn_component/kernel/Regularizer/Square:y:07layer_2nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_2nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_2nn_component/kernel/Regularizer/mulMul5layer_2nn_component/kernel/Regularizer/mul/x:output:03layer_2nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_2nn_component/kernel/Regularizer/addAddV25layer_2nn_component/kernel/Regularizer/Const:output:0.layer_2nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBicnn_closure_layer_5dense_component_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0�
0layer_5dense_component/kernel/Regularizer/SquareSquareGlayer_5dense_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	�
1layer_5dense_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
-layer_5dense_component/kernel/Regularizer/SumSum4layer_5dense_component/kernel/Regularizer/Square:y:0:layer_5dense_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/layer_5dense_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
-layer_5dense_component/kernel/Regularizer/mulMul8layer_5dense_component/kernel/Regularizer/mul/x:output:06layer_5dense_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
-layer_5dense_component/kernel/Regularizer/addAddV28layer_5dense_component/kernel/Regularizer/Const:output:01layer_5dense_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?icnn_closure_layer_5nn_component_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
-layer_5nn_component/kernel/Regularizer/SquareSquareDlayer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
.layer_5nn_component/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
*layer_5nn_component/kernel/Regularizer/SumSum1layer_5nn_component/kernel/Regularizer/Square:y:07layer_5nn_component/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,layer_5nn_component/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
*layer_5nn_component/kernel/Regularizer/mulMul5layer_5nn_component/kernel/Regularizer/mul/x:output:03layer_5nn_component/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
*layer_5nn_component/kernel/Regularizer/addAddV25layer_5nn_component/kernel/Regularizer/Const:output:0.layer_5nn_component/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: g
IdentityIdentityIcnn_closure/add/add:z:0^NoOp*
T0*'
_output_shapes
:����������

Identity_1Identity@gradient_tape/Icnn_closure/mean_shift_layer/sub/Reshape:output:0^NoOp*
T0*'
_output_shapes
:���������	i

Identity_2Identitystrided_slice_4:output:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp7^Icnn_closure/decorrelation_layer/MatMul/ReadVariableOp3^Icnn_closure/layer_-1_input/BiasAdd/ReadVariableOp2^Icnn_closure/layer_-1_input/MatMul/ReadVariableOp:^Icnn_closure/layer_0dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_0nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_0nn_component/MatMul/ReadVariableOp:^Icnn_closure/layer_1dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_1nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_1nn_component/MatMul/ReadVariableOp:^Icnn_closure/layer_2dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_2nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_2nn_component/MatMul/ReadVariableOp:^Icnn_closure/layer_5dense_component/MatMul/ReadVariableOp8^Icnn_closure/layer_5nn_component/BiasAdd/ReadVariableOp7^Icnn_closure/layer_5nn_component/MatMul/ReadVariableOp1^Icnn_closure/mean_shift_layer/sub/ReadVariableOp^checked
^checked_18^layer_-1_input/kernel/Regularizer/Square/ReadVariableOp@^layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp@^layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp=^layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp*"
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
	checked_1	checked_12r
7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp7layer_-1_input/kernel/Regularizer/Square/ReadVariableOp2�
?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_0dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_0nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_1dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_1nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_2dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_2nn_component/kernel/Regularizer/Square/ReadVariableOp2�
?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp?layer_5dense_component/kernel/Regularizer/Square/ReadVariableOp2|
<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp<layer_5nn_component/kernel/Regularizer/Square/ReadVariableOp:J F
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
"�L
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

 beta_1

!beta_2
	"decay
#learning_rate
$iter'm�(m�)m�*m�+m�,m�-m�.m�/m�0m�1m�2m�3m�4m�'v�(v�)v�*v�+v�,v�-v�.v�/v�0v�1v�2v�3v�4v�"
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
h
�0
�1
�2
�3
�4
�5
�6
�7
�8"
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
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
:	2Variable
:		2Variable
(:&		�2layer_-1_input/kernel
": �2layer_-1_input/bias
0:.		�2layer_0dense_component/kernel
.:,
��2layer_0nn_component/kernel
':%�2layer_0nn_component/bias
0:.		�2layer_1dense_component/kernel
.:,
��2layer_1nn_component/kernel
':%�2layer_1nn_component/bias
0:.		�2layer_2dense_component/kernel
.:,
��2layer_2nn_component/kernel
':%�2layer_2nn_component/bias
/:-	2layer_5dense_component/kernel
-:+	�2layer_5nn_component/kernel
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
(
�0"
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
(
�0"
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
(
�0"
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
(
�0"
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
(
�0"
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
(
�0"
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
(
�0"
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
(
�0"
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
(
�0"
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
(
�0"
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
(:&		�2layer_-1_input/kernel/m
": �2layer_-1_input/bias/m
0:.		�2layer_0dense_component/kernel/m
.:,
��2layer_0nn_component/kernel/m
':%�2layer_0nn_component/bias/m
0:.		�2layer_1dense_component/kernel/m
.:,
��2layer_1nn_component/kernel/m
':%�2layer_1nn_component/bias/m
0:.		�2layer_2dense_component/kernel/m
.:,
��2layer_2nn_component/kernel/m
':%�2layer_2nn_component/bias/m
/:-	2layer_5dense_component/kernel/m
-:+	�2layer_5nn_component/kernel/m
&:$2layer_5nn_component/bias/m
(:&		�2layer_-1_input/kernel/v
": �2layer_-1_input/bias/v
0:.		�2layer_0dense_component/kernel/v
.:,
��2layer_0nn_component/kernel/v
':%�2layer_0nn_component/bias/v
0:.		�2layer_1dense_component/kernel/v
.:,
��2layer_1nn_component/kernel/v
':%�2layer_1nn_component/bias/v
0:.		�2layer_2dense_component/kernel/v
.:,
��2layer_2nn_component/kernel/v
':%�2layer_2nn_component/bias/v
/:-	2layer_5dense_component/kernel/v
-:+	�2layer_5nn_component/kernel/v
&:$2layer_5nn_component/bias/v
�2�
-__inference_sobolev_model_layer_call_fn_58214
-__inference_sobolev_model_layer_call_fn_59565
-__inference_sobolev_model_layer_call_fn_59612
-__inference_sobolev_model_layer_call_fn_58785�
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
H__inference_sobolev_model_layer_call_and_return_conditional_losses_59954
H__inference_sobolev_model_layer_call_and_return_conditional_losses_60296
H__inference_sobolev_model_layer_call_and_return_conditional_losses_59088
H__inference_sobolev_model_layer_call_and_return_conditional_losses_59391�
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
 __inference__wrapped_model_56528input_1"�
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
�2�
,__inference_Icnn_closure_layer_call_fn_56897
,__inference_Icnn_closure_layer_call_fn_60405
,__inference_Icnn_closure_layer_call_fn_60442
,__inference_Icnn_closure_layer_call_fn_57260�
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
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_60574
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_60706
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_57386
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_57512�
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
#__inference_signature_wrapper_59518input_1"�
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
0__inference_mean_shift_layer_layer_call_fn_60713�
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
K__inference_mean_shift_layer_layer_call_and_return_conditional_losses_60720�
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
3__inference_decorrelation_layer_layer_call_fn_60727�
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
N__inference_decorrelation_layer_layer_call_and_return_conditional_losses_60734�
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
.__inference_layer_-1_input_layer_call_fn_60751�
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
I__inference_layer_-1_input_layer_call_and_return_conditional_losses_60770�
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
6__inference_layer_0dense_component_layer_call_fn_60785�
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
Q__inference_layer_0dense_component_layer_call_and_return_conditional_losses_60800�
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
3__inference_layer_0nn_component_layer_call_fn_60817�
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
N__inference_layer_0nn_component_layer_call_and_return_conditional_losses_60835�
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
/__inference_add_component_0_layer_call_fn_60841�
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
J__inference_add_component_0_layer_call_and_return_conditional_losses_60847�
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
6__inference_layer_1dense_component_layer_call_fn_60862�
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
Q__inference_layer_1dense_component_layer_call_and_return_conditional_losses_60877�
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
3__inference_layer_1nn_component_layer_call_fn_60894�
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
N__inference_layer_1nn_component_layer_call_and_return_conditional_losses_60912�
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
/__inference_add_component_1_layer_call_fn_60918�
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
J__inference_add_component_1_layer_call_and_return_conditional_losses_60924�
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
6__inference_layer_2dense_component_layer_call_fn_60939�
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
Q__inference_layer_2dense_component_layer_call_and_return_conditional_losses_60954�
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
3__inference_layer_2nn_component_layer_call_fn_60971�
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
N__inference_layer_2nn_component_layer_call_and_return_conditional_losses_60989�
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
/__inference_add_component_2_layer_call_fn_60995�
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
J__inference_add_component_2_layer_call_and_return_conditional_losses_61001�
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
6__inference_layer_5dense_component_layer_call_fn_61016�
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
Q__inference_layer_5dense_component_layer_call_and_return_conditional_losses_61031�
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
3__inference_layer_5nn_component_layer_call_fn_61048�
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
N__inference_layer_5nn_component_layer_call_and_return_conditional_losses_61066�
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
#__inference_add_layer_call_fn_61072�
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
>__inference_add_layer_call_and_return_conditional_losses_61078�
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
__inference_loss_fn_0_61091�
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
__inference_loss_fn_1_61104�
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
__inference_loss_fn_2_61117�
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
__inference_loss_fn_3_61130�
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
__inference_loss_fn_4_61143�
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
__inference_loss_fn_5_61156�
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
__inference_loss_fn_6_61169�
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
__inference_loss_fn_7_61182�
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
__inference_loss_fn_8_61195�
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
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_57386s%&'()*+,-./012348�5
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
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_57512s%&'()*+,-./012348�5
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
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_60574r%&'()*+,-./012347�4
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
G__inference_Icnn_closure_layer_call_and_return_conditional_losses_60706r%&'()*+,-./012347�4
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
,__inference_Icnn_closure_layer_call_fn_56897f%&'()*+,-./012348�5
.�+
!�
input_1���������	
p 

 
� "�����������
,__inference_Icnn_closure_layer_call_fn_57260f%&'()*+,-./012348�5
.�+
!�
input_1���������	
p

 
� "�����������
,__inference_Icnn_closure_layer_call_fn_60405e%&'()*+,-./012347�4
-�*
 �
inputs���������	
p 

 
� "�����������
,__inference_Icnn_closure_layer_call_fn_60442e%&'()*+,-./012347�4
-�*
 �
inputs���������	
p

 
� "�����������
 __inference__wrapped_model_56528�%&'()*+,-./01234���0�-
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
J__inference_add_component_0_layer_call_and_return_conditional_losses_60847�\�Y
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
/__inference_add_component_0_layer_call_fn_60841y\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "������������
J__inference_add_component_1_layer_call_and_return_conditional_losses_60924�\�Y
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
/__inference_add_component_1_layer_call_fn_60918y\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "������������
J__inference_add_component_2_layer_call_and_return_conditional_losses_61001�\�Y
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
/__inference_add_component_2_layer_call_fn_60995y\�Y
R�O
M�J
#� 
inputs/0����������
#� 
inputs/1����������
� "������������
>__inference_add_layer_call_and_return_conditional_losses_61078�Z�W
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
#__inference_add_layer_call_fn_61072vZ�W
P�M
K�H
"�
inputs/0���������
"�
inputs/1���������
� "�����������
N__inference_decorrelation_layer_layer_call_and_return_conditional_losses_60734[&/�,
%�"
 �
inputs���������	
� "%�"
�
0���������	
� �
3__inference_decorrelation_layer_layer_call_fn_60727N&/�,
%�"
 �
inputs���������	
� "����������	�
I__inference_layer_-1_input_layer_call_and_return_conditional_losses_60770]'(/�,
%�"
 �
inputs���������	
� "&�#
�
0����������
� �
.__inference_layer_-1_input_layer_call_fn_60751P'(/�,
%�"
 �
inputs���������	
� "������������
Q__inference_layer_0dense_component_layer_call_and_return_conditional_losses_60800\)/�,
%�"
 �
inputs���������	
� "&�#
�
0����������
� �
6__inference_layer_0dense_component_layer_call_fn_60785O)/�,
%�"
 �
inputs���������	
� "������������
N__inference_layer_0nn_component_layer_call_and_return_conditional_losses_60835^*+0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
3__inference_layer_0nn_component_layer_call_fn_60817Q*+0�-
&�#
!�
inputs����������
� "������������
Q__inference_layer_1dense_component_layer_call_and_return_conditional_losses_60877\,/�,
%�"
 �
inputs���������	
� "&�#
�
0����������
� �
6__inference_layer_1dense_component_layer_call_fn_60862O,/�,
%�"
 �
inputs���������	
� "������������
N__inference_layer_1nn_component_layer_call_and_return_conditional_losses_60912^-.0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
3__inference_layer_1nn_component_layer_call_fn_60894Q-.0�-
&�#
!�
inputs����������
� "������������
Q__inference_layer_2dense_component_layer_call_and_return_conditional_losses_60954\//�,
%�"
 �
inputs���������	
� "&�#
�
0����������
� �
6__inference_layer_2dense_component_layer_call_fn_60939O//�,
%�"
 �
inputs���������	
� "������������
N__inference_layer_2nn_component_layer_call_and_return_conditional_losses_60989^010�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
3__inference_layer_2nn_component_layer_call_fn_60971Q010�-
&�#
!�
inputs����������
� "������������
Q__inference_layer_5dense_component_layer_call_and_return_conditional_losses_61031[2/�,
%�"
 �
inputs���������	
� "%�"
�
0���������
� �
6__inference_layer_5dense_component_layer_call_fn_61016N2/�,
%�"
 �
inputs���������	
� "�����������
N__inference_layer_5nn_component_layer_call_and_return_conditional_losses_61066]340�-
&�#
!�
inputs����������
� "%�"
�
0���������
� �
3__inference_layer_5nn_component_layer_call_fn_61048P340�-
&�#
!�
inputs����������
� "����������:
__inference_loss_fn_0_61091'�

� 
� "� :
__inference_loss_fn_1_61104)�

� 
� "� :
__inference_loss_fn_2_61117*�

� 
� "� :
__inference_loss_fn_3_61130,�

� 
� "� :
__inference_loss_fn_4_61143-�

� 
� "� :
__inference_loss_fn_5_61156/�

� 
� "� :
__inference_loss_fn_6_611690�

� 
� "� :
__inference_loss_fn_7_611822�

� 
� "� :
__inference_loss_fn_8_611953�

� 
� "� �
K__inference_mean_shift_layer_layer_call_and_return_conditional_losses_60720[%/�,
%�"
 �
inputs���������	
� "%�"
�
0���������	
� �
0__inference_mean_shift_layer_layer_call_fn_60713N%/�,
%�"
 �
inputs���������	
� "����������	�
#__inference_signature_wrapper_59518�%&'()*+,-./01234���;�8
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
H__inference_sobolev_model_layer_call_and_return_conditional_losses_59088�%&'()*+,-./01234���4�1
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
H__inference_sobolev_model_layer_call_and_return_conditional_losses_59391�%&'()*+,-./01234���4�1
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
H__inference_sobolev_model_layer_call_and_return_conditional_losses_59954�%&'()*+,-./01234���.�+
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
H__inference_sobolev_model_layer_call_and_return_conditional_losses_60296�%&'()*+,-./01234���.�+
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
-__inference_sobolev_model_layer_call_fn_58214�%&'()*+,-./01234���4�1
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
-__inference_sobolev_model_layer_call_fn_58785�%&'()*+,-./01234���4�1
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
-__inference_sobolev_model_layer_call_fn_59565�%&'()*+,-./01234���.�+
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
-__inference_sobolev_model_layer_call_fn_59612�%&'()*+,-./01234���.�+
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
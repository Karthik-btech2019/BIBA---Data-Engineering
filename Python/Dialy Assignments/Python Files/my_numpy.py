#Importing numpy library
import numpy as np

# Creating a single dimensional array
list_1 = [1,2,3,4,5]
x=np.array(list_1)

# Creating a Multi dimensional array
list_2 = [[1,2,3,4,5],[6,7,8,9,10]]
y=np.array(list_1)

# Type of the array we have created
print('The type of list_1 :',type(x))
print('The type of list_2 :',type(y))

# Shape of the array we have created
print('The shape of list_1 :',np.shape(x))
print('The shape of list_2 :',np.shape(y))

# Size of the array we have created
print('The size of list_1 :',np.size(x))
print('The size of list_2 :',np.size(y))

# Creating an array with full of zeros
zer = np.zeros((4,5))
print(zer)

# Creating an array with full of single value
d = np.full((3,4),7)
print(d)

# Creating an Identity matrix
ident = np.identity(4)
print(ident)

# Creating a diagonal matrix with values 1,2,3,4
dia = np.diag([1,2,3,4])
print(dia)

# Printing a range of values
print(np.arange(6))
print(np.arange(2,19,3))

# Generate a specific count of numbers between a range with equal distance
print(np.linspace(0,25,6))

# Re-shaping an array in numpy
res = np.arange(20)
res.reshape(2,10)
print("The reshaped array: ",res)

# Flatenning of an array
flt = res.flatten()
print("The original array shape: ",flt)

# Generating a array of random numbers
rand_arr = np.random.rand(3)
print(rand_arr)

# Generating a array of random numbers b/w specific interval
rand_int = np.random.randint(4,15,size=(3,2))
print(rand_int)

# Math Functions of numpy
a=np.array([1,2,3,4])
b=np.array([5,6,7,8])
print(np.add(a,b)) # Addition of two array
print(np.subtract(a,b)) # Subtraction of two array
print(np.dot(a,b)) # Multiplication of two array

# Unary Functions in numpy
print(np.max(a)) # max value in the array
print(np.min(a)) # min value in the array
print(np.mean(a)) # mean value of an array
print(np.sum(a)) # Sum of an array

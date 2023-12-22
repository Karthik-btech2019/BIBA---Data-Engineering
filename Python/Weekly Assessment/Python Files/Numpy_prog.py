# importing the library numpy as np
import numpy as np

# Creating two arrays with different dimensions
arr_1 = np.array([83,57,94,43,72])
arr_2 = np.array([[1,2,3,4],[5,6,7,8]])

# displaying dimensions of the both arrays
print("The dimension of first array :",arr_1.ndim)
print("The dimension of second array :",arr_2.ndim)

# displaying size of the both arrays
print("The size of first array :",np.size(arr_1))
print("The size of second array :",np.size(arr_2))

# Creating an array with full of zeros
zer = np.zeros((4,6))
print(zer)

# Creating an array with full of single value
d = np.full((2,2),8)
print(d)

# Creating an array with range of values
h1 = np.arange(6)
h2 = np.arange(2,19,3)
print(h1)
print(h2)

# Creating an array with a specific count of numbers between a range with equal distance
h3 = np.linspace(0,25,6)
print(h3)

# Math Functions of numpy
a=np.array([5,4,3,2,1])
b=np.array([10,9,8,7,6])
print("The addition of two arrays :",np.add(a,b)) # Addition of two array
print("The subtraction of two arrays :",np.subtract(a,b)) # Subtraction of two array
print("The division of two arrays :",np.dot(a,b)) # Multiplication of two array

# Unary Functions in numpy
print("The maximum value in the array is :",np.max(a)) # max value in the array
print("The minimum value in the array is :",np.min(a)) # min value in the array
print("The mean value of the array is :",np.mean(a)) # mean value of an array
print("The sum value of the array is :",np.sum(a)) # Sum of an array

# Flatenning of an array
temp = np.array([[1,2,3,2,2],[9,7,3,6,2]])
print("The original array before flatenning :",temp)
flt = temp.flatten()
print("The original array after flatenning :",flt)

# Generating a array of random numbers
temp_rand = np.random.rand(6)
print(temp_rand)

# Generating a array of random numbers b/w specific interval
temp_rand_int = np.random.randint(2,20,size=(2,3))
print(temp_rand_int)

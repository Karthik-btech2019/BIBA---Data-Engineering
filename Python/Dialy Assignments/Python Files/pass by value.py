def add_func(x):
	x = x + 1 # New obj id is created 
	print("Inside function:", x)

num = 5
add_func(num)
print("Outside function:", num) # Print statement is executed with old obj id

def modify_list(my_list):
	my_list.append(4) # The value 4 will be added to [1,2,3]
	print("Inside function:", my_list)

my_numbers = [1, 2, 3]
modify_list(my_numbers) # values will be [1,2,3] passed
print("Outside function:", my_numbers) # After the func execution values will be [1,2,3,4]

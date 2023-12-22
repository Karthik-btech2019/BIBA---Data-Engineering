# Opening and readig the file
file = open('Test.txt','r')
file.close()
#print(file.read())

# Reading the first 10 char in the file
#print(file.read(10))

# writig the contents in the file
file1 = open('Test.txt','w')
file1.write('These are the content which are newly added')
file1.close

# Displaying the contents of the file which is newly added
file1 = open('Test.txt','r')
print(file1.read())
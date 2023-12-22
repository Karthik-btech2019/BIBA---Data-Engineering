class Dog:
    def __init__(self, name, age): # Intialization Func
        self.name = name 
        self.age = age

    def bark(self): # Display Func
        print(f"{self.name} is barking!")

dog1 = Dog("Rossy", 4) # creating obj 1
dog2 = Dog("Blacky", 7) # creating obj 2

# Accessing attributes and methods in the class
print(f"{dog1.name} is {dog1.age} years old.")
dog2.bark()
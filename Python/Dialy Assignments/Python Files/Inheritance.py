class Animal:
    def __init__(self, name): # Intialization Func
        self.name = name

    def speak(self): # Method speak of Animal class
        pass

class Cat(Animal): # Class cat is inherited with Animal
    def speak(self):
        print(f"{self.name} says Meow!")

class Dog(Animal): # Class dog is inherited with Animal
    def speak(self):
        print(f"{self.name} says Woof!")

# Object creation
cat = Cat("Kitty")
dog = Dog("Blacky")

# Calling the speak method
cat.speak()
dog.speak()
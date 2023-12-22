class Base1:  
    def __init__(self):  
          self.p = "Hi"  # Public Member
          self.__q = "Hello" # prvt Member
          print(self.__q)
          
# Creating a derived class  
class Derived1(Base1):  
      def __init__(self):    
        Base1.__init__(self)  # Calling base1 class as a constructor
        print("We will call the private member of base class: ")  
        print(self.__q)  
  
  
# Object Creation 
obj_1 = Base1()  
print(obj_1.p) 
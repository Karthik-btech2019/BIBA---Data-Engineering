#parent class
class Above:
    i = 5
    def fun1(self):
        print('You are in the parent class')

#subclass
class Below(Above):
    i=10
    def fun2(self):
        print('You are in the sub class')

temp1=Below() # Obj 1 is created for subclass
temp2=Above() # Obj 2 is created for parent class
temp1.fun1()
temp1.fun2()
temp2.fun1()
print(temp1.i)
print(temp2.i)
#temp2.fun2()
# Here, temp1 object can access both fun1 and fun2 methods whereas 
# the temp2 object can access only the fun1 method.
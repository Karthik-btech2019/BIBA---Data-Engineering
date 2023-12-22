#parent class 1
class A:
    demo1=0
    def fun1(self):
        print(self.demo1)

#parent class 2
class B:
    demo2=0
    def fun2(self):
        print(self.demo2)

#child class
class C(A, B):
    def fun3(self):
        print('You are in the child class')

# Main code
c = C() # Obj creation
c.demo1 = 10
c.demo2 = 5
c.fun3()
print('First number : ',c.demo1)
print('Second number : ',c.demo2)
# Here the child class c can both the parebts classes
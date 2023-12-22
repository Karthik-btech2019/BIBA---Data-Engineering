#parent class
class Parent:
    def fun1(self):
        print('Hey there, you are in the parent class')
 
#child class 1
class child1(Parent):
    def fun2(self):
        print('Hey there, you are in the child class 1')

#child class 2 
class child2(Parent):
    def fun3(self):
        print('Hey there, you are in the child class 2')
 
#child class 3
class child3(Parent):
    def fun4(self):
        print('Hey there, you are in the child class 3')
 
# main program
child_obj1 = child3()
child_obj2 = child2()
child_obj3 = child1()
child_obj1.fun1()
child_obj1.fun4()
child_obj2.fun1()
child_obj2.fun3()
child_obj3.fun1()
child_obj3.fun2()
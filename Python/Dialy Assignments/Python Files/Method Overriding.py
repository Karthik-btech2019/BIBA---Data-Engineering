class students:
    def __init__(self,name):
        self.name = name
    
    def print_info(self):
        print('The Student Name is:',self.name)
    
    def study(self):
        print('This Student can study well')

class karthik(students):
    def __init__(self, name,age,mark):
        super().__init__(name)
        self.age = age
        self.mark = mark
        
    def print_info(self):
        super().print_info()
        print('The Student age is: ',self.age)
        print('The scored mark of student is:',self.mark)

obj_karthik =  karthik('Karthik','21','78')
obj_karthik.study()
obj_karthik.print_info()
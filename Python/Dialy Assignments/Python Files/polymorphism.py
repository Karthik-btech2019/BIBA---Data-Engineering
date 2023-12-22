class Students:  
    def intro1(self):  
        print("There are multiple students studying in the school.")  
    def study(self):  
        print("Comman Student.")  
  
class karthik(Students):  
    def study(self):  
        print("This is Karthik")  
      
class Enayathulla(Students):  
    def study(self):  
        print("This is Enayathulla")  
      
obj_students = Students()  
obj_karthik = karthik()  
obj_enayathulla = Enayathulla()  
  
obj_students.intro1()  
obj_students.study()  
  
obj_karthik.intro1()  
obj_karthik.study()  
  
obj_enayathulla.intro1()  
obj_enayathulla.study() 
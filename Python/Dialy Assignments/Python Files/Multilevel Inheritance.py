#parent class
class vehicle:
    def functioning(self):
        print('vehicles are used for transportation')

#child class 1
class car(vehicle):
    def wheels(self):
        print('A car has 4 wheels')
       
#child class 2
class electric_car(car):
    def speciality(self):
        print('Electric car runs on electricity')

electric=electric_car() # Obj creation
electric.speciality() # Accesing method from child class 2
electric.wheels() # Accesing method from child class 1
electric.functioning() # Accesing method from parent class
# Here only one object is created for all the three classes which are inherited together
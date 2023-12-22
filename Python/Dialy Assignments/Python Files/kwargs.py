def intro(**data):
    print("\nData type of argument:",type(data))

    for key, value in data.items():
        print("{} is {}".format(key,value))

intro(Firstname="Walter", Lastname="white", Age=60, Phone=1234567890)
intro(Firstname="Jesse", Lastname="Pinkman", Email="jessepinkman@nomail.com", Country="New York", Age=26, Phone=9876543210)
def adder(*num):
    sum = 0
    
    for n in num:
        sum = sum + n

    print("Sum:",sum)

adder(6,22)
adder(7,33,6)
adder(4,7,1,9,5,2)
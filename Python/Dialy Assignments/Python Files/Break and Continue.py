# Break and Continue Statements
print("Continue Statement")
for i in range(1,15):
    if(i%5 == 0):
        continue
    else:
        print(i)
print()
print("Break Statement")
for i in range(1,10):
    if(i==6):
        break
    else:
        print(i)
print()
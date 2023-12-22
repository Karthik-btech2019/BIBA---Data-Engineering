def prime(n):
    f=0
    if(n==1):
        f=0
    elif(n>1):
        for i in range(2,n):
            if(n%i==0):
                f=1
                break
    return f
n=int(input('Enter the Number: '))
res=prime(n)
if(res==0):
    print(n,'is a prime number')
else:
    print(n,'is not a prime number')
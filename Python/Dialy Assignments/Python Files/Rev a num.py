num = int(input('Enter the Number: '))
res = 0

while num != 0:
    dig = num % 10
    res = res * 10 + dig
    num //= 10

print("Reversed Number: ",res)
yr = int(input('Enter year: '))

if yr % 100 == 0:
    if yr % 400 == 0:
        print(yr,'is a Leap Year')
    else:
        print(yr,'is Not a Leap Year')
elif yr % 4 == 0:
    print(yr,'is a Leap Year')
else:
    print(yr,' is Not a Leap Year')
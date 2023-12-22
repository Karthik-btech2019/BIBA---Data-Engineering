amount = float(input('Enter the Bill Amount'))

if amount <= 1000:
    discount = amount * 10 / 100
elif amount > 1000 and amount <= 3000:
    discount = amount * 15 / 100
elif amount > 3000 and amount <= 5000:
    discount = amount * 20 / 100
else:
    discount = amount * 25 / 100
discamount = amount - discount

print('Total Amount after Discount: ', discamount)

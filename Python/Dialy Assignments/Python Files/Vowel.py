charc=input("Enter the char: ")
low_vow = ['a','e','i','o','u']
upp_vow = ['A','E','I','O','U']
if charc in low_vow or charc in upp_vow:
    print(charc,'is a Vowel')
else:
    print(charc,'is not a vowel')
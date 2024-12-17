# 1. Print the first 10 natural numbers using for loop
print('First 10 natural numbers are : ')
for i in range (1,11):
    print(i,end=" ") 

# 2. Python program to check if the given string is a palindrome

string = str(input('Enter a String : ')).lower()
rev_string = string[::-1]
print(f'String is : {string}\nReverse String is : {rev_string}')
if(string == rev_string):
    print('String is a palindrome!!')
else:
    print('String is not a palindrome!!') 

# 3. Python program to check if a given number is an Armstrong number
num = int(input('Enter a number : '))
num_size = len(str(num))
total_sum = sum(int(number) ** num_size for number in str(num))
if(num == total_sum):
    print('Number is an armstrong number')
else:
    print('Number is not an armstrong number') 

# 4. Python program to get the Fibonacci series between 0 to 50
num = int(input('Enter the range : '))
a = 0
b = 1
print(f'The fibonacci sequence for {num} is : ')
for i in range(0,num):
    print(a,end=" ")
    a,b = b, a+b 

# 5. Python program to check the validity of password input by users
import re

def is_valid_password(password):
    # Check password length
    if len(password) < 8 or len(password) > 16:
        return "Password must be between 8 and 16 characters long."

    # Regular expressions to check the conditions
    if not re.search(r"[a-z]", password):  # At least 1 lowercase letter
        return "Password must contain at least one lowercase letter."
    if not re.search(r"[A-Z]", password):  # At least 1 uppercase letter
        return "Password must contain at least one uppercase letter."
    if not re.search(r"\d", password):     # At least 1 digit
        return "Password must contain at least one digit."
    if not re.search(r"[@#$%&!]", password):  # At least 1 special character
        return "Password must contain at least one special character (@, #, $, %, &, !)."
    
    # If all conditions are satisfied
    return "Password is valid."

# Input from the user
password = input("Enter your password: ")

# Check validity
result = is_valid_password(password)
print(result)
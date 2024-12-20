#  1. Write a Python program to Count all letters, digits, and special symbols from the given string
 
string = input('Enter your string : ').strip().lower()
char_count,digits_count,symbols_count = 0,0,0
for char in string:
    if char.isalpha():
        char_count += 1
    elif char.isdigit():
        digits_count += 1
    elif not char.isspace():
        symbols_count += 1
print('Total number of characters in the string is : ',char_count)
print('Total number of digits in the string is : ',digits_count)
print('Total number of symbols in the string is : ',symbols_count) 

# 2. Write a Python program to remove duplicate words of a given string.
 
string = input('Enter your string : ').strip().lower()
words = [x for x in string.split()]
exclusive_words = set()
for i in range(len(words)):
    if words[i] not in exclusive_words:
        exclusive_words.add(words[i])
print(" ".join(exclusive_words)) 

# 3. Write a Python program to count Uppercase, Lowercase, special character and numeric values in a given string
 
string = input('Enter your string : ').strip()
upper_count,lower_count,special_count,numeric_count = 0,0,0,0
for char in string:
    if char.isupper():
        upper_count += 1
    elif char.islower():
        lower_count += 1
    elif not char.isalnum() and not char.isspace():
        special_count += 1
    elif char.isdigit():
        numeric_count += 1
print('Total uppercase characters are : ',upper_count)
print('Total lowercase characters are : ',lower_count)
print('Total special character are : ',special_count)
print('Total Numeric characters are : ',numeric_count) 

#  4. Write a Python Count vowels in a string
 
string = input('Enter your string : ').strip().lower()
vowels_count = 0
for char in string:
    if char in 'aeiou':
        vowels_count += 1
print('String is : ',string)
print('Total number of vowels in the string is : ',vowels_count) 
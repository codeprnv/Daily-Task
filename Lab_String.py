# 1. Write a Python program to count the occurrences of each word in a given sentence string = “To change the overall look of your document. To change the look available in the gallery” 

# string = '''To change the overall look of your document. To change the look available in the gallery'''.strip()
string = input('Enter your String : ').strip()
print('String is : ',string)
words = [x for x in string.split()]
word_count = {}
for word in words:
    if word in word_count:
      word_count[word] += 1
    else:
       word_count[word] = 1
print(word_count) 

# 2. Write a Python program to remove a newline in Python String = "\nBest \nDeeptech \nPython \nTraining\n" 
string = ""
print("Enter your string (Press 'Enter' on an empty line to stop):")

while True:
    line = input()  # Take user input
    if line == "":  # Stop input if the user presses Enter without typing anything
        break
    string += line + "\n"  # Append the line with a newline character
# Now strip the leading and trailing whitespaces/newlines
string = string.strip()
# Split the string into words and remove extra spaces/newlines
words = [x.strip() for x in string.split('\n')]
# Join words back into a single string with spaces
new_string = ' '.join(words)
print('Original String is : ', string)
print('New String is : ', new_string) 

# 3. Write a Python program to reverse words in a string String = “Deeptech Python Training” 

string = input('Enter your string : ').strip().lower()
words  = [x for x in string.split()]
new_string = ' '.join(words[::-1])
print('Original String is : ', string)
print('Reversed String is : ',new_string) 

#  4. Write a Python program to count and display the vowels of a given text String=”Welcome to python Training”

string = input('Enter your string : ').strip().lower()
count = 0
for char in string:
    if char in 'aeiou':
        count += 1
print('Total number of vowels in the string is : ',count)
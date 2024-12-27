# Demonstration of Strings in Python

# 1. Creating and displaying strings
print("1. Creating Strings")
string1 = "Hello, World!"
string2 = 'Python is fun'
string3 = """This is a multi-line
string demonstration."""
print("String 1:", string1)
print("String 2:", string2)
print("String 3:\n", string3)

print("\n" + "-"*40)

# 2. String concatenation
print("2. String Concatenation")
greeting = "Hello"
name = "Alice"
full_greeting = greeting + ", " + name + "!"
print("Greeting:", full_greeting)

print("\n" + "-"*40)

# 3. String length
print("3. String Length")
print("Length of string1:", len(string1))

print("\n" + "-"*40)

# 4. Accessing individual characters
print("4. Accessing Characters")
print("First character of string1:", string1[0])
print("Last character of string1:", string1[-1])

print("\n" + "-"*40)

# 5. String slicing
print("5. String Slicing")
print("First 5 characters of string1:", string1[:5])
print("Last 5 characters of string1:", string1[-5:])

print("\n" + "-"*40)

# 6. String Methods
print("6. Common String Methods")
sample_string = "   Hello, Python!   "
print("Original String: '", sample_string, "'")
print("Uppercase:", sample_string.upper())
print("Lowercase:", sample_string.lower())
print("Stripped (remove spaces):", sample_string.strip())
print("Replaced 'Python' with 'World':", sample_string.replace("Python", "World"))

print("\n" + "-"*40)

# 7. Splitting and Joining Strings
print("7. Splitting and Joining Strings")
sentence = "Python is an amazing language"
words = sentence.split()  # Split sentence into words
print("Split into words:", words)
joined_sentence = " ".join(words)  # Join words back into a sentence
print("Joined sentence:", joined_sentence)

print("\n" + "-"*40)

# 8. Checking substrings
print("8. Checking Substrings")
print("Does 'Python' exist in sentence?", "Python" in sentence)
print("Does 'Java' exist in sentence?", "Java"  in sentence)

print("\nProgram Execution Complete!")

# f-strings
age = 20
print(f"My name is {name} and I am {age} years old.")

# str.format()
print("My name is {} and I am {} years old.".format(name, age))

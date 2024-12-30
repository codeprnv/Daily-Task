# 1. Write a Python program and calculate the mean of the below dictionary.
# Accept student name as key and in value accept marks
 
# Input student names and marks
name, marks = [], []
for i in range(4):
    name.append(input('Enter student name: '))
    marks.append(int(input('Enter marks: ')))

# Create the dictionary
d = {}
for k, v in zip(name, marks):
    d[k] = v

print('Dictionary is:', d)
# Calculate the mean of the marks
mean_marks = sum(d.values()) / len(d)
print('Mean of the marks is:', mean_marks)

# 2.Write a Python script to concatenate the following dictionaries to create a new one.
 
dict1 = {int(input('Enter the key for dict1 : ')): int(input('Enter the value for dict1 : ')) for i in range(3)}
dict2 = {int(input('Enter the key for dict2 : ')): int(input('Enter the value for dict2 : ')) for i in range(3)}
dict3 = {int(input('Enter the key for dict3 : ')): int(input('Enter the value for dict3 : ')) for i in range(3)}
print(f'Dict 1: {dict1}\nDict 2: {dict2}\nDict 3: {dict3}\n')
dict4 = {**dict1,**dict2,**dict3}
print(f'Concatenated dict is : {dict4}') 

# 3.Write a Python program to get the key, value and item in a dictionary.
# Accept the input as a employee details. name,no, ID, dep , des,DOJ, DOB, salary

# Input employee details
employee = {
    "name": input("Enter the employee's name: "),
    "no": input("Enter the employee's number: "),
    "ID": input("Enter the employee's ID: "),
    "dep": input("Enter the department: "),
    "des": input("Enter the designation: "),
    "DOJ": input("Enter the date of joining (DOJ): "),
    "DOB": input("Enter the date of birth (DOB): "),
    "salary": input("Enter the salary: ")
}
# Display Employee Details
print(f'Employee Details : \n{employee}')
# Display keys, values, and items
print("\nKeys in the dictionary:")
for key in employee.keys():
    print(key,end=', ')

print("\nValues in the dictionary:")
for value in employee.values():
    print(value,end=', ')

print("\nItems in the dictionary:")
for key, value in employee.items():
    print(f"{key}: {value}",end= ', ')

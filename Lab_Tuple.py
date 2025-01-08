#  1. Write a Python program to find the number of times 4 appears in the tuple.

tuple1 = tuple(int(input(f'Enter {i} value in tuple: ')) for i in range(1,6))
print(f'Tuple is: {tuple1}\nNumber of times 4 appears in the tuple is: ',tuple1.count(4))

# 2. Write a Python program to convert a list to a tuple

list1 = [int(input(f'Enter {i} value in list: ')) for i in range(1,6)]
print(f'List is: {list1}\nTuple is: {tuple(list1)}')

# 3. Write a Python program to calculate the sum of the numbers in a given tuple.

tuples_list = [(1, 2), (3, 4), (5, 6)]
new_tuple = tuple(sum(t) for t in tuples_list)
print(f'Tuple is: {tuples_list}')
print(f'Sum of the values in tuple is: {sum(new_tuple)}')

# 4. Write a python program and iterate the given tuples

employee1 = ("John Doe", 101, "Human Resources", 60000)
employee2 = ("Alice Smith", 102, "Marketing", 55000)
employee3 = ("Bob Johnson", 103, "Engineering", 75000)

for employee in (employee1, employee2, employee3):
    print(f"Name: {employee[0]}\nID: {employee[1]}\nDepartment: {employee[2]}\nSalary: {employee[3]}\n\n")
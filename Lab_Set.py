# 1. Write a Python program to Get Only unique items from two sets

set1 = {int(input(f'Enter the {i} value for set1: ')) for i in range(1, 6)} # total 5 values
print()
set2 = {int(input(f'Enter the {i} value for set2: ')) for i in range(1, 6)} # total 5 values
print(f'\nSet1 is: {set1}\nSet2 is: {set2}')
print(f'\nUnique items from both sets: {set1.union(set2)}')

# 2. Write a Python program to Return a set of elements present in Set A or B, but not both.

set1 = {int(input(f'Enter {i} value for set1: ')) for i in range(1,6)} # total 5 values
print()
set2 = {int(input(f'Enter {i} value for set2: ')) for i in range(1,6)} # total 5 values
print(f'\nSet1 is: {set1}\nSet2 is: {set2}')
print(f'\nItems which are present in set1 or set2 but not in both are: {set1.symmetric_difference(set2)}')

# 3. Write a Python program to Check if two sets have any elements in common. If yes, display the common elements.

set1 = {int(input(f'Enter {i} value for set1: ')) for i in range(1,6)} # total 5 values
print()
set2 = {int(input(f'Enter {i} value for set2: ')) for i in range(1,6)} # total 5 values
print(f'\nSet1 is: {set1}\nSet2 is: {set2}')
print(f'\nItems which are common in both sets are: {set1.intersection(set2)}')

# 4. Write a Python program to remove items from set1 that are not common to both set1 and set2.
# Collect 5 values for set1
set1 = {int(input(f'Enter {i} value for set1: ')) for i in range(1, 6)} 
print()
# Collect 5 values for set2
set2 = {int(input(f'Enter {i} value for set2: ')) for i in range(1, 6)} 
print(f'\nSet1 is: {set1}\nSet2 is: {set2}')

# Update set1 to retain only common items
set1.intersection_update(set2)
print(f'\nUpdated Set1 after keeping only common items: {set1}')  
#  1. Write a Python program to sum all the items in a list.
 
list = [int(x) for x in input("Enter the list : ").split()]
print('List is : ',list,'\nSum of all the items in the list is : ',sum(list)) 

#  2. Write a Python program to get the largest and smallest number from a list without builtin functions.
 
list = [int(x) for x in input("Enter the list : ").split()]
print('List is : ',list)
temp_large = float('-inf')
temp_small = float('inf')
for i in range(len(list)):
    if list[i] > temp_large:
        temp_large = list[i]
    elif list[i] < temp_small:
        temp_small = list[i]
print('Largest number in the list is : ',temp_large,'\nSmallest number in the list is : ',temp_small) 

#  3. Write a Python program to find duplicate values from a list and display those.
 
list = [x for x in input("Enter the list : ").split()]
duplicate_values = []
exclusive_values = []
print('List is : ',list)
for i in range(len(list)):
    if list[i] not in exclusive_values:
        exclusive_values.append(list[i])
    else:
        duplicate_values.append(list[i])
print('List without duplicate values is : ',exclusive_values)
print('Duplicate values are : ',duplicate_values) 

# 4. Write a Python program to split a given list into two parts where the length of the first part of the list is given.

list = [x for x in input("Enter the list : ").split()]
n = int(input('Enter the length of the first part of the list : '))
print('List is : ',list,'\nLength of list is : ',len(list))
print('First part of the list is : ',list[:n])
print('Second part of the list is : ',list[n:])

# 5. Write a Python program to traverse a given list in reverse order, and print the elements with the original index.

list = [x for x in input("Enter the list : ").split()]
print('List is : ',list)
for i in range(len(list)-1,-1,-1):
    print(f'Original index: {i}, Element: {list[i]}')
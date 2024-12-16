#Pattern 1
# * 
# * * 
# * * * 
# * * * * 
# * * * * * 
# * * * * * *
rows = int(input('Enter the number of rows : '))
print()
for i in range(1,rows+1):
   for j in range(1,i+1):
      print('*',end=' ')
   print()

# Pattern 2
# *******
# ******
# *****
# ****
# ***
# **
# *

rows = int(input("Enter the number of rows : "))
print()
for i in range(1,rows+1):
     print()
     for j in range(rows-i+1):
      print("*",end=" ")
 
# Pattern 3
# 1
# 10
# 101
# 1010
# 10101

rows = int(input('Enter the number of rows : '))
print()
for i in range(rows+1):
   print()
   for j in range(0,i+1):
        print(j % 2,end=' ') 

 # Pattern 4
# _ _ _ _ _ *
# _ _ _ _ * *
# _ _ _ * * *
# _ _ * * * *
# _ * * * * *
# * * * * * *
rows = int(input('Enter the number of rows : '))
print()
for i in range(1,rows+1):
    print()
    for j in range(rows):
        if(j<rows-i):
            print('_',end=" ")
        else:
            print('*',end=' ')

# Pattern 5 
# _ _ _ _ _ 1
# _ _ _ _ 0 1
# _ _ _ 1 0 1
# _ _ 0 1 0 1
# _ 1 0 1 0 1
# 0 1 0 1 0 1
rows = int(input('Enter the number of rows : '))
print()
for i in range(1,rows+1):
    print()
    for j in range(rows):
        if(j<rows-i):
            print("_",end=" ")
        else:
            print(j % 2,end=' ') 

# Pattern 6
# ***********
# -*********
# --*******
# ---*****
# ----***
# -----*
rows = int(input('Enter the number of rows : '))
print()

for i in range(rows):
    print('-' * i, end='')  # Hyphens increase as the row index increases
    print('*' * (2 * (rows - i) - 1))  # Stars decrease in odd numbers
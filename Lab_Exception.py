# 1. Write a Python program to handle a ZeroDivisionError exception when dividing a number by zero.
 
print('Program to handle ZeroDivisionError')

while True:
    try:
        num1 = float(input("Enter a number(Dividend): "))
        num2 = float(input("Enter a number(Divisor): "))
        result = 0
        result = num1/num2
    except ZeroDivisionError:
        print("Division by zero is not possible")
    else:
        print("Division is: ", result)
        break

 
# 2. Write a Python program that prompts the user to input an integer and raises a ValueError exception if the input is not a valid integer.

 
print("Program to handle ValueError")
while True:
    try:
        num = int(input('Enter a integer: '))
        print("Entered number is: ", num)
        break
    except ValueError:
        print('The number is not an integer! Please enter a valid integer')

 

#   3. create a program to accept choice from user and perform the operation according
# 	a. Try except
# 	b. try multiple except
# 	c. try except else
# 	d. finally
# 	e. try single except
# 	f. raising exception 
 
def try_except():
    try:
        num = int(input('Enter a number: '))
        print(f'You entered: {num}')
    except ValueError:
        print('Invalid input! Please enter a valid integer.')

def try_multiple_except():
    try:
        num = int(input('Enter a number: '))
        print(f'You entered: {num}')
        result = 10 / num  # Simulating another potential error (division by zero)
        print(f'Result of division by 10: {result}')
    except ValueError:
        print('Invalid input! Please enter a valid integer.')
    except ZeroDivisionError:
        print('Cannot divide by zero!')

def try_except_else():
    try:
        num = int(input('Enter a number: '))
        result = 10 / num
    except ValueError:
        print('Invalid input! Please enter a valid integer.')
    except ZeroDivisionError:
        print('Cannot divide by zero!')
    else:
        print(f'Result of division by 10: {result}')  # This block will only run if no exception occurs

def try_finally():
    try:
        num = int(input('Enter a number: '))
        print(f'You entered: {num}')
    except ValueError:
        print('Invalid input! Please enter a valid integer.')
    finally:
        print('This block always runs, whether there was an exception or not.')

def try_single_except():
    try:
        num = int(input('Enter a number: '))
        print(f'You entered: {num}')
    except ValueError:
        print('Invalid input! Please enter a valid integer.')

def raise_exception():
    try:
        num = int(input('Enter a number (enter 0 to raise an exception): '))
        if num == 0:
            raise ValueError('Manually raised exception: Number cannot be zero!')
        print(f'You entered: {num}')
    except ValueError as e:
        print(e)

def main():
    print("Choose an operation:")
    print("1. Try Except")
    print("2. Try Multiple Except")
    print("3. Try Except Else")
    print("4. Finally")
    print("5. Try Single Except")
    print("6. Raising Exception")

    choice = int(input('Enter your choice (1-6): '))

    if choice == 1:
        try_except()
    elif choice == 2:
        try_multiple_except()
    elif choice == 3:
        try_except_else()
    elif choice == 4:
        try_finally()
    elif choice == 5:
        try_single_except()
    elif choice == 6:
        raise_exception()
    else:
        print("Invalid choice!")

if __name__ == '__main__':
    main()
 

# 4. Write a Python program that prompts the user to input two numbers and raises a
# TypeError exception if the inputs are not numerical

def get_number_input(prompt):
    try:
        value = float(input(prompt))
        return value
    except ValueError:
        raise TypeError("Invalid input! Please enter a numerical value.")

def main():
    try:
        num1 = get_number_input('Enter the first number: ')
        num2 = get_number_input('Enter the second number: ')
        print(f'You entered: {num1} and {num2}')
    except TypeError as e:
        print(e)

if __name__ == "__main__":
    main()

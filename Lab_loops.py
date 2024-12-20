def display_menu(category):
    # Displays the menu items of a given category.
    print(f"\n{category}:")
    for k, v in menu[category].items():
        print(f"{k}. {v[0]} - {v[1]} Rs.")


def handle_category(category):
    # Handles the selection and addition of items from a category.
    global total
    while True:
        display_menu(category)
        try:
            item_choice = int(input(f"\nSelect your {category[:-1].lower()} (by number, 0 to go back): "))
            if item_choice == 0:
                break  # Exit the category menu
            elif item_choice in menu[category]:
                selected_item = menu[category][item_choice]
                order.append(selected_item)
                total += selected_item[1]
                print(f"Added {selected_item[0]} to your order.")
            else:
                print("Invalid choice. Please try again.")
        except ValueError:
            print("Invalid input. Please enter a number.")


def main_menu():
    # Displays the main menu and navigates to submenus based on user input.
    while True:
        print("\n1. Starters\n2. Main Course\n3. Desserts\n4. Drinks\n5. Generate Bill")
        try:
            choice = int(input("Select your choice: "))
            if choice == 5:
                break  # Exit the main menu
            elif choice in [1, 2, 3, 4]:
                category = list(menu.keys())[choice - 1]
                handle_category(category)  # Navigate to the selected category
            else:
                print("Invalid choice. Please select a valid option.")
        except ValueError:
            print("Invalid input. Please enter a number.")


# Indian menu dictionary
menu = {
    'Starters': {1: ("Paneer Tikka", 200), 2: ("Samosa", 50), 3: ("Aloo Tikki", 100)},
    'Main Course': {1: ("Butter Chicken", 400), 2: ("Paneer Butter Masala", 350), 3: ("Dal Makhani", 300)},
    'Desserts': {1: ("Gulab Jamun", 80), 2: ("Rasgulla", 90), 3: ("Kheer", 120)},
    'Drinks': {1: ("Masala Chai", 50), 2: ("Lassi", 100), 3: ("Nimbu Pani", 40)}
}

order = []
total = 0

print("Welcome to My Hotel")
main_menu()

# Generate Bill
print("\nYour Order Summary:")
for item in order:
    print(f"{item[0]} - {item[1]} Rs.")
print(f"Total Bill: {total} Rs.\nThank you for dining with us!")
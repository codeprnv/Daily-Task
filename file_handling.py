def read_file(file_path):
    try:
        with open(file_path, 'r') as file:
            content = file.read()
            print(content)
    except FileNotFoundError:
        print("File not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

def write_file(file_path):
    try:
        with open(file_path, 'a') as file:
            data = input("Enter data to write to the file: ")
            file.write(data + '\n')
            print("Data written to the file successfully.")
    except Exception as e:
        print(f"An error occurred: {e}")

def search_file(file_path):
    try:
        with open(file_path, 'r') as file:
            search_term = input("Enter the data to search for: ")
            content = file.readlines()
            found = False
            for line in content:
                if search_term in line:
                    # print(f"Found: {line.strip()}")
                    found = True
            if not found:
                print("Data not found in the file.")
    except FileNotFoundError:
        print("File not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

def main():
    file_path = input("Enter the file path: ")
    print("Choose an option:")
    print("1. Read file")
    print("2. Write file")
    print("3. Search file")
    choice = input("Enter your choice (1/2/3): ")

    if choice == '1':
        read_file(file_path)
    elif choice == '2':
        write_file(file_path)
    elif choice == '3':
        search_file(file_path)
    else:
        print("Invalid choice. Please enter 1, 2, or 3.")

main()
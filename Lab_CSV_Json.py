#  1. Write a Python script to read a CSV file with missing values and replace the
# missing values with a default value (e.g., "Unknown" or 0).
 
import pandas as pd

# Define the default values for missing data
default_values = {
    'Username': 'Unknown',
    'Identifier': 0,  # Ensure missing Identifier values default to 0
    'First name': 'Unknown',
    'Last name': 'Unknown'
}
# Read the CSV file with the correct delimiter
df = pd.read_csv('username.csv', sep=';')
# Fill missing values
df.fillna(value=default_values, inplace=True)
# Print the cleaned data
print(df)
 

# 2. Write a Python script to validate JSON data by checking if it contains required
# fields and if the data types are correct (e.g., integers for IDs, strings for names).
 
import json

def validate_json(data):
    required_fields = {
        "Product ID": int,
        "Name": str,
        "Price": float
    }
    is_valid = True
    
    for idx, item in enumerate(data):
        for field, field_type in required_fields.items():
            if field not in item:
                print(f"Error: Missing '{field}' in item {idx}: {item}")
                is_valid = False
            elif not isinstance(item[field], field_type):
                print(f"Error: '{field}' in item {idx} is not of type {field_type.__name__}: {item}")
                is_valid = False
    
    return is_valid

# Load JSON data from file safely
json_data = []
try:
    with open('data.json', 'r', encoding='utf-8') as file:
        json_data = json.load(file)
    if not isinstance(json_data, list):
        raise ValueError("JSON data must be a list of objects.")
except (FileNotFoundError, json.JSONDecodeError, ValueError) as e:
    print(f"Error loading JSON file: {e}")

# Validate the JSON data
if json_data and validate_json(json_data):
    print("JSON data is valid.")
else:
    print("JSON data is invalid or empty.")

 
 
# 3.Write a Python script to read a CSV file and filter out rows based on a specific
# condition (e.g., only rows where the Age is greater than 30). Save the filtered rows
# to a new CSV file.
 
import csv

# Read the CSV file
with open('people.csv', mode='r') as infile:
    reader = csv.DictReader(infile)
    # Filter rows where Age > 30
    filtered_rows = [row for row in reader if int(row['Age']) > 30]

# Write the filtered rows to a new CSV file
with open('filtered_people.csv', mode='w', newline='') as outfile:
    fieldnames = ['Name', 'Age', 'City']
    writer = csv.DictWriter(outfile, fieldnames=fieldnames)

    # Write header
    writer.writeheader()

    # Write filtered rows
    writer.writerows(filtered_rows)

print("Filtered rows have been saved to 'filtered_people.csv'")

 
 
# 4. Write a Python script to read a JSON file containing an array of objects and
# convert it to a CSV file.
# Sample Data (product.json):
# [
# {"Product ID": 101, "Name": "Widget A", "Price": 25.50},
# {"Product ID": 102, "Name": "Widget B", "Price": 40.00}
# ]

import json
import csv

# Read the JSON file
with open('product.json', mode='r') as infile:
    data = json.load(infile)

# Write the data to a CSV file
with open('product.csv', mode='w', newline='') as outfile:
    # Extract fieldnames from the first item in the JSON array
    fieldnames = data[0].keys()

    writer = csv.DictWriter(outfile, fieldnames=fieldnames)

    # Write header
    writer.writeheader()

    # Write data rows
    writer.writerows(data)

print("Data has been successfully converted to 'product.csv'")


 ### Day 05 - Challenges 
 ## Python Basics for DevOps
 
🔹 Challenge 1: Create a Python program that accepts a user’s name as input and prints a greeting message.

```python
# This program accepts a user’s name as input and prints a greeting message.
name = input("Enter your name: ")
print(f"Hello, {name}!")
```


🔹 Challenge 2: Write a script that reads a text file and counts the number of words in it.

```python
# Below scripts reads README.md file and prints number of words in it.
with open('README.md', 'r') as file:
    fileContent = file.read()
    words = fileContent.split()
    number_of_words = len(words)
    print('Number of words in text file :', number_of_words)

```
🔹 Challenge 3: Create a Python script that generates a random password of 12 characters.

```python
# this script will print random password of 12 characters 
import string
import random

characters = string.ascii_letters + string.digits + string.punctuation
randomPassword = "".join( random.choices(characters,k=12))
print(f"Random Password: {randomPassword}")
```
🔹 Challenge 4: Implement a Python program that checks if a number is prime.

```python 
def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, n):
        if n % i == 0:
            return False
    return True

number = int(input("Enter a number: "))
if is_prime(number):
    print(f"{number} is a prime number")
else:
    print(f"{number} is not a prime number")
```    
🔹 Challenge 5: Write a script that reads a list of server names from a file and pings each one.

```python

import subprocess

#Open the file
with open('servers.txt','r') as file:
    # read each server name from the file
    for line in file:
        #ping each server
        response = subprocess.run(['ping','-c','1', line.strip()], stdout=subprocess.PIPE)
        #print the output
        print(response.stdout.decode('UTF-8'))
    file.close()
```

🔹 Challenge 6: Use the requests module to fetch and display data from a public API (e.g., JSONPlaceholder).

```python

# pip3 install requests
import requests 

response = requests.get('https://jsonplaceholder.typicode.com/todos/1')
print(response.json())

```

🔹 Challenge 7: Automate a simple task using Python (e.g., renaming multiple files in a directory).

```python

import os

DIR_PATH = "path-to-directory" #replace with actual path
NEW_FILE_PREFIX = "new_"

# fetch file list from directory 
file_list = os.listdir(DIR_PATH)

# change directory to foler path
os.chdir(DIR_PATH)
# For each file, rename filename
for file in file_list:
    print("Old Name - " + file)
    print("New Name - " + NEW_FILE_PREFIX + file)
    os.rename(file, NEW_FILE_PREFIX + file)
print("All files renamed successfully!")

```

🔹 Challenge 8: Create a Python script that monitors CPU and memory usage every 5 seconds.

```python

import psutil
import time

print("Monitoring CPU and memory usage every 5 seconds...")
print("Press Ctrl+C to stop the monitoring.")
while True:
    cpu = psutil.cpu_percent(interval=1)
    memory = psutil.virtual_memory().percent
    print(f"CPU: {cpu}%")
    print(f"Memory: {memory}%")
    time.sleep(5)

```
🔹 Challenge 9: Write a Python program that creates a user in Linux using subprocess and verifies the creation.

```python

import subprocess

USERNAME = "testuser"

result = subprocess.run(["id", USERNAME], capture_output=True, text=True)
if result.returncode == 0:
    print(f"User {USERNAME} exists")
else:
    print(f"User {USERNAME} does not exist, Creating user...")
   
    subprocess.run(["sudo", "useradd", USERNAME])
    print("User created, Verifying user creation")
   
    subprocess.run(["id", USERNAME])

```
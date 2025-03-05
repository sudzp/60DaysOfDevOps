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
🔹 Challenge 7: Automate a simple task using Python (e.g., renaming multiple files in a directory).
🔹 Challenge 8: Create a Python script that monitors CPU and memory usage every 5 seconds.
🔹 Challenge 9: Write a Python program that creates a user in Linux using subprocess and verifies the creation.
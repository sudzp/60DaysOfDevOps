import subprocess

output = subprocess.check_output(["echo", "Hello, World!"], text=True)
print(output.strip())  # Output: Hello, World!
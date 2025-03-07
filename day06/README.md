## Day 06 - Challenges

🔹 Challenge 1: Create a Python script that connects to a remote server via SSH using paramiko.

   [Connects to remote server](/day06/challenge1.py)

🔹 Challenge 2: Build a simple Flask API with an endpoint that returns system health (CPU/memory usage).

```python

# pip install flask psutil
from flask import Flask, jsonify
import psutil

app = Flask(__name__)

@app.route("/health", methods=["GET"])
def health_check():
    """Returns system health status (CPU & memory usage)"""
    health_data = {
        "cpu_usage": psutil.cpu_percent(interval=1),
        "memory_usage": psutil.virtual_memory().percent
    }
    return jsonify(health_data), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)

```

```bash
# Test using curl
curl http://127.0.0.1:5000/health

#output:
{
  "cpu_usage": 2.7,
  "memory_usage": 79.0
}
```
🔹 Challenge 3: Create a Django app, set up models, views, and templates for a basic CRUD operation

   [Django Proeject with CRUD operations](/day06/django_project/README.md)

.
🔹 Challenge 4: Use Python subprocess to execute system commands and capture output.

🔹 Challenge 5: Build a Flask API that fetches live weather data from an external API and returns it in JSON format.
🔹 Challenge 6: Deploy a Django application on AWS EC2 with Nginx & Gunicorn.
🔹 Challenge 7: Write a Python program to parse log files and extract failed SSH login attempts.
🔹 Challenge 8: Use fabric or paramiko to automate SSH login and run commands on multiple servers.
🔹 Challenge 9: Implement a Python script that monitors Docker containers and sends alerts if a container crashes.
🔹 Challenge 10: Write a Python program that checks a GitHub repository for new commits and triggers a build job.
🔹 Challenge 11: Package your Python script as a CLI tool using argparse and click.
🔹 Challenge 12: Use any python binary package builder like PyInstaller, Nuitka, Cython, PyOxidizer etc, so that code will be heard to reverse engineer and become easily distributable
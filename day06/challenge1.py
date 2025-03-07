#Create a Python script that connects to a remote server via SSH using paramiko.
import paramiko

# SSH Server Details
HOSTNAME = "0.0.0.0"
PORT = 22  # Default SSH port
USERNAME = "your_username"
PASSWORD = "your_password"

try:
    # Create an SSH client
    ssh = paramiko.SSHClient()
    
    # Automatically add the server's host key (avoid "host key verification failed" error)
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

    # Connect to the remote server
    ssh.connect(HOSTNAME, PORT, USERNAME, PASSWORD)

    print(f"✅ Successfully connected to {HOSTNAME}")

    # Run a command on the remote server
    stdin, stdout, stderr = ssh.exec_command("uname -a")
    # Print the command output
    print("📌 Remote Server Output:")
    print(stdout.read().decode())

    # Close the connection
    ssh.close()

except paramiko.AuthenticationException:
    print("❌ Authentication failed. Check your username and password.")
except paramiko.SSHException as e:
    print(f"❌ SSH error: {e}")
except Exception as e:
    print(f"❌ Error: {e}")

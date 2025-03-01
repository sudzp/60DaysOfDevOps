#!/bin/bash

#Automate user account creation – Write a script that takes the username as an argument, checks, if the user exists, gives the message “user already exists“ else creates a new user, adds it to a “devops“ group, and sets up a default home directory

if [ $# -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USERNAME=$1
GROUPNAME="devops"


if getent passwd "$USERNAME" > /dev/null; then
    echo "✅ User '$USERNAME' already exists."
    exit 1
else
    echo "User '$USERNAME' does not exist. Proceeding with creation."
fi

if ! getent group "$GROUPNAME" >/dev/null; then
    echo "Group $GROUPNAME does not exist, creating it"
    sudo groupadd "$GROUPNAME"
fi

sudo useradd -m -s /bin/bash -G "$GROUPNAME" "$USERNAME"
echo "User $USERNAME has been created successfully"
   



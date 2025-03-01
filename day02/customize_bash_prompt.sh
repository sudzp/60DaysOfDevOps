#!/bin/bash

#Customize your Bash prompt to display the current user and working directory. (Hint: export PS1="\u@\h:\w\$ "), try to make it permanent, so terminal closing and opening don’t default!


echo 'export PS1="\u@\h:\w\$ "' >> ~/.bashrc
source ~/.bashrc
#!/bin/bash

#Write a script that installs multiple packages at once (e.g., git, vim, curl). 
#The script should check if each package is already installed before attempting installation.
#Ubuntu

PACKAGES=("git" "vim" "curl")  #List of packages to install

install_packages(){

     if dpkg -s $1 &> /dev/null   #Check if package is installed
            then
                echo "$1 is already installed."
            else
                apt-get install $1 -y   #Install package
    fi

}


for package in "${PACKAGES[@]}"; do  
    install_packages $package
done    

echo "All packages have been installed."


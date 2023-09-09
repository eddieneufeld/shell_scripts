#!/bin/bash

#Version 1.0 (in progress)

#Updating repositories

echo "Updating repositories."
apt update -y && apt upgrade -y

#Check if python3 is installed and installing if not installed

echo "Checking if Python3 is installed..."

if dpkg -l | grep -q python3; then
  echo "Python 3 is installed."
else
  echo "Python 3 is not installed, installing Python 3."
  apt install python3
  echo "Python 3 is now installed."
fi

echo "Checking if pip is installed..."

if command -v pip >/dev/null 2>&1; then
  echo "pip is installed."
else
  echo "pip is not installed, installing pip."
  apt install -y python3-pip
fi"



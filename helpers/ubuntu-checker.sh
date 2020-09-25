#!/bin/sh

UBUNTU_VERSION=$(lsb_release -r -s)

echo "Checking Ubuntu"
echo "==============="
echo "Ubuntu Version: $UBUNTU_VERSION"
echo "Shell: $SHELL"

# Check for Docker
bash ./helpers/node-checker.sh
if [ $? -eq 1 ]; then
    exit 1
fi
bash ./helpers/code-checker.sh
if [ $? -eq 1 ]; then
    exit 1
fi
bash ./helpers/python-checker.sh
if [ $? -eq 1 ]; then
    exit 1
fi
bash ./helpers/docker-checker.sh
if [ $? -eq 1 ]; then
    exit 1
fi

echo "Ubuntu is OK"
echo "---------------"

echo "Congratulations, you have everything installed properly!"

#!/bin/bash

sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora -y
sudo add-apt-repository ppa:ansible/ansible -y
sudo add-apt-repository ppa:atareao/atareao -y
sudo apt update
sudo apt install my-weather-indicator ansible -y
sudo apt-get --only-upgrade install firefox -y


#!/bin/bash

sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora -y
sudo add-apt-repository ppa:atareao/atareao -y
sudo apt update
sudo apt install my-weather-indicator
sudo apt upgrade firefox


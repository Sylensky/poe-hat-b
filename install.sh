#!/bin/bash
# 2022-01-01 Charles Godwin
#  Derived from https://www.waveshare.com/wiki/PoE_HAT_(B)
#   Derived from https://gist.github.com/CharlesGodwin/adda3532c070f6f6c735927a5d6e8555
# enable i2c interface if necessary
# Read the following for details
# https://gist.github.com/CharlesGodwin/adda3532c070f6f6c735927a5d6e8555#file-waveshare-poe-hat-md
#
IS_I2C=`sudo raspi-config nonint get_i2c`
[ $IS_I2C -ne 0 ]&&sudo raspi-config nonint do_i2c 0
# install required packages
sudo apt update
sudo apt install -y python3-pip python3-pil libatlas-base-dev
sudo pip3 install RPi.GPIO smbus numpy


sudo cp service/poe-hat.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable poe-hat.service
sudo systemctl restart poe-hat.service
sudo systemctl status poe-hat.service --no-pager
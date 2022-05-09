
# Basic information:
```
POE Hat (B) for the Raspberry PI from WaveShare has been tested on Debian Bullseye. 
```
The original sources belong to Waveshare which can be obtained under this link: https://www.waveshare.com/wiki/PoE_HAT_(B)

This fork fixes some mismatching behaviours like the following:

- fixed cut IP address
- changed second line position to avoid flickering
- fan cools the PI 10 Degrees lower
- removed Fan on/off indication because it is useless
- added system usage in percent


## Installing as systemd service:

    chmod +x install.sh
    ./install.sh

## Basic usage:
Test the program in the **examples** directory:

python2

    sudo python main.py

python3

    sudo python3 main.py
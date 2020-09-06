sudo apt -y upgrade
sudo apt install -y python3 python3-pip libsdl1.2-dev libsdl-mixer1.2 python-smbus python3-rpi.gpio python3-sdl2 python3-pygame python3-configobj python3-httplib2
sudo pip3 install --upgrade setuptools
sudo pip3 install rpi_ws281x adafruit-circuitpython-neopixel nfcpy

amixer set PCM 100%

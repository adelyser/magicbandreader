# magicbandreader
Reads magic bands and plays sounds and lights up leds, just like the real thing.
Use webhook URLS to turn on lights or unlock locks.

# 3D Printer pieces:
Find the pieces to make this model on thingiverse:
https://www.thingiverse.com/thing:4271417

# Upgrade
If you are upgrading from a previous version, be sure to re-run the install script to pick up the new required files:
sudo sh install.sh. 

BACKUP YOUR magicband.py BEFORE UPGRADING so you don't lose you sequences configurations! You'll need to migrate any old configurations that were stored in the magicband.py file to the new settings.conf file.

# New Features

* All configurations are now stored in settings.conf file instead of editing the python file directly.
* New color support including rainbow (see example config for details) Make sure you are using the newest color names.
* Webhook support for turning on lights or opening locks when a magic band is played
* Multiple sequence support per individual magic bands. (A single magicband can have multiple sequences assigned to it.)
* Use SPI for controlling WS2812 Pixels. This allows on-board headphone jack to work and is more efficient than using PWM from GPIO-18.

#Basic wiring:
* Connect PIXEL LEDS to DATA on GPIO-10 (pin 19), pixel GnD to GND (pin 6) and pixel positive to +5v (pin 2)
* Connect USB RFID reader
* Connect Speaker via headphone jack (Headphone jack works as long as you use GPIO-10)

# Installation

* See YouTube video https://youtu.be/HJ8CTLgmcSk  (UPDATED video coming June 15th 2020) 

* Install Raspbian lite onto pi. BE SURE TO INSTALL THE LITE VERSION: https://www.raspberrypi.org/downloads/raspberry-pi-os/ 
* Run "sudo raspi-config" and enable SPI:
	* 5 - Interfacing Options
	* P4 - SPI
	* Select "Yes" when prompted
	* reboot
* Download magicbandreader-master from github (the big green "CLONE OR DOWNLOAD" button)
* Copy magicbandreader.zip to pi and unzip it
* cd magicband-reader-master
* sudo sh install.sh  (this will take awhile)
* cp * /home/pi/.
* sudo reboot now
* log back into pi
* vi /home/pi/settings.conf. and edit the led counts for your build
* sudo vi /etc/rc.local
  * Before the exit 0 line add:
  * (cd /home/pi; sudo python3 magicband.py &)
* sudo reboot now

See videos for more details
Note: if you are using the older videos to follow along, the main difference with the latest code is the settings.conf. Updated videos coming soon. 

# Config

Set the ring_pixels and mickey_pixel counts to the correct value

# Troubleshooting

If the install fails, try running this command first:
sudo apt-get update




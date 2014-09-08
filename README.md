#####Presenting python-paho-tcz
This is a script for downloading and packing the Eclipse Paho MQTT client python module as a TCZ extension for use on Tiny Core Linux (TCL). It is meant to be run on the target device (a Raspberry Pi running piCore in my case), but cross compilation is certainly possible too. It outputs a file called `python-paho.tcz` that contains the packaged files. Also included are the other metadata files (ie. `python-paho.tcz.dep`, `python-paho.tcz.info`, `python-paho.tcz.list`, and `python-paho.tcz.md5.txt`).

DISCLAIMER: This script has been tested on piCore 5.3. It may work with other versions of TCL, but YMMV...

#####Prerequisites
You'll need a Tiny Core Linux installation with the following extensions (and all their dependencies) installed.
* python
* make
* git
* squashfs-tools-4.x
* findutils
* tcztools (download from [here](https://github.com/MSumulong/tcztools))

#####How to build
* Clone this repository by running `git clone git://github.com/atbrask/python-paho-tcz.git`
* Type `cd python-paho-tcz` and run `make`

PYTHON = python
TCZ-PACK = tcz-pack

all: clean get build

build:
	cd org.eclipse.paho.mqtt.python && $(PYTHON) setup.py install --prefix=../python-paho/usr/local
	sudo echo "/etc/sysconfig/tcedir" > /opt/.tce_dir # <-- huge hack
	$(TCZ-PACK) python-paho
	cp /tmp/tcztools/python-paho.tcz .
	cp /tmp/tcztools/python-paho.tcz.list .
	cp /tmp/tcztools/python-paho.tcz.md5.txt .

clean:
	rm -rf org.eclipse.paho.mqtt.python python-paho

get:
	git clone http://git.eclipse.org/gitroot/paho/org.eclipse.paho.mqtt.python.git

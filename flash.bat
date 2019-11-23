scp .\.pio\build\sanguino_atmega1284p\firmware.hex pi@octopi.fritz.box:.
ssh pi@octopi.fritz.box "avrdude -C /etc/avrdude.conf -v -p atmega1284p -carduino -P ${1:-/dev/ttyUSB0} -b115200 -D -Uflash:w:firmware.hex:i"

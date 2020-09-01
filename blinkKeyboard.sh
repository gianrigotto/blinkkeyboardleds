#! /usr/bin/bash

numLock='/sys/devices/pci0000:00/0000:00:08.1/0000:0a:00.3/usb3/3-1/3-1:1.0/0003:045E:07F8.0001/input/input2/input2::numlock/brightness'

capsLock='/sys/devices/pci0000:00/0000:00:08.1/0000:0a:00.3/usb3/3-1/3-1:1.0/0003:045E:07F8.0001/input/input2/input2::capslock/brightness'

scrollLock='/sys/devices/pci0000:00/0000:00:08.1/0000:0a:00.3/usb3/3-1/3-1:1.0/0003:045E:07F8.0001/input/input2/input2::scrolllock/brightness'

echo "Seu teclado ira piscar!!!!!!"

while [ 1 ]
do
    echo 1 > $numLock
    sleep 1
    echo 0 > $numLock
    echo 1 > $capsLock
    sleep 1
    echo 0 > $capsLock
    echo 1 > $scrollLock
    sleep 1
    echo 0 > $scrollLock

done

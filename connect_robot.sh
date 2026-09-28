#!/bin/bash
PI_IP="192.168.1.185"
sudo modprobe vhci-hcd
# 아래 BusID는 본인의 장치에 맞게 수정하세요
sudo usbip attach -r $PI_IP -b 1-1.3.4.1
sudo usbip attach -r $PI_IP -b 1-1.3.4.2
sudo usbip attach -r $PI_IP -b 1-1.3.4.3
sudo usbip attach -r $PI_IP -b 1-1.3.4.4
echo "Robot Arms Connected!"

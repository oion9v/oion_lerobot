#!/bin/bash
sudo modprobe usbip_host
sudo usbipd -D
# 시리얼 번호와 그 장치가 꽂혀 있는 물리적 Bus ID를 직접 매핑
# (이 값들은 장치를 다른 포트로 옮기지 않는 한 고정입니다)
bind_device() {
    SERIAL=$1
    BUSID=$2
    
    echo "Binding $SERIAL to $BUSID..."
    sudo usbip bind -b $BUSID
}

# 시리얼 번호와 Bus ID를 매칭해서 호출
bind_device "58CD176829" "1-1.3.4.1"
bind_device "58CD177144" "1-1.3.4.2"
bind_device "5B14032434" "1-1.3.4.3"
bind_device "58CD177407" "1-1.3.4.4"

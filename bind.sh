#!/bin/sh
source utility/functions.sh
source profile/drogger/dg-pro1rw.sh
print_config

sudo rfcomm -rML 0 bind $DEVICE_NUMBER $ADDRESS $CHANNEL
sudo stty -F /dev/rfcomm$DEVICE_NUMBER $BAUD_RATE cs$CHARACTOR_SIZE

#!/bin/bash
#Usuniecie uprawnien Read/Write dla Joystickow js0 i js1
sudo chmod 000 /dev/input/js0
sudo chmod 000 /dev/input/js1
./hex

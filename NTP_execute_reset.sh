#!/bin/bash

DATA=$1

sudo systemctl stop ntp.service
sudo timedatectl set-time "$DATA"
sudo systemctl start ntp.service

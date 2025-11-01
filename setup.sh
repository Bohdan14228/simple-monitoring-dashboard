#!/bin/bash

sudo apt update -y
wget -O /tmp/netdata-kickstart.sh https://get.netdata.cloud/kickstart.sh && sh /tmp/netdata-kickstart.sh -y
sudo systemctl enable netdata
sudo systemctl start netdata

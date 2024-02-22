#!/bin/bash

apt-get update -y && apt-get upgrade -y
apt-get install neovim -y
apt-get install -y libboost-all-dev
apt-get install -y libpcl-dev
apt-get install -y python3-pcl
apt-get install -y ros-dashing-pcl-conversions
apt-get install -y ros-dashing-pcl-msgs
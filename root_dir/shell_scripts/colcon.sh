#!/bin/bash

#colcon
. /opt/ros/dashing/setup.sh
apt-get update && apt-get upgrade && apt update --fix-missing
apt install python3-colcon-common-extensions -y
echo "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash" | tee -a /opt/ros/dashing/setup.bash
rm -rf /var/lib/apt/lists/*
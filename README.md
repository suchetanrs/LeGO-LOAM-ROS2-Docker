1. Clone the repository
2. cd into the repository
3. Run ```./docker_install.sh```
4. Run ```sudo docker build -t lego-loam-dashing:18.04 .```
5. Run ```xhost +```
6. Run ```sudo docker-compose run ros2-dashing-base```

This will start a new container.

7. After you are inside the docker, to verify if you have x-11 forwarding setup correctly, run ```xeyes```

To launch a new terminal in this running container, in a new terminal on your host machine run ```sudo docker ps``` Make note of the container ID of the lego-loam container. 

Then run ```sudo docker exec -it <container id> bash```

The container has free communication with all topics from your host machine. All the topics running on your host will be visible inside the container.


To build LeGO LOAM, inside the container run the following
```
cd /home/lego/gtsam-4.0.0-alpha2
mkdir build && cd build
cmake ..
sudo make install -j6
cd /home/lego/dev_ws
colcon build --symlink-install
source /opt/ros/dashing/setup.bash
source /home/lego/dev_ws/install/setup.bash
```

To launch LeGO LOAM, edit the following files based on your preference.
```
1. /home/lego/dev_ws/src/LeGO-LOAM-SR/LeGO-LOAM/launch/run.launch.py
2. /home/lego/dev_ws/src/LeGO-LOAM-SR/LeGO-LOAM/config/loam_config.yaml
```

After you have done this, run ```ros2 launch lego_loam_sr run.launch.py```

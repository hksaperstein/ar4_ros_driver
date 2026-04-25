#!/bin/bash

# Update and install ROS Dependencies
rosdep update --rosdistro $ROS_DISTRO
rosdep install --from-paths src --ignore-src -r -y

# Build ROS package
colcon build

# source built ROS package
echo "Sourcing install/setup.bash"
source ./install/setup.bash

echo
echo "After building the first time, add 'source $(dirname "${BASH_SOURCE[0]}")/install/setup.bash to your ~/.bashrc'"
echo "Once this is added, starting a new terminal or docker session will automatically setup your ar4_ros_driver pacakge!"
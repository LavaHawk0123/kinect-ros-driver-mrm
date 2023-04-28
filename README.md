# Setup ROS Driver for Kinect on Ubuntu 20.04`
## Install the Packages : 

### cd into the src folder of your workspace and enter the following:

```
git clone https://github.com/LavaHawk0123/kinect-ros-driver-mrm.git
```

now run : 

```
cd kinect-ros-driver-mrm
```
### after this run : 


```
chmod +x setup.sh
./setup.sh
```

Once the file path /etc/udev/rules.d/51-kinect.rules, enter and save : 

```
# ATTR{product}=="Xbox NUI Motor"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02b0", MODE="0666"
# ATTR{product}=="Xbox NUI Audio"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02ad", MODE="0666"
# ATTR{product}=="Xbox NUI Camera"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02ae", MODE="0666"
# ATTR{product}=="Xbox NUI Motor"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02c2", MODE="0666"
# ATTR{product}=="Xbox NUI Motor"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02be", MODE="0666"
# ATTR{product}=="Xbox NUI Motor"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02bf", MODE="0666"
```

### Press Ctrl+O to save and Ctrl+X to close the file. Now execute : 

```
cd ../../
source /opt/ros/noetic/setup.bash
catkin_make
source devel/setup.bash
```

### After the packages successfully build, execute : 

```
roslaunch freenect_launch freenect.launch depth_registration:=true
```
### Note : in the global options, set "Fixed Frame" to "camera_link" and visualze the pointcloud on the topic ‘/camera/depth_registered/points’
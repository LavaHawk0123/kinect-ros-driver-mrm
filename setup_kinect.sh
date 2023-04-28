sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git-core cmake freeglut3-dev pkg-config build-essential libxmu-dev libxi-dev libusb-1.0-0-dev
cd libfreenect
mkdir build
cd build
cmake -L ..
make
sudo make install
sudo ldconfig /usr/local/lib64/
sudo adduser $USER video
sudo adduser $USER plugdev
sudo nano /etc/udev/rules.d/51-kinect.rules

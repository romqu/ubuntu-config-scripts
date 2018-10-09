sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get --no-install-recommends install nvidia-390
sudo apt-get install intel-microcode
sudo apt-get --no-install-recommends install nvidia-settings
sudo apt-get install prime-select


sudo bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo update-initramfs -u

prime-select intel
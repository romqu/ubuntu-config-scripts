sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get --no-install-recommends install nvidia-390
sudo apt-get install intel-microcode
sudo apt-get --no-install-recommends install nvidia-settings
sudo apt-get install prime-select

prime-select intel
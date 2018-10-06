sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT.*$/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/'

sudo update-grub
sudo update-grub2
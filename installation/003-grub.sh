sudo sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT.*$/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/' /etc/default/grub

sudo update-grub
sudo update-grub2

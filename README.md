# ubuntu

Steps to install ubuntu xx from network/minimal image with i3 gaps and co.
Follow one by one.

## purge packages we don't need

```bash
sudo apt-get --auto-remove purge ufw
sudo apt-get purge vi
sudo apt-get purge vim
sudo apt-get purge vim-tiny
```

## commons

```bash
sudo apt-get install software-properties-common
sudo apt-get install ubuntu-drivers-common
sudo apt-get install python-software-properties
```

## wicd for network/wifi

```bash
sudo apt-get install wicd-daemon wicd-curses wicd-cli
wicd-curses
sudo systemctl restart wicd.service
```

## git

```bash
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get install git
```

## mesa

```bash
sudo apt-get install mesa-utils
sudo apt-get install mesa-utils-extra
```

## nano

```bash
sudo apt-get install nano
```

## grub

```bash
sudo nano /etc/default/grub

sudo update-grub
sudo update-grub2
```

## acpi

```bash
sudo apt-get install acpi
```

## tlp (thinkpad)

```bash
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp
sudo apt-get --no-install-recommends install tlp
sudo apt-get --no-install-recommends install tlp-rdw
sudo apt-get install tp-smapi-dkms
sudo apt-get install acpi-call-dkms
sudo tlp start
```

## graphic drivers

```bash
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get --no-install-recommends install nvidia-390
sudo apt-get install intel-microcode
sudo apt-get --no-install-recommends install nvidia-settings
sudo apt-get install prime-select

prime-select intel
```

## xorg/X11

```bash
sudo apt-get install xorg
sudo apt-get install xserver-xorg
sudo apt-get install xserver-common
sudo apt-get install xserver-core
sudo apt-get install xserver-xorg-core
```

## xbacklight control

```bash
sudo apt-get install xbacklight
```

## compton

```bash
sudo add-apt-repository ppa:kelleyk/compton
sudo apt-get update
sudo apt-get install compton
```

## alsa and pulseaudio

```bash
sudo apt-get install alsa-utils
sudo apt-get install alsa-base
sudo apt-get install pulseaudio
sudo apt-get install pulseaudio-utils
```

## urxvt

```bash
sudo apt-get install rxvt-unicode
```

```bash
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get install git
sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install vim
sudo apt-get install htop
sudo apt-get install wicd-daemon wicd-curses wicd-cli
sudo apt-get install acpi
sudo apt-get install rxvt-unicode
sudo apt-get install xorg
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get --no-install-recommends install nvidia-390
sudo apt-get --no-install-recommends install nvidia-settings
sudo add-apt-repository ppa:kelleyk/compton
sudo apt-get install compton
sudo apt-get --auto-remove purge ubuntu-drivers-common
sudo apt-get install prime-select
sudo apt-get --no-install-recommends install nvidia-prime
sudo apt-get --auto-remove purge lightdm
sudo apt-get install intel-microcode
cd /opt
sudo git clone https://www.github.com/Airblader/i3 i3-gaps
sudo apt-get install mesa-utils
sudo apt-get install mesa-utils-extra
sudo apt-get install xserver-xorg
sudo apt-get install xserver-common
sudo apt-get install xserver-core
sudo apt-get install xserver-xorg-core
sudo apt-get install zlib
sudo apt install xserver-xorg-input-synaptics
sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get --no-install-recommends install tlp
sudo apt-get --no-install-recommends install tlp-rdw
sudo apt-get install tp-smapi-dkms
sudo apt-get install acpi-call-dkms
sudo apt-get install ethtool
sudo apt-get install xbacklight
sudo apt-get purge lightdm
sudo apt-get install alsa-utils
sudo apt-get install alsa-base
sudo apt-get install pulseaudio
install pulseaudio-util
sudo git clone https://github.com/DaveDavenport/rofi
sudo git submodule update --init
sudo apt-get install bison
sudo apt-get install flex
sudo apt-get install xcb
sudo apt-get purge xcb
sudo apt-get install xcb-ewmh
sudo apt-get install libxcb-ewmh-dev
sudo apt-get install librsvg-2.0
sudo apt-get install librsvg2-dev
sudo apt-get install check
sudo apt-get purge check
sudo  git clone git://github.com/vivien/i3blocks
make install
sudo apt-get install git-core gcc make autoconf yodl libncursesw5-devtexinfo
sudo apt-get install --no-recommedations
sudo apt-get install -h
sudo apt-get install --no-install-recommends texinfo
sudo apt-get install texinfo
sudo apt-get install  yodl
sudo apt-get install libncursesw5-dev
sudo apt-get install make
sudo apt-get install gcc
sudo apt-get install autoconf
sudo apt-get install imagemagick
sudo git git://git.code.sf.net/p/zsh/code
sudo git http://git.code.sf.net/p/zsh/code
sudo git clone git://git.code.sf.net/p/zsh/code
nano installed_packages.txt
rm installed_packages.tx*
rm -rf installed_packages.tx*
sudo apt-get install mpstat
sudo apt-get install sysstat
sudo git clone https://github.com/i3/i3lock.git
cat  ~/.zhistory | grep -E "install|purge|git" > ~/installed_packages.txt
nano ~/installed_packages.txt
autoreconf --force --install
./install-sh
nano install-sh
nano install-sh .
./install-sh .
sudo apt-get install libxcb-composite0 libxcb-composite0-dev
sudo apt-get install libjpeg-turbo8
sudo apt-get install libjpeg9
sudo apt-get install libjpeg
sudo apt-get install libjpeg-dev
sudo apt-get install libpam0g-dev
sudo make uninstall
sudo git clone https://github.com/PandorasFox/i3lock-color.git
sudo make install
sudo apt-get install i7z
sudo apt-get install unzip
sudo apt-get purge p7zip
sudo apt-get install p7zip
sudo apt-get install libnotify4 libnss3 libgconf-2-4 libsecret-1-0
sudo apt-get purge code-insiders
sudo apt-get install code-insiders
sudo apt-get install  libgtk2.0-0
sudo apt-get install xautolock
mkdir git-projects
git clone ssh://git@git.kroon.fi:10022/romqu/server-configs.git
cd git-projects
git clone ssh://git@git.kroon.fi:10022/clocktojob/auth-api.git
git clone ssh://git@git.kroon.fi:10022/clicktojob/auth-api.git
sudo apt-get install build-essential
sudo apt-get install curl
sudo apt-get purge nodejs
sudo apt-get install nodejs
npm install npm@latest -g
sudo npm install npm@latest -g
cd git-projects/clicktojob/auth-api
npm install
npm install -g ts-node
sudo npm install -g ts-node
sudo npm install -g typescript
sudo npm install -D -g ts-node
sudo npm install -save-dev -g ts-node
sudo apt-get install libgtkglext
sudo apt-get install libgtkglext1
sudo apt --fix-broken install
sudo apt-get purge anydesk
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1
sudo apt-get install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils ia32-libs-multiarch
sudo apt-get install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-util
sudo apt-get install qemu-kvm
sudo apt-get install libvirt-bin #ubuntu-vm-builder bridge-utils ia32-libs-multiarch
sudo apt-get install libvirt-bin
sudo apt-get install ubuntu-vm-builder bridge-utils ia32-libs-multiarch
sudo apt-get install ubuntu-vm-builder bridge-utils
sudo apt-get install ia32-libs-multiarch
sudo dpkg --add-architecture i386
sudo apt-get install ia32-libs-multiarch
sudo apt-get install gcc-multilib
sudo apt-get install -y libc6-i386 lib32stdc++6 lib32gcc1 lib32ncurses5 lib32z1
sudo apt-get install lib64stdc++6:i386
sudo apt install mesa-utils
sudo apt-get purge anydesk
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get install google-chrome-unstable
sudo apt-get purge google-chrome
cat  ~/.zhistory | grep -E "install|purge|git|add" > ~/installed_packages.txt
```

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

## firefox nightly

```bash
sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
sudo apt-get update
sudo apt-get install firefox-trunk
```

## vs code insiders

```bash
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install code-insiders
```

## postgresql

```bash
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-10
```

export GPG_TTY=$(tty)

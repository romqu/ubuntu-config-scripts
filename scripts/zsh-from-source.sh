#!/bin/bash
# Build Zsh from sources on Ubuntu.
# From http://zsh.sourceforge.net/Arc/git.html and sources INSTALL file.

# Make script gives up on any error
set -e

# Some packages may be missing
sudo apt-get install -y git-core gcc make autoconf yodl libncursesw5-dev texinfo checkinstall

# Clone zsh repo and change to it
git clone git://git.code.sf.net/p/zsh/code
cd zsh

# Make configure
./Util/preconfig

# Options from Ubuntu Zsh package rules file (http://launchpad.net/ubuntu/+source/zsh)
./configure --prefix=/usr \
            --mandir=/usr/share/man \
            --bindir=/bin \
            --infodir=/usr/share/info \
            --enable-maildir-support \
            --enable-max-jobtable-size=256 \
            --enable-etcdir=/etc/zsh \
            --enable-function-subdirs \
            --enable-site-fndir=/usr/local/share/zsh/site-functions \
            --enable-fndir=/usr/share/zsh/functions \
            --with-tcsetpgrp \
            --with-term-lib="ncursesw tinfo" \
            --enable-cap \
            --enable-pcre \
            --enable-readnullcmd=pager \
            --enable-custom-patchlevel=Debian \
            --enable-additional-fpath=/usr/share/zsh/vendor-functions,/usr/share/zsh/vendor-completions \
            LDFLAGS="-Wl,--as-needed -g -Wl,-Bsymbolic-functions -Wl,-z,relro"

# Compile, test and install
make -j4
make check
sudo make install

# add zsh to shells
sudo sh -c "echo /bin/zsh >> /etc/shells"
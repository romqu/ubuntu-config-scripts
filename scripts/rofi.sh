cd /opt

git clone https://github.com/DaveDavenport/rofi

sudo chown -R roman:roman rofi

cd rofi/

git submodule update --init

autoreconf -i

mkdir build

cd build

../configure

make -j8

sudo make install 
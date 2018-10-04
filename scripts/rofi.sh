git clone https://github.com/DaveDavenport/rofi
cd rofi/

git submodule update --init

autoreconf -i

mkdir build

cd build

../configure

make -j8

sudo make install 
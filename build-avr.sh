#!/bin/sh
if test -d "build"; then
  echo "Removing old build directory..."
  rm -rf build
fi
mkdir build
cd build
echo "Building the avr-gcc project..."
../configure --prefix=/usr --program-prefix=avr- --target=avr --enable-ld --enable-languages=c,c++ --disable-nls --disable-shared --disable-libssp --disable-threads --disable-libgomp --with-dwarf2 --with-avrlibc --with-system-zlib --disable-multilib --without-headers --with-newlib
make


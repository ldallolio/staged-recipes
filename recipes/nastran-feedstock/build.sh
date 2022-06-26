#!/bin/sh

ls
aclocal
automake --add-missing
autoconf
./configure --prefix=$PREFIX

make
make check
make install

cp -Rf rf $PREFIX/share/nastran/
cp -Rf inp $PREFIX/share/nastran/
cp -Rf test $PREFIX/share/nastran/
mkdir -p $PREFIX/bin/mds/
cp -Rf bin/nastran.sh $PREFIX/bin/mds/nasrun.sh
ln -s bin/nastran bin/mds/

#!/bin/sh

cp -Rf $RECIPE_DIR/dist/* $SRC_DIR/
sed -i 's/EXTERNAL        LSHIFT,RSHIFT,ANDF,ORF/EXTERNAL        LSHIFT,RSHIFT,ANDF,ORF,LINK/' $SRC_DIR/mis/endsys.f
sed -i '3 i \ \ \ \ \ \ EXTERNAL        LINK' $SRC_DIR/mis/pexit.f
sed -i '$ d' $SRC_DIR/mis/smc2cd.f
sed -i '$ d' $SRC_DIR/mis/smc2cs.f
sed -i '$ d' $SRC_DIR/mis/smc2rd.f
sed -i '$ d' $SRC_DIR/mis/smc2rs.f
sed -i '3 i \ \ \ \ \ \ EXTERNAL        RENAME' $SRC_DIR/mis/sofut.f
sed -i '$ d' $SRC_DIR/mis/trd1e.f
sed -i '3 d' $SRC_DIR/mds/PAKBLK.COM
sed -i 's/CALL ETIME(ARRAY)/CALL ETIME(ARRAY,RESULT)/' $SRC_DIR/mds/cputim.f
sed -i "s/'SCRA','TCHX'/4HSCRA , 4HTCHX/" $SRC_DIR/mds/dbmdia.f
sed -i '3 i \ \ \ \ \ \ REAL RESULT' $SRC_DIR/mds/nastim.f
sed -i 's/CALL ETIME(ARRAY)/CALL ETIME(ARRAY,RESULT)/' $SRC_DIR/mds/nastim.f
aclocal
automake --add-missing
autoconf
./configure --prefix=$PREFIX

make -j $CPU_COUNT
#make check #-j $CPU_COUNT
make install

cp -Rf rf $PREFIX/share/nastran/
cp -Rf inp $PREFIX/share/nastran/
cp -Rf test $PREFIX/share/nastran/
mkdir -p $PREFIX/bin/mds/
cp $PREFIX/bin/nastran $PREFIX/bin/mds/
cp $SRC_DIR/bin/nastran.sh $PREFIX/bin/mds/nasrun.sh
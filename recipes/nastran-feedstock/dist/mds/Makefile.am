# what flags you want to pass to the Fortran compiler & linker
FFLAGS = -g -w -fno-range-check -fno-automatic -fcray-pointer -std=legacy

# this lists the binaries to produce, the (non-PHONY, binary) targets in
# the previous manual Makefile
bin_PROGRAMS = nastran
nastran_SOURCES = bckrec.f bldpk.f bldpki.f bldpkn.f \
bpack.f btstrp.f bufchk.f bunpak.f \
bunpk.f          close.f corwds.f \
cputim.f dbmalb.f dbmdfc.f dbmdia.f \
dbmdmp.f dbmfdp.f dbmint.f dbmio.f \
dbmlbk.f dbmmgr.f dbmmov.f dbmnam.f \
dbmrel.f dbmrlb.f dbmsrf.f dbmstf.f \
defcor.f delscr.f dmpmat.f dsblpk.f \
dsbpnk.f dsbrc1.f dsclos.f dscpos.f \
dsefwr.f dsfwr1.f dsgefl.f dsgncl.f \
dsgnop.f dsgnrd.f dsgnwr.f dshxdd.f \
dshxdp.f dsinqr.f dsiodd.f dsipk1.f \
dsmsg1.f dsmsg.f dsnmdd.f dsnmrd.f \
dsnmwr.f dsocff.f dsopen.f dsopff.f \
dsprcl.f dsrdmb.f dsrdnb.f dsrdpb.f \
dsread.f dsrlse.f dssdcb.f dssend.f \
dssize.f dsskfb.f dsskff.f dsskrc.f \
dsspos.f dsupkc.f dswrit.f dswrnb.f \
dswrt1.f dsxfsz.f dszbkk.f dummy.f \
emgsoc.f endget.f endgtb.f endput.f \
eof.f errtrc.f exford.f exfort.f \
exfowr.f fbsv.f filpos.f forwrt.f \
fwdrec.f getstb.f getstr.f geturn.f \
gnfiat.f ibmopn.f intpk.f intpki.f \
k2b.f khrbcd.f khrfn1.f khrfn4.f \
klock.f mapfns.f nasopn.f nastim.f \
nastrn.f numtyp.f open.f pack.f \
putstr.f qopen.f rdblk.f read.f \
rectyp.f rewind.f rfopen.f savpos.f \
second.f sgino.f skpfil.f sofio.f \
tdate.f umffd.f unpack.f vaxsch.f \
waltim.f write.f wrtblk.f wrtfmt.f \
zblpki.f zntpki.f

nastran_LDADD = ../mis/libnastran.a ../bd/libnastbd.a

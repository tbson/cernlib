*
* $Id: rzcstr.inc,v 1.1.1.1 1996/03/06 10:46:55 mclareni Exp $
*
* $Log: rzcstr.inc,v $
* Revision 1.1.1.1  1996/03/06 10:46:55  mclareni
* Zebra
*
*
#ifndef CERNLIB_ZEBRA_RZCSTR_INC
#define CERNLIB_ZEBRA_RZCSTR_INC
*
*
* rzcstr.inc
*
      PARAMETER     (MAXFILES=128, MAXSTRIP=21)
      CHARACTER*128  RZNAMES(MAXFILES),RZSFILE(MAXSTRIP)
      COMMON/RZCSTRC/RZNAMES,RZSFILE
      COMMON/RZCSTRI/ISLAST,ISTRIP(MAXFILES),NSTRIP(MAXFILES),
     +                      NRSTRIP(MAXFILES)
C

#endif

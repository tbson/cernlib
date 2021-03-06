*
* $Id: eudini.F,v 1.1.1.1 1996/03/08 16:58:50 mclareni Exp $
*
* $Log: eudini.F,v $
* Revision 1.1.1.1  1996/03/08 16:58:50  mclareni
* Eurodec
*
*
#include "eurodec/pilot.h"
      SUBROUTINE EUDINI
C.----------------------------------------------------------------------
C.
C.    INITIALIZATION ROUTINE FOR THE EUROJET FRAGMENTATION AND
C.    DECAY PACKAGE. MAKES A CALL TO 'EUDTAB' TO READ PARTICLE AND
C.    PARTICLE DECAY INFORMATION FROM EXTERNAL DATA FILE: LUN0.
C.    USER MODIFICATIONS FROM TITLE FILE ARE INCLUDED AS WELL: LUN1.
C.    LAST UPDATE: 14/08/89
C.
C.----------------------------------------------------------------------
#include "eurodec/eudver.inc"
#include "eurodec/inpout.inc"
C--
C--   LOAD COMMON BLOCKS
      CALL EUDCIN
C--
C--   PRINT INFO
      WRITE(LUN2,9000)
      WRITE(LUN2,9020)
      WRITE(LUN2,9010)
      WRITE(LUN2,9030)
      IV1=IVDEC1/100
      IV2=IVDEC1-IV1*100
      WRITE(LUN2,9040) IV1,IV2
      IV1=IVDEC2/10000
      IV2=(IVDEC2-IV1*10000)/100
      IV3=IVDEC2-IV1*10000-IV2*100
      WRITE(LUN2,9050) IV1,IV2,IV3
      WRITE(LUN2,9030)
      WRITE(LUN2,9060)
      WRITE(LUN2,9070)
      WRITE(LUN2,9010)
      WRITE(LUN2,9020)
C--
C--   READ PARTICLE AND PARTICLE DECAY TABLE, FILL COMMON BLOCKS
      CALL EUDTAB
C--
C--   READ INFORMATION FROM TITLE FILE AND MODIFY PARTICLE INFORMATION
      CALL EUDTIT
C--
C--   INITIALIZE BRANCHING MODES AND FRACTIONS OF HEAVY OBJECTS
      CALL INIBRN
C--
C--   INVERT FRAGMENTATION FUNCTIONS
      CALL INVERT
      RETURN
 9000 FORMAT(1H1)
 9010 FORMAT(1H )
 9020 FORMAT(1H ,80('*'))
 9030 FORMAT(1H ,27X,25('='))
 9040 FORMAT(1H ,28X,'EURODEC, Version: ',I2,'.',I2)
 9050 FORMAT(1H ,29X,'Released at: ',I2,'/',I2,'/',I2)
 9060 FORMAT(1H0,20X,'EUROJET Fragmentation and Decay Package')
 9070 FORMAT(1H0,16X,
     &'Monte Carlo Program - by A. Ali and B. van Eijk')
      END

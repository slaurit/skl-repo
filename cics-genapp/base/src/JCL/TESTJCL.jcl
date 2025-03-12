//TESTJCL JOB 'TEST-JCL',MSGLEVEL=(1,1),MSGCLASS=R,NOTIFY=&SYSUID
//*
//********************************************************************
//*
//* THIS JCL IS TO SIMULATE EXECUTION OF A PROGRAM
//*
//*
//* HEX EXAMPLES:
//*
//* VAR HEX 0D
//* ------>
//* VAR HEX 15
//* ------>
//* VAR HEX 25
//* ------>
//* VAR HEX 5F
//* ------> ^
//* VAR HEX AD
//* ------> [
//* VAR HEX B0
//* ------> ¬
//* VAR HEX BA
//* ------> Ý
//* VAR HEX BB
//* ------> ¨
//* VAR HEX BD
//* ------> ]
//* VAR HEX FA
//* ------> ³
//* VAR HEX E0
//* ------> \
//*
//*
//********************************************************************
//JOBLIB  DD DSN=SLAURIT.HEX.LOAD,DISP=SHR
//********************************************************************
//RUNC  EXEC PGM=TESTPGM1
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*SYSMDUMP DD DSNAME=DB2DUMP.FMTTRC.RANDY,DISP=(,CATLG),
//*         UNIT=3390,SPACE=(CYL,(900,300),RLSE),VOL=SER=DUMP01
//*

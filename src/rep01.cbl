      ******************************************************************
      * Author: Mr. Arch Brooks
      * Date: 2020-9-2 10:41:57
      * Purpose: Report Generator Subroutine
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'REP01'.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT PRINTFILE ASSIGN TO "STOCK-SUMMARY".
       DATA DIVISION.
       FILE SECTION.
       FD  PRINTFILE
           REPORT IS STOCK-SUMMARY.
       LINKAGE SECTION.
       01 DISPLAY_BUFF PIC x(80).
       REPORT SECTION.
       RD  STOCK-SUMMARY
           PAGE LIMIT 64.
       01  TYPE PH.
           05  TL PIC X(80).
       01  TYPE DE.
           05  DEE PIC X(80).
       01  TYPE CF.
           05  CFF PIC X(80).
       PROCEDURE DIVISION USING DISPLAY_BUFF.
           DISPLAY "In Called Program REP01".
           DISPLAY DISPLAY_BUFF.
       EXIT-PROGRAM.
       END PROGRAM REP01.

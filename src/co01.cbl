      ******************************************************************
      * Author: Mr. Arch Brooks
      * Date: 2020-9-2 10:41:57
      * Purpose: Short Description Goes Here
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. cob01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  DBUFF Pic X(80).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            MOVE "The Top Place." to DBUFF.
            call 'UTIL' using DBUFF;
            call 'IO01' using DBUFF;
            STOP RUN.
       END PROGRAM cob01.

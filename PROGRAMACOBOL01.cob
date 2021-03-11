      ******************************************************************
      * Author: CHRISTIAN    CHRISA
      * Date: 10/03/2021
      * Purpose: RECEBER E FORMATAR A SAÍDA DE UM CPF
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMACOBOL01.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-CPF     PIC 9(11) VALUE ZEROS.
       77 WRK-CPF-ED  PIC ZZZ.ZZZ.ZZ9/99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "DIGITE SEU CPF (APENAS NUMEROS):".
            ACCEPT WRK-CPF.
            MOVE WRK-CPF TO WRK-CPF-ED.
            DISPLAY "CPF: " WRK-CPF-ED.
            STOP RUN.

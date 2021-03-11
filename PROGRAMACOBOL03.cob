      ******************************************************************
      * Author: CHRISTIAN    CHRISA
      * Date: 10/03/2021
      * Purpose: RECEBER E VALOR DA COMPRA E BANDEIRA, USAR LAÇO
      * CONDICIONAL PARA TOMADA DE DECISÃO: CASO VALOR >=100 E
      * BANDEIRA = VISA, TERÁ DESCONTO DE 10%
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMACOBOL03.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VALOR        PIC 9(4)V99 VALUE ZEROS.
       77 wrk-VALOR-ED     PIC $ZZ9,99.
       77 WRK-BANDEIRA     PIC 9 VALUE ZEROS.
       77 WRK-VALOR-FINAL  PIC $Z.ZZ9,99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "DIGITE O VALOR DA COMPRA:".
            ACCEPT WRK-VALOR.
            DISPLAY "SELECIONE A BANDEIRA DO CARTAO".
            DISPLAY "1. VISA    2. MASTERCARD    3. ELO"
            ACCEPT WRK-BANDEIRA.
            IF WRK-VALOR >= 1000 AND WRK-BANDEIRA = 1
                COMPUTE WRK-VALOR-FINAL = (WRK-VALOR * 0,10) - WRK-VALOR.
                DISPLAY "VOCE PAGARA " WRK-VALOR-FINAL " COM DESCONTO"
            ELSE
                MOVE WRK-VALOR TO WRK-VALOR-ED
                DISPLAY "VOCE PAGARA " WRK-VALOR-ED " SEM DESCONTO"
            END-IF.
            STOP RUN.

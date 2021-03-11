************************************************************************
      * Author: CHRISTIAN    CHRISA
      * Date: 10/03/2021
      * Purpose: RECEBER DUAS VENDAS, CALCULAR E IMPRIMIR
      * A MÉDIA ARITMÉTICA DESTAS VENDAS FORMATADA EM CIFRÃO
      * PONTOS E CASAS DECIMAIS
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMACOBOL02.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VENDA1     PIC 9(5)V99 VALUE ZEROS.
       77 WRK-VENDA2     PIC 9(5)V99 VALUE ZEROS.
       77 WRK-MEDIA      PIC $ZZ.ZZ9,99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "DIGITE O VALOR DA PRIMEIRA VENDA:".
            ACCEPT WRK-VENDA1.
            DISPLAY "DIGITE O VALOR DA SEGUNDA VENDA:".
            ACCEPT WRK-VENDA2.
            COMPUTE WRK-MEDIA = (WRK-VENDA1 + WRK-VENDA2) / 2.
            DISPLAY "MEDIA: " WRK-MEDIA.
            STOP RUN.

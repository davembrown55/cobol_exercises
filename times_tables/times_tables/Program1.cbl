       program-id. Program1 as "times_tables.Program1".

       data division.
       working-storage section.

       01 THE-NUMBER PIC 99.
       01 MULTIPLIER PIC 99.
       01 TOTAL PIC 9999.
       01 THE-NUMBER-TO-PRINT PIC Z9.
       01 MULTIPLIER-TO-PRINT PIC Z9.
       01 TOTAL-TO-PRINT PIC ZZZ9.

       procedure division.

       INITIALISE.
           MOVE 00 TO MULTIPLIER.
           MOVE 00 TO THE-NUMBER.
           MOVE 0000 TO TOTAL.
       RUN-PROGRAM.
           PERFORM GET-NUMBER.
           PERFORM DISPLAY-TIMES-TABLE.
           PERFORM END-PROGRAM.

       GET-NUMBER.
           DISPLAY "Which times table (number)?"
           ACCEPT THE-NUMBER.

       DISPLAY-TIMES-TABLE.
           MOVE THE-NUMBER TO THE-NUMBER-TO-PRINT
           DISPLAY "THE " THE-NUMBER-TO-PRINT " TIMES TABLE IS:"

           PERFORM VARYING MULTIPLIER FROM 0 BY 1 UNTIL MULTIPLIER > 12 
               MULTIPLY MULTIPLIER BY THE-NUMBER GIVING TOTAL

               MOVE MULTIPLIER TO MULTIPLIER-TO-PRINT
               MOVE TOTAL TO TOTAL-TO-PRINT

               DISPLAY MULTIPLIER-TO-PRINT " * " THE-NUMBER-TO-PRINT " = " TOTAL-TO-PRINT
           END-PERFORM.

       END-PROGRAM.
           goback.

       end program Program1.

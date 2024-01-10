       program-id. Program1 as "times_tables.Program1".

       data division.
       working-storage section.

       01 THE-NUMBER PIC 99 VALUE 00.
       01 MULTIPLIER PIC 99 VALUE 00.
       01 TOTAL PIC 9999 VALUE 0000.

      *remove leading zeros
       01 THE-NUMBER-TO-PRINT PIC Z9 VALUE 00.
       01 MULTIPLIER-TO-PRINT PIC Z9 VALUE 00.
       01 TOTAL-TO-PRINT PIC ZZZ9 VALUE 0000.

       01 NEXT-STEP PIC X VALUE SPACES.

       procedure division.

       INITIALISE.
           INITIALIZE MULTIPLIER, MULTIPLIER-TO-PRINT, THE-NUMBER,
           THE-NUMBER-TO-PRINT, TOTAL, TOTAL-TO-PRINT, NEXT-STEP
           PERFORM RUN-PROGRAM.

       RUN-PROGRAM.
           PERFORM GET-NUMBER.
           PERFORM DISPLAY-TIMES-TABLE.
           PERFORM REPEAT-OR-CLOSE.

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

       REPEAT-OR-CLOSE.
           DISPLAY "PRESS Y TO SEE ANOTHER TIMES TABLE. OR, PRESS X TO EXIT"
           ACCEPT NEXT-STEP.
           MOVE FUNCTION UPPER-CASE(NEXT-STEP) TO NEXT-STEP.
           

           EVALUATE NEXT-STEP
               WHEN "Y"
                   PERFORM INITIALISE
               WHEN "X"
                   PERFORM END-PROGRAM
               WHEN OTHER
                   DISPLAY "ERROR!"
                   PERFORM REPEAT-OR-CLOSE
           END-EVALUATE.

       END-PROGRAM.
           goback.

       end program Program1.

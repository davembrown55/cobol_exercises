       program-id. yes_no_01.

       data division.
       working-storage section.

       01 YES-OR-NO PIC X.
       01 UPPER-YES-OR-NO PIC X.

       procedure division.

       PERFORM GET-THE-ANSWER.
       PERFORM DISPLAY-THE-ANSWER.

           goback.

       GET-THE-ANSWER.
           DISPLAY "Is the answer Yes, or No? (Y/N)"
           ACCEPT YES-OR-NO.
           MOVE FUNCTION upper-case(YES-OR-NO) TO UPPER-YES-OR-NO.

       DISPLAY-THE-ANSWER.
           IF UPPER-YES-OR-NO IS EQUAL TO "Y"
               DISPLAY "You answered Yes."
           END-IF
           IF UPPER-YES-OR-NO IS EQUAL TO "N"
               DISPLAY "You answered No."
           END-IF

       end program yes_no_01.


       program-id. refresher1.

       data division.
       working-storage section.

       01 THE-MESSAGE PIC X(40).
       01 THE-NUMBER PIC 99 VALUE 1.
       01 A-SPACE PIC X VALUE " ".

       01 MESSAGES.
           05 MESSAGE-LINE PIC X(40) OCCURS 5 TIMES
               VALUE "FIRST LINE",
                     "SECOND LINE",
                     "THIRD LINE",
                     "FOURTH LINE",
                     "FIFTH LINE".

       01 WS-COUNTER PIC 9 VALUE 1.

       procedure division.
           PERFORM LOOP-THROUGH-LINES.
           goback.

       DISPLAY-LINE.
           DISPLAY THE-NUMBER, A-SPACE, THE-MESSAGE
           ADD 1 TO THE-NUMBER.
       LOOP-THROUGH-LINES.
           PERFORM VARYING WS-COUNTER FROM 1 BY 1 UNTIL WS-COUNTER > 5
               MOVE MESSAGE-LINE(WS-COUNTER) TO THE-MESSAGE
               PERFORM DISPLAY-LINE
           END-PERFORM


       end program refresher1.

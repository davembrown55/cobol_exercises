       program-id. man_from_peru.

       data division.
       working-storage section.

       01 THE-MESSAGE pic X(40).
       01 THE-NUMBER pic 99 VALUE 1.
       01 A-SPACE pic X VALUE " ".

       01 LIMERICK-LINES.
         05 LIM-LINE OCCURS 5 TIMES PIC X(40)
           VALUE "There once was a man from Peru,",
                 "Who dreamed he was eating his shoe.",
                 "He awoke with a fright",
                 "In the middle of the night",
                 "To find that his dream had come true!".

       01 WS-COUNTER PIC 99 VALUE 1.

       procedure division.
       PROGRAM-BEGIN.
           PERFORM LOOP-THROUGH-LIMERICK.
       END-PROGRAM.
           goback.

       LOOP-THROUGH-LIMERICK.
           PERFORM VARYING WS-COUNTER FROM 1 BY 1 UNTIL WS-COUNTER > 5
               MOVE LIM-LINE(WS-COUNTER) TO THE-MESSAGE
               PERFORM PRINT-LINE
           END-PERFORM.

       PRINT-LINE.
           DISPLAY THE-NUMBER, A-SPACE, THE-MESSAGE
           ADD 1 TO THE-NUMBER.

       end program man_from_peru.

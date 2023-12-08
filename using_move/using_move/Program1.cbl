       program-id. using_move.

       data division.
       working-storage section.

       01 THE-MESSAGE PIC X(20).
       01 THE-NAME PIC X(10).
       01 THE-NUMBER PIC 99.
       01 WS-COUNTER PIC 99 VALUE 20.

       procedure division.

       PROGRAM-BEGIN.
           DISPLAY "ENTER SOMEONES NAME.".
           ACCEPT THE-NAME.
           MOVE "Hello" TO THE-MESSAGE.

      *reduce ws-counter to length of the-message with trailing spaces removed
           PERFORM VARYING WS-COUNTER FROM 20 BY -1 UNTIL WS-COUNTER = 0 OR
             THE-MESSAGE(WS-COUNTER:1) NOT = SPACE
           END-PERFORM

           MOVE 1 TO THE-NUMBER.

           DISPLAY "Message "
             THE-NUMBER
             ": "
      * display the THE-MESSAGE from char 1 until ws-counter + 1 (text and one trailing space)
             THE-MESSAGE(1:WS-COUNTER + 1)  

             THE-NAME.
           MOVE "Goodbye " TO THE-MESSAGE.

           PERFORM VARYING WS-COUNTER FROM 20 BY -1 UNTIL WS-COUNTER = 0 OR
             THE-MESSAGE(WS-COUNTER:1) NOT = SPACE
           END-PERFORM

           MOVE 2 TO THE-NUMBER.

           DISPLAY "Message "
             THE-NUMBER
             ": "
             THE-MESSAGE(1:WS-COUNTER + 1) 
             THE-NAME.

           goback.

       end program using_move.

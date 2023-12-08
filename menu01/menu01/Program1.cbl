       program-id. menu01.

       data division.
       working-storage section.
       01 WS-MENU-PICK PIC X.
       01 WS-MENU-PICK-NUM PIC 9.

       01 MESSAGES.
           05 MESSAGE-ARRAY PIC X(30) OCCURS 4 TIMES 
               VALUE "ONE FOR THE MONEY",
                     "TWO FOR THE SHOW",
                     "THREE TO GET READY",
                     "AND FOUR TO GO".

       procedure division.
           PERFORM GET-INPUT.

       EXIT-PROGRAM.
           goback.

       GET-INPUT.
           MOVE " " TO WS-MENU-PICK.
           MOVE 0 TO WS-MENU-PICK-NUM.
           DISPLAY "Enter a number between 1 & 4 to display a message"
           DISPLAY "Enter X to exit program"
           ACCEPT WS-MENU-PICK.
           PERFORM VALIDATE-INPUT.

       VALIDATE-INPUT.
           EVALUATE WS-MENU-PICK
               WHEN "1"
                   MOVE 1 TO WS-MENU-PICK-NUM
               WHEN "2"
                   MOVE 2 TO WS-MENU-PICK-NUM
               WHEN "3"
                   MOVE 3 TO WS-MENU-PICK-NUM
               WHEN "4"
                   MOVE 4 TO WS-MENU-PICK-NUM
               WHEN "X"
                   PERFORM EXIT-PROGRAM
               WHEN "x"
                   PERFORM EXIT-PROGRAM
               WHEN OTHER
                   PERFORM GET-INPUT
           END-EVALUATE.

           PERFORM DISPLAY-MESSAGE.
           
       DISPLAY-MESSAGE.
           DISPLAY MESSAGE-ARRAY(WS-MENU-PICK-NUM).
           DISPLAY " ".
           PERFORM GET-INPUT.


       end program menu01.

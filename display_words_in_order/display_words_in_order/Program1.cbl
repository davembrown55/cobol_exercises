       program-id. display_words_in_order.

       data division.
       working-storage section.
       01 WORD1 PIC X(50) VALUE " ".
       01 WORD2 PIC X(50) VALUE " ".

       01 WS-COUNTER-1 PIC 99 VALUE 50.
       01 WS-COUNTER-2 PIC 99 VALUE 50.
       
       
       procedure division.

       PERFORM GET-WORD-1.
       PERFORM GET-WORD-2.
       PERFORM REMOVE-TRAILING-SPACES.
       PERFORM COMPARE-THE-WORDS.

       goback.

       GET-WORD-1.
           DISPLAY "Lets compare the ascii values of two words"
           DISPLAY "Enter the first word: "
           ACCEPT WORD1.

       GET-WORD-2.
           DISPLAY "Enter the second word: "
           ACCEPT WORD2.

       COMPARE-THE-WORDS.
           IF WORD1 > WORD2
               DISPLAY WORD1(1:WS-COUNTER-1) " is greater than " WORD2(1:WS-COUNTER-2)
           END-IF.

           IF WORD2 > WORD1
               DISPLAY WORD2(1:WS-COUNTER-2) " is greater than " WORD1(1:WS-COUNTER-1)
           END-IF.

           IF WORD1 IS EQUAL TO WORD2
               DISPLAY "Both words are equal"
           END-IF.

       REMOVE-TRAILING-SPACES.
           PERFORM VARYING WS-COUNTER-1 FROM 50 BY -1 UNTIL WS-COUNTER-1 EQUALS 0
               OR WORD1(WS-COUNTER-1:1) NOT EQUAL " "
           END-PERFORM

           PERFORM VARYING WS-COUNTER-2 FROM 50 BY -1 UNTIL WS-COUNTER-2 EQUALS 0
               OR WORD2(WS-COUNTER-2:1) NOT EQUAL " "
           END-PERFORM

       end program display_words_in_order.

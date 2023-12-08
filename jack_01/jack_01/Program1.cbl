       program-id. jack_01.

       data division.
       working-storage section.
       01 THE-MESSAGE pic X(50).
       01 THE-NUMBER pic 9(2).
       01 A-SPACE pic X.

       procedure division.

       PROGRAM-BEGIN.
      * INITIALISE THE SPACE VARIABLE
           MOVE " " TO A-SPACE.

      * SETUP AND DISPLAY LINE 1
           MOVE 1 TO THE-NUMBER.
           MOVE "Jack be nimble," TO THE-MESSAGE.
           DISPLAY THE-NUMBER A-SPACE THE-MESSAGE.

      * SETUP AND DISPLAY LINE 2
           ADD 1 TO THE-NUMBER.
           MOVE "Jack be quick," TO THE-MESSAGE.
           DISPLAY THE-NUMBER A-SPACE THE-MESSAGE.

      * SETUP AND DISPLAY LINE 3
           ADD 1 TO THE-NUMBER.
           MOVE "Jack jump over the candlestick" TO THE-MESSAGE.
           DISPLAY THE-NUMBER A-SPACE THE-MESSAGE.

       PROGRAM-DONE.
           goback.

       end program jack_01.

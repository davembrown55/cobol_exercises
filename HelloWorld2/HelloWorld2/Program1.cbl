       program-id. Program1 as "HelloWorld2.Program1".

       data division.
       working-storage section.
       01 THING PIC X(3).
       01 my-variable pic X(20) value "Hello, COBOL World!".
       procedure division.
       100-PROGRAM.
      *    display "Hello, COBOL World!"
      *    accept THING
           display my-variable
           STOP RUN.

       end program Program1.

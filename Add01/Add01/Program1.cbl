       program-id. Program1 as "Add01.Program1".

       data division.
       working-storage section.
       01 ws-1st-number pic xxx.
         88 no-1st-num-present value spaces.
       01 1st-num-1-dig pic xxx justified right.
       01 1st-number pic 999 value 0.
       01 ws-2nd-number pic xxx.
         88 no-2nd-num-present value spaces.
       01 2nd-num-1-dig pic xxx justified right.
       01 2nd-number pic 999 value 0.
       01 result pic ZZ9 value 0.
       01 to-end pic x.

       procedure division.
       perform get-1st-number.

       get-1st-number.

           display "Enter a number between 0 & 99: "
           accept ws-1st-number

           if no-1st-num-present *> check user has entered data
               display "Error! you didn't enter anything. Enter a number between 0 & 99: "
               perform get-1st-number
           else
      * If user enters value below 10 there will be a space in pic x field. Move to 1st-num-1-dig which is justified to right.
               unstring ws-1st-number delimited ' ' into 1st-num-1-dig
               inspect 1st-num-1-dig replacing leading spaces by "0" *>replace spaces with 0 so we can test if input is numeric
           end-if

           if 1st-num-1-dig is not numeric *> check if user has entered a number
               display "Error! Must be a number. Enter a number between 0 & 99: "
               perform get-1st-number
           end-if

           move 1st-num-1-dig to 1st-number *> 1st-number is pic 9 datatype

           evaluate 1st-number *> check input within range
               when 0 thru 99
                   perform get-2nd-number
               when other
                   display "Error! Enter a number between 0 & 99: "
                   perform get-1st-number
           end-evaluate.


       get-2nd-number.
           display "Enter another number between 0 & 99: "
           accept ws-2nd-number

           if no-2nd-num-present *> Check if user has entered nothing
               display "Error! You didnt enter anything. Please enter a number between 0 & 99: "
               perform get-2nd-number
           else
      * If user enters value below 10 there will be a space in pic x field. Move to 1st-num-1-dig which is justified to right.
               unstring ws-2nd-number delimited by ' ' into 2nd-num-1-dig
               inspect 2nd-num-1-dig replacing leading spaces by "0" *>replace spaces with 0 so we can test if input is numeric
           end-if

           move 2nd-num-1-dig to 2nd-number *> 2nd-number is pic 9 datatype

           evaluate 2nd-number
               when 0 thru 99
                   perform add-numbers
               when other
                   display "Error! Enter a number between 0 & 99: "
                   perform get-2nd-number
           end-evaluate.
       add-numbers.
           compute result = 1st-number + 2nd-number
           perform display-numbers.

       display-numbers.
           display "The total of your numbers is: " with result.

           display "Press enter to end"
           accept to-end
           perform end-program.

       end-program.
           goback.
       end program Program1.

%dw 2.0
output application/json
/*
==============================================
Dataweave Puzzle #26 - by Upendra Thunuguntla
==============================================
*** Parsing Strings into Length-Specified Components ***
==================
Requirments : 
==================
- Write a script that takes this any string as input and returns an array of objects.
- Where each object specifies the character and its corresponding consecutive length in the format string.
- If same character is repeated non-consecutively, a separate object should be created.
==================
Expected Output :
==================
[
  {
    "y": 4
  },
  {
    "M": 2
  },
  {
    "d": 2
  },
  {
    "H": 2
  },
  {
    "M": 2
  },
  {
    "s": 2
  }
]
*/
---
payload
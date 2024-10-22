%dw 2.0
output application/json
/*
==============================================
Dataweave Puzzle #25 - by Upendra Thunuguntla
==============================================
*** Transform and Increment Order IDs Using DataWeave ***
==================
Requirments : 
==================
- Only the OrderId field should be present.
- The OrderId should increment for each new element, starting from the first OrderId in the input and increasing by 1 for each subsequent object.
- The OrderId in the output should be incremented even if the same OrderId appears multiple times in the input.
- Ensure the format of the OrderId remains the same, with the new incremented value replacing the original one.

==================
Expected Output :
==================
[
  {
    "OrderId": "001029384"
  },
  {
    "OrderId": "001029385"
  },
  {
    "OrderId": "001029386"
  }
]
*/
---
payload
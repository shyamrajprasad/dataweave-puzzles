%dw 2.0
output application/json
/*
Adjusting pagination offset based on input size and total count.
​*/
---
/* 
[
  {
    "offset": 0
  },
  {
    "offset": 100
  },
  {
    "offset": 200
  },
  {
    "offset": 300
  },
  {
    "offset": 400
  },
  {
    "offset": 500
  }
]
*/
payload
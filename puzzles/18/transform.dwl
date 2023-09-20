%dw 2.0
output application/json
/*
Adjusting pagination offset based on input size and total count.
​*/
---
/* 
[
  {
    "offset": 0,
    "size": 100
  },
  {
    "offset": 100,
    "size": 100
  },
  {
    "offset": 200,
    "size": 100
  },
  {
    "offset": 300,
    "size": 100
  },
  {
    "offset": 400,
    "size": 100
  },
  {
    "offset": 500,
    "size": 100
  }
]
*/
payload
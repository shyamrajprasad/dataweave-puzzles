%dw 2.0
output application/json
/*
Eliminate objects that share the same ID, but ensure that objects with a value of 1 
take precedence over those with a value of 2.
​*/
---
/* 
Expected Output
[
  {
    "id": "1676431",
    "value": 1
  },
  {
    "id": "3566367",
    "value": 2
  },
  {
    "id": "7676559",
    "value": 1
  }
]
*/
payload
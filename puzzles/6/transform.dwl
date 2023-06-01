%dw 2.0
output application/json
/* Update the incomplete elements for position by using the previous value of amount and course.
[
  {
    "position": 1,
    "amount": "20",
    "course": "dw"
  },
  {
    "position": 2,
    "amount": "20",
    "course": "dw"
  },
  {
    "position": 3,
    "amount": "30",
    "course": "MCD"
  },
  {
    "position": 4,
    "amount": "30",
    "course": "MCD"
  },
  {
    "position": 5,
    "amount": "30",
    "course": "MCD"
  },
  {
    "position": "6",
    "amount": "50",
    "course": "MCIA"
  }
]
*/
---
payload

%dw 2.0
output application/json
/*
Split startdate and enddate with monthly start and end date. 
[
  {
    "monthlyStartDate": "2019-11-10",
    "monthlyEndDate": "2019-11-30"
  },
  {
    "monthlyStartDate": "2019-12-01",
    "monthlyEndDate": "2019-12-31"
  },
  {
    "monthlyStartDate": "2020-01-01",
    "monthlyEndDate": "2020-01-31"
  },
  {
    "monthlyStartDate": "2020-02-01",
    "monthlyEndDate": "2020-02-29"
  },
  {
    "monthlyStartDate": "2020-03-01",
    "monthlyEndDate": "2020-03-15"
  }
]
*/
---
payload

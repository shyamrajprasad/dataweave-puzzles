%dw 2.0
output application/json
/*
Create a JSON array object of date and exchangeRate for 3 weeks based on the lookup object.

--> Start date will be the oldest date (i.e., 02/24/2020 in MM/dd/yyyy format)
--> Need to calculate 3 weeks from the start date
exchangeRate will be determined based on the date.
From 02/24/2020 - 02/26/2020, exchangeRate will be 71.87
From 02/27/2020 - 03/03/2020, exchangeRate will be 71.66
From 03/04/2020 - 03/06/2020, exchangeRate will be 73.34
From 03/07/2020 - 03/15/2020, exchangeRate will be 73.98
*/
---
/* 
Expected Output
[
  {
    "date": "02/24/2020",
    "exchangeRate": 71.87
  },
  {
    "date": "02/25/2020",
    "exchangeRate": 71.87
  },
  {
    "date": "02/26/2020",
    "exchangeRate": 71.87
  },
  {
    "date": "02/27/2020",
    "exchangeRate": 71.66
  },
  {
    "date": "02/28/2020",
    "exchangeRate": 71.66
  },
  {
    "date": "02/29/2020",
    "exchangeRate": 71.66
  },
  {
    "date": "03/01/2020",
    "exchangeRate": 71.66
  },
  {
    "date": "03/02/2020",
    "exchangeRate": 71.66
  },
  {
    "date": "03/03/2020",
    "exchangeRate": 71.66
  },
  {
    "date": "03/04/2020",
    "exchangeRate": 73.34
  },
  {
    "date": "03/05/2020",
    "exchangeRate": 73.34
  },
  {
    "date": "03/06/2020",
    "exchangeRate": 73.34
  },
  {
    "date": "03/07/2020",
    "exchangeRate": 73.98
  },
  {
    "date": "03/08/2020",
    "exchangeRate": 73.98
  },
  {
    "date": "03/09/2020",
    "exchangeRate": 73.98
  },
  {
    "date": "03/10/2020",
    "exchangeRate": 73.98
  },
  {
    "date": "03/11/2020",
    "exchangeRate": 73.98
  },
  {
    "date": "03/12/2020",
    "exchangeRate": 73.98
  },
  {
    "date": "03/13/2020",
    "exchangeRate": 73.98
  },
  {
    "date": "03/14/2020",
    "exchangeRate": 73.98
  },
  {
    "date": "03/15/2020",
    "exchangeRate": 73.98
  }
]

*/
payload
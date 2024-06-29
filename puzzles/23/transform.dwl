%dw 2.0
output application/json
/*
==============================================
Dataweave Puzzle #23 - by Upendra Thunuguntla
==============================================
*** Transform the input array to yearly data array by following the given requirments. ***

==================
Requirments : 
==================
    - Output should be array of yearly data objects
    - Id, Title, Body, Created, Updated, and Type Fields: These fields must be preserved in each transformed object.
    - Yearly Grouping: The monthly data entries must be grouped by year. Each year should have its own object with the respective monthly data.
    - Month Abbreviations: The month keys in the output should be abbreviated as "Jan", "Feb", "Mar", etc.
    - Empty Values: Retain empty string values as they are.

==================
Expected Output:
==================
[
  {
    "Id": "1",
    "Title": "Engineering Dept.",
    "Body": "Entries",
    "Created": "2023-08-27T11:34:15.000Z",
    "Updated": "2024-05-22T14:56:28.000Z",
    "Type": "application/xlsx",
    "Year": "2022",
    "Jan": "",
    "Feb": "",
    "Mar": 0.56,
    "Apr": "",
    "May": "",
    "Jun": 0.54,
    "Jul": "",
    "Aug": "",
    "Sep": 0.49,
    "Oct": "",
    "Nov": "",
    "Dec": 0.4
  },
  {
    "Id": "1",
    "Title": "Engineering Dept.",
    "Body": "Entries",
    "Created": "2023-08-27T11:34:15.000Z",
    "Updated": "2024-05-22T14:56:28.000Z",
    "Type": "application/xlsx",
    "Year": "2023",
    "Jan": "",
    "Feb": "",
    "Mar": 0.45,
    "Apr": "",
    "May": "",
    "Jun": 0.43,
    "Jul": "",
    "Aug": "",
    "Sep": 0.4,
    "Oct": "",
    "Nov": "",
    "Dec": 0.56
  },
  {
    "Id": "1",
    "Title": "Engineering Dept.",
    "Body": "Entries",
    "Created": "2023-08-27T11:34:15.000Z",
    "Updated": "2024-05-22T14:56:28.000Z",
    "Type": "application/xlsx",
    "Year": "2024",
    "Jan": "",
    "Feb": "",
    "Mar": "",
    "Apr": "",
    "May": "",
    "Jun": "",
    "Jul": "",
    "Aug": "",
    "Sep": "",
    "Oct": "",
    "Nov": "",
    "Dec": ""
  }
]
*/
---
payload
%dw 2.0
output application/json
var timeFormat = "uuuu-MM-dd'T'HH:mm:ss.SSSZ"
var formatFields = [
  {
      "field": "modifiedDate",
      "format": "EEEE MMMM yyyy HH:mm.ss"
  },
  {
      "field": "createdDate",
      "format": "MMMM dd, YY"
  },
  {
    "field":"purchaseDate",
    "format": "MM-dd-yyyy"
  }
]
/*
Generic approach Transformation of input to expected output using variable formatFields’s field and format
without using any field name in the transformation. 
​*/
---
/* 
Expected output
[
  {
    "modifiedDate": "Thursday January 2023 10:22.00",
    "createdDate": "February 27, 23",
    "purchaseDate": "03-28-2023"
  },
  {
    "modifiedDate": "Wednesday April 2023 10:22.00",
    "createdDate": "May 06, 23",
    "purchaseDate": "06-07-2023"
  },
  {
    "modifiedDate": "Wednesday July 2023 10:22.00",
    "createdDate": "August 06, 23"
  }
]
*/
payload
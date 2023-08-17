%dw 2.0
output application/json
/*
Perform a DataWeave Transformation by considering the payload_number value and applying the subsequent guidelines:

TIMES: Extract ADM_TIME values from the input data.
MORNING: Calculate the count of TIMES falling between 00:01 and 09:59.
NOON: Calculate the count of TIMES falling between 10:00 and 14:59.
EVENING: Calculate the count of TIMES falling between 15:00 and 23:59.
TOTAL_QUANTITY: Determine the cumulative total of quantities from MORNING, NOON, and EVENING.
DATES: Compile a list of DATE values.​*/
---
/* 
Expected Output
[
  {
    "TIMES": "17:00",
    "MORNING": "0",
    "NOON": "0",
    "EVENING": "3",
    "TOTAL_QUANTITY": "3",
    "DATES": "2023/05/29, 2023/06/02, 2023/05/31",
    "PAYLOAD_NUMBER": "597418",
    "PAYLOAD_COMMENT": "HELLO"
  },
  {
    "TIMES": "08:00, 12:00, 17:00",
    "MORNING": "1",
    "NOON": "2",
    "EVENING": "2",
    "TOTAL_QUANTITY": "5",
    "DATES": "2023/06/28, 2023/06/29, 2023/06/30, 2023/07/02",
    "PAYLAOD_NUMBER": "597500",
    "PAYLOAD_COMMENT": "Comments"
  }
]
*/
payload
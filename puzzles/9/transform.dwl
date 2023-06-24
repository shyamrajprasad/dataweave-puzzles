%dw 2.0
output application/json
/* Filter array of objects based on multiple conditions
    1. Remove the objects that have product_id values of both 1 and 2 for each order.
    2. Keep the objects that have product_id values of either 1 or 2 (but not both) for each order.
Expected output
[
  {
    "PRODUCT_ID": "3",
    "ORDER_ID": 1
  },
  {
    "PRODUCT_ID": "1",
    "ORDER_ID": 2
  },
  {
    "PRODUCT_ID": "3",
    "ORDER_ID": 2
  }
]
*/
var productIds =["1","2"]
---
payload

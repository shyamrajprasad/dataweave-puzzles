%dw 2.0
output application/json
/*
Create a parent child relationship
*/
---
/* 
Expected Output
[
  {
    "Sub": 0,
    "id": null,
    "children": [
      {
        "Sub": 1,
        "id": 445,
        "children": [
          {
            "Sub": 1,
            "id": 332,
            "children": [
              {
                "Sub": 1,
                "id": 666,
                "children": [
                  
                ]
              }
            ]
          }
        ]
      },
      {
        "Sub": 0,
        "id": 445,
        "children": [
          {
            "Sub": 1,
            "id": 334,
            "children": [
              
            ]
          }
        ]
      }
    ]
  }
]

*/
payload
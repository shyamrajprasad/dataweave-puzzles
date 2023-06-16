%dw 2.0
output application/json
/* Merge the even and object indexes i.e company and address object 
Expected output
[
  {
    "first_name": "Aleshia",
    "last_name": "Tomkiewicz",
    "company_name": "Alan D Rosenburg Cpa Pc",
    "address": "14 Taylor St",
    "city": "St. Stephens Ward",
    "county": "Kent",
    "postal": "CT2 7PP"
  },
  {
    "first_name": "Evan",
    "last_name": "Zigomalas",
    "company_name": "Cap Gemini America",
    "address": "5 Binney St",
    "city": "Abbey Ward",
    "county": "Buckinghamshire",
    "postal": "HP11 2AX"
  },
  {
    "first_name": "France",
    "last_name": "Andrade",
    "company_name": "Elliott, John W Esq",
    "address": "8 Moor Place",
    "city": "East Southbourne and Tuckton W",
    "county": "Bournemouth",
    "postal": "BH6 "
  }
]
*/
---
payload

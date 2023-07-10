%dw 2.0
output application/json
/* Generate an array of address objects based on the "address1" field. Whenever we encounter the "address1" field, 
we should create a new object that includes all the subsequent fields until we encounter another "address1" field.
Expected output
{
  "name": "Shyam",
  "id": "123",
  "company": "DataWeave Fun",
  "addresses": [
    {
      "address1": "1745 T Street Southeast",
      "address2": "#203",
      "city": "Washington",
      "state": "DC",
      "postalCode": "20020"
    },
    {
      "address1": "6007 Applegate Lane",
      "city": "Louisville",
      "state": "KY"
    },
    {
      "address1": "560 Penstock Drive",
      "address2": "",
      "city": "Grass Valley",
      "state": "CA",
      "postalCode": "95945"
    }
  ]
}
*/
---
payload

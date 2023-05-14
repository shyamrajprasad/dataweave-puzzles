%dw 2.0
output application/json
var mapping = {
    name : "name",
    companyName: "company.name",
    city : "company.address.city"

}
/* Get the below expected output using referenced flattened keys mapping variable
{
    "name": "Shyam Raj",
    "companyName": "DataWeave Fun",
    "city": "Bangalore"
}
*/
---
payload

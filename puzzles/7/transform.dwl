%dw 2.0
output application/json
/* Convert the cookies string to Object. 
Expected output
{
  "timezone": "Asia/Calcutta",
  "G_ENABLED_IDPS": "google",
  "ssid": "41514419-76da-4873-b768-fc9785d28189",
  "company": "dataweave fun",
  "author": "shyam",
  "questionType": "puzzle"
}
*/
---
payload

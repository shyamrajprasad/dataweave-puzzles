%dw 2.0
/*
https://help.mulesoft.com/s/question/0D52T00006WaUMgSAN/join-two-payload
Creating JSON object from object arrays
*/
output application/json
---
{(payload map (
    ($.field_key) :$.field_value
))}
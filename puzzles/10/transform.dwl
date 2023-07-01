%dw 2.0
output application/json
/* Remove empty array from the payload
Expected output
{
    "Type": "User",
    "id": "12345",
    "meta": {
        "lastUpdated": "2019-05-28T19:29:36"
    },
    "Relatioship": [{
        "type": {
            "coding": [{
                "system": "xyz"
            }]
        },
        "system": 99004
    }],
    "period": {
        "start": "2010-10-12T00:00:00.000Z",
        "end": "2010-10-12T00:00:00.000Z"
    }
 
}
*/
---
payload

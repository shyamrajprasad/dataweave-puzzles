%dw 2.0
output application/json
var y = payload.value flatMap ((item, index) -> 
    item.members map (
        {
            "type": $."type",
            "name":$.name,
            "id":item.id
        }
     )
) groupBy $.name
---
valuesOf(y mapObject ((value, key, index) -> 
    (key) : {
    "data": {
      "type": "users",
      "id": value[0].name,
      "associatedWith": {
        "groups": {
          "data": value map (
              id: $.id
          ) 
        }
      }
    }
  }
))

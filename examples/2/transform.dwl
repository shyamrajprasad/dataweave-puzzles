%dw 2.0
output application/json
var x = payload.input groupBy $
---
keysOf(x) map ($ ++ sizeOf(x[$]) )
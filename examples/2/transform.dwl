%dw 2.0
output application/json
var x = payload.Input groupBy $
---
keysOf(x) map ($ ++ sizeOf(x[$]) ) joinBy ""
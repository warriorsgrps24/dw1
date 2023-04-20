%dw 2.0
output application/json
---
//payload map ((item, index) -> item filterObject ((value, key, index) -> value != "")) reduce ((item, accumulator) -> accumulator ++  item) groupBy($$) 

payload map((item, index) -> item filterObject((value, key, index) -> value != "")) reduce ($$ ++ $) distinctBy($$)

//payload map ((item, index) -> item filterObject ((value, key, index) -> value != "")) reduce ($$ ++ $)
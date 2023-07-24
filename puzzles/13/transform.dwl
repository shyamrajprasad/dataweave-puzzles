%dw 2.0
output application/json
var segmentLength = 40
/*
Divide an input string into segments, with each segment's length not exceeding 40 characters. 
Furthermore, the division should only occur at complete words to ensure the integrity of the words in each segment.
*/
---
/* 
Expected Output
[
    "The MuleSoft Anypoint integration ",
    "platform is a comprehensive platform ",
    "that provides an all-inclusive approach ",
    "to API design and implementation. To ",
    "databases, SaaS platforms, storage ",
    "facilities, and network services, ",
    "MuleSoft provides close to 300 ",
    "connections."
]

*/
payload
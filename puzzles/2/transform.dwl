%dw 2.0
output application/json
/*
Split startdate and enddate with monthly start and end date. 
[
    {
        startDate : "12/02/2020",
        endDate: "29/02/2020"
    },
    {
        startDate : "01/03/2020",
        endDate: "31/03/2020"
    },
    {
        startDate : "01/04/2020",
        endDate: "30/04/2020"
    },
    {
        startDate : "01/05/2020",
        endDate: "31/05/2020"
    },
    {
        startDate : "01/06/2020",
        endDate: "30/06/2020"
    },
    {
        startDate : "01/07/2020",
        endDate: "20/07/2020"
    }

]
*/
---
payload
%dw 2.0
/*
https://help.mulesoft.com/s/question/0D52T00006WaUMgSAN/join-two-payload
"How can I perform a join operation between two data arrays,
payload1
and
payload2
, using the composite key composed of
ENT_SIREN
and
ENT_NIC
in
payload1
, and the key
SIRET
in
payload2
? I would like to obtain a result that includes the elements from
payload1
with the corresponding values from
payload2
based on this join operation."
*/
import * from dw::core::Arrays
var payload1 = [
  {
    "ENT_SIREN": "852951540",
    "ENT_NIC": "00016",
    "ETA_ENSEIGNE_ETAB": "PAREX NOTAIRES",
    "IND_NOM_SNGI": "GRAILLOT",
    "IND_PRENOM_SNGI": "ERIC HUGUES THOMAS"
  },
  {
    "ENT_SIREN": "66666478444",
    "ENT_NIC": "00016",
    "ETA_ENSEIGNE_ETAB": "PAREX NOTAIRES",
    "IND_NOM_SNGI": "BACHELET",
    "IND_PRENOM_SNGI": "LAURA"
  }
]
var payload2 = [
  {
    "SIRET": "85295154000016",
    "NUM_ETUDE": "078151"
  },
  {
    "SIRET": "9877777777",
    "NUM_ETUDE": "078152"
  },
  {
    "SIRET": "40986858500012",
    "NUM_ETUDE": "089074"
  },
  {
    "SIRET": "41410685600019",
    "NUM_ETUDE": "089075"
  }
]
output application/json  
---
join(payload1, payload2, (p1) -> p1.ENT_SIREN ++ p1.ENT_NIC, (p2) -> p2.SIRET) map (
    $.l ++ $.r - "SIRET"
)
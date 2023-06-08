%dw 2.0
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
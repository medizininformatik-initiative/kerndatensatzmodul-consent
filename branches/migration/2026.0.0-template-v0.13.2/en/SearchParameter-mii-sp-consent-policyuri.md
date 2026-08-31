# mii-sp-consent-policyuri - MII Implementation Guide Consent v2026.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-consent-policyuri**

## SearchParameter: mii-sp-consent-policyuri 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-policyuri | *Version*:2026.0.0 |
| Active as of 2023-05-09 | *Computable Name*:MII_SP_Consent_PolicyUri |

 
Suche in der Policy URI (versionsspezifische Policy / Broad Consent) 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-consent-policyuri",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-policyuri",
  "version" : "2026.0.0",
  "name" : "MII_SP_Consent_PolicyUri",
  "status" : "active",
  "date" : "2023-05-09",
  "publisher" : "NUM-DIZ",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "NUM-DIZ"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Suche in der Policy URI (versionsspezifische Policy / Broad Consent)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "mii-policy-uri",
  "base" : ["Consent"],
  "type" : "uri",
  "expression" : "Consent.policy.uri",
  "multipleOr" : true,
  "multipleAnd" : true
}

```

# mii-sp-consent-provisiontype - MII Implementation Guide Consent v2026.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-consent-provisiontype**

## SearchParameter: mii-sp-consent-provisiontype 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisiontype | *Version*:2026.0.0 |
| Active as of 2023-05-09 | *Computable Name*:MII_SP_Consent_ProvisionType |

 
Suche im Typ der Provison (permit, deny). 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-consent-provisiontype",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisiontype",
  "version" : "2026.0.0",
  "name" : "MII_SP_Consent_ProvisionType",
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
  "description" : "Suche im Typ der Provison (permit, deny).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "mii-provision-provision-type",
  "base" : ["Consent"],
  "type" : "token",
  "expression" : "Consent.provision.provision.type",
  "multipleOr" : true,
  "multipleAnd" : true
}

```

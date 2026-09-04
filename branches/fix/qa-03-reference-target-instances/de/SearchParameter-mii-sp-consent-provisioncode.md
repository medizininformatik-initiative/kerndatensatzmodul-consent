# mii-sp-consent-provisioncode - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-sp-consent-provisioncode**

## SearchParameter: mii-sp-consent-provisioncode 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisioncode | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2023-05-09 | *Maschinenlesbarer Name*:MII_SP_Consent_ProvisionCode |

 
Suche im Code der Provison 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-consent-provisioncode",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisioncode",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_SP_Consent_ProvisionCode",
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
  "description" : "Suche im Code der Provison",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "mii-provision-provision-code",
  "base" : ["Consent"],
  "type" : "token",
  "expression" : "Consent.provision.provision.code",
  "multipleOr" : true,
  "multipleAnd" : true
}

```

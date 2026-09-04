# mii-sp-consent-provisionperiod - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-sp-consent-provisionperiod**

## SearchParameter: mii-sp-consent-provisionperiod 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisionperiod | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2023-05-09 | *Computable Name*:MII_SP_Consent_ProvisionPeriod |

 
Suche im Zeitraum der Provision. Dieser Suchparameter bezieht sich explizit auf die zweite Verschachtelungsebene von provison. 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-consent-provisionperiod",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisionperiod",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_SP_Consent_ProvisionPeriod",
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
  "description" : "Suche im Zeitraum der Provision. Dieser Suchparameter bezieht sich explizit auf die zweite Verschachtelungsebene von provison.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "mii-provision-provision-period",
  "base" : ["Consent"],
  "type" : "date",
  "expression" : "Consent.provision.provision.period",
  "multipleOr" : true,
  "multipleAnd" : true
}

```

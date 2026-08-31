# MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag) - MII Implementation Guide Consent v2026.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag)**

## CapabilityStatement: MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/CapabilityStatement/mii-cap-consent-server | *Version*:2026.0.0 |
| Draft as of 2026-08-31 | *Computable Name*:MII_CAP_Consent_Server |

 
MIGRATION-GENERATED PROPOSAL (not part of the published 2026.0.0 release): server capabilities derived from the module's profiles and search parameters during the migration onto the MII KDS module template. The module team confirms, amends or deletes this artefact at Gate A. 

 [Raw OpenAPI-Swagger Definition file](../mii-cap-consent-server.openapi.json) | [Download](../mii-cap-consent-server.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "mii-cap-consent-server",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/CapabilityStatement/mii-cap-consent-server",
  "version" : "2026.0.0",
  "name" : "MII_CAP_Consent_Server",
  "title" : "MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-31",
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
  "description" : "MIGRATION-GENERATED PROPOSAL (not part of the published 2026.0.0 release): server capabilities derived from the module's profiles and search parameters during the migration onto the MII KDS module template. The module team confirms, amends or deletes this artefact at Gate A.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "rest" : [{
    "mode" : "server",
    "resource" : [{
      "type" : "Consent",
      "supportedProfile" : ["https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"],
      "searchParam" : [{
        "name" : "mii-policy-uri",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-policyuri",
        "type" : "uri"
      },
      {
        "name" : "mii-provision-provision-code",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisioncode",
        "type" : "token"
      },
      {
        "name" : "mii-provision-provision-code-period",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisioncodeperiod",
        "type" : "composite"
      },
      {
        "name" : "mii-provision-provision-code-type",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisioncodetype",
        "type" : "composite"
      },
      {
        "name" : "mii-provision-provision-period",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisionperiod",
        "type" : "date"
      },
      {
        "name" : "mii-provision-provision-type",
        "definition" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisiontype",
        "type" : "token"
      }]
    },
    {
      "type" : "Provenance",
      "supportedProfile" : ["https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-provenance"]
    },
    {
      "type" : "DocumentReference",
      "supportedProfile" : ["https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference"]
    }]
  }]
}

```

# MII Consent: Answer CodeSystem - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Consent: Answer CodeSystem**

## CodeSystem: MII Consent: Answer CodeSystem 

| | |
| :--- | :--- |
| *Offizielle URL*:urn:oid:2.16.840.1.113883.3.1937.777.24.5.2 | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2021-03-23 | *Maschinenlesbarer Name*:MII_CS_Consent_Answer |

 
This CodeSystem contains the possible answers to the questions of the MII Consent. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII Consent: Answer ValueSet](ValueSet-mii-vs-consent-answer.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "2.16.840.1.113883.3.1937.777.24.5.2--20210423105554",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "urn:oid:2.16.840.1.113883.3.1937.777.24.5.2",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Consent_Answer",
  "title" : "MII Consent: Answer CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2021-03-23",
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
  "description" : "This CodeSystem contains the possible answers to the questions of the MII Consent.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-answer",
  "hierarchyMeaning" : "part-of",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "2.16.840.1.113883.3.1937.777.24.5.2.3",
    "display" : "unbekannt",
    "designation" : [{
      "language" : "de-DE",
      "use" : {
        "system" : "http://snomed.info/sct",
        "code" : "900000000000013009",
        "display" : "Synonym"
      },
      "value" : "unbekannt"
    },
    {
      "language" : "en-US",
      "use" : {
        "system" : "http://snomed.info/sct",
        "code" : "900000000000013009",
        "display" : "Synonym"
      },
      "value" : "unknown"
    }]
  },
  {
    "code" : "2.16.840.1.113883.3.1937.777.24.5.2.2",
    "display" : "nicht gültig",
    "designation" : [{
      "language" : "de-DE",
      "use" : {
        "system" : "http://snomed.info/sct",
        "code" : "900000000000013009",
        "display" : "Synonym"
      },
      "value" : "nicht gültig"
    },
    {
      "language" : "en-US",
      "use" : {
        "system" : "http://snomed.info/sct",
        "code" : "900000000000013009",
        "display" : "Synonym"
      },
      "value" : "not valid"
    }]
  },
  {
    "code" : "2.16.840.1.113883.3.1937.777.24.5.2.1",
    "display" : "gültig",
    "designation" : [{
      "language" : "de-DE",
      "use" : {
        "system" : "http://snomed.info/sct",
        "code" : "900000000000013009",
        "display" : "Synonym"
      },
      "value" : "gültig"
    },
    {
      "language" : "en-US",
      "use" : {
        "system" : "http://snomed.info/sct",
        "code" : "900000000000013009",
        "display" : "Synonym"
      },
      "value" : "valid"
    }]
  }]
}

```

# MII Consent: Answer ValueSet - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Consent: Answer ValueSet**

## ValueSet: MII Consent: Answer ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-answer | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-04 | *Computable Name*:MII_VS_Consent_Answer |
| *Other Identifiers:*OID:2.16.840.1.113883.3.1937.777.24.11.30 (use: official, ) | |

 
This ValueSet contains the possible answers to the questions of the MII Consent. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "2.16.840.1.113883.3.1937.777.24.11.30--20210323234509",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2021-03-23T23:45:09+01:00"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-answer",
  "identifier" : [{
    "use" : "official",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.3.1937.777.24.11.30"
  }],
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Consent_Answer",
  "title" : "MII Consent: Answer ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T13:57:59+00:00",
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
  "description" : "This ValueSet contains the possible answers to the questions of the MII Consent.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "immutable" : false,
  "compose" : {
    "include" : [{
      "system" : "urn:oid:2.16.840.1.113883.3.1937.777.24.5.2",
      "concept" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/valueset-concept-comments",
          "valueString" : "unknown"
        }],
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
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/valueset-concept-comments",
          "valueString" : "not valid"
        }],
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
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/valueset-concept-comments",
          "valueString" : "valid"
        }],
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
    }]
  }
}

```

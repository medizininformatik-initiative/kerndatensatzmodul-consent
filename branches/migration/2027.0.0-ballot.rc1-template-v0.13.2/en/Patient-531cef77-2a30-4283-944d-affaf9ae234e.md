# Beispiel Patient (pseudonym, synthetisch) - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Patient (pseudonym, synthetisch)**

## Example Patient: Beispiel Patient (pseudonym, synthetisch)

-------

**English**

-------

Profile: [Consent Management: Patient](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.4-rc1-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Patient)

Anonymous Patient (no stated gender), DoB Unknown ( Anonymous identifier: MII-CONSENT-TESTPSN-0002)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "531cef77-2a30-4283-944d-affaf9ae234e",
  "meta" : {
    "profile" : ["http://fhir.de/ConsentManagement/StructureDefinition/Patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ANON",
        "display" : "Anonymous identifier"
      }]
    },
    "system" : "https://example.org/fhir/sid/mii-consent-pseudonym",
    "value" : "MII-CONSENT-TESTPSN-0002"
  }]
}

```

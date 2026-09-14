# Beispiel Einwilligungsdomäne (synthetische Studie) - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Einwilligungsdomäne (synthetische Studie)**

## Beispiel ResearchStudy: Beispiel Einwilligungsdomäne (synthetische Studie)

-------

**German**

-------

Profile: [Consent Management Domain Research Study](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.4-rc1-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Domain/ResearchStudy)

> **Consent Management Kontext-Identifikatoren einer Domain**
* resourceType: [ResourceType: Patient](http://hl7.org/fhir/R4/codesystem-resource-types.html#resource-types-Patient) (Patient)
* type: Anonymous identifier
* system: [https://example.org/fhir/sid/mii-consent-pseudonym](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.4-rc1-snapshots&canonical=https://example.org/fhir/sid/mii-consent-pseudonym)

**identifier**: `https://example.org/fhir/sid/mii-consent-domain`/MII-CONSENT-TESTDOMAIN-0001

**title**: Synthetische MII-Einwilligungsstudie (Beispiel)

**status**: Active

**description**: 

Synthetische Einwilligungsdomäne, ausschließlich als Referenzziel der Beispiel-Ressourcen dieses Leitfadens.



## Resource Content

```json
{
  "resourceType" : "ResearchStudy",
  "id" : "d7a65ce8-2810-401a-b0db-70782a7b19a6",
  "meta" : {
    "profile" : ["http://fhir.de/ConsentManagement/StructureDefinition/Domain/ResearchStudy"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "resourceType",
      "valueCoding" : {
        "system" : "http://hl7.org/fhir/resource-types",
        "code" : "Patient",
        "display" : "Patient"
      }
    },
    {
      "url" : "type",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "ANON",
          "display" : "Anonymous identifier"
        }]
      }
    },
    {
      "url" : "system",
      "valueUri" : "https://example.org/fhir/sid/mii-consent-pseudonym"
    }],
    "url" : "http://fhir.de/ConsentManagement/StructureDefinition/ContextIdentifier"
  }],
  "identifier" : [{
    "system" : "https://example.org/fhir/sid/mii-consent-domain",
    "value" : "MII-CONSENT-TESTDOMAIN-0001"
  }],
  "title" : "Synthetische MII-Einwilligungsstudie (Beispiel)",
  "status" : "active",
  "description" : "Synthetische Einwilligungsdomäne, ausschließlich als Referenzziel der Beispiel-Ressourcen dieses Leitfadens."
}

```

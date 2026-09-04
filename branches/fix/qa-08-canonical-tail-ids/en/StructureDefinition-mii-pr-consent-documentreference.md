# Profile - MI-I - Consent - DocumentReference - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profile - MI-I - Consent - DocumentReference**

## Resource Profile: Profile - MI-I - Consent - DocumentReference 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2023-05-09 | *Computable Name*:MII_PR_Consent_DocumentReference |

 
Dieses Profil beschreibt die Abbildung von Originaldokumenten zu Einwilligungen in der Medizininformatik-Initiative. Diese müssen im PDF-Format vorliegen. 

Based on the [recommendations](https://ig.fhir.de/einwilligungsmanagement/stable/DocumentReference.html) of the AG Einwilligungsmanagement, the profile **MIIConsentDocumentReference** targets a real, existing document related to the consent document.

However, it is restricted to scans of consent documents in PDF format.

**Only the differences to the [base profile](https://ig.fhir.de/einwilligungsmanagement/stable/DocumentReference.html) are explained below.**

| | |
| :--- | :--- |
| DocumentReference.content.attachment.contentType | Fixed value 'application/pdf', Must-support |

**Usages:**

* Refer to this Profile: [Profile - MI-I - Consent - Provenance](StructureDefinition-mii-pr-consent-provenance.md)
* Examples for this Profile: [DocumentReference/8a3d1799-2463-405e-b49c-6a16c8692b01](DocumentReference-8a3d1799-2463-405e-b49c-6a16c8692b01.md)
* CapabilityStatements using this Profile: [MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag)](CapabilityStatement-mii-cap-consent-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.consent|current/StructureDefinition/StructureDefinition-mii-pr-consent-documentreference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-consent-documentreference.csv), [Excel](../StructureDefinition-mii-pr-consent-documentreference.xlsx), [Schematron](../StructureDefinition-mii-pr-consent-documentreference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-consent-documentreference",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Consent_DocumentReference",
  "title" : "Profile - MI-I - Consent - DocumentReference",
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
  "description" : "Dieses Profil beschreibt die Abbildung von Originaldokumenten zu Einwilligungen in der Medizininformatik-Initiative.\nDiese müssen im PDF-Format vorliegen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://fhir.de/ConsentManagement/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "patternCode" : "application/pdf"
    }]
  }
}

```

# Profile - MI-I - Consent - Provenance - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profile - MI-I - Consent - Provenance**

## Resource Profile: Profile - MI-I - Consent - Provenance 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-provenance | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2023-05-09 | *Computable Name*:MII_PR_Consent_Provenance |

 
Dieses Profil beschreibt Herkunftsinformationen zu Einwilligungen in der Medizininformatik-Initiative. 

Based on the [recommendations](https://ig.fhir.de/einwilligungsmanagement/stable/Provenance.html) of the AG Einwilligungsmanagement, the profile **MIIConsentProvenance** describes the provenance information of a consent document.

**Only the differences to the [base profile](https://ig.fhir.de/einwilligungsmanagement/stable/Provenance.html) are explained below.**

| | |
| :--- | :--- |
| Provenance.entity.what | If a document scan is to be attached, the referenced resource must be of the profile type[DocumentReference](StructureDefinition-mii-pr-consent-documentreference.md), Must-support |
| Provenance.entity.signature.type | If a base64-encoded signature is to be attached, the type of the signature must follow[MII_VS_Consent_SignatureTypes](ValueSet-mii-vs-consent-signaturetypes.md), Must-support |

**Usages:**

* Examples for this Profile: [Provenance/55219d12-6245-4de4-8b50-ddf6f16a789b](Provenance-55219d12-6245-4de4-8b50-ddf6f16a789b.md)
* CapabilityStatements using this Profile: [MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag)](CapabilityStatement-mii-cap-consent-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.consent|current/StructureDefinition/StructureDefinition-mii-pr-consent-provenance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-consent-provenance.csv), [Excel](../StructureDefinition-mii-pr-consent-provenance.xlsx), [Schematron](../StructureDefinition-mii-pr-consent-provenance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-consent-provenance",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-provenance",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Consent_Provenance",
  "title" : "Profile - MI-I - Consent - Provenance",
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
  "description" : "Dieses Profil beschreibt Herkunftsinformationen zu Einwilligungen in der Medizininformatik-Initiative.",
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
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "fhirauditevent",
    "uri" : "http://hl7.org/fhir/auditevent",
    "name" : "FHIR AuditEvent Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Provenance",
  "baseDefinition" : "http://fhir.de/ConsentManagement/StructureDefinition/Provenance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Provenance",
      "path" : "Provenance"
    },
    {
      "id" : "Provenance.entity.what",
      "path" : "Provenance.entity.what",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference"]
      }]
    },
    {
      "id" : "Provenance.signature.type",
      "path" : "Provenance.signature.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-signaturetypes"
      }
    }]
  }
}

```

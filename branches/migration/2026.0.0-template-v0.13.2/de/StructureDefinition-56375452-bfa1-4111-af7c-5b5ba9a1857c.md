# Profile - MI-I - Consent - DocumentReference - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Profile - MI-I - Consent - DocumentReference**

## Ressourcenprofil: Profile - MI-I - Consent - DocumentReference 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2023-05-09 | *Maschinenlesbarer Name*:MII_PR_Consent_DocumentReference |

 
Dieses Profil beschreibt die Abbildung von Originaldokumenten zu Einwilligungen in der Medizininformatik-Initiative. Diese müssen im PDF-Format vorliegen. 

Basierend auf den [Empfehlungen](https://ig.fhir.de/einwilligungsmanagement/stable/DocumentReference.html) der AG Einwilligungsmanagement, zielt das Profile **MIIConsentDocumentReference** auf ein real existierendes Dokument mit Bezug zum Einwilligungsdokument ab.

Jedoch beschränkt auf Scans von Einwilligungsdokumenten im PDF-Format.

**Usages:**

* Refer to this Profile: [Profile - MI-I - Consent - Provenance](StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464.md)
* Examples for this Profile: [DocumentReference/8a3d1799-2463-405e-b49c-6a16c8692b01](DocumentReference-8a3d1799-2463-405e-b49c-6a16c8692b01.md)
* CapabilityStatements using this Profile: [MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag)](CapabilityStatement-mii-cap-consent-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.consent|current/StructureDefinition/StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ConsentManagementDocumentReference](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.2-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/DocumentReference) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ConsentManagementDocumentReference](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.2-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/DocumentReference) 

** Summary **

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ConsentManagementDocumentReference](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.2-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/DocumentReference) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ConsentManagementDocumentReference](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.2-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/DocumentReference) 

** Summary **

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.csv), [Excel](../StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.xlsx), [Schematron](../StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "56375452-bfa1-4111-af7c-5b5ba9a1857c",
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

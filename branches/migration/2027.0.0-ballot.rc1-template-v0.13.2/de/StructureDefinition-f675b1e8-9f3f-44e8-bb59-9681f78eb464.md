# Profile - MI-I - Consent - Provenance - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Profile - MI-I - Consent - Provenance**

## Ressourcenprofil: Profile - MI-I - Consent - Provenance 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-provenance | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2023-05-09 | *Maschinenlesbarer Name*:MII_PR_Consent_Provenance |

 
Dieses Profil beschreibt Herkunftsinformationen zu Einwilligungen in der Medizininformatik-Initiative. 

Basierend auf den [Empfehlungen](https://ig.fhir.de/einwilligungsmanagement/stable/Provenance.html) der AG Einwilligungsmanagement, beschreibt das Profile **MIIConsentProvenance** die Herkunfsinformationen eines Einwilligungsdokuments.

**Usages:**

* Examples for this Profile: [Provenance/55219d12-6245-4de4-8b50-ddf6f16a789b](Provenance-55219d12-6245-4de4-8b50-ddf6f16a789b.md)
* CapabilityStatements using this Profile: [MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag)](CapabilityStatement-mii-cap-consent-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.consent|current/StructureDefinition/StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ConsentManagementProvenance](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.3-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Provenance) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ConsentManagementProvenance](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.3-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Provenance) 

** Summary **

**Structures**

This structure refers to these other structures:

* [Profile - MI-I - Consent - DocumentReference (https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference)](StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.md)

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ConsentManagementProvenance](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.3-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Provenance) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ConsentManagementProvenance](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.3-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Provenance) 

** Summary **

**Structures**

This structure refers to these other structures:

* [Profile - MI-I - Consent - DocumentReference (https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference)](StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.md)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464.csv), [Excel](../StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464.xlsx), [Schematron](../StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "f675b1e8-9f3f-44e8-bb59-9681f78eb464",
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

# Profile - MI-I - Consent - Einwilligung - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Profile - MI-I - Consent - Einwilligung**

## Resource Profile: Profile - MI-I - Consent - Einwilligung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-08-21 | *Computable Name*:MII_PR_Consent_Einwilligung |

 
Dieses Profil beschreibt eine Einwilligung in der Medizininformatik-Initiative. 

This profile describes an operationalized, automatically generated and processable consent in the Medical Informatics Initiative.

When a person is enrolled in a study (including an MII use case), a consent is collected for that person on the basis of the [MII Broad Consent model texts](https://www.medizininformatik-initiative.de/de/mustertext-zur-patienteneinwilligung), and the corresponding consent documents are documented in a structured way at the respective site according to the [specifications of the MII Task Force Consent Umsetzung](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.184&conceptEffectiveDate=2018-06-29T16%3A26%3A50&language=de-DE).

On the basis of these consent documents, the FHIR Consent resource is generated automatically. The [project context](https://ig.fhir.de/einwilligungsmanagement/stable/DomainReference.html) is preserved.

The resource must be created before participation in cross-site feasibility queries and data releases. Further obligations and adaptations must be checked for each use case.

> **Written during migration - review before release.** The security and privacy aspects of this profile are described on the page [Security and Privacy](security-and-privacy.md); the search parameters are described on the page [Search Parameters](search-parameters.md).

### Interoperability

To ensure the exchangeability of the operationalized consent contents beyond FHIR as well, a uniform PolicyValueSet for the **semantic representation** of the statements contained in the MII Broad Consent was agreed with the **MII AG Consent** in December 2021 and documented in [ART-DECOR](https://art-decor.org/decor/services/RetrieveValueSet?id=2.16.840.1.113883.3.1937.777.24.11.36&effectiveDate=2021-04-23T10:55:54&prefix=mide-&format=html&collapsable=true&language=de-DE&ui=en-US) (policy OIDs).

**The use of this code system is mandatory with respect to the KDS module Consent.**

#### Basic use of the FHIR Consent profile

**Only the differences from the base profile are explained below.**

| | |
| :--- | :--- |
| Consent.id | Must-support, but optional |
| Consent.meta | Must-support, but optional |
| Consent.meta.source | Must-support, but optional |
| Consent.meta.profile | Must-support, but optional |
| Consent.extension:domainReference | Must-support per the specifications of the[AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/ResearchStudy.html), but optional |
| Consent.identifier | Contains one or more external IDs of the consent from an external system. This can be, for example, the IHE ID of the CDA document or the ID of the document in an external trusted third party. The identifier should always be given as a value pair of "system" and "value". This information is optional. |
| Consent.scope.coding.system | Fixed value:`http://terminology.hl7.org/CodeSystem/consentscope` |
| Consent.scope.coding.code | The representation of the MII consent clearly places the context on research. Fixed value:`research` |
| Consent.category | Must-support. Mandatory specification of**at least two categories**with at least one coding each for the consent categories, to enable searching for consents of type "MII consent":**(1) per [https://www.hl7.org/fhir/valueset-consent-category.html](https://www.hl7.org/fhir/valueset-consent-category.html) :**Fixed system:`http://loinc.org`Fixed code for 'Privacy policy acknowledgement Document':`57016-8`**(2) identification of the MII Broad Consent**:Fixed code:`2.16.840.1.113883.3.1937.777.24.2.184`Further additional entries are not prevented. |
| Consent.category:resultType.coding | ResultType per[ResultType](https://ig.fhir.de/einwilligungsmanagement/stable/ResultType.html). At least`document`and`consent-status`should be supported. If`document`is given as the ResultType, the kind of (source) document must also be given in the templateType slice. |
| Consent.category:templateType.coding | Categorization per[TemplateType](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateType.html). Serves as an informal element for differentiating between consent, withdrawal, objection and refusal. |
| Consent.patient.reference | Reference to the patient the Consent resource relates to, in the form of a literal reference, relative reference, internal reference or an absolute URL, must-support.`Consent.patient.reference`should be filled where possible, i.e. when a corresponding Patient resource exists. If this is not the case, the patient relationship must be established via`Consent.patient.identifier`. |
| Consent.patient.identifier | Specification of the person relationship in the form of an identifier, must-support.See`Consent.patient.reference`. The relationship to the patient should preferably be established via`Consent.patient.reference`.`Consent.patient.identifier`can be used alternatively or additionally. |
| Consent.patient.identifier.system | If the person relationship is given via an identifier, the system entry as a URI is mandatory, must-support |
| Consent.patient.identifier.value | If the person relationship is given via an identifier, the value entry as a string is mandatory, must-support |
| Consent.policy.uri | Reference to the version of the MII Broad Consent document version underlying the Consent resource per the overview below,e.g.**MII Broad Consent version 1.7.2**`urn:oid:2.16.840.1.113883.3.1937.777.24.2.2079`or**MII Broad Consent version 1.7.2 incl. additional module Acribis**`urn:oid:2.16.840.1.113883.3.1937.777.24.2.4031`, must-support |

> **Written during migration - review before release.** The table above describes the state of release 2026.0.0. With the incorporation of the `develop` state (744f7ba, 2026-08-21) three changes apply: (1) the profile now derives from the HL7-D profile `ConsentManagement/Consent`; (2) the category slices are named `consentCategory` (LOINC 57016-8), `mii` (Version-Modules CodeSystem), `resultType` (required) and `templateType` (extensible); (3) the examples use the CodeSystem `mii-cs-consent-version-modules` for the MII category. The rows on `Consent.category` ("at least two categories") are superseded accordingly.

#### Unique identification of the MII Broad Consent

To filter FHIR Consent resources for consents based on the MII Broad Consent, a mandatory URI is used for `Consent.policy.uri`. The TFCU has created representations of the different versions of the MII Broad Consent in ART-DECOR. These can be referenced via a unique OID (cf. the table below).

| | |
| :--- | :--- |
| 1.6d | 2.16.840.1.113883.3.1937.777.24.2.1790 |
| 1.6d refusal | 2.16.840.1.113883.3.1937.777.24.2.4053 |
| 1.6d complete withdrawal | 2.16.840.1.113883.3.1937.777.24.2.2718 |
| 1.6d partial withdrawal | 2.16.840.1.113883.3.1937.777.24.2.2719 |
| 1.6f | 2.16.840.1.113883.3.1937.777.24.2.1791 |
| 1.6f complete withdrawal | 2.16.840.1.113883.3.1937.777.24.2.2720 |
| 1.6f partial withdrawal | 2.16.840.1.113883.3.1937.777.24.2.2721 |
| 1.7.2 | 2.16.840.1.113883.3.1937.777.24.2.2079 |
| 1.7.2 refusal | 2.16.840.1.113883.3.1937.777.24.2.4054 |
| 1.7.2 complete withdrawal | 2.16.840.1.113883.3.1937.777.24.2.2722 |
| 1.7.2 partial withdrawal | 2.16.840.1.113883.3.1937.777.24.2.2723 |
| 1.7.2 (parents and legal guardians for minors v1.1) | 2.16.840.1.113883.3.1937.777.24.2.3542 |
| 1.7.2 (7-11 minors v1.1) | 2.16.840.1.113883.3.1937.777.24.2.3543 |
| 1.7.2 (12-17 minors v1.1) | 2.16.840.1.113883.3.1937.777.24.2.3544 |
| Additional module ACRIBiS (Z2) | 2.16.840.1.113883.3.1937.777.24.2.4031 |
| Additional module patient survey (Z3) | 2.16.840.1.113883.3.1937.777.24.2.4036 |
| Additional module Fachnetzwerk Infektion - SNID (Z4) | 2.16.840.1.113883.3.1937.777.24.2.4037 |
| Additional module Deutsches Zentrum für Psychische Gesundheit - DZPG (Z5) | 2.16.840.1.113883.3.1937.777.24.2.4048 |

#### Nested provision elements

The FHIR Consent resource follows the GDPR **opt-in** requirement: only what was explicitly consented to at a specific point in time (the time of consent) is permitted. This is realized via nested provision elements.

In opt-in scenarios the **superordinate provision element** (->**level-1 provision**) forbids everything (`Provision.Type=DENY`) unless it is explicitly permitted in the form of **subordinate provision elements** (->**level-2 provisions**). Therefore, provision elements with `Provision.Type=PERMIT` must be used as subordinate provisions. For additional information, level-2 provisions with `Provision.Type=DENY` are possible.

The basic validity period of the consent is likewise realized via the superordinate provision element using `provision.period` (for the MII Broad Consent: 30 years).

However, should individual parts of the consent expire early, these exceptions can be defined as part of the subordinate provisions relating to the relevant consent component using `provision.provision.period` (e.g. a provision with code `2.16.840.1.113883.3.1937.777.24.5.3.6` for policy `MDAT\_erheben` already expires after 5 years).

**Superordinate provision (Consent.Provision)**

| | |
| :--- | :--- |
| Consent.provision.type | value`DENY`or`PERMIT`, must-support |
| Consent.provision.period.start | mandatory entry for the start of the consent's validity. Unless specified otherwise, this is typically the date of the affected person's signature of the consent, must-support |
| Consent.provision.period.end | mandatory entry for the end of the consent's validity. This is typically the point at which the consent duration defined for the MII expires (30 years, starting from the signature date), must-support |
| Consent.provision.action | Specifying actions is not permitted, not supported |
| Consent.provision.code | Specifying codes is not permitted in the superordinate provision, not supported |
| Consent.provision.provision | List of subordinate provision elements that explicitly permit (data-processing) activities, must-support |

**Subordinate provision elements (Consent.Provision.Provision)**

**Exactly one subordinate provision element should be used per consent policy.**

| | |
| :--- | :--- |
| Consent.provision.provision.type | value`PERMIT`or`DENY`, must-support |
| Consent.provision.provision.period.start | mandatory entry for the start of the consent policy's validity, must-support |
| Consent.provision.provision.period.end | mandatory entry for the end of the consent policy's validity, must-support |
| Consent.provision.provision.code | 1-n entries on the semantics of the consent policy.**At minimum per the MII TFCU concept**(cf. MiiConsentPolicyValueSet in the section[CodeSystems](code-systems.md)), must-support |
| Consent.provision.provision.code.coding.system | System entry, ideally per the**MII TFCU concept**(cf. MiiConsentPolicyValueSet in the section[CodeSystems](code-systems.md)):`urn:oid:2.16.840.1.113883.3.1937.777.24.5.3`, must-support |
| Consent.provision.provision.code.coding.code | Code entry, ideally per the**MII TFCU concept**(cf. MiiConsentPolicyValueSet in the section[CodeSystems](code-systems.md)) e.g.`2.16.840.1.113883.3.1937.777.24.5.3.6`, must-support |
| Consent.provision.provision.code.coding.display | Optional display entry, ideally per the**MII TFCU concept**(cf. MiiConsentPolicyValueSet in the section[CodeSystems](code-systems.md)) e.g.`MDAT\_erheben` |
| Consent.provision.provision.action | Specifying actions is not permitted, not supported |
| Consent.provision.provision.provision | Further nesting levels of provisions are not permitted, not supported |

### End of the consent and Consent resources in the context of withdrawal, refusal or objection

Per the specifications of the MII AG Consent, the patient's consent generally ends after 30 years. Consents of minors (the person affected by the consent) are a special case. In the case of consents for **minors**, which may have been filled in on their behalf by the respective legal guardians, **the consent ends when the affected person reaches the age of majority**. This must be implemented accordingly in the technical systems. [Reference implementations](https://www.ths-greifswald.de/dezember-release-2025-neue-versionen-von-e-pix-gpas-und-gics-verfuegbar/) exist.

The [withdrawal template (compatible with MII BC 1.7.2)](https://www.medizininformatik-initiative.de/sites/default/files/2025-01/MII_BC_Formular-Komplettwiderruf.pdf) is also intended for withdrawing consents of minors, since these are usually likewise filled in by the legal guardians.

With regard to Consent resources created in connection with withdrawals (complete or partial), refusals or objections, the [recommendations of the HL7-D AG Einwilligungsmanagement](https://simplifier.net/guide/Einwilligungsmanagement/Consent?version=current) apply in general (cf. the section '**Angepasste Empfehlungen zur Verwendung von Consent und Consent-Provisions nach Dokumentenart und Szenario**'):

**Level-2 provisions should therefore always be specified where possible.** If a document conceptually has no defined end (for example withdrawal, refusal, objection), the specification of `period.end` on provisions can be omitted accordingly.

**Usages:**

* Examples for this Profile: [Consent/34150a23-b1c8-404f-874f-e042a30435d2](Consent-34150a23-b1c8-404f-874f-e042a30435d2.md), [Consent/5143266b-8d60-4b28-8ee9-635140ffa5bb](Consent-5143266b-8d60-4b28-8ee9-635140ffa5bb.md), [Consent/89f494a3-cd75-44f5-a78a-581dfdd47a94](Consent-89f494a3-cd75-44f5-a78a-581dfdd47a94.md) and [Consent/Example-MII-Consent-ResultType-document](Consent-Example-MII-Consent-ResultType-document.md)
* CapabilityStatements using this Profile: [MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag)](CapabilityStatement-mii-cap-consent-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.consent|current/StructureDefinition/StructureDefinition-mii-pr-consent-einwilligung.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-consent-einwilligung.csv), [Excel](../StructureDefinition-mii-pr-consent-einwilligung.xlsx), [Schematron](../StructureDefinition-mii-pr-consent-einwilligung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-consent-einwilligung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Consent_Einwilligung",
  "title" : "Profile - MI-I - Consent - Einwilligung",
  "status" : "active",
  "date" : "2026-08-21",
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
  "description" : "Dieses Profil beschreibt eine Einwilligung in der Medizininformatik-Initiative.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Consent",
  "baseDefinition" : "http://fhir.de/ConsentManagement/StructureDefinition/Consent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent",
      "path" : "Consent"
    },
    {
      "id" : "Consent.id",
      "path" : "Consent.id",
      "mustSupport" : true
    },
    {
      "id" : "Consent.meta",
      "path" : "Consent.meta",
      "mustSupport" : true
    },
    {
      "id" : "Consent.meta.source",
      "path" : "Consent.meta.source",
      "mustSupport" : true
    },
    {
      "id" : "Consent.meta.profile",
      "path" : "Consent.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Consent.status",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
        "valueCode" : "normative"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version",
        "valueCode" : "4.0.0"
      }],
      "path" : "Consent.status"
    },
    {
      "id" : "Consent.scope.coding",
      "path" : "Consent.scope.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Consent.scope.coding.system",
      "path" : "Consent.scope.coding.system",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/consentscope"
    },
    {
      "id" : "Consent.scope.coding.code",
      "path" : "Consent.scope.coding.code",
      "min" : 1,
      "fixedCode" : "research"
    },
    {
      "id" : "Consent.category",
      "path" : "Consent.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Consent.category:consentCategory",
      "path" : "Consent.category",
      "sliceName" : "consentCategory",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57016-8"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:consentCategory.coding",
      "path" : "Consent.category.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:consentCategory.coding.system",
      "path" : "Consent.category.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:consentCategory.coding.code",
      "path" : "Consent.category.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:mii",
      "path" : "Consent.category",
      "sliceName" : "mii",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/CodeSystem/mii-cs-consent-version-modules",
          "code" : "2.16.840.1.113883.3.1937.777.24.2.184"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:mii.coding",
      "path" : "Consent.category.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:mii.coding.system",
      "path" : "Consent.category.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:mii.coding.code",
      "path" : "Consent.category.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:resultType",
      "path" : "Consent.category",
      "sliceName" : "resultType",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://fhir.de/ConsentManagement/ValueSet/ResultType"
      }
    },
    {
      "id" : "Consent.category:resultType.coding",
      "path" : "Consent.category.coding",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:resultType.coding.system",
      "path" : "Consent.category.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:resultType.coding.code",
      "path" : "Consent.category.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:templateType",
      "path" : "Consent.category",
      "sliceName" : "templateType",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.de/ConsentManagement/ValueSet/TemplateType"
      }
    },
    {
      "id" : "Consent.category:templateType.coding",
      "path" : "Consent.category.coding",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:templateType.coding.system",
      "path" : "Consent.category.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.category:templateType.coding.code",
      "path" : "Consent.category.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.patient.reference",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
        "valueCode" : "normative"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version",
        "valueCode" : "4.0.0"
      }],
      "path" : "Consent.patient.reference",
      "mustSupport" : true
    },
    {
      "id" : "Consent.patient.identifier",
      "path" : "Consent.patient.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Consent.patient.identifier.system",
      "path" : "Consent.patient.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.patient.identifier.value",
      "path" : "Consent.patient.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.dateTime",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
        "valueCode" : "normative"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version",
        "valueCode" : "4.0.0"
      }],
      "path" : "Consent.dateTime",
      "short" : "Erstellungszeitpunkt der Einwilligung",
      "definition" : "Dieser Zeitpunkt sollte in der Praxis, zumindest bei vollelektronischer Verarbeitung, identisch mit dem Unterschriftsdatum des Fragebogens sein (Provenance.signature.when des Patienten)"
    },
    {
      "id" : "Consent.source[x].reference",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
        "valueCode" : "normative"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version",
        "valueCode" : "4.0.0"
      }],
      "path" : "Consent.source[x].reference"
    },
    {
      "id" : "Consent.policy",
      "path" : "Consent.policy",
      "min" : 1
    },
    {
      "id" : "Consent.policy.uri",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
        "valueCode" : "normative"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version",
        "valueCode" : "4.0.0"
      }],
      "path" : "Consent.policy.uri"
    },
    {
      "id" : "Consent.provision.type",
      "path" : "Consent.provision.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.period",
      "path" : "Consent.provision.period",
      "min" : 1
    },
    {
      "id" : "Consent.provision.period.start",
      "path" : "Consent.provision.period.start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.period.end",
      "path" : "Consent.provision.period.end",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.action",
      "path" : "Consent.provision.action",
      "max" : "0"
    },
    {
      "id" : "Consent.provision.code",
      "path" : "Consent.provision.code",
      "max" : "0"
    },
    {
      "id" : "Consent.provision.provision",
      "path" : "Consent.provision.provision",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.provision.type",
      "path" : "Consent.provision.provision.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.provision.period",
      "path" : "Consent.provision.provision.period",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.provision.period.start",
      "path" : "Consent.provision.provision.period.start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.provision.period.end",
      "path" : "Consent.provision.provision.period.end",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.provision.action",
      "path" : "Consent.provision.provision.action",
      "max" : "0"
    },
    {
      "id" : "Consent.provision.provision.code",
      "path" : "Consent.provision.provision.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-policy"
      }
    },
    {
      "id" : "Consent.provision.provision.code.coding",
      "path" : "Consent.provision.provision.code.coding",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.provision.code.coding.system",
      "path" : "Consent.provision.provision.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.provision.code.coding.code",
      "path" : "Consent.provision.provision.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.provision.provision",
      "path" : "Consent.provision.provision.provision",
      "max" : "0"
    }]
  }
}

```

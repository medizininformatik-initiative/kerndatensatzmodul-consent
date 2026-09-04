# Profile - MI-I - Consent - Einwilligung - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Profile - MI-I - Consent - Einwilligung**

## Ressourcenprofil: Profile - MI-I - Consent - Einwilligung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-08-21 | *Maschinenlesbarer Name*:MII_PR_Consent_Einwilligung |

 
Dieses Profil beschreibt eine Einwilligung in der Medizininformatik-Initiative. 

Dieses Profil beschreibt eine operationalisierte, automatisch erzeugte und prozessierbare Einwilligung in der Medizininformatik-Initiative.

Beim Einschluss einer Person in eine Studie (auch in einen MII-Use Case) wird eine Einwilligung für diese Person auf Basis der [MII Broad Consent Mustertexte](https://www.medizininformatik-initiative.de/de/mustertext-zur-patienteneinwilligung) erhoben und entsprechende Einwilligungsdokument am jeweiligen Standort strukturiert dokumentiert gemäß den [Vorgaben der MII Task Force Consent Umsetzung](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.184&conceptEffectiveDate=2018-06-29T16%3A26%3A50&language=de-DE).

Auf Grundlage dieser Einwilligungsdokumente wird die FHIR Consent Ressource automatisiert erzeugt. Der [Projektkontext](https://ig.fhir.de/einwilligungsmanagement/stable/DomainReference.html) bleibt erhalten.

Die Erstellung der Ressource muss vor der Teilnahme an Standort-übergreifenden Feasability-Anfragen und Datenherausgaben erfolgen. Weitere Pflichten und Anpassungen sind für jeden Use Case zu prüfen.

> **Written during migration - review before release.** Die Datenschutz-Aspekte dieses Profils beschreibt die Seite [Sicherheit und Datenschutz](security-and-privacy.md); die Suchparameter beschreibt die Seite [Suchparameter](search-parameters.md).

### Interoperabilität

Um die Austauschbarkeit der operationalisierten Einwilligungsinhalte auch über FHIR hinaus sicherzustellen, wurde mit der **MII AG Consent** ein einheitliches PolicyValueSet zur **semantischen Abbildung** der im MII Broad Consent enthaltenen Aussagen im Dezember 2021 abgestimmt und im [ART-DECOR](https://art-decor.org/decor/services/RetrieveValueSet?id=2.16.840.1.113883.3.1937.777.24.11.36&effectiveDate=2021-04-23T10:55:54&prefix=mide-&format=html&collapsable=true&language=de-DE&ui=en-US) (Policy-OIDs) dokumentiert.

**Die Verwendung dieses Codesystems ist bezogen auf das KDS-Modul Consent verpflichtend.**

#### Grundsätzliche Verwendung des Profils FHIR Consent

**Nachfolgend werden nur die Unterschiede zum Basis-Profil erläutert.**

| | |
| :--- | :--- |
| Consent.id | Must-support, jedoch optional |
| Consent.meta | Must-support, jedoch optional |
| Consent.meta.source | Must-support, jedoch optional |
| Consent.meta.profile | Must-support, jedoch optional |
| Consent.extension:domainReference | Must-support gemäß Vorgaben[AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/ResearchStudy.html), jedoch optional |
| Consent.identifier | Enthält eine oder mehrere externe IDs der Einwilligung eines externen Systems. Dies kann z.B. die IHE-ID des CDA Dokumentes sein oder die ID des Dokuments in einer externen Treuhandstelle. Der identifier sollte immer als Wertepaar "system" und "value" angegeben werden. Die Angabe ist optional. |
| Consent.scope.coding.system | Fixed value:`http://terminology.hl7.org/CodeSystem/consentscope` |
| Consent.scope.coding.code | Abbildung der MII Einwilligung legt Kontext klar auf Forschung. Fixed value:`research` |
| Consent.category | Must-support. Verpflichtende Angabe von**mindestens zwei Categories**mit je min. einem Coding für die Consent-Kategorien, um die Suche nach Einwilligungen vom Typ "MII Einwilligung" zu ermöglichen:**(1) gemäß [https://www.hl7.org/fhir/valueset-consent-category.html](https://www.hl7.org/fhir/valueset-consent-category.html) :**Fixed System:`http://loinc.org`Fixed Code für 'Privacy policy acknowledgement Document':`57016-8`**(2) Identifikation MII Broad Consent**:Fixed Code:`2.16.840.1.113883.3.1937.777.24.2.184`Weitere zusätzliche Angaben werden nicht verhindert. |
| Consent.category:resultType.coding | ResultType gemäß[ResultType](https://ig.fhir.de/einwilligungsmanagement/stable/ResultType.html). Es sollten mindestens`document`und`consent-status`unterstützt werden. Wenn als ResultType`document`angegeben ist, muss die Art des (Quell-)Dokuments im Slice templateType ebenfalls angegeben werden. |
| Consent.category:templateType.coding | Kategorisierung gemäß[TemplateType](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateType.html). Dient als informelles Element der Differenzierung zwischen Einwilligung, Widerruf, Widerspruch und Ablehnung. |
| Consent.patient.reference | Verweis zum Patienten, auf den sich die Consent Ressource bezieht in der Form Literal reference, Relative reference, Internal reference oder als absolute URL, Must-support.`Consent.patient.reference`sollte ausgefüllt werden, wenn möglich, d.h. wenn eine entsprechende Patienten Ressource vorhanden ist. Ist dies nicht der Fall, muss der Patientenbezug über`Consent.patient.identifier`hergestellt werden. |
| Consent.patient.identifier | Angabe des Personenbezugs in Form eines Identifiers, Must-support.Siehe`Consent.patient.reference`. Der Bezug zum Patienten sollte möglichst über`Consent.patient.reference`hergestellt werden.`Consent.patient.identifier`kann alternativ bzw. ergänzend verwendet werden. |
| Consent.patient.identifier.system | Wird der Personenbezug per Identifier angegeben, ist die System-Angabe per Uri verpflichtend, Must-support |
| Consent.patient.identifier.value | Wird der Personenbezug per Identifier angegeben, ist die Value-Angabe per String verpflichtend, Must-support |
| Consent.policy.uri | Verweis auf die Version des der Consent-Ressource zugrundeliegende MII Broad Consent Dokument-Version gemäß untenstehender Übersicht,z.B.**MII Broad Consent Version 1.7.2**`urn:oid:2.16.840.1.113883.3.1937.777.24.2.2079`oder**MII Broad Consent Version 1.7.2 inkl. Zusatzmodul Acribis**`urn:oid:2.16.840.1.113883.3.1937.777.24.2.4031`, Must-support |

> **Written during migration - review before release.** Die obenstehende Tabelle beschreibt den Stand des Release 2026.0.0. Mit der Inkorporation des `develop`-Standes (744f7ba, 2026-08-21) gelten drei Änderungen: (1) das Profil leitet jetzt vom HL7-D-Profil `ConsentManagement/Consent` ab; (2) die Category-Slices heißen `consentCategory` (LOINC 57016-8), `mii` (Version-Modules-CodeSystem), `resultType` (required) und `templateType` (extensible); (3) die Beispiele verwenden für die MII-Kategorie das CodeSystem `mii-cs-consent-version-modules`. Die Zeilen zu `Consent.category` ("mindestens zwei Categories") sind entsprechend überholt.

#### Eindeutige Identifikation des MII-Broad Consent

Um FHIR-Consent Ressourcen nach Einwilligungen zu filtern, die auf dem MII Broad Consent basieren, wird ein verpflichtendes Uri für die `Consent.policy.uri` verwendet. Die TFCU hat im ART-DECOR Repräsentationen für die unterschiedlichen Versionen des MII Broad Consent angelegt. Diese können über eine eindeutige OID (vgl. nachstehende Tabelle) referenziert werden.

| | |
| :--- | :--- |
| 1.6d | 2.16.840.1.113883.3.1937.777.24.2.1790 |
| 1.6d Ablehnung | 2.16.840.1.113883.3.1937.777.24.2.4053 |
| 1.6d Komplettwiderruf | 2.16.840.1.113883.3.1937.777.24.2.2718 |
| 1.6d Teilwiderruf | 2.16.840.1.113883.3.1937.777.24.2.2719 |
| 1.6f | 2.16.840.1.113883.3.1937.777.24.2.1791 |
| 1.6f Komplettwiderruf | 2.16.840.1.113883.3.1937.777.24.2.2720 |
| 1.6f Teilwiderruf | 2.16.840.1.113883.3.1937.777.24.2.2721 |
| 1.7.2 | 2.16.840.1.113883.3.1937.777.24.2.2079 |
| 1.7.2 Ablehnung | 2.16.840.1.113883.3.1937.777.24.2.4054 |
| 1.7.2 Komplettwiderruf | 2.16.840.1.113883.3.1937.777.24.2.2722 |
| 1.7.2 Teilwiderruf | 2.16.840.1.113883.3.1937.777.24.2.2723 |
| 1.7.2 (Eltern und Sorgeberechtigte für Minderjährige v1.1) | 2.16.840.1.113883.3.1937.777.24.2.3542 |
| 1.7.2 (7-11 Minderjährige v1.1) | 2.16.840.1.113883.3.1937.777.24.2.3543 |
| 1.7.2 (12-17 Minderjährige v1.1) | 2.16.840.1.113883.3.1937.777.24.2.3544 |
| Zusatzmodul ACRIBiS (Z2) | 2.16.840.1.113883.3.1937.777.24.2.4031 |
| Zusatzmodul Patientenbefragung (Z3) | 2.16.840.1.113883.3.1937.777.24.2.4036 |
| Zusatzmodul Fachnetzwerk Infektion - SNID (Z4) | 2.16.840.1.113883.3.1937.777.24.2.4037 |
| Zusatzmodul Deutsche Zentrum für Psychische Gesundheit - DZPG (Z5) | 2.16.840.1.113883.3.1937.777.24.2.4048 |

#### Verschachtelte Provision-Elemente

Die FHIR Consent Ressource folgt der DSGVO-Vorgabe zum **Opt-In**: es ist nur erlaubt, was explizit zu einem bestimmten Zeitpunkt (Zeitpunkt der Einwilligung) eingewilligt wurde. Dies wird über verschachtelte Provision-Elemente realisiert.

In Opt-In-Szenarien verbietet das **übergeordnete Provision-Element** (->**Level1-Provision**) alles (`Provision.Type=DENY`), außer es ist in Form von **untergeordneten Provision-Elementen** (->**Level2-Provision**) explizit erlaubt. Daher sind als untergeordnete Provisions Provision-Elemente mit `Provision.Type=PERMIT` verbindlich zu verwenden. Für Zusatzinformationen sind Level-2-Provision mit `Provision.Type=DENY` möglich.

Die grundsätzliche Gültigkeitsdauer der Einwilligung wird ebenfalls über das übergeordnetete Provision-Element mittels `provision.period` realisiert (für den MII Broad Consent: 30 Jahre).

Sollten einzelne Bestandteile der Einwilligung jedoch bereits frühzeitig ablaufen, können diese Ausnahmen als Teil der untergeordneter Provisions mit Bezug zum relevanten Einwilligungsbestandteil mittels `provision.provision.period` definiert werden (z.B. Provision mit Code `2.16.840.1.113883.3.1937.777.24.5.3.6` für Policy `MDAT\_erheben` läuft bereits nach 5 Jahren ab).

**Übergeordnete Provision (Consent.Provision)**

| | |
| :--- | :--- |
| Consent.provision.type | value`DENY`oder`PERMIT`, Must-support |
| Consent.provision.period.start | verpflichtende Angabe zum Beginn der Gültigkeit der Einwilligung. Sofern nicht anders festgelegt ist dies typischerweise das Datum der Unterschrift der Einwilligung der betroffenen Person, Must-support |
| Consent.provision.period.end | verpflichtende Angabe zum Ende der Gültigkeit der Einwilligung. Dies ist typischerweise der Zeitpunkt des Ablaufens der für die MII festlegte Einwilligungsdauer (30 Jahre, beginnend mit dem Unterschriftsdatum), Must-support |
| Consent.provision.action | Die Angabe von Actions ist nicht zulässig, not supported |
| Consent.provision.code | Die Angabe von Codes ist in der übergeordneten Provision nicht zulässig, not supported |
| Consent.provision.provision | Liste von untergeordneten Provision-Elementen die explizit (Datenverarbeitungs-)Tätigkeiten erlauben, Must-support |

**Untergeordnete Provision-Elemente (Consent.Provision.Provision)**

**Je Consent-Policy sollte exakt ein untergeordnetes Provision-Element genutzt werden.**

| | |
| :--- | :--- |
| Consent.provision.provision.type | value`PERMIT`oder`DENY`, Must-support |
| Consent.provision.provision.period.start | verpflichtende Angabe zum Beginn der Gültigkeit der Consent-Policy, Must-support |
| Consent.provision.provision.period.end | verpflichtende Angabe zum Ende der Gültigkeit der Consent-Policy, Must-support |
| Consent.provision.provision.code | 1-n Angabe zur Semantik der Einwilligungspolicy.**Mindestens aber gemäß MII TFCU Konzept**(vgl. MiiConsentPolicyValueSet im Abschnitt[CodeSystems](code-systems.md)), Must-support |
| Consent.provision.provision.code.coding.system | Systemangabe, idealerweise gemäß**MII TFCU Konzept**(vgl. MiiConsentPolicyValueSet im Abschnitt[CodeSystems](code-systems.md)):`urn:oid:2.16.840.1.113883.3.1937.777.24.5.3`, Must-support |
| Consent.provision.provision.code.coding.code | Codeangabe, idealerweise gemäß**MII TFCU Konzept**(vgl. MiiConsentPolicyValueSet im Abschnitt[CodeSystems](code-systems.md)) z.B.`2.16.840.1.113883.3.1937.777.24.5.3.6`, Must-support |
| Consent.provision.provision.code.coding.display | Optionale Displayangabe, idealerweise gemäß**MII TFCU Konzept**(vgl. MiiConsentPolicyValueSet im Abschnitt[CodeSystems](code-systems.md)) z.B.`MDAT\_erheben` |
| Consent.provision.provision.action | Angabe von Actions sind nicht zulässig, not supported |
| Consent.provision.provision.provision | Weitere Verschachtelungsebenen von Provisions sind nicht zulässig, not supported |

### Ende der Einwilligung und Consent-Ressourcen im Kontext von Widerruf, Ablehnung oder Widerspruch

Die Einwilligung des Patienten endet nach Vorgaben der MII AG Consent grundsätzlich nach 30 Jahren. Einen Sonderfall stellen die Einwilligungen von Minderjährigen (von der Einwilligung betroffene Person) dar. Im Fall von Einwilligungen für **Minderjährige**, die ggf. durch entsprechende Sorgeberechtigte stellvertretend ausgefüllt wurden, **endet die Einwilligung mit Erreichung der Volljährigkeit** der betroffenen Person. Dies ist entsprechend technisch umzusetzen. [Referenzimplementierungen](https://www.ths-greifswald.de/dezember-release-2025-neue-versionen-von-e-pix-gpas-und-gics-verfuegbar/) existieren.

Die [Widerrufsvorlage (kompatibel mit MII BC 1.7.2)](https://www.medizininformatik-initiative.de/sites/default/files/2025-01/MII_BC_Formular-Komplettwiderruf.pdf) ist ebenfalls für den Widerruf von Einwilligungen Minderjähriger gedacht, da diese in der Regel ebenfalls durch die Sorgeberechtigten ausgefüllt werden.

Bezogen auf Consent-Ressourcen, die im Zusammenhang mit Widerrufen (vollständig, oder teilweise), Ablehnungen oder Widersprüchen erstellt wurden, gelten im Allgemeinen die [Empfehlungen der HL7-D AG Einwilligungsmanagement](https://simplifier.net/guide/Einwilligungsmanagement/Consent?version=current) (vgl. Abschnitt '**Angepasste Empfehlungen zur Verwendung von Consent und Consent-Provisions nach Dokumentenart und Szenario**'):

**Level-2 Provisions sollten insofern nach Möglichkeit stets angegeben werden.** Hat ein Dokument konzeptuell kein definiertes Ende (beispielsweise Widerruf, Ablehnung, Widerspruch) kann auf die Angabe von `period.end` bei Provisions entsprechend verzichtet werden.

**Usages:**

* Examples for this Profile: [Consent/34150a23-b1c8-404f-874f-e042a30435d2](Consent-34150a23-b1c8-404f-874f-e042a30435d2.md), [Consent/5143266b-8d60-4b28-8ee9-635140ffa5bb](Consent-5143266b-8d60-4b28-8ee9-635140ffa5bb.md), [Consent/89f494a3-cd75-44f5-a78a-581dfdd47a94](Consent-89f494a3-cd75-44f5-a78a-581dfdd47a94.md) and [Consent/Example-MII-Consent-ResultType-document](Consent-Example-MII-Consent-ResultType-document.md)
* CapabilityStatements using this Profile: [MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag)](CapabilityStatement-mii-cap-consent-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.consent|current/StructureDefinition/StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ConsentManagementConsent](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.4-rc1-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Consent) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ConsentManagementConsent](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.4-rc1-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Consent) 

** Summary **

Mandatory: 12 elements(18 nested mandatory elements)
 Must-Support: 36 elements
 Fixed: 2 elements
 Prohibited: 4 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Consent.category

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [ConsentManagementConsent](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.4-rc1-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Consent) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [ConsentManagementConsent](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.4-rc1-snapshots&canonical=http://fhir.de/ConsentManagement/StructureDefinition/Consent) 

** Summary **

Mandatory: 12 elements(18 nested mandatory elements)
 Must-Support: 36 elements
 Fixed: 2 elements
 Prohibited: 4 elements

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Consent.category

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0.csv), [Excel](../StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0.xlsx), [Schematron](../StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "e0e166b4-0f77-478d-9062-de0034d98ce0",
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

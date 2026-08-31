<!-- markdownlint-disable MD041 -->
<!-- machine translation of source page frageboegen.md (de). TODO:REVIEW — Gate C. -->
<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/Fragebgen?version=2026.0.0
     (Harvest 2026-08-31, migration-log/guide-harvest/); interne Links auf die
     Zielseiten dieser IG-Struktur umgeschrieben (migration-log/page-map.tsv). -->

The [AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/) has dealt comprehensively with the modeling of consents and consent templates.

This Implementation Guide builds substantially on that preliminary work.

### The structured consent template

The profiles [Questionnaire Composed](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireComposed.html), [Template Frame](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateFrame.html) and [Template Module](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateModule.html) are based on the FHIR resource Questionnaire and serve to represent the consent form (here: MII Broad Consent).

The Template Module constitutes a reusable basic building block that is used or embedded in one or more form sections (TemplateFrames). One or more TemplateFrames can be composed into a complete, renderable form (QuestionnaireComposed).

### The completed consent

The profile [QuestionnaireResponse](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireResponse.html) electronically represents the questionnaire completed by the patient. Here the patient's answers to the referenced questionnaire (QuestionnaireComposed) of the MII Broad Consent are documented.

To represent the answers, the value set "[MII Consent: Answer ValueSet](https://art-decor.org/art-decor/decor-valuesets--mide-?id=2.16.840.1.113883.3.1937.777.24.11.30)" should be used:

| Checkbox | Code designator | Code (OID) |
| --- | --- | --- |
| 'Yes' checked | gültig | 2.16.840.1.113883.3.1937.777.24.5.2.1 |
| 'No' checked | nicht gültig | 2.16.840.1.113883.3.1937.777.24.5.2.2 |
| not checked | unbekannt | 2.16.840.1.113883.3.1937.777.24.5.2.3 |


*Answers (checkbox), code designators and OIDs*

### Representation of the MII Broad Consent

The data elements of the MII Broad Consent form in versions [1.6d](https://art-decor.org/art-decor/decor-datasets--mide-?conceptId=2.16.840.1.113883.3.1937.777.24.2.1790) and [1.6f](https://art-decor.org/art-decor/decor-datasets--mide-?conceptId=2.16.840.1.113883.3.1937.777.24.2.1791) are modeled as a dataset in ART-DECOR; see the section [Datasets incl. descriptions](logical-models.html).

### Use of uniform policies

The required value sets are likewise modeled in ART-DECOR) and associated with the corresponding data elements. Compatibility with IHE BPPC (Integrating the Healthcare Enterprise, ["Basic Patient Privacy Consent" profile](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol1.pdf#nameddest=19_Basic_Patient_Privacy_Consen)) is addressed via policies.

The **operationalization and enforcement of the consent information** is supported by a [uniform policy value set](https://art-decor.org/decor/services/RetrieveValueSet?id=2.16.840.1.113883.3.1937.777.24.11.36&effectiveDate=2021-04-23T10:55:54&prefix=mide-&format=html&collapsable=true&language=de-DE&ui=en-US). This can be used interoperably in IHE BPPC.

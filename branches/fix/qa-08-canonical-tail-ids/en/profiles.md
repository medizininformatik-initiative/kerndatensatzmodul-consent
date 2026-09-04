# Profiles - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

### FHIR Profiles

The work on the core data set specifications is based, wherever possible, on international standards and terminologies — in particular on the preparatory profiling work of the [AG Einwilligungsmanagement on FHIR Consent](https://ig.fhir.de/einwilligungsmanagement/stable/).

All elements of the core data set, adapted to the details and requirements of the use cases of the Medical Informatics Initiative, are described below in the form of FHIR StructureDefinitions. The need for adapting the FHIR profiles is explained in textual form beneath the respective profiles.

### Mandatory / must-support elements

For **mandatory** elements or elements marked as **must-support**, please refer to the corresponding [rules of the IPS](https://build.fhir.org/ig/HL7/fhir-ips/design.html#must-support), which also apply to this ImplementationGuide.

The profiles of this module:

* [MII PR Consent Einwilligung](StructureDefinition-mii-pr-consent-einwilligung.md)
* [MII PR Consent Provenance](StructureDefinition-mii-pr-consent-provenance.md)
* [MII PR Consent DocumentReference](StructureDefinition-mii-pr-consent-documentreference.md)

### Further relevant profiles

In addition to [Consent](StructureDefinition-mii-pr-consent-einwilligung.md), [Provenance](StructureDefinition-mii-pr-consent-provenance.md), and [DocumentReference](StructureDefinition-mii-pr-consent-documentreference.md), further profiles are relevant for handling consents and consent templates; they are adopted unchanged from the [Einwilligungsmanagement implementation guide](https://ig.fhir.de/einwilligungsmanagement/stable/Home.html).

Support for the following profiles is mandatory when using this guide:

| | |
| :--- | :--- |
| [Organization](https://ig.fhir.de/einwilligungsmanagement/stable/Organization.html) | Responsible organization |
| [ResearchStudy](https://ig.fhir.de/einwilligungsmanagement/stable/ResearchStudy.html) | Research project |
| [Patient](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html) | Affected person (pseudonymized) |

If the Broad Consent is represented or captured by means of FHIR Questionnaires, the following profiles should additionally be used:

| | |
| :--- | :--- |
| [QuestionnaireResponse](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireResponse.html) | Completed consent |
| [QuestionnaireComposed](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireComposed.html) | Consent template (renderable) |
| [TemplateFrame](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateFrame.html) | Consent template (structure definition) |
| [TemplateModule](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateModule.html) | Consent module |


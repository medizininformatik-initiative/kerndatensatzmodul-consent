# Profiles - MII Implementation Guide Consent v2026.0.0

* [**Table of Contents**](toc.md)
* **Profiles**

## Profiles

### FHIR Profiles

The work on the core data set specifications is based, wherever possible, on international standards and terminologies — in particular on the preparatory profiling work of the [AG Einwilligungsmanagement on FHIR Consent](https://ig.fhir.de/einwilligungsmanagement/stable/).

All elements of the core data set, adapted to the details and requirements of the use cases of the Medical Informatics Initiative, are described below in the form of FHIR StructureDefinitions. The need for adapting the FHIR profiles is explained in textual form beneath the respective profiles.

### Mandatory / must-support elements

For **mandatory** elements or elements marked as **must-support**, please refer to the corresponding [rules of the IPS](https://build.fhir.org/ig/HL7/fhir-ips/design.html#must-support), which also apply to this ImplementationGuide.

The profiles of this module:

* [MII PR Consent Einwilligung](StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0.md)
* [MII PR Consent Provenance](StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464.md)
* [MII PR Consent DocumentReference](StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.md)

### Further relevant profiles

In addition to [Consent](StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0.md), [Provenance](StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464.md), and [DocumentReference](StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.md), further profiles are relevant for handling consents and consent templates; they are adopted unchanged from the [Einwilligungsmanagement implementation guide](https://ig.fhir.de/einwilligungsmanagement/stable/Home.html).

Support for the following profiles is mandatory when using this guide:

| | |
| :--- | :--- |
| FHIR profile | For the representation of / used for |

| — | — |

| | |
| :--- | :--- |
| [Organization](https://ig.fhir.de/einwilligungsmanagement/stable/Organization.html) | Responsible organization |

| | |
| :--- | :--- |
| [ResearchStudy](https://ig.fhir.de/einwilligungsmanagement/stable/ResearchStudy.html) | Research project |

| | |
| :--- | :--- |
| [Patient](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html) | Affected person (pseudonymized) |

If the Broad Consent is represented or captured by means of FHIR Questionnaires, the following profiles should additionally be used:

| | |
| :--- | :--- |
| FHIR profile | For the representation of / used for |

| — | — |

| | |
| :--- | :--- |
| [QuestionnaireResponse](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireResponse.html) | Completed consent |

| | |
| :--- | :--- |
| [QuestionnaireComposed](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireComposed.html) | Consent template (renderable) |

| | |
| :--- | :--- |
| [TemplateFrame](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateFrame.html) | Consent template (structure definition) |

| | |
| :--- | :--- |
| [TemplateModule](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateModule.html) | Consent module |


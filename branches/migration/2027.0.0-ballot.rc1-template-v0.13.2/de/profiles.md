# Profile - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Profile**

## Profile

### FHIR Profile

Die Arbeiten der Kerndatensatzspezifikationen basieren, wo möglich, auf internationalen Standards und Terminologien. Insbesondere auf den Profilierungs-Vorarbeiten der [AG Einwilligungsmanagement zum FHIR Consent](https://ig.fhir.de/einwilligungsmanagement/stable/).

Alle Elemente des Kerndatensatzes, angepasst an die Details und Anforderungen für die Use Cases der Medizininformatik-Initative, werden nachfolgend in Form von FHIR StructureDefinitions beschrieben. Die Notwendigkeit der Anpassung der FHIR-Profile wird in textueller Form unterhalb der jeweiligen Profile erläutert.

### Verpflichtende / must-support Elemente

Für **verpflichtende** oder als **must-support** markierten Elemente sei an dieser Stelle auf die entsprechenden [Regeln der IPS](https://build.fhir.org/ig/HL7/fhir-ips/design.html#must-support) verwiesen, die auch für diesen ImplementationGuide gelten.

Die Profile dieses Moduls:

* [MII PR Consent Einwilligung](StructureDefinition-mii-pr-consent-einwilligung.md)
* [MII PR Consent Provenance](StructureDefinition-mii-pr-consent-provenance.md)
* [MII PR Consent DocumentReference](StructureDefinition-mii-pr-consent-documentreference.md)

### Weitere relevante Profile

Neben [Consent](StructureDefinition-mii-pr-consent-einwilligung.md), [Provenance](StructureDefinition-mii-pr-consent-provenance.md) und [DocumentReference](StructureDefinition-mii-pr-consent-documentreference.md) sind weitere Profile für den Umgang mit Einwilligungen und Einwilligungsvorlagen relevant, die unverändert aus dem [Implementierungsleitfaden Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/Home.html) übernommen werden.

Die folgenden Profile sind dabei für die Nutzung dieses Leitfadens zwingend zu unterstützen:

| | |
| :--- | :--- |
| [Organization](https://ig.fhir.de/einwilligungsmanagement/stable/Organization.html) | Verantwortliche Einrichtung |
| [ResearchStudy](https://ig.fhir.de/einwilligungsmanagement/stable/ResearchStudy.html) | Forschungsprojekt |
| [Patient](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html) | Betroffene Person (pseudonymisiert) |

Wird der Broad Consent mittels FHIR Questionnaires abgebildet bzw. abgefragt, sollten außerdem die folgenden Profile verwendet werden:

| | |
| :--- | :--- |
| [QuestionnaireResponse](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireResponse.html) | Ausgefüllte Einwilligung |
| [QuestionnaireComposed](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireComposed.html) | Einwilligungsvorlage (render-fähig) |
| [TemplateFrame](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateFrame.html) | Einwilligungsvorlage (Strukturdefinition) |
| [TemplateModule](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateModule.html) | Einwilligungsmodul |


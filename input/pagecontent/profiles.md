<!-- markdownlint-disable MD041 -->
<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile?version=2026.0.0
     (Harvest 2026-08-31, migration-log/guide-harvest/); interne Links auf die
     Zielseiten dieser IG-Struktur umgeschrieben (migration-log/page-map.tsv). -->
<!-- Zweite Quellseite (merge gemäß page-map):
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/WeitererelevanteProfile?version=2026.0.0 -->
### FHIR Profile

Die Arbeiten der Kerndatensatzspezifikationen basieren, wo möglich, auf internationalen Standards und Terminologien. Insbesondere auf den Profilierungs-Vorarbeiten der [AG Einwilligungsmanagement zum FHIR Consent](https://ig.fhir.de/einwilligungsmanagement/stable/).

Alle Elemente des Kerndatensatzes, angepasst an die Details und Anforderungen für die Use Cases der Medizininformatik-Initative, werden nachfolgend in Form von FHIR StructureDefinitions beschrieben. Die Notwendigkeit der Anpassung der FHIR-Profile wird in textueller Form unterhalb der jeweiligen Profile erläutert.

### Verpflichtende / must-support Elemente

Für **verpflichtende** oder als **must-support** markierten Elemente sei an dieser Stelle auf die entsprechenden [Regeln der IPS](https://build.fhir.org/ig/HL7/fhir-ips/design.html#must-support) verwiesen, die auch für diesen ImplementationGuide gelten.

Die Profile dieses Moduls:

* [MII PR Consent Einwilligung](StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0.html)
* [MII PR Consent Provenance](StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464.html)
* [MII PR Consent DocumentReference](StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.html)

### Weitere relevante Profile

Neben [Consent](StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0.html), [Provenance](StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464.html) und [DocumentReference](StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.html) sind weitere Profile für den Umgang mit Einwilligungen und Einwilligungsvorlagen relevant, die unverändert aus dem [Implementierungsleitfaden Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/Home.html) übernommen werden.

Die folgenden Profile sind dabei für die Nutzung dieses Leitfadens zwingend zu unterstützen:

| FHIR-Profil | Zur Abbildung von / Verwendung für |

| --- | --- |

| [Organization](https://ig.fhir.de/einwilligungsmanagement/stable/Organization.html) | Verantwortliche Einrichtung |

| [ResearchStudy](https://ig.fhir.de/einwilligungsmanagement/stable/ResearchStudy.html) | Forschungsprojekt |

| [Patient](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html) | Betroffene Person (pseudonymisiert) |

Wird der Broad Consent mittels FHIR Questionnaires abgebildet bzw. abgefragt, sollten außerdem die folgenden Profile verwendet werden:

| FHIR-Profil | Zur Abbildung von / Verwendung für |

| --- | --- |

| [QuestionnaireResponse](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireResponse.html) | Ausgefüllte Einwilligung |

| [QuestionnaireComposed](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireComposed.html) | Einwilligungsvorlage (render-fähig) |

| [TemplateFrame](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateFrame.html) | Einwilligungsvorlage (Strukturdefinition) |

| [TemplateModule](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateModule.html) | Einwilligungsmodul |

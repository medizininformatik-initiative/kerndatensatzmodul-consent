<!-- markdownlint-disable MD041 -->
<!-- machine translation of source page uml-diagrams.md (de). TODO:REVIEW — Gate C. -->
<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/UML?version=2026.0.0
     (Harvest 2026-08-31, migration-log/guide-harvest/); interne Links auf die
     Zielseiten dieser IG-Struktur umgeschrieben (migration-log/page-map.tsv). -->
<!-- Die UML-Grafik wird lokal aus input/images/ ausgeliefert (Quelle: figures/
     des Quell-Repositories; der Simplifier-Leitfaden verlinkte sie hot auf den
     master-Branch). Die .graphml-Quelle liegt unter figures/. -->

### [Consent](StructureDefinition-mii-pr-consent-einwilligung.html)

The Consent resource is a purely machine-readable representation of a person's real-world consent and is used for the enforcement (implementation, execution) of the consent policies.

The consent is obtained in a concrete context (e.g. MII), which is modeled in FHIR in the form of a reference to the responsible organization ([Organization](https://ig.fhir.de/einwilligungsmanagement/stable/Organization.html)) and/or to a research project ([ResearchStudy](https://ig.fhir.de/einwilligungsmanagement/stable/ResearchStudy.html)).

### [Provenance](StructureDefinition-mii-pr-consent-provenance.html)

The Provenance resource describes the origin of the consent contents (including signatures) and links them to the persons involved ([Patient](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html), Consent Witness) and to any existing document scans ([DocumentReference](StructureDefinition-mii-pr-consent-documentreference.html)). Likewise, the application systems used for capturing the consent can be named (display) or referenced, as well as the patient identifiers valid in the application system.

### Representation of [questionnaires](frageboegen.html)

The use of *all* profiles developed in the AG Einwilligungsmanagement is *not mandatory*. For the representation of the Questionnaire-based contents ([questionnaires](frageboegen.html)), the recommendations of the TFCU must be taken into account.

### Relevant profiles

Notes on the UML class diagram of the Consent extension module:

- Classes colored *blue* are taken into account in the FHIR representation and profiling, are profiled in this IG, and are required for the MII implementation.

- Classes colored *orange* are profiled in the IG of the AG Einwilligungsmanagement and are required for the MII implementation.

- Classes colored *gray* are profiled in the IG of the AG Einwilligungsmanagement and are optional for the MII implementation.

- Classes colored *light gray* are referenced. They are, however, not taken into account in the FHIR representation and profiling.

The attributes listed in the classes of the diagram are mandatory. In addition, further optional attributes may be specified.

![](information-model_UML-Diagramm_MII-spez.png)

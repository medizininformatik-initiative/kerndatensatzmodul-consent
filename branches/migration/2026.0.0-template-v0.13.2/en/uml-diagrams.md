# UML Diagrams - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **UML Diagrams**

## UML Diagrams

### Consent

The Consent resource is a purely machine-readable representation of a person's real-world consent and is used for the enforcement (implementation, execution) of the consent policies.

The consent is obtained in a concrete context (e.g. MII), which is modeled in FHIR in the form of a reference to the responsible organization ([Organization](https://ig.fhir.de/einwilligungsmanagement/stable/Organization.html)) and/or to a research project ([ResearchStudy](https://ig.fhir.de/einwilligungsmanagement/stable/ResearchStudy.html)).

### Provenance

The Provenance resource describes the origin of the consent contents (including signatures) and links them to the persons involved ([Patient](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html), Consent Witness) and to any existing document scans ([DocumentReference](StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.md)). Likewise, the application systems used for capturing the consent can be named (display) or referenced, as well as the patient identifiers valid in the application system.

### Representation of questionnaires

The use of **all** profiles developed in the AG Einwilligungsmanagement is **not mandatory**. For the representation of the Questionnaire-based contents ([questionnaires](frageboegen.md)), the recommendations of the TFCU must be taken into account.

### Relevant profiles

Notes on the UML class diagram of the Consent extension module:

* Classes colored **blue** are taken into account in the FHIR representation and profiling, are profiled in this IG, and are required for the MII implementation.
* Classes colored **orange** are profiled in the IG of the AG Einwilligungsmanagement and are required for the MII implementation.
* Classes colored **gray** are profiled in the IG of the AG Einwilligungsmanagement and are optional for the MII implementation.
* Classes colored **light gray** are referenced. They are, however, not taken into account in the FHIR representation and profiling.

The attributes listed in the classes of the diagram are mandatory. In addition, further optional attributes may be specified.


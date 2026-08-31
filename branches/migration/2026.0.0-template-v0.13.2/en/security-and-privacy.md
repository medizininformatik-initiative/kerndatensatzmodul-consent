# Security and Privacy - MII Implementation Guide Consent v2026.0.0

* [**Table of Contents**](toc.md)
* **Security and Privacy**

## Security and Privacy

 This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.html). 

This section is addressed to security and privacy professionals. General requirements are covered in the FHIR core specification — the [Security & Privacy Module](https://build.fhir.org/secpriv-module.html) and the [security checklist](https://build.fhir.org/security.html). This page does not repeat them; it links the overarching data protection framework and states what is **specific to this module**.

#### 1. The overarching data protection concept

The [overarching data protection concept of the Medical Informatics Initiative](https://www.medizininformatik-initiative.de/de/datenschutzkonzept) governs how patient data may be processed for research across the network of Data Integration Centers: the legal basis (the MII Broad Consent), the roles of the Data Integration Centers and the Use & Access Committees, as well as the cross-site application scenarios (feasibility queries, distributed analyses, provision of data and biosamples). Everything this module specifies stays within this framework — this guide adds no processing purpose of its own.

#### 2. De-Identification, Minimisation, and Pseudonymisation (DIMP)

How data leaving a Data Integration Center is de-identified in practice is specified by [DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html) in the Data Portal documentation: direct identifiers are removed, data elements not needed by the approved project are dropped, and identifying values are replaced with project-specific pseudonyms (FHIR Pseudonymizer configuration). The profiles of this module describe the data **before** DIMP is applied; which elements reach a concrete data delivery is decided per project by the DIMP configuration, not by this guide.

#### 3. Module-specific aspects

Since the FHIR Consent resource likewise contains **no person-identifying information** about the consenting person, the [**pseudonymous person reference**](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html) should be established via appropriate [**pseudonymous identifiers**](https://ig.fhir.de/einwilligungsmanagement/stable/ContextIdentifier.html). Any person-identifying information (e.g. date of birth, gender, address) as well as references, e.g. to (clear-text) patient profiles, should be suitably replaced before data are exported.

**Technically, Patient resources and derived profiles can be used, such as the profiles of the [AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html) or the [MII](https://simplifier.net/medizininformatikinitiative-modulperson/sdmiipersonpatientpseudonymisiert).** Independently of this, in order to be able to distinguish pseudonyms, case numbers, etc., a categorisation of the identifier used is required via [patient.identifier.type](https://ig.fhir.de/einwilligungsmanagement/stable/ContextIdentifierType.html).

The FHIR Consent resource contains **no document scans and/or signatures**. If transmission is required for a given use case, separate resources must be created in accordance with the [specifications of the AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/DocumentReference.html) (Consent Bundles).


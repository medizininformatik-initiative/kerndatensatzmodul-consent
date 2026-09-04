<!-- markdownlint-disable MD041 -->
<!-- machine translation of source page index.md (de). TODO:REVIEW — Gate C. -->
<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0
     (Harvest 2026-08-31, migration-log/guide-harvest/); interne Links auf die
     Zielseiten dieser IG-Struktur umgeschrieben (migration-log/page-map.tsv). -->
<!-- Zweite Quellseite dieser Seite (merge gemäß page-map):
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Beschreibung-Modul-Consent?version=2026.0.0
     Das Simplifier-Inhaltsverzeichnis der Quellseite wurde NICHT übertragen —
     der IG Publisher erzeugt das Inhaltsverzeichnis (toc.html) selbst. -->
<!-- Delta reconciliation with the source guide ?version=2027.0.0-ballot.rc1
     (harvest 2026-09-04): metadata table (Date, Status) adopted. -->

This specification describes the FHIR representation of the Core Data Set module 'Consent' of the Medical Informatics Initiative. The following sections describe the module's use cases as well as the associated FHIR profiles and terminology resources in their binding form.

| Publication / Status |  |
| --- | --- |
| Date | 03.09.2026 |
| Version | 2027.0.0-ballot.rc1 |
| Status | draft |
| Realm | DE |


### Description of the Consent Module

![](MII-KDS_de_Consent.jpg)

The MII KDS module Consent is a base module of the Core Data Set (KDS) of the Medical Informatics Initiative (MII). It builds on the [published preliminary work of the MII Taskforce Consent Umsetzung](https://bmcmedinformdecismak.biomedcentral.com/articles/10.1186/s12911-020-01138-6).

For the representation of the [MII Broad Consent](https://www.medizininformatik-initiative.de/de/mustertext-zur-patienteneinwilligung), the Consent module follows the **[FHIR R4 profiles](https://ig.fhir.de/einwilligungsmanagement/stable) of the [AG Einwilligungsmanagement](https://wiki.hl7.de/index.php?title=Einwilligungsmanagement_(Projekt)) of the [Interop Forum](https://wiki.hl7.de/index.php?title=Hauptseite)** for representing form data (Questionnaire, QuestionnaireResponse) and consents (Consent).

The focus of the Consent module is on the implementation (enforcement) of the consent completed by the patient, based on the consent policies (consolidated with the MII AG Consent in December 2021).

### Imprint

This guide was created within the framework of the Medical Informatics Initiative and, through its governance process, is subject to the ballot procedure of the Interoperability Forum and the technical committees of HL7 Deutschland e. V.

### Authors and Contacts

The **MII Taskforce Consent Umsetzung** is responsible for the content of the module presented here.

The Consent module was created with contributions from Martin Bialke, Sebastian Stäubert, Angela Merzweiler, Lars Geidel, Jörg Römhild, Raffael Bild, Fabian Prasser, and Stefan Lang (HL7 Deutschland, technical committee FHIR, Gefyra GmbH, Lang Health IT Consulting).

Module leads:

- Sebastian Stäubert

- Martin Bialke

Technical implementation:

- Stefan Lang (technical implementation of the FHIR profiles and ImplemenationGuides)

- Martin Bialke (support for the ImplementationGuides)

Contact at the TMF:

- Karoline Buckow

Comments can be created as an issue on GitHub (after free registration) or sent informally by email to office@medizininformatik-initiative.de.

- GitHub: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/issues](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/issues)

If you have any questions, please feel free to contact us at office@medizininformatik-initiative.de.

### Copyright Notice, Usage Notes

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin

[![CC BY 4.0 Logo](https://licensebuttons.net/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)

This work is licensed under the [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

For the usage rights of the underlying FHIR technology, see the FHIR base specification.

Some of the code systems used are issued and maintained by other organizations. The copyright of the respective publishers listed there applies.

### Disclaimer

The content of this document is public. Note that parts of this document are based on FHIR version R4, for which the copyright of HL7 International applies.

Although this publication was prepared with the greatest care, the authors cannot accept any liability for direct or indirect damage that might arise from the content of this specification.

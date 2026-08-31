# Startseite - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Startseite**

## Startseite

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/ImplementationGuide/mii-ig-consent | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:MII_IG_Consent |

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz Moduls 'Consent' der Medizininformatik-Initiative. Im Folgenden werden die Use-Cases des Moduls sowie die dazugehörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.

| | |
| :--- | :--- |
| Veröffentlichung / Status |   |

| — | — |

| | |
| :--- | :--- |
| Datum | 31.08.2026 |

| | |
| :--- | :--- |
| Version | 2027.0.0-ballot.rc1 |

| | |
| :--- | :--- |
| Status | active |

| | |
| :--- | :--- |
| Realm | DE |

### Beschreibung Modul Consent

Das MII KDS Modul Consent ist ein Basismodul des Kerndatensatzes (KDS) der Medizininformatik-Initiative (MII). Es setzt auf den [publizierten Vorarbeiten der MII Taskforce Consent Umsetzung](https://bmcmedinformdecismak.biomedcentral.com/articles/10.1186/s12911-020-01138-6) auf.

Dabei orientiert sich das Modul Consent für die Abbildung des [MII Broad Consent](https://www.medizininformatik-initiative.de/de/mustertext-zur-patienteneinwilligung) an den **[FHIR R4 Profilen](https://ig.fhir.de/einwilligungsmanagement/stable) der [AG Einwilligungsmanagement](https://wiki.hl7.de/index.php?title=Einwilligungsmanagement_(Projekt)) des [Interop-Forums](https://wiki.hl7.de/index.php?title=Hauptseite)** zur Repräsentation von Formulardaten (Questionnaire, QuestionnaireResponse) und Einwilligungen (Consent).

Fokus des Moduls Consent liegt auf der Umsetzung (Enforcement) der vom Patienten ausgefüllten Einwilligung auf Basis der Einwilligungs-Policies (konsolidiert mit der MII AG Consent im Dezember 2021).

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik-Initiative erstellt worden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

### Autoren und Ansprechpartner

Inhaltlich verantwortlich für das hier dargestellte Modul ist die **MII Taskforce Consent Umsetzung**.

Das Modul Consent ist unter Mitarbeit von Martin Bialke, Sebastian Stäubert, Angela Merzweiler, Lars Geidel, Jörg Römhild, Raffael Bild, Fabian Prasser und Stefan Lang (HL7 Deutschland, technisches Komitee FHIR, Gefyra GmbH, Lang Health IT Consulting) entstanden.

Leitung des Moduls:

* Sebastian Stäubert
* Martin Bialke

Technische Umsetzung:

* Stefan Lang (Technische Umsetzung FHIR Profile und ImplemenationGuides)
* Martin Bialke (Unterstützung ImplementationGuides)

Ansprechpartner bei der TMF:

* Karoline Buckow

Kommentare können (nach kostenloser Anmeldung) in GitHub als Issue erstellt werden oder formlos per Email an office@medizininformatik-initiative.de gesendet werden.

* GitHub: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/issues](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/issues)

Bei Fragen stehen wir Ihnen unter office@medizininformatik-initiative.de gerne zur Verfügung.

### Copyright-Hinweis, Nutzungshinweise

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin

![](https://licensebuttons.net/l/by/4.0/88x31.png)

Diese Arbeit ist lizensiert unter der [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

### Disclaimer

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die das Copyright von HL7 International gilt.

Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die Autoren keinerlei Haftung für direkten oder indirekten Schaden übernehmen, der durch den Inhalt dieser Spezifikation entstehen könnte.


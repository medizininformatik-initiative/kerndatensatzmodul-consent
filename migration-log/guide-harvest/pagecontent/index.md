<!-- Harvested from https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0 on 2026-08-31 by scripts/guide-harvest.sh (spec 5.1d). -->
<!-- Source of record: the Simplifier-rendered guide. Links and images are still absolute to simplifier.net and the page is not yet mapped onto the template page set (spec 9). TODO:REVIEW -->

## Kerndatensatz-Modul Consent

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des Kerndatensatz Moduls 'Consent' der Medizininformatik-Initiative. Im Folgenden werden die Use-Cases des Moduls sowie die dazugehörigen FHIR-Profile und Terminologie-Ressourcen in ihrer verbindlichen Form beschrieben.

| Veröffentlichung / Status |  |

| --- | --- |

| Datum | 18.12.2025 |

| Version | 2026.0.0 |

| Status | active |

| Realm | DE |

### Inhaltsverzeichnis

[MIIIGModulConsent](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0)[Release Notes](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Release-Notes?version=2026.0.0)[Beschreibung Modul Consent](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Beschreibung-Modul-Consent?version=2026.0.0)[Kontext im Gesamtprojekt / Bezüge zu anderen Modulen](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/KontextimGesamtprojektBezgezuanderenModulen?version=2026.0.0)[Referenzen](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Referenzen?version=2026.0.0)[Anwendungsfälle / Informationsmodell](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell?version=2026.0.0)[Beschreibung von Szenarien für die Anwendung des Moduls](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungdesModuls?version=2026.0.0)[Datensätze inkl. Beschreibungen](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen?version=2026.0.0)[UML](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/UML?version=2026.0.0)[Fragebögen](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/Fragebgen?version=2026.0.0)[Technische Implementierung](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung?version=2026.0.0)[FHIR Profile](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile?version=2026.0.0)[Terminologien](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/Terminologien?version=2026.0.0)

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik-Initiative erstellt worden und unterliegt per Governance-Prozess dem Abstimmungsverfahren des Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V.

### Autoren und Ansprechpartner

Inhaltlich verantwortlich für das hier dargestellte Modul ist die **MII Taskforce Consent Umsetzung**.

Das Modul Consent ist unter Mitarbeit von Martin Bialke, Sebastian Stäubert, Angela Merzweiler, Lars Geidel, Jörg Römhild, Raffael Bild, Fabian Prasser und Stefan Lang (HL7 Deutschland, technisches Komitee FHIR, Gefyra GmbH, Lang Health IT Consulting) entstanden.

Leitung des Moduls:

- Sebastian Stäubert

- Martin Bialke

Technische Umsetzung:

- Stefan Lang (Technische Umsetzung FHIR Profile und ImplemenationGuides)

- Martin Bialke (Unterstützung ImplementationGuides)

Ansprechpartner bei der TMF:

- Karoline Buckow

Kommentare können (nach kostenloser Anmeldung) in GitHub als Issue erstellt werden oder formlos per Email an office@medizininformatik-initiative.de gesendet werden.

- GitHub: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/issues](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/issues)

Bei Fragen stehen wir Ihnen unter office@medizininformatik-initiative.de gerne zur Verfügung.

### Copyright-Hinweis, Nutzungshinweise

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin

[![CC BY 4.0 Logo](https://licensebuttons.net/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)

Diese Arbeit ist lizensiert unter der [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher).

### Disclaimer

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses Dokuments auf FHIR Version R4 beruhen, für die das Copyright von HL7 International gilt.

Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die Autoren keinerlei Haftung für direkten oder indirekten Schaden übernehmen, der durch den Inhalt dieser Spezifikation entstehen könnte.

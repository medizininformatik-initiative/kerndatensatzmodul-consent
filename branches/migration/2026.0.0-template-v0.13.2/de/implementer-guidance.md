# Anleitung für Implementierende - MII Implementation Guide Consent v2026.0.0

* [**Table of Contents**](toc.md)
* [**Anleitung**](guidance.md)
* **Anleitung für Implementierende**

## Anleitung für Implementierende

> **Written during migration - review before release.** Diese Seite bündelt die implementierungsbezogenen Abschnitte des ursprünglichen Leitfadens: die technische Implementierung, den Kontext im Gesamtprojekt, die Referenzen und die Empfehlungen zur praktischen Anwendung.

### Technische Implementierung

Dieser Abschnitt beschreibt die syntaktischen und semantischen Vorgaben zur Implementierung des Consent-Moduls.

Weiterhin sind auch Suchparameter definiert, die bei Verwendung der FHIR RESTful API durch die jeweiligen Systeme implementiert werden müssen. Grundsätzlich werden logische AND- und OR-Verknüpfungen der FHIR-Search unterstützt, vgl. [https://www.hl7.org/fhir/search.html](https://www.hl7.org/fhir/search.html) .

Grundlagen und weitere Details zur Suche und zur FHIR RESTful API werden zum Zeitpunkt der Erstellung dieses Implementierungsleitfadens im Rahmen der Basismodule erarbeitet und können zu einem späteren Zeitpunkt die hier gemachten Vorgaben ergänzen. Ggf. wird dann auch eine neue Version dieses Leitfadens veröffentlicht.

### Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

Das Modul Consent dient der Unterstützung von standortübergreifenden Datennutzunganfragen basierend auf dem jeweils aktuellen Einwilligungsstatus des Patienten am Standort.

Um den Bezug zwischen Person und Einwilligung herzustellen, wird die Einwilligung mit mindestens einem eindeutigen Personenidentifikator versehen (Basismodul: Person). Dies ist im Regelfall ein [pseudonymer Identifikator](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html).

### Verweise auf andere Vorhaben

In der [Handreichung](https://www.bfarm.de/SharedDocs/Downloads/DE/Forschung/modellvorhaben-genomsequenzierung/Handreichung-zur-Implementierung-beim-LE.pdf?__blob=publicationFile) zur Patienteninformation & Teilnahmeerklärung zum **„Modellvorhaben Genomsequenzierung bei seltenen und bei onkologischen Erkrankungen“** nach § 64e SGB in der Version V1 wird unter Kapitel 2.1.4 Forschungseinwilligung die Nutzung des MII-Broad Consent ab der Version 1.6d empfohlen und im gesetzlichen Sinn mindestens der Basisversion ohne Zusatzmodule entspricht.

### Referenzen

Die Modellierung des Datensatzes zum Modul Consent enthält Referenzen zu folgenden Projekten:

* [Implementation Guide der Arbeitsgruppe Einwilligungsmanagement des Interop-Forum, Version 1.0](https://ig.fhir.de/einwilligungsmanagement/stable/)
* [Kerndatensatzbeschreibung im ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-?conceptId=2.16.840.1.113883.3.1937.777.24.2.184)

Es wurden außerdem die [Kernspezifikation von HL7 FHIR](https://hl7.org/fhir/), hierunter die entsprechende Ressource [Consent](https://hl7.org/fhir/consent.html), und die bisherigen Arbeiten zu den Deutschen Basisprofilen in [STU3](https://simplifier.net/basisprofilde) und [R4](https://simplifier.net/basisprofil-de-r4) berücksichtigt.

Die vorliegende Spezifikation wurde gestaltet auf Basis der Beschreibung des MII-Kerndatensatzes in der Version vom 10.3.2017 ([PDF](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf)), sowie der Datensatzbeschreibung in [ART-DECOR](https://art-decor.org/art-decor/decor-project--mide-).

### Empfehlungen zur praktischen Anwendung

### Bedeutung der Kategorisierung von Consent-Ressourcen mittels ResultType

Im IG der **HL7-D AG Einwilligungsmanagement** und der korrespondierenden [Publikation](https://ebooks.iospress.nl/doi/10.3233/SHTI251389) wird die Bedeutung des Parameters `ResultType` umfassend erläutert.

Besonderes Augenmerk sei an dieser Stelle auf die Codes `consent-status` und `document` gelegt. Weitere Details und Zusammenhänge sind [hier](https://simplifier.net/guide/Einwilligungsmanagement/Mitgeltende-Erl-uterungen?version=current) beschrieben.

### Nutzungsempfehlung zur Verwendung der Consent.category ResultType

Konkrete verpflichtende Projektvorgaben zur Verwendung des Suchparameters ResultType sind in der Praxis aufgrund heterogener technischer Gegebenheiten an den MII-Standorten nur bedingt zielführend. Die **technische Umsetzung der Vorgaben ist abhängig von der konkreten Implementierung**.

Das Einwilligungsmanagement [gICS](https://ths-greifswald.de/gics) stellt die aktuelle [Referenzimplementierung](https://ebooks.iospress.nl/doi/10.3233/SHTI251389) des HL7-D FHIR Standards für Einwilligungsmanagement (Version 2.0) dar.

Alle Implementierungen sollten **mindestens folgende Varianten unterstützen**. Die Kardinalität von `Consent.category` ist mit `2..\*` definiert und ermöglicht die notwendige Abwärtskompatibilität.

| | | |
| :--- | :--- | :--- |
| ResultType | Bedeutung für die Consent-Ressource | Aggregation von Informationen |

| — | — | — |

| | | |
| :--- | :--- | :--- |
| `document` | Die Consent-Ressource bezieht sich auf**ein (!) ausgefülltes Dokument**(QuestionnaireResponse).**Dies sollte der Default in einem (MII) FHIR-Server sein.** | nein |

| | | |
| :--- | :--- | :--- |
| `consent-status` | Die Consent-Ressource**berücksichtigt alle relevanten Einwilligungs- und Widerrufsdokumente**im Kontext der MII**für einen (!) Patienten**. Die Consent Ressource mit ResultType`consent-status`bezieht sich immer auf einen Patienten und enthält den aktuellen Einwilligungsstand.**Dies sollte idealerweise durch den (MII) FHIR-Server unterstützt werden.** | Ja, berechnet durch entsprechende Business-Logik zum Zeitpunkt der Abfrage oder für einen bestimmten Zeitraum. |

Idealerweise sollte der FHIR-Server je Patient stets nur eine Consent-Ressource mit den aktuellen aggregierten Einwilligungsinformationen (ResultType `consent-status`) vorhalten.

**Ist dies aus dritten Gründen nicht möglich, sollte mindestens je ausgefülltem Dokument (Einwilligung, aktualisierte Einwilligung,Teil-Widerruf, Vollständiger Widerruf) eine Dokument-spezifische Ausleitung ermöglicht werden (ResultType `document`). Es bleibt in diesem Fall in der Verantwortung des Standortes, diese Informationen** **in der vom FDPG geforderten Form** **bereitzustellen.**

#### Empfehlungen für gICS-Anwender bezogen auf Kennzahlen-Ermittlung und FDPG

Die Datenintegrationzentren stellen die erforderlichen Informationen zur Ermittlung von Kerndatensatzspezifischen Kennzahlen für das DIZ-Dashboard bereit. Die Ermittlung der Kennzahlen wird auf Seiten des DIZ-Dashboard durch entsprechende Aufrufe an die Standorte auch für das MII KDS Consent Modul getriggert.

Standorte, die das [Einwilligungsmanagement gICS](https://ths-greifswald.de/gics) verwenden, sollten bei der **Kennzahlen-Ermittlung** sowie bei der Bereitstellung der Consent-Ressourcen für das **FDPG** den präzisen [**Hersteller-Empfehlungen**](https://www.ths-greifswald.de/diz-dashboard-empfehlung-gics-kds-consent-status/) folgen.


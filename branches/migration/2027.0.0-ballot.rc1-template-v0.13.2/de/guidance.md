# Anleitung - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Anleitung**

## Anleitung

Dieser Abschnitt bündelt die fachlichen Hinweise zur Umsetzung und Nutzung des Moduls **Consent**.

### Allgemeine Umsetzungshinweise

* **[Datensätze und Beschreibungen](logical-models.md)** — die Datenelemente des Moduls, beschrieben als logische Modelle. (Dieser Eintrag teilt sein Ziel mit **Artefakte → Logische Modelle**; keiner der Anker der Artefakt-Übersicht ist als Linkziel nutzbar — siehe [`docs/page-structure.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/blob/main/docs/page-structure.md) in diesem Repository.)
* **[UML-Diagramme](uml-diagrams.md)** — visuelle Darstellung der Datenmodelle und ihrer Beziehungen.

### Zielgruppenspezifische Hinweise

* **[Anleitung für Implementierende](implementer-guidance.md)** — technische Hinweise für DIZ-Implementierende.

-------

Für die KDS-weiten Konformitätsanforderungen siehe die [Konformitätsregeln des Meta-Moduls](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); für die technischen Artefakte siehe [Profile](profiles.md).

### Beschreibung von Szenarien für die Anwendung des Moduls

Das Erweiterungsmodul Consent stellt die elektronische Abbildung des [MII Consent](https://www.medizininformatik-initiative.de/de/mustertext-zur-patienteneinwilligung) bereit, kann darüber hinaus aber auch für die Abbildung weiterer Einwilligungen ermöglichen. Dies ist eine Voraussetzung für die Berücksichtigung des Patientenwillens bei der Verwendung der im Rahmen der Versorgung erfassten medizinischen Daten des Patienten für Forschungszwecke. Die Einwilligung ist vor allem dann erforderlich, wenn der Nutzungszweck über die Forschungsklauseln der jeweiligen anwendbaren Gesetze hinausgeht.

Eine wichtige Maßzahl für die medizinische Forschung ist u.a., wie viele Patienten bestimmten Kriterien genügen (Fallzahl) und ob diese Patienten der Verwendung ihrer Daten für Forschungszwecke zugestimmt haben. Entsprechende Anfragen können nur effizient elektronisch verarbeitet bzw. beantwortet werden, wenn der Einwilligungsstatus elektronisch geprüft werden kann. Derartige Fallzahlabfragen unter Berücksichtigung des Einwilligungsstatus sind essentiell für Anwendungsfälle, wie ‘Fallzahl-Schätzung’, ‘Feasibility-Abfragen’ und ‘Data Sharing’, für die MII übergreifenden Use Cases CORD und POLAR, sowie für die [Use Cases](https://www.medizininformatik-initiative.de/de/use-cases-und-projekte) der [MII-Konsortien](https://www.medizininformatik-initiative.de/index.php/de/konsortien).

Die standardisierte Abbildung der Consentinformationen im Kerndatensatz ist erforderlich, damit diese als Suchkriterium insbesondere bei standortübergreifenden Anfragen einbezogen werden können.

> **Written during migration - review before release.** Die Abbildung der Einwilligungs-Fragebögen (Questionnaire-basierte Inhalte) beschreibt die Unterseite [Fragebögen](frageboegen.md).


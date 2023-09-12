## Medizininformatik Initiative - Modul Consent

### Übersicht

Ziel der Medizininformatik-Initiative (MII) ist es, Patientendaten für die Forschung bereitzustellen. Dazu ist in bestimmten Konstellationen das Einverständnis des Patienten notwendig. Daher wurde im Rahmen der MII AG Consent ein Verfahren entwickelt, wie man Patienten über die Nutzung ihrer Patientendaten für die Forschung aufklären und ihr Einverständnis einholen kann. Mit Hilfe des dazugehörigen Einwilligungsdokuments kann der Patient nach Aufklärung durch eine geeignete Fachkraft sein Einverständnis zur Nutzung verschiedener Daten zu verschiedenen Zwecken ausdrücken.

Dies ist eine Voraussetzung für die Berücksichtigung des Patientenwillens bei der Verwendung der im Rahmen der Versorgung erfassten medizinischen Daten des Patienten für Forschungszwecke. Die Einwilligung ist vor allem dann erforderlich, wenn der Nutzungszweck über die Forschungsklauseln der jeweiligen anwendbaren Gesetze hinausgeht.  
Die Einwilligungsinformationen (Einwilligungsformular, vom Patienten ausgefüllte Einwilligung, maschinell auswertbare Form der Einwilligung) sollen an den DIZ Standorten möglichst in einer MII-weit abgestimmten Form gespeichert und verarbeitet werden.

Das **Erweiterungsmodul Consent** beschreibt, wie die Einwilligungsinformationen in Form von FHIR Ressourcen für die Verarbeitung in einer lokalen Treuhandstelle und/oder einem DIZ einheitlich abgebildet werden. Die hier veröffentlichten FHIR Profile und ImplemenationGuides dienen als zentrale und verbindliche Spezifikation für die syntaktische und semantische Kodierung der Modulinhalte.

### Status

Alle veröffentlichen FHIR Artefakte innerhalb des Projektes verfügen über einen Status durch welchen der jeweilige Reifegrad abgeleitet werden kann.
Profile mit dem Status 'Draft' wurden noch nicht ballotiert und können noch diversen und substantiellen Änderungen unterliegen. Verpflichtende und ballotierte Ergebnisse sind unter dem Tab 'Packages' zu finden.

### Kurzzusammenfassung

Das **Erweiterungsmodul Consent** beschreibt, wie die Einwilligungsinformationen in Form von FHIR Ressourcen für die Verarbeitung in einer lokalen Treuhandstelle und/oder einem DIZ einheitlich abgebildet werden können. Dabei basiert das Erweiterungsmodul Consent auf dem [Implementierungsleitfaden bzw. den FHIR Profilen zum Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/), die vom **HL7-DE/IHE-DE Interop-Forum (AG Einwilliungungsmanagement)** unter Mitwirkung der **MII Taskforce Consent Umsetzung** erstellt und im September 2021 ballotiert wurden. Das Erweiterungsmodul Consent präzisiert diese bewusst flexibel spezifizierten FHIR Profile (insbesondere das FHIR-Profil "Consent"), sodass sie 
1. den **Anforderungen der MII** genügen und 
2. die **Anwendung an den Standorten der MII vereinfachen**.

Unter anderem werden MII-spezifische ValueSets festgelegt und die IG-seitigen Vorgaben der MII KDS Governance umgesetzt.

### Wichtige Dokumente und Links
* [Beschreibung des MII-Kerndatensatzes in der Version 1.0 vom 10.3.2017 (PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf)
* [Datenmodellbeschreibung des MII-Kerndatensatzes in ART-DECOR](https://art-decor.org/art-decor/decor-project--mide-)
* [Implementierungsleitfaden und FHIR Profilen der AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/)
* [Simplifier-Projekt MII KDS Modul Consent](https://simplifier.net/medizininformatikinitiative-modulconsent)
* [IG MII KDS Modul Consent](https://simplifier.net/guide/MedizininformatikInitiative-ModulConsent-ImplementationGuide/IGMIIKDSModulConsent)
* [Übersicht der KDS Module (Wiki github/kerndatensatz-meta](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki)

### Autoren und Ansprechpartner

Leitung des Moduls:

* Martin Bialke
* Sebastian Stäubert

Technische Umsetzung:

* Stefan Lang (Technische Umsetzung FHIR Profile und ImplemenationGuides)
* Martin Bialke (ImplemenationGuides)

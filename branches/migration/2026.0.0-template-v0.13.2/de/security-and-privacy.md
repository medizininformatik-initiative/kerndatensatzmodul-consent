# Sicherheit und Datenschutz - MII Implementation Guide Consent v2026.0.0

* [**Table of Contents**](toc.md)
* **Sicherheit und Datenschutz**

## Sicherheit und Datenschutz

Dieser Abschnitt richtet sich an Sicherheits- und Datenschutz-Fachleute. Allgemeine Anforderungen stehen in der FHIR-Kernspezifikation — [Security & Privacy Module](https://build.fhir.org/secpriv-module.html) und die [Security-Checkliste](https://build.fhir.org/security.html). Diese Seite wiederholt sie nicht; sie verlinkt den übergreifenden Datenschutzrahmen und nennt, was **für dieses Modul spezifisch** ist.

#### 1. Das übergreifende Datenschutzkonzept

Das [übergreifende Datenschutzkonzept der Medizininformatik-Initiative](https://www.medizininformatik-initiative.de/de/datenschutzkonzept) regelt, wie Patientendaten über das Netz der Datenintegrationszentren hinweg für die Forschung verarbeitet werden dürfen: die Rechtsgrundlage (der Broad Consent der MII), die Rollen der Datenintegrationszentren und der Use-&-Access-Committees sowie die standortübergreifenden Anwendungsszenarien (Machbarkeitsanfragen, verteilte Analysen, Daten- und Bioproben-Bereitstellung). Alles, was dieses Modul spezifiziert, bewegt sich innerhalb dieses Rahmens — dieser Leitfaden fügt keinen eigenen Verarbeitungszweck hinzu.

#### 2. De-Identifikation, Minimierung und Pseudonymisierung (DIMP)

Wie Daten, die ein Datenintegrationszentrum verlassen, praktisch de-identifiziert werden, spezifiziert [DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html) in der Dokumentation des Datenportals: direkte Identifikatoren werden entfernt, vom genehmigten Projekt nicht benötigte Datenelemente entfallen, und identifizierende Werte werden durch projektspezifische Pseudonyme ersetzt (FHIR-Pseudonymizer-Konfiguration). Die Profile dieses Moduls beschreiben die Daten **vor** Anwendung von DIMP; welche Elemente eine konkrete Datenbereitstellung erreicht, entscheidet je Projekt die DIMP-Konfiguration, nicht dieser Leitfaden.

#### 3. Modul-spezifische Aspekte

Da auch die FHIR Consent Ressource **keine personenidentifizierende Informationen** der einwilligenden Person enthält, sollte der [**pseudonyme Personenbezug**](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html) über entsprechende [**pseudonyme Identifier**](https://ig.fhir.de/einwilligungsmanagement/stable/ContextIdentifier.html) hergestellt werden. Etwaige personenidentifizierende Informationen (z.B. Geburtsdatum, Geschlecht,Anschrift) sowie Referenzen, z.B. auf (Klartext-) Patienten-Profile, sollten vor Ausleitung geeignet ersetzt werden.

**Technisch gesehen können Patienten-Ressourcen und abgeleitete Profile, wie z.B. die Profile der [AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html) oder der [MII](https://simplifier.net/medizininformatikinitiative-modulperson/sdmiipersonpatientpseudonymisiert) verwendet werden.** Um Pseudonyme, Fallnummern, etc. unterscheiden zu können, ist es unabhängig davon erforderlich eine Kategorisierung des verwendeten Identifiers mittels [patient.identifier.type](https://ig.fhir.de/einwilligungsmanagement/stable/ContextIdentifierType.html) vorzunehmen.

Die FHIR Consent Ressource enthält **keine Dokumenten-Scans und/oder Unterschriften**. Ist eine Übermittlung je nach Anwendungsfall erforderlich, sind separate Ressourcen gemäß den [Vorgaben der AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/DocumentReference.html) zu erstellen (Consent Bundles).


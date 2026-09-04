<!-- markdownlint-disable MD041 -->
<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/UML?version=2026.0.0
     (Harvest 2026-08-31, migration-log/guide-harvest/); interne Links auf die
     Zielseiten dieser IG-Struktur umgeschrieben (migration-log/page-map.tsv). -->
<!-- Die UML-Grafik wird lokal aus input/images/ ausgeliefert (Quelle: figures/
     des Quell-Repositories; der Simplifier-Leitfaden verlinkte sie hot auf den
     master-Branch). Die .graphml-Quelle liegt unter figures/. -->

### [Consent](StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0.html)

Die Consent-Resource stellt eine rein maschinen-lesbare Repräsentation der real existierenden Einwilligung einer Person dar und wird für das Enforcement (Durchsetzung, Umsetzung) der Consent-Policies verwendet.

Die Einwilligung wird in einem konkreten Kontext (z.B. MII) erhoben, was in FHIR in Form einer Referenz auf die verantwortliche Organisation ([Organization](https://ig.fhir.de/einwilligungsmanagement/stable/Organization.html)) und/oder zu einem Forschungsprojekt ([ResearchStudy](https://ig.fhir.de/einwilligungsmanagement/stable/ResearchStudy.html)) modelliert wird.

### [Provenance](StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464.html)

Die Provenance-Resource beschreibt die Herkunft der Einwilligungsinhalte (u.a. Unterschriften) und verknüpft diese mit den beteiligten Personen ([Patient](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html), Consent Witness) und eventuell vorhandenen Dokumenten-Scans ([DocumentReference](StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.html)). Ebenso können die für die Erhebung genutzten Anwendungssysteme genannt (display) bzw. referenziert werden, sowie im Anwendungssystem geltende Patienten-Identifier.

### Abbildung von [Fragebögen](frageboegen.html)

Der Einsatz *aller* in AG Einwilligungsmanagement entwickelten Profile ist *nicht verpflichtend*. Für die Abbildung der Questionnaire-basierten Inhalte ([Fragebögen](frageboegen.html)) sind die Empfehlungen der TFCU zu berücksichtigen.

### Relevante Profile

Hinweise zum UML-Klassendiagramm des Erweiterungsmoduls Consent:

- *Blau* eingefärbte Klassen werden bei der Abbildung und Profilierung in FHIR berücksichtigt, sind in diesem IG profiliert und bei der MII Umsetzung erforderlich.

- *Orange* eingefärbte Klassen sind im IG der AG Einwilligungsmanagement profiliert und erforderlich für die MII Umsetzung.

- *Grau* eingefärbte Klassen sind im IG der AG Einwilligungsmanagement profiliert und optional für die MII Umsetzung.

- *Hellgrau* eingefärbte Klassen werden referenziert. Diese werden jedoch nicht bei der Abbildung und Profilierung in FHIR berücksichtigt.

Die in den Klassen des Diagramms hinterlegten Attribute sind verpflichtend. Darüber hinaus können weitere optionale Attribute angegeben werden.

![](information-model_UML-Diagramm_MII-spez.png)

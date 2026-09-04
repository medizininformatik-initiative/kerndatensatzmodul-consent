# Artefaktübersicht - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Artefaktübersicht**

## Artefaktübersicht

Diese Seite bietet eine Liste der FHIR-Artefakte, die in diesem Implementierungsleitfaden definiert sind.

### Verhalten: CapabilityStatements 

Die folgenden Artefakte definieren die spezifischen Fähigkeiten, die verschiedene Systemtypen haben müssen, um diesem Implementierungsleitfaden zu entsprechen. Von Systemen, die mit dem Implementierungsleitfaden konform sind, wird erwartet, dass sie die Konformität mit einem oder mehreren der folgenden Capability Statements deklarieren.

| | |
| :--- | :--- |
| [ MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag)  ](CapabilityStatement-mii-cap-consent-server.md) | MIGRATION-GENERATED PROPOSAL (not part of the published 2026.0.0 release): server capabilities derived from the module's profiles and search parameters during the migration onto the MII KDS module template. The module team confirms, amends or deletes this artefact at Gate A. |

### Verhalten: Suchparameter (SearchParameter) 

Diese definieren die Eigenschaften, nach denen ein RESTful-Server durchsucht werden kann. Sie können auch zum Sortieren und Einbeziehen verwandter Ressourcen verwendet werden.

| | |
| :--- | :--- |
| [ mii-sp-consent-policyuri  ](SearchParameter-mii-sp-consent-policyuri.md) | Suche in der Policy URI (versionsspezifische Policy / Broad Consent) |
| [ mii-sp-consent-provisioncode  ](SearchParameter-mii-sp-consent-provisioncode.md) | Suche im Code der Provison |
| [ mii-sp-consent-provisioncodeperiod  ](SearchParameter-mii-sp-consent-provisioncodeperiod.md) | Composite-Suche nach Zeitraum (period) einer bestimmten, durch einen Code definierten, Provision. |
| [ mii-sp-consent-provisioncodetype  ](SearchParameter-mii-sp-consent-provisioncodetype.md) | Composite-Suche nach Typ (type) einer bestimmten, durch einen Code definierten, Provision. |
| [ mii-sp-consent-provisionperiod  ](SearchParameter-mii-sp-consent-provisionperiod.md) | Suche im Zeitraum der Provision. Dieser Suchparameter bezieht sich explizit auf die zweite Verschachtelungsebene von provison. |
| [ mii-sp-consent-provisiontype  ](SearchParameter-mii-sp-consent-provisiontype.md) | Suche im Typ der Provison (permit, deny). |

### Strukturen: Ressourcenprofile 

Diese definieren Einschränkungen für FHIR-Ressourcen für Systeme, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ Profile - MI-I - Consent - DocumentReference  ](StructureDefinition-mii-pr-consent-documentreference.md) | Dieses Profil beschreibt die Abbildung von Originaldokumenten zu Einwilligungen in der Medizininformatik-Initiative. Diese müssen im PDF-Format vorliegen. |
| [ Profile - MI-I - Consent - Einwilligung  ](StructureDefinition-mii-pr-consent-einwilligung.md) | Dieses Profil beschreibt eine Einwilligung in der Medizininformatik-Initiative. |
| [ Profile - MI-I - Consent - Provenance  ](StructureDefinition-mii-pr-consent-provenance.md) | Dieses Profil beschreibt Herkunftsinformationen zu Einwilligungen in der Medizininformatik-Initiative. |

### Terminologie: ValueSets 

Diese definieren Wertemengen, die von Systemen verwendet werden, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII Consent: Answer ValueSet  ](ValueSet-mii-vs-consent-answer.md) | This ValueSet contains the possible answers to the questions of the MII Consent. |
| [ MII Consent: Policy ValueSet  ](ValueSet-mii-vs-consent-policy.md) | **Disclaimer**(Punkte übernommen aus der Policy Liste ([MII SharePoint, TF Consent Umsetzung](https://tmfev.sharepoint.com/:f:/r/sites/tmf/mi-i/Taskforce%20Consent%20Umsetzung/02_Dokumente/Policies?csf=1&web=1&e=C0xLim "")))1. Diese Liste fasst erforderliche Einwilligungsmodule und zugeordnete Einwilligungspolicies für die technische Abbildung der "MII Mustertexte Patienteneinwilligung" in den aktuell verfügbaren Versionen zusammen.
1. Für die Abbildung der Policies im Art Decor werden ausschließlich die Spalten [Policybezeichner], [Bedeutung/Kontext] und [OID] verwendet.
1. Die Formulierung in der Spalte [Bedeutung/Kontext] dient ausschließlich administrativen Zwecken und der Verständnisbildung für die jeweilige Policy.
1. Eine Darstellung der jeweiligen Formulierung innerhalb von Formularen oder digitalen Einwilligungsdokumenten ist nicht intendiert.
1. Die Spalte [Weitere Hinweise Enforcement-Seite] nennt zusätzliche Randbedingungen, die auf der datenverarbeitenden Seite über die reine Einwilligungsinformation hinaus zu berücksichtigen sind. Die Gewährleistung der Einhaltung dieser weiteren Hinweise geht über den Wirkungsraum der Task Force Consent Umsetzung hinaus.
**Hinweis 1 - Verwendung in FHIR:** Siehe [Implementation Guide](https://ig.fhir.de/einwilligungsmanagement/stable/Consent.html).**Hinweis 2 - Verwendung in IHE BPPC:** Um die in diesem ValueSet enthaltenen Codes in IHE BPPC verwenden zu können, ist eine Kombination mit dem [MII Consent: Answer ValueSet](https://art-decor.org/art-decor/decor-valuesets–mide-?id=2.16.840.1.113883.3.1937.777.24.11.30&effectiveDate=2021-03-23T23:45:09&language=de-DE "") möglich (evtl. sogar erforderlich).Beispiel 1:Patient hat dem Erheben der IDAT (Policy: 2.16.840.1.113883.3.1937.777.24.5.3.2 "IDAT_erheben") zugestimmt: 2.16.840.1.113883.3.1937.777.24.5.3.2**.1** (.1 wird aus dem [MII Consent: Answer ValueSet](https://art-decor.org/art-decor/decor-valuesets–mide-?id=2.16.840.1.113883.3.1937.777.24.11.30&effectiveDate=2021-03-23T23:45:09&language=de-DE "") angehängt)Beispiel 2:2.16.840.1.113883.3.1937.777.24.5.3.4.2 bedeutet, dass der Patient der Policy IDAT_zusammenfuehren_Dritte nicht zugestimmt hat. |
| [ MII Consent: Signature Types  ](ValueSet-mii-vs-consent-signaturetypes.md) | Dieses ValueSet enthält die zulässigen Werte für den Signaturtyp im Kontext des MI-I Consent. |

### Terminologie: CodeSysteme 

Diese definieren neue CodeSysteme, die von Systemen verwendet werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII Consent Version and Modules CodeSystem  ](CodeSystem-mii-cs-consent-version-modules.md) | Dieses Code System enthält die OIDs der verschiedenen Versionen und Zusatzmodule des Broad Consent der Medizininformatik Initiative. |
| [ MII Consent: Answer CodeSystem  ](CodeSystem-2.16.840.1.113883.3.1937.777.24.5.2--20210423105554.md) | This CodeSystem contains the possible answers to the questions of the MII Consent. |
| [ MII Consent: Policy CodeSystem  ](CodeSystem-2.16.840.1.113883.3.1937.777.24.5.3--20251211153003.md) | Codesystem mit Consent-Policy-Codes zur interoperablen Operationalisierung bzw. Durchsetzung (Enforcement) von Consent Informationen des MII Broad Consent |

### Beispiel: Beispielinstanzen 

Dies sind Beispielinstanzen, die zeigen, wie Daten aussehen könnten, die von Systemen produziert und konsumiert werden, die mit diesem Implementierungsleitfaden konform sind.

| |
| :--- |
| [ 34150a23-b1c8-404f-874f-e042a30435d2  ](Consent-34150a23-b1c8-404f-874f-e042a30435d2.md) |
| [ 5143266b-8d60-4b28-8ee9-635140ffa5bb  ](Consent-5143266b-8d60-4b28-8ee9-635140ffa5bb.md) |
| [ 55219d12-6245-4de4-8b50-ddf6f16a789b  ](Provenance-55219d12-6245-4de4-8b50-ddf6f16a789b.md) |
| [ 89f494a3-cd75-44f5-a78a-581dfdd47a94  ](Consent-89f494a3-cd75-44f5-a78a-581dfdd47a94.md) |
| [ 8a3d1799-2463-405e-b49c-6a16c8692b01  ](DocumentReference-8a3d1799-2463-405e-b49c-6a16c8692b01.md) |
| [ Example-MII-Consent-ResultType-document  ](Consent-Example-MII-Consent-ResultType-document.md) |

### Sonstige 

Dies sind Ressourcen, die in diesem Implementierungsleitfaden verwendet werden, die in keine der anderen Kategorien passen.

| |
| :--- |
| [ mii-param-consent-manifest  ](Parameters-mii-param-consent-manifest.md) |


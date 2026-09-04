# Artifacts Summary - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

 There is no translation page available for the current page, so it has been rendered in the default language 

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [ MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag)  ](CapabilityStatement-mii-cap-consent-server.md) | MIGRATION-GENERATED PROPOSAL (not part of the published 2026.0.0 release): server capabilities derived from the module's profiles and search parameters during the migration onto the MII KDS module template. The module team confirms, amends or deletes this artefact at Gate A. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [ mii-sp-consent-policyuri  ](SearchParameter-mii-sp-consent-policyuri.md) | Suche in der Policy URI (versionsspezifische Policy / Broad Consent) |
| [ mii-sp-consent-provisioncode  ](SearchParameter-mii-sp-consent-provisioncode.md) | Suche im Code der Provison |
| [ mii-sp-consent-provisioncodeperiod  ](SearchParameter-mii-sp-consent-provisioncodeperiod.md) | Composite-Suche nach Zeitraum (period) einer bestimmten, durch einen Code definierten, Provision. |
| [ mii-sp-consent-provisioncodetype  ](SearchParameter-mii-sp-consent-provisioncodetype.md) | Composite-Suche nach Typ (type) einer bestimmten, durch einen Code definierten, Provision. |
| [ mii-sp-consent-provisionperiod  ](SearchParameter-mii-sp-consent-provisionperiod.md) | Suche im Zeitraum der Provision. Dieser Suchparameter bezieht sich explizit auf die zweite Verschachtelungsebene von provison. |
| [ mii-sp-consent-provisiontype  ](SearchParameter-mii-sp-consent-provisiontype.md) | Suche im Typ der Provison (permit, deny). |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ Profile - MI-I - Consent - DocumentReference  ](StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.md) | Dieses Profil beschreibt die Abbildung von Originaldokumenten zu Einwilligungen in der Medizininformatik-Initiative. Diese müssen im PDF-Format vorliegen. |
| [ Profile - MI-I - Consent - Einwilligung  ](StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0.md) | Dieses Profil beschreibt eine Einwilligung in der Medizininformatik-Initiative. |
| [ Profile - MI-I - Consent - Provenance  ](StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464.md) | Dieses Profil beschreibt Herkunftsinformationen zu Einwilligungen in der Medizininformatik-Initiative. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII Consent: Answer ValueSet  ](ValueSet-2.16.840.1.113883.3.1937.777.24.11.30--20210323234509.md) | This ValueSet contains the possible answers to the questions of the MII Consent. |
| [ MII Consent: Policy ValueSet  ](ValueSet-2.16.840.1.113883.3.1937.777.24.11.36--20230331232804.md) | **Disclaimer**(Punkte übernommen aus der Policy Liste ([MII SharePoint, TF Consent Umsetzung](https://tmfev.sharepoint.com/:f:/r/sites/tmf/mi-i/Taskforce%20Consent%20Umsetzung/02_Dokumente/Policies?csf=1&web=1&e=C0xLim "")))1. Diese Liste fasst erforderliche Einwilligungsmodule und zugeordnete Einwilligungspolicies für die technische Abbildung der "MII Mustertexte Patienteneinwilligung" in den aktuell verfügbaren Versionen zusammen.
1. Für die Abbildung der Policies im Art Decor werden ausschließlich die Spalten [Policybezeichner], [Bedeutung/Kontext] und [OID] verwendet.
1. Die Formulierung in der Spalte [Bedeutung/Kontext] dient ausschließlich administrativen Zwecken und der Verständnisbildung für die jeweilige Policy.
1. Eine Darstellung der jeweiligen Formulierung innerhalb von Formularen oder digitalen Einwilligungsdokumenten ist nicht intendiert.
1. Die Spalte [Weitere Hinweise Enforcement-Seite] nennt zusätzliche Randbedingungen, die auf der datenverarbeitenden Seite über die reine Einwilligungsinformation hinaus zu berücksichtigen sind. Die Gewährleistung der Einhaltung dieser weiteren Hinweise geht über den Wirkungsraum der Task Force Consent Umsetzung hinaus.
**Hinweis 1 - Verwendung in FHIR:** Siehe [Implementation Guide](https://ig.fhir.de/einwilligungsmanagement/stable/Consent.html).**Hinweis 2 - Verwendung in IHE BPPC:** Um die in diesem ValueSet enthaltenen Codes in IHE BPPC verwenden zu können, ist eine Kombination mit dem [MII Consent: Answer ValueSet](https://art-decor.org/art-decor/decor-valuesets–mide-?id=2.16.840.1.113883.3.1937.777.24.11.30&effectiveDate=2021-03-23T23:45:09&language=de-DE "") möglich (evtl. sogar erforderlich).Beispiel 1:Patient hat dem Erheben der IDAT (Policy: 2.16.840.1.113883.3.1937.777.24.5.3.2 "IDAT_erheben") zugestimmt: 2.16.840.1.113883.3.1937.777.24.5.3.2**.1** (.1 wird aus dem [MII Consent: Answer ValueSet](https://art-decor.org/art-decor/decor-valuesets–mide-?id=2.16.840.1.113883.3.1937.777.24.11.30&effectiveDate=2021-03-23T23:45:09&language=de-DE "") angehängt)Beispiel 2:2.16.840.1.113883.3.1937.777.24.5.3.4.2 bedeutet, dass der Patient der Policy IDAT_zusammenfuehren_Dritte nicht zugestimmt hat. |
| [ MII Consent: Signature Types  ](ValueSet-88464c5b-5338-4c2b-9c07-b42fef2ada64.md) | Dieses ValueSet enthält die zulässigen Werte für den Signaturtyp im Kontext des MI-I Consent. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII Consent Version and Modules CodeSystem  ](CodeSystem-mii-cs-consent-version-modules.md) | Dieses Code System enthält die OIDs der verschiedenen Versionen und Zusatzmodule des Broad Consent der Medizininformatik Initiative. |
| [ MII Consent: Answer CodeSystem  ](CodeSystem-2.16.840.1.113883.3.1937.777.24.5.2--20210423105554.md) | This CodeSystem contains the possible answers to the questions of the MII Consent. |
| [ MII Consent: Policy CodeSystem  ](CodeSystem-2.16.840.1.113883.3.1937.777.24.5.3--20251211153003.md) | Codesystem mit Consent-Policy-Codes zur interoperablen Operationalisierung bzw. Durchsetzung (Enforcement) von Consent Informationen des MII Broad Consent |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ 34150a23-b1c8-404f-874f-e042a30435d2  ](Consent-34150a23-b1c8-404f-874f-e042a30435d2.md) |  |
| [ 5143266b-8d60-4b28-8ee9-635140ffa5bb  ](Consent-5143266b-8d60-4b28-8ee9-635140ffa5bb.md) |  |
| [ 55219d12-6245-4de4-8b50-ddf6f16a789b  ](Provenance-55219d12-6245-4de4-8b50-ddf6f16a789b.md) |  |
| [ 89f494a3-cd75-44f5-a78a-581dfdd47a94  ](Consent-89f494a3-cd75-44f5-a78a-581dfdd47a94.md) |  |
| [ 8a3d1799-2463-405e-b49c-6a16c8692b01  ](DocumentReference-8a3d1799-2463-405e-b49c-6a16c8692b01.md) |  |
| [ Beispiel Einwilligungsdomäne (synthetische Studie)  ](ResearchStudy-c946ae17-e3e6-4178-b5ea-15f95aaeeeb4.md) | Synthetische Consent-Domäne (ResearchStudy) als Referenzziel der DomainReference-Extension der Quell-Beispiele. |
| [ Beispiel Einwilligungsdomäne (synthetische Studie)  ](ResearchStudy-d7a65ce8-2810-401a-b0db-70782a7b19a6.md) | Synthetische Consent-Domäne (ResearchStudy) als Referenzziel der DomainReference-Extension der Quell-Beispiele. |
| [ Beispiel Patient (pseudonym, synthetisch)  ](Patient-531cef77-2a30-4283-944d-affaf9ae234e.md) | Synthetischer, pseudonymer Patient als Referenzziel der Quell-Beispiele (Consent.patient, DocumentReference.subject, Provenance.signature.who). |
| [ Beispiel Patient (pseudonym, synthetisch)  ](Patient-9b4a702d-162c-428a-8c5d-8b98af21b693.md) | Synthetischer, pseudonymer Patient als Referenzziel der Quell-Beispiele (Consent.patient, DocumentReference.subject, Provenance.signature.who). |
| [ Example-MII-Consent-ResultType-document  ](Consent-Example-MII-Consent-ResultType-document.md) |  |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| |
| :--- |
| [ mii-param-consent-manifest  ](Parameters-mii-param-consent-manifest.md) |


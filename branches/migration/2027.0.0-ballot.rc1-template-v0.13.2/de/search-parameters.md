# Suchparameter - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Suchparameter**

## Suchparameter

### Suchparameter

#### Kategorie

Im Kontext dieses Leitfadens muss der Standard-Suchparameter **Consent.category** unterstützt werden (vgl. [https://www.hl7.org/fhir/consent.html#search](https://www.hl7.org/fhir/consent.html#search))

Beispiel hierzu:

```
GET [base]/Consent?category=2.16.840.1.113883.3.1937.777.24.2.184

```

findet alle (gültige und nicht mehr gültige) Consent-Ressourcen zum Zeitpunkt der Anfrage, die einer beliebigen Version des MII Broad Consent (z.B. 1.6d, 1.7.2, etc.) entsprechen.

#### Provision-Code

Invocations`\[base\]/Consent?mii-provision-provision-code=\[system\]|\[value\]`DetailsResourceConsentCodemii-provision-provision-codeType[token](https://hl7.org/fhir/r4/search.html#token)FhirPathConsent.provision.provision.code

Beispiel:

```
GET [base]/Consent?mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8

```

#### Typ der Provision (permit, deny)

Invocations`\[base\]/Consent?mii-provision-provision-type=\[system\]|\[value\]`DetailsResourceConsentCodemii-provision-provision-typeType[token](https://hl7.org/fhir/r4/search.html#token)FhirPathConsent.provision.provision.type

Beispiel:

```
GET [base]/Consent?mii-provision-provision-type=permit

```

#### Typ der Provision einer bestimmten, durch einen Code definierten, Provision

Invocations`\[base\]/Consent?mii-provision-provision-code-type=(state$)\[value\],(state$)\[value\]`DetailsResourceConsentCodemii-provision-provision-code-typeType[composite](https://hl7.org/fhir/r4/search.html#composite)FhirPathConsent.provision.provision

Beispiel:

```
GET [base]/Consent?mii-provision-provision-code-type=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8$permit

```

#### Provisions-Zeitraum

Invocations`\[base\]/Consent?mii-provision-provision-period=(comparator)\[date\]`DetailsResourceConsentCodemii-provision-provision-periodType[date](https://hl7.org/fhir/r4/search.html#date)FhirPathConsent.provision.provision.period

Beispiel:

```
GET [base]/Consent?mii-provision-provision-period=2020-12-15

```

#### Provisions-Zeitraum einer bestimmten, durch einen Code definierten, Provision

Invocations`\[base\]/Consent?mii-provision-provision-code-period=(state$)\[value\],(state$)\[value\]`DetailsResourceConsentCodemii-provision-provision-code-periodType[composite](https://hl7.org/fhir/r4/search.html#composite)FhirPathConsent.provision.provision

Beispiel:

```
GET [base]/Consent?mii-provision-provision-code-period=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8$2020-12-15

```

#### Policy URI (versionsspezifischer MII Broad Consent)

Invocations`\[base\]/Consent?mii-policy-uri=\[url\]`DetailsResourceConsentCodemii-policy-uriType[uri](https://hl7.org/fhir/r4/search.html#uri)FhirPathConsent.policy.uri

Beispiel:

```
GET [base]/Consent?mii-policy-uri=urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791

```

#### Mitgeltende Suchparameter gemäß HL7-D Standard Einwilligungsmanagement

Im Kontext der Suche nach Consent-Ressourcen sind nach [HL7-D Standard für Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/Consent.html) (Version 2.0) folgende Suchparameter zur Filterung von Consent-Ressourcen definiert. Diese werden ebenfalls durch den MII KDS Consent unterstützt. Konkrete Beispiele sind im IG der HL7-D Arbeitsgruppe dokumentiert.

| | |
| :--- | :--- |
| **Suchparameter** | **Erläuterung** |

| — | — |

| | |
| :--- | :--- |
| domain | Einwilligungsdomäne. Insbesondere wird empfohlen, logische Referenzen (Reference by Identifier, im Suchparameter: modifier ":identifier") zu unterstützen. |

| | |
| :--- | :--- |
| category | Art des Dokuments (Einwilligung, Widerruf,etc) |
| ResultType (Dokument, Consent-Status, etc.) |   |

| | |
| :--- | :--- |
| patient.identifier | Die betroffene Person identifiziert über Identifier |

**Anmerkung: Da eine Dependency auf das Paket der HL7-D AG Einwilligungsmanagement besteht, existiert der Suchparameter `domain` automatisch und muss nicht explizit für das KDS-Modul definiert werden. Er wird technisch 'einfach übernommen'.**

#### Komplexere Beispiele (Suchanfragen)

```
GET [base]/Consent?mii-provision-provision-type=permit&mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8&mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.9

```

findet alle Consent-Ressourcen mit Permit-Provision, bei denen sowohl der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.8 als auch der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.9 gesetzt sind.

```
GET [base]/Consent?mii-provision-provision-type=permit&mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8,mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.9

```

findet alle Consent-Ressourcen mit Permit-Provision, bei denen der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.8 oder auch der Provison-Code 2.16.840.1.113883.3.1937.777.24.5.3.9 gesetzt sind.

```
GET [base]/Consent?domain:identifier=MII&category=http://fhir.de/ConsentManagement/CodeSystem/TemplateType|CONSENT-OPT-IN&category=http://fhir.de/ConsentManagement/CodeSystem/ResultType|document

```

findet alle Consent-Ressourcen vom Typ "Einwilligung" in einer Domäne `mii`. Eine Consent-Ressource je Einwilligungssdokument. Das Bundle.Total gibt Aufschluss über die Anzahl der Einwilligungen.

```
GET [base]/Consent?category=http://fhir.de/ConsentManagement/CodeSystem/TemplateType|WITHDRAWAL&category=http://fhir.de/ConsentManagement/CodeSystem/ResultType|document

```

findet alle Consent-Ressourcen vom Typ "Widerruf". Eine Consent-Ressource je Widerrufsdokument. Das Bundle.Total gibt Aufschluss über die Anzahl der Widerrufe.

```
GET [base]/Consent?category=http://fhir.de/ConsentManagement/CodeSystem/TemplateType|REFUSAL&category=http://fhir.de/ConsentManagement/CodeSystem/ResultType|document

```

findet alle Consent-Ressourcen vom Typ "Ablehnung". Eine Consent-Ressource je Ablehnungsdokument. Das Bundle.Total gibt Aufschluss über die Anzahl der Ablehnungen.

```
GET [base]/Consent?domain:identifier=MII&category=http://fhir.de/ConsentManagement/CodeSystem/ResultType|consent-status

```

findet alle Consent-Ressourcen in der Domäne `mii`. Jede Consent-Ressource **berücksichtigt alle relevanten Einwilligungs-, Widerrufs- und Ablehnungsdokumente für einen (!) Patienten**. Die Consent Ressource mit ResultType `consent-status` aggregiert Einwilligungsinformationen und bezieht sich auf exakt einen Patienten und repräsentiert den aktuellen Einwilligungsstand des Patienten. **Gleichzeitig entspricht das Bundle.Total der Anzahl der Patienten für die mind. ein Dokument mit Einwilligungsinformationen (Einwilligung, Widerruf, Ablehnung) vorliegt.


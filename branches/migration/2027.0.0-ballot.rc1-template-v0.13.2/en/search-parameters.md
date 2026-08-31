# Search Parameters - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Search Parameters**

## Search Parameters

 This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.html). 

### Search Parameters

#### Category

In the context of this guide, the standard search parameter **Consent.category** must be supported (cf. [https://www.hl7.org/fhir/consent.html#search](https://www.hl7.org/fhir/consent.html#search))

An example:

```
GET [base]/Consent?category=2.16.840.1.113883.3.1937.777.24.2.184

```

finds all Consent resources (valid and no longer valid) at the time of the request that correspond to any version of the MII Broad Consent (e.g. 1.6d, 1.7.2, etc.).

#### Provision Code

| | |
| :--- | :--- |
| Invocations | `[base]/Consent?mii-provision-provision-code=[system]\|[value]` |
| Resource | Consent |
| Code | `mii-provision-provision-code` |
| Type | [token](https://hl7.org/fhir/r4/search.html#token) |
| FhirPath | `Consent.provision.provision.code` |

Example:

```
GET [base]/Consent?mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8

```

#### Type of the Provision (permit, deny)

| | |
| :--- | :--- |
| Invocations | `[base]/Consent?mii-provision-provision-type=[system]\|[value]` |
| Resource | Consent |
| Code | `mii-provision-provision-type` |
| Type | [token](https://hl7.org/fhir/r4/search.html#token) |
| FhirPath | `Consent.provision.provision.type` |

Example:

```
GET [base]/Consent?mii-provision-provision-type=permit

```

#### Type of the Provision of a Specific Provision Defined by a Code

| | |
| :--- | :--- |
| Invocations | `[base]/Consent?mii-provision-provision-code-type=(state$)[value],(state$)[value]` |
| Resource | Consent |
| Code | `mii-provision-provision-code-type` |
| Type | [composite](https://hl7.org/fhir/r4/search.html#composite) |
| FhirPath | `Consent.provision.provision` |

Example:

```
GET [base]/Consent?mii-provision-provision-code-type=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8$permit

```

#### Provision Period

| | |
| :--- | :--- |
| Invocations | `[base]/Consent?mii-provision-provision-period=(comparator)[date]` |
| Resource | Consent |
| Code | `mii-provision-provision-period` |
| Type | [date](https://hl7.org/fhir/r4/search.html#date) |
| FhirPath | `Consent.provision.provision.period` |

Example:

```
GET [base]/Consent?mii-provision-provision-period=2020-12-15

```

#### Provision Period of a Specific Provision Defined by a Code

| | |
| :--- | :--- |
| Invocations | `[base]/Consent?mii-provision-provision-code-period=(state$)[value],(state$)[value]` |
| Resource | Consent |
| Code | `mii-provision-provision-code-period` |
| Type | [composite](https://hl7.org/fhir/r4/search.html#composite) |
| FhirPath | `Consent.provision.provision` |

Example:

```
GET [base]/Consent?mii-provision-provision-code-period=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8$2020-12-15

```

#### Policy URI (Version-Specific MII Broad Consent)

| | |
| :--- | :--- |
| Invocations | `[base]/Consent?mii-policy-uri=[url]` |
| Resource | Consent |
| Code | `mii-policy-uri` |
| Type | [uri](https://hl7.org/fhir/r4/search.html#uri) |
| FhirPath | `Consent.policy.uri` |

Example:

```
GET [base]/Consent?mii-policy-uri=urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791

```

#### Additionally Applicable Search Parameters According to the HL7-D Standard for Consent Management

In the context of searching for Consent resources, the following search parameters for filtering Consent resources are defined by the [HL7-D Standard for Consent Management](https://ig.fhir.de/einwilligungsmanagement/stable/Consent.html) (version 2.0). These are likewise supported by the MII KDS Consent. Concrete examples are documented in the IG of the HL7-D working group.

| | |
| :--- | :--- |
| domain | Consent domain. In particular, it is recommended to support logical references (Reference by Identifier, in the search parameter: modifier ":identifier"). |
| category | Type of the document (consent, withdrawal, etc.)ResultType (document, consent status, etc.) |
| patient.identifier | The affected person, identified via an identifier |

**Note: Since there is a dependency on the package of the HL7-D working group on consent management, the search parameter `domain` exists automatically and does not need to be defined explicitly for the KDS module. Technically, it is 'simply taken over'.**

#### More Complex Examples (Search Queries)

```
GET [base]/Consent?mii-provision-provision-type=permit&mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8&mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.9

```

finds all Consent resources with a permit provision in which both the provision code 2.16.840.1.113883.3.1937.777.24.5.3.8 and the provision code 2.16.840.1.113883.3.1937.777.24.5.3.9 are set.

```
GET [base]/Consent?mii-provision-provision-type=permit&mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.8,mii-provision-provision-code=urn:oid:2.16.840.1.113883.3.1937.777.24.5.3|2.16.840.1.113883.3.1937.777.24.5.3.9

```

finds all Consent resources with a permit provision in which either the provision code 2.16.840.1.113883.3.1937.777.24.5.3.8 or the provision code 2.16.840.1.113883.3.1937.777.24.5.3.9 is set.

```
GET [base]/Consent?domain:identifier=MII&category=http://fhir.de/ConsentManagement/CodeSystem/TemplateType|CONSENT-OPT-IN&category=http://fhir.de/ConsentManagement/CodeSystem/ResultType|document

```

finds all Consent resources of type "consent" in a domain `mii`. One Consent resource per consent document. The Bundle.Total indicates the number of consents.

```
GET [base]/Consent?category=http://fhir.de/ConsentManagement/CodeSystem/TemplateType|WITHDRAWAL&category=http://fhir.de/ConsentManagement/CodeSystem/ResultType|document

```

finds all Consent resources of type "withdrawal". One Consent resource per withdrawal document. The Bundle.Total indicates the number of withdrawals.

```
GET [base]/Consent?category=http://fhir.de/ConsentManagement/CodeSystem/TemplateType|REFUSAL&category=http://fhir.de/ConsentManagement/CodeSystem/ResultType|document

```

finds all Consent resources of type "refusal". One Consent resource per refusal document. The Bundle.Total indicates the number of refusals.

```
GET [base]/Consent?domain:identifier=MII&category=http://fhir.de/ConsentManagement/CodeSystem/ResultType|consent-status

```

finds all Consent resources in the domain `mii`. Each Consent resource **takes into account all relevant consent, withdrawal, and refusal documents for one (!) patient**. The Consent resource with ResultType `consent-status` aggregates consent information, refers to exactly one patient, and represents the patient's current consent status. **At the same time, the Bundle.Total corresponds to the number of patients for whom at least one document with consent information (consent, withdrawal, refusal) exists.


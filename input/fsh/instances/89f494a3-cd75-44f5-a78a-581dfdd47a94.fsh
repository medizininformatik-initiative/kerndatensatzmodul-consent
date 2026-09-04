Instance: 89f494a3-cd75-44f5-a78a-581dfdd47a94
InstanceOf: Consent
Usage: #example
* meta.lastUpdated = "2020-12-11T09:39:07+00:00"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/d7a65ce8-2810-401a-b0db-70782a7b19a6)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[0] = $loinc#57016-8
* category[+] = $mii-cs-consent-version-modules#2.16.840.1.113883.3.1937.777.24.2.184
* category[+] = $ResultType#document
* category[+] = $TemplateType#CONSENT-OPT-IN
* patient = Reference(Patient/9b4a702d-162c-428a-8c5d-8b98af21b693)
* dateTime = "2020-09-01"
* organization.display = "Klinikum Musterstadt"
* policy.uri = "urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791"
* policyRule.extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/Xacml"
* policyRule.extension.valueBase64Binary = "TUlJIEJDIEV4YW1wbGUgWEFDTUw="
* policyRule.text = "siehe eingebettetes XACML"
* provision.type = #deny
* provision.period.start = "2020-09-01"
* provision.period.end = "2050-08-31"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2020-09-01"
* provision.provision[=].period.end = "2025-08-31"
* provision.provision[=].code[0] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT_erheben"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT_speichern_verarbeiten"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT_erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2020-09-01"
* provision.provision[=].period.end = "2050-08-31"
* provision.provision[=].code = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2020-09-01"
* provision.provision[=].period.end = "2050-08-31"
* provision.provision[=].code[0] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.20 "BIOMAT_lagern_verarbeiten"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU"
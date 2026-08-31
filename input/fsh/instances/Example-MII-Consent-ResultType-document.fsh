Instance: Example-MII-Consent-ResultType-document
InstanceOf: MII_PR_Consent_Einwilligung
Usage: #example
* meta.lastUpdated = "2020-12-11T09:39:07+00:00"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference.reference = "ResearchStudy/d7a65ce8-2810-401a-b0db-70782a7b19a6"
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
// fhir_comments (source XML comment on extension.fhir_comments): " Verweis auf die zugehörige Domain (hier: Studie) "
* status = #active
// fhir_comments (source XML comment on status.fhir_comments): " Finalisierungsstatus "
* scope = $consentscope#research
// fhir_comments (source XML comment on scope.fhir_comments): " Einwilligung zur Verwendung, hier: in der Forschung "
* category[0] = $loinc#57016-8
// fhir_comments (source XML comment on category[=].fhir_comments): " Consent-Kategorie, hier: Einwilligung "
* category[+] = $mii-cs-consent-consent_category#2.16.840.1.113883.3.1937.777.24.2.184
// fhir_comments (source XML comment on category[=].fhir_comments): " MII Broad Consent "
* category[+] = $ResultType#document
// fhir_comments (source XML comment on category[=].fhir_comments): " Consent-Kategorie resultType, hier: Dokument "
* category[+] = $TemplateType#CONSENT-OPT-IN
// fhir_comments (source XML comment on category[=].fhir_comments): " Consent-Kategorie bezogen auf das ValueSet 'ConsentManagementTemplateType', hier: Einwilligung "
* patient.reference = "Patient/9b4a702d-162c-428a-8c5d-8b98af21b693"
// fhir_comments (source XML comment on patient.fhir_comments): " Patient, für den die Einwilligungserklärung gilt "
* dateTime = "2020-09-01"
// fhir_comments (source XML comment on dateTime.fhir_comments): " Zeitpunkt der Einwilligung "
* organization.display = "Klinikum Musterstadt"
// fhir_comments (source XML comment on organization.display.fhir_comments): " hier kann bei Bedarf auch auf beliebige Organization-Ressourcen referenziert werden "
* policy.uri = "urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791"
// fhir_comments (source XML comment on policy.uri.fhir_comments): " z.B. MII Broad Consent Version 1.6f "
// fhir_comments (source XML comment on policy.fhir_comments): " durch diesen Consent geltende Policy/Policies bzw Module"
* policyRule.extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/Xacml"
* policyRule.extension.valueBase64Binary = "TUlJIEJDIEV4YW1wbGUgWEFDTUw="
* policyRule.text = "siehe eingebettetes XACML"
// fhir_comments (source XML comment on policyRule.fhir_comments): " XacML-Repräsentation "
* provision.type = #deny
* provision.period.start = "2020-09-01"
* provision.period.end = "2050-08-31"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2020-09-01"
* provision.provision[=].period.end = "2025-08-31"
* provision.provision[=].code[0] = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT_erheben"
* provision.provision[=].code[+] = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT_speichern_verarbeiten"
* provision.provision[=].code[+] = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT_erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2020-09-01"
* provision.provision[=].period.end = "2050-08-31"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2020-09-01"
* provision.provision[=].period.end = "2050-08-31"
* provision.provision[=].code[0] = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.20 "BIOMAT_lagern_verarbeiten"
* provision.provision[=].code[+] = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU"
// fhir_comments (source XML comment on provision.fhir_comments): " In diesem Beispiel repräsentiert jede Provision eine Gruppe von Fragen/Antworten bzw. Teilaussagen mit gleichem Gültigkeitszeitraum. "
Profile: MII_PR_Consent_Einwilligung
Parent: Consent
Id: e0e166b4-0f77-478d-9062-de0034d98ce0
Title: "Profile - MI-I - Consent - Einwilligung"
Description: "Dieses Profil beschreibt eine Einwilligung in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"
* ^version = "1.0.9"
* ^status = #active
* ^date = "2025-12-03"
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains ConsentManagementDomainReference named domainReference 0..* MS
* extension[domainReference].extension ^slicing.discriminator.type = #value
* extension[domainReference].extension ^slicing.discriminator.path = "url"
* extension[domainReference].extension ^slicing.rules = #open
* extension[domainReference].extension[domain] ^sliceName = "domain"
* extension[domainReference].extension[domain] ^mustSupport = true
* status MS N
* status ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* status ^extension[=].valueCode = #4.0.0
* scope ^comment = "Wird im Kontext des Einwilligungsmanagment-Leitfadens nicht näher definiert.\r\nBei Bedarf kann das ValueSet erweitert oder ggf. ein NullFlavor-Code eingetragen werden."
* scope.coding 1..1
* scope.coding.system 1..
* scope.coding.system = "http://terminology.hl7.org/CodeSystem/consentscope" (exactly)
* scope.coding.code 1..
* scope.coding.code = #research (exactly)
* category ..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    loinc 1..1 MS and
    mii 1..1 MS
* category[loinc] = $loinc#57016-8
* category[loinc].coding 1..1 MS
* category[loinc].coding.system 1.. MS
* category[loinc].coding.code 1.. MS
* category[mii] = MIIConsentVersionModuleCodeSystem#2.16.840.1.113883.3.1937.777.24.2.184
* category[mii].coding 1..1 MS
* category[mii].coding.system 1.. MS
* category[mii].coding.code 1.. MS
* patient 1.. MS
* patient only Reference(ConsentManagementPatient)
* patient.reference MS N
* patient.reference ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* patient.reference ^extension[=].valueCode = #4.0.0
* patient.identifier MS
* patient.identifier.system 1.. MS
* patient.identifier.value 1.. MS
* dateTime 1.. MS N
* dateTime ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* dateTime ^extension[=].valueCode = #4.0.0
* dateTime ^short = "Erstellungszeitpunkt der Einwilligung"
* dateTime ^definition = "Dieser Zeitpunkt sollte in der Praxis, zumindest bei vollelektronischer Verarbeitung, identisch mit dem Unterschriftsdatum des Fragebogens sein (Provenance.signature.when des Patienten)"
* dateTime ^comment = "Dieser Zeitpunkt sollte in der Praxis, zumindest bei vollelektronischer Verarbeitung, identisch mit dem Unterschriftsdatum des Fragebogens sein (Provenance.signature.when des Patienten)"
* organization MS
* organization ^short = "Organisation, in der die Einwilligung erfasst wurde."
* organization ^definition = "Dies ist die Organisation, die den Consent erfasst hat."
* source[x] only Reference(ConsentManagementQuestionnaireResponse)
* source[x] MS
* source[x].reference 1.. MS N
* source[x].reference ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* source[x].reference ^extension[=].valueCode = #4.0.0
* policy 1.. MS
* policy.uri 1.. MS N
* policy.uri ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* policy.uri ^extension[=].valueCode = #4.0.0
* policyRule MS
* policyRule.extension ^slicing.discriminator.type = #value
* policyRule.extension ^slicing.discriminator.path = "url"
* policyRule.extension ^slicing.rules = #open
* policyRule.extension contains ConsentManagementXacml named xacml 0..1 MS
* provision MS
* provision.type 1.. MS
* provision.period 1.. MS
* provision.period.start 1.. MS
* provision.period.end MS
* provision.period.end ^min = 0
* provision.action ..0
* provision.code ..0
* provision.provision MS
* provision.provision.type 1.. MS
* provision.provision.period 1.. MS
* provision.provision.period.start 1.. MS
* provision.provision.period.end MS
* provision.provision.period.end ^min = 0
* provision.provision.action ..0
* provision.provision.code 1.. MS
* provision.provision.code from MiiConsentPolicyValueSet (required)
* provision.provision.code.coding 1.. MS
* provision.provision.code.coding.system 1.. MS
* provision.provision.code.coding.code 1.. MS
* provision.provision.provision ..0
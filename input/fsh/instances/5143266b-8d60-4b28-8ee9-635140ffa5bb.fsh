Instance: 5143266b-8d60-4b28-8ee9-635140ffa5bb
InstanceOf: Consent
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"
* meta.lastUpdated = "2025-12-04T15:34:40.067+01:00"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference.reference = "ResearchStudy/c946ae17-e3e6-4178-b5ea-15f95aaeeeb4"
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* status = #active
* scope = $consentscope#research
* category[0] = $loinc#57016-8
* category[+] = $ResultType#consent-status
* category[+] = $mii-cs-consent-consent_category#2.16.840.1.113883.3.1937.777.24.2.184
* patient.reference = "Patient/531cef77-2a30-4283-944d-affaf9ae234e"
* dateTime = "2025-12-04T15:34:40+01:00"
* organization.display = "MII"
* policy.uri = "2.16.840.1.113883.3.1937.777.24.2.184"
* provision.type = #deny
* provision.period.start = "2022-01-31T23:00:00+01:00"
* provision.period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[0].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.2 "IDAT erheben"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.12 "KKDAT 5J retrospektiv speichern verarbeiten"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.22 "BIOMAT wissenschaftlich nutzen"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.13 "KKDAT 5J retrospektiv wissenschaftlich nutzen"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.23 "BIOMAT Analysedaten zusammenfuehren Dritte"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.31 "Rekontaktierung Zusatzbefund"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.17 "KKDAT 5J prospektiv wissenschaftlich nutzen"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.20 "BIOMAT lagern verarbeiten"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.11 "KKDAT 5J retrospektiv uebertragen"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.38 "KKDAT 5J retrospektiv uebertragen KVNR"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT erheben"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.16 "KKDAT 5J prospektiv speichern verarbeiten"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT wissenschaftlich nutzen"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.27 "Rekontaktierung Verknüpfung Datenbanken"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.29 "Rekontaktierung weitere Studien"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.5 "IDAT bereitstellen "
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.21 "BIOMAT Eigentum übertragen"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.3 "IDAT speichern, verarbeiten"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT speichern, verarbeiten"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.19 "BIOMAT erheben"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.37 "Rekontaktierung Ergebnisse erheblicher Bedeutung"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.39 "KKDAT 5J prospektiv uebertragen KVNR"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.25 "BIOMAT Zusatzmengen entnehmen"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.28 "Rekontaktierung weitere Erhebung"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.4 "IDAT zusammenfuehren Dritte"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.9 "MDAT zusammenfuehren Dritte"
* provision.provision[+].type = #deny
* provision.provision[=].period.start = "2022-01-31T23:00:00+01:00"
* provision.provision[=].period.end = "3000-01-01T00:00:00+01:00"
* provision.provision[=].code = MII_CS_Consent_Policy#2.16.840.1.113883.3.1937.777.24.5.3.15 "KKDAT 5J prospektiv uebertragen"
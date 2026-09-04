ValueSet: MII_VS_Consent_SignatureTypes
Id: mii-vs-consent-signaturetypes
Title: "MII Consent: Signature Types"
Description: "Dieses ValueSet enthält die zulässigen Werte für den Signaturtyp im Kontext des MI-I Consent."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension.valuePeriod.start = "2022-02-11T10:27:00+01:00"
* ^url = "https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-signaturetypes"
* ^version = "2027.0.0-ballot.rc1"
* ^status = #active
* ^experimental = false
* ^date = "2025-12-03"
* ^publisher = "MII Task Force Consent Umsetzung"
* ^contact.name = "MII Task Force Consent Umsetzung"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "office@medizininformatik-initiative.de"
* ^immutable = false
* SignatureTypeCodes#1.2.840.10065.1.12.1.7 "Consent Signature"
* SignatureTypeCodes#1.2.840.10065.1.12.1.11 "Consent Witness Signature"
* SignatureTypeCodes#1.2.840.10065.1.12.1.5 "Verification Signature"
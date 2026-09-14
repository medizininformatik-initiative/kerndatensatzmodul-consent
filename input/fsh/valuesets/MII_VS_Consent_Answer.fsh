ValueSet: MII_VS_Consent_Answer
Id: 2.16.840.1.113883.3.1937.777.24.11.30--20210323234509
Title: "MII Consent: Answer ValueSet"
Description: "This ValueSet contains the possible answers to the questions of the MII Consent."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension.valuePeriod.start = "2021-03-23T23:45:09+01:00"
* ^url = "https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-answer"
* ^identifier.use = #official
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.24.11.30"
* ^version = "2027.0.0-ballot.rc1"
* ^status = #active
* ^experimental = false
* ^publisher = "MII Task Force Consent Umsetzung"
* ^contact.name = "MII Task Force Consent Umsetzung"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "office@medizininformatik-initiative.de"
* ^immutable = false
// Fix Kategorie 4: CodeSystem.valueSet deklariert dieses VS als implizites
// All-System-VS; der Compose darf dann nur ein nacktes include des Systems
// enthalten (CODESYSTEM_CS_VS_INCLUDE_DETAILS). Expansion unveraendert (3 Codes);
// die Designations traegt das CodeSystem selbst.
* include codes from system urn:oid:2.16.840.1.113883.3.1937.777.24.5.2

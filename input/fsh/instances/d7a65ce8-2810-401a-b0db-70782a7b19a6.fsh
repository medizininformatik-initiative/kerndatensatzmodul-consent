// Synthetisches Beispiel — QA-Fix der frischen Migration 2026-09-04 (run.log 7.1):
// die DomainReference-Extension der Consent-Beispiele referenziert diese Studie,
// das Release-Paket liefert sie nicht. Minimal-Beispiel konform zu
// http://fhir.de/ConsentManagement/StructureDefinition/Domain/ResearchStudy.
Instance: d7a65ce8-2810-401a-b0db-70782a7b19a6
InstanceOf: ResearchStudy
Usage: #example
Title: "Beispiel Einwilligungsdomäne (synthetische Studie)"
Description: "Synthetische Consent-Domäne (ResearchStudy) als Referenzziel der DomainReference-Extension der Quell-Beispiele."
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Domain/ResearchStudy"
* extension[0].url = "http://fhir.de/ConsentManagement/StructureDefinition/ContextIdentifier"
* extension[=].extension[0].url = "resourceType"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/resource-types#Patient "Patient"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0203#ANON "Anonymous identifier"
* extension[=].extension[+].url = "system"
* extension[=].extension[=].valueUri = "https://example.org/fhir/sid/mii-consent-pseudonym"
* identifier.system = "https://example.org/fhir/sid/mii-consent-domain"
* identifier.value = "MII-CONSENT-TESTDOMAIN-0001"
* title = "Synthetische MII-Einwilligungsstudie (Beispiel)"
* description = "Synthetische Einwilligungsdomäne, ausschließlich als Referenzziel der Beispiel-Ressourcen dieses Leitfadens."
* status = #active

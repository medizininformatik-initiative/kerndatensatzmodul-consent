// Synthetisches Beispiel — QA-Fix der frischen Migration 2026-09-04 (run.log 7.1):
// das Quell-Beispiel 5143266b referenziert diesen Patienten literal, das Release-Paket
// liefert ihn nicht (10 "nicht auffindbar"-Fehler). Pseudonymes Minimal-Beispiel
// konform zu http://fhir.de/ConsentManagement/StructureDefinition/Patient —
// KEINE realen Daten, nur ein typisiertes synthetisches Pseudonym (ANON).
Instance: 531cef77-2a30-4283-944d-affaf9ae234e
InstanceOf: Patient
Usage: #example
Title: "Beispiel Patient (pseudonym, synthetisch)"
Description: "Synthetischer, pseudonymer Patient als Referenzziel der Quell-Beispiele (Consent.patient, DocumentReference.subject, Provenance.signature.who)."
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ANON "Anonymous identifier"
* identifier.system = "https://example.org/fhir/sid/mii-consent-pseudonym"
* identifier.value = "MII-CONSENT-TESTPSN-0002"

// Synthetisches Beispiel — QA-Fix der frischen Migration 2026-09-04 (run.log 7.1):
// die 6 Quell-Beispiele referenzieren diesen Patienten literal, das Release-Paket
// liefert ihn nicht (10 "nicht auffindbar"-Fehler). Pseudonymes Minimal-Beispiel
// konform zu http://fhir.de/ConsentManagement/StructureDefinition/Patient —
// KEINE realen Daten, nur ein typisiertes synthetisches Pseudonym (ANON).
Instance: 9b4a702d-162c-428a-8c5d-8b98af21b693
InstanceOf: Patient
Usage: #example
Title: "Beispiel Patient (pseudonym, synthetisch)"
Description: "Synthetischer, pseudonymer Patient als Referenzziel der Quell-Beispiele (Consent.patient, DocumentReference.subject, Provenance.signature.who)."
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ANON "Anonymous identifier"
* identifier.system = "https://example.org/fhir/sid/mii-consent-pseudonym"
* identifier.value = "MII-CONSENT-TESTPSN-0001"

Instance: 55219d12-6245-4de4-8b50-ddf6f16a789b
InstanceOf: MII_PR_Consent_Provenance
Usage: #example
* meta.lastUpdated = "2021-02-08T14:21:07.5320994+00:00"
* target.reference = "Consent/34150a23-b1c8-404f-874f-e042a30435d2"
// fhir_comments (source XML comment on target.fhir_comments): "\n\t\tDiese Provenance gilt für den ausgefüllten Fragebogen (QuestionnaireResponse).\n\n\t\tSofern in der jeweiligen konkreten Implementierung keine Einwände bestehen\n\t\t(z.B. Datenschutz- oder anderes Recht) können auch aus dem QuestionnaireResponse\n\t\tabgeleitete Consent-Ressourcen hier als target referenziert werden.\n\t\tDies würde bedeuten, dass alle Signaturen (signature-Elemeent) auch für\n\t\tdiese Consent-Ressourcen gelten.\n\t"
* recorded = "2020-12-11T09:39:07+00:00"
// fhir_comments (source XML comment on recorded.fhir_comments): " Zeitpunkt der Erfassung der Provenance (bzw. hier auch der bezogenen Ressourcen) "
* agent.type = $provenance-participant-type#assembler
* agent.who.display = "Snakeoil Soft Consent Manager 2021"
// fhir_comments (source XML comment on agent.fhir_comments): " Software, die zur Verarbeitung verwendet wurde "
* entity.role = #source
* entity.what.reference = "DocumentReference/8a3d1799-2463-405e-b49c-6a16c8692b01"
// fhir_comments (source XML comment on entity.fhir_comments): " Verweis auf die originale Informationsquelle, z.B. (gescanntes) Papierdokument "
* signature[0].type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.7 "Consent Signature"
* signature[=].when = "2020-12-11T09:39:07+00:00"
* signature[=].who.reference = "Patient/9b4a702d-162c-428a-8c5d-8b98af21b693"
* signature[=].data = "RGllcyBpc3QgZWluIFBsYXR6aGFsdGVyIGbDvHIgZWluZSBnZXNjYW5udCB1bmQgQmFzZTY0LWVuY29kaWVydGUgVW50ZXJzY2hyaWZ0Lg=="
// fhir_comments (source XML comment on signature[=].data.fhir_comments): " [base64-codiert, z.B. Scan der Unterschrift] "
// fhir_comments (source XML comment on signature[=].fhir_comments): " Unterschrift des Patienten "
* signature[+].type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.11 "Consent Witness Signature"
* signature[=].when = "2020-12-11T09:39:07+00:00"
* signature[=].who.display = "Dr. F. Müller"
* signature[=].onBehalfOf.display = "Krankenhaus Musterstadt"
* signature[=].data = "QUcgRVdFIEZISVIgcm9ja3M="
// fhir_comments (source XML comment on signature[=].data.fhir_comments): " [base64-codiert, z.B. Scan der Unterschrift] "
// fhir_comments (source XML comment on signature[=].fhir_comments): " Unterschrift des aufklärenden Arztes "
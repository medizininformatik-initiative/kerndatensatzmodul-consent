Instance: 8a3d1799-2463-405e-b49c-6a16c8692b01
InstanceOf: DocumentReference
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference"
* meta.lastUpdated = "2020-12-11T09:09:07.5320994+00:00"
* status = #current
// fhir_comments (source XML comment on status.fhir_comments): " FHIR will es "
* subject.reference = "Patient/9b4a702d-162c-428a-8c5d-8b98af21b693"
// fhir_comments (source XML comment on subject.reference.fhir_comments): " literale Referenz auf den Patienten "
// fhir_comments (source XML comment on subject.fhir_comments): " Das vom Patienten ausgefüllte Original-(Papier-)Dokument; in diesem Beispiel ist kein valides base64 enthalten "
* content.attachment.contentType = #application/pdf
* content.attachment.data = "YmFzZTY0Q29kaWVydGVzUERGRGVzVW50ZXJzY2hyaWViZW5lblBhdGllbnRlbkVpbndpbGxpZ3VuZ3Nib2dlbnM="
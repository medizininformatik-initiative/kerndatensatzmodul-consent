// Issue #114: `Consent.policy.uri` trug in diesem Modul urspruenglich gar kein
// Binding. Seit dem Eltern-Paket de.einwilligungsmanagement 2.0.4 erbt es ein
// extensible Binding auf LegalBasisDataProcessing (Rechtsgrundlage der
// Verarbeitung). Dieses ValueSet ist der im Issue vorgeschlagene ALTERNATIVE
// Ansatz: die Versionen und Zusatzmodule des MII Broad Consent, mit denen die
// Beispiele dieses Moduls policy.uri heute tatsaechlich befuellen.
//
// Der Code .184 ("MII Broad Consent") ist BEWUSST ENTHALTEN — das Issue stellt
// ihn zur Wahl. Er wird von einem Beispiel dieses Moduls als policy.uri benutzt,
// um den Broad Consent allgemein zu kennzeichnen; ein Ausschluss wuerde dieses
// Beispiel ungueltig machen.
ValueSet: MII_VS_Consent_PolicyUri
Id: mii-vs-consent-policyuri
Title: "MII Consent: Policy URI"
Description: "Versionen und Zusatzmodule des MII Broad Consent, die als Consent.policy.uri verwendet werden."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-policyuri"
* ^version = "2027.0.0-ballot"
* ^status = #active
* ^experimental = false
* ^publisher = "MII Task Force Consent Umsetzung"
* ^contact.name = "MII Task Force Consent Umsetzung"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "office@medizininformatik-initiative.de"
* include codes from system MIIConsentVersionModuleCodeSystem

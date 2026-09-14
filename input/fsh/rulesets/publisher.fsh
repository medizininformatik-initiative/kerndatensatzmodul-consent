// ─────────────────────────────────────────────────────────────────────────────
// Ported from kerndatensatz-basis (main): input/fsh/rulesets/publisher.fsh
//
// The publisher of every MII KDS artifact is the MII itself — module-independent,
// so nothing here is parameterized. `Publisher` uses caret paths (Profile,
// Extension, Logical, ValueSet, CodeSystem); `SP_Publisher` uses instance paths
// (basis applies it to SearchParameter instances).
// ─────────────────────────────────────────────────────────────────────────────

RuleSet: Publisher
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de"

RuleSet: SP_Publisher
* publisher = "Medizininformatik Initiative"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.medizininformatik-initiative.de"

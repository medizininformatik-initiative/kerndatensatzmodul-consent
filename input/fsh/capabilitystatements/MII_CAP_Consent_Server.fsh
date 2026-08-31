// MIGRATION SUGGESTION (mii-ig-migration spec 9b): the source module 2026.0.0
// declares NO CapabilityStatement. This one is DERIVED from the module's own
// profiles and SearchParameters (every element traces to a package artifact).
// The module team confirms, amends or deletes it at Gate A. TODO:REVIEW
Instance: mii-cap-consent-server
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-consent/CapabilityStatement/mii-cap-consent-server"
* name = "MII_CAP_Consent_Server"
* title = "MII KDS Modul Consent — CapabilityStatement (Migrationsvorschlag)"
* status = #draft
* experimental = true
* date = "2026-08-31"
* description = "MIGRATION-GENERATED PROPOSAL (not part of the published 2026.0.0 release): server capabilities derived from the module's profiles and search parameters during the migration onto the MII KDS module template. The module team confirms, amends or deletes this artefact at Gate A."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[1] = #xml
* rest.mode = #server
* rest.resource[0].type = #Consent
* rest.resource[0].supportedProfile = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"
* rest.resource[0].searchParam[0].name = "mii-policy-uri"
* rest.resource[0].searchParam[0].definition = "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-policyuri"
* rest.resource[0].searchParam[0].type = #uri
* rest.resource[0].searchParam[1].name = "mii-provision-provision-code"
* rest.resource[0].searchParam[1].definition = "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisioncode"
* rest.resource[0].searchParam[1].type = #token
* rest.resource[0].searchParam[2].name = "mii-provision-provision-code-period"
* rest.resource[0].searchParam[2].definition = "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisioncodeperiod"
* rest.resource[0].searchParam[2].type = #composite
* rest.resource[0].searchParam[3].name = "mii-provision-provision-code-type"
* rest.resource[0].searchParam[3].definition = "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisioncodetype"
* rest.resource[0].searchParam[3].type = #composite
* rest.resource[0].searchParam[4].name = "mii-provision-provision-period"
* rest.resource[0].searchParam[4].definition = "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisionperiod"
* rest.resource[0].searchParam[4].type = #date
* rest.resource[0].searchParam[5].name = "mii-provision-provision-type"
* rest.resource[0].searchParam[5].definition = "https://www.medizininformatik-initiative.de/fhir/modul-consent/SearchParameter/mii-sp-consent-provisiontype"
* rest.resource[0].searchParam[5].type = #token
* rest.resource[1].type = #Provenance
* rest.resource[1].supportedProfile = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-provenance"
* rest.resource[2].type = #DocumentReference
* rest.resource[2].supportedProfile = "https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference"

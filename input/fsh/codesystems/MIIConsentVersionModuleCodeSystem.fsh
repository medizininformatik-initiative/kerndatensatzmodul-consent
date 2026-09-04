CodeSystem: MIIConsentVersionModuleCodeSystem
Id: mii-cs-consent-version-modules
Title: "MII Consent Version and Modules CodeSystem"
Description: "Dieses Code System enthält die OIDs der verschiedenen Versionen und Zusatzmodule des Broad Consent der Medizininformatik Initiative."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^language = #de-DE
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension.valuePeriod.start = "2025-12-18T15:02:43+01:00"
* ^identifier.use = #official
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.24.5.27"
* ^version = "2027.0.0-ballot.rc1"
* ^status = #draft
* ^experimental = false
* ^publisher = "Medizininformatik-Initiative"
* ^contact.name = "Medizininformatik-Initiative"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.medizininformatik-initiative.de"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "office@medizininformatik-initiative.de"
* ^copyright = "\n            © 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin \n            \n                \n                    CC BY 4.0\n                \n                 \n            \n            Diese Arbeit ist lizensiert unter der [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/). \n            Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die FHIR-Basis-Spezifikation. \n            Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber (Publisher). \n        "
* ^caseSensitive = false
* ^content = #complete
* ^count = 21
* ^property[0].code = #status
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* ^property[=].description = "A code that indicates the status of the concept. Values found in this version of the code system are: draft"
* ^property[=].type = #code
* ^property[+].code = #parent
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].description = "The concept identified in this property is a parent of the concept on which it is a property. The property type will be 'code'. The meaning of 'parent' is defined by the hierarchyMeaning attribute"
* ^property[=].type = #code
* ^property[+].code = #child
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#child"
* ^property[=].description = "The concept identified in this property is a child of the concept on which it is a property. The property type will be 'code'. The meaning of 'child' is defined by the hierarchyMeaning attribute"
* ^property[=].type = #code
* #2.16.840.1.113883.3.1937.777.24.2.184 "MII Broad Consent" "\n                        Dieser Code (OID) kennzeichnet den Broad Consent der Medizininformatik Initiative (MII)."
* #2.16.840.1.113883.3.1937.777.24.2.184 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.184 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.184 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.184 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.184 ^designation.value = "MII Broad Consent"
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.1790
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.4053
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.2718
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.2719
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.1791
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.2720
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.2721
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.2079
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.4054
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.4055
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.2722
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.2723
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.3542
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.3543
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.184 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.3544
* #2.16.840.1.113883.3.1937.777.24.2.1790 "Version 1.6d des MII Broad Consent" "\n                        Version 1.6d des MII Broad Consent"
* #2.16.840.1.113883.3.1937.777.24.2.1790 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.1790 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.1790 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.1790 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.1790 ^designation.value = "Version 1.6d des MII Broad Consent"
* #2.16.840.1.113883.3.1937.777.24.2.1790 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.1790 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.1790 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.1790 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.4053 "Version 1.6d Ablehnung"
* #2.16.840.1.113883.3.1937.777.24.2.4053 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.4053 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.4053 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4053 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4053 ^designation.value = "Version 1.6d Ablehnung"
* #2.16.840.1.113883.3.1937.777.24.2.4053 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.4053 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.4053 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.4053 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.2718 "Version 1.6d Komplettwiderruf"
* #2.16.840.1.113883.3.1937.777.24.2.2718 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.2718 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.2718 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2718 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2718 ^designation.value = "Version 1.6d Komplettwiderruf"
* #2.16.840.1.113883.3.1937.777.24.2.2718 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.2718 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.2718 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.2718 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.2719 "Version 1.6d Teilwiderruf"
* #2.16.840.1.113883.3.1937.777.24.2.2719 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.2719 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.2719 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2719 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2719 ^designation.value = "Version 1.6d Teilwiderruf"
* #2.16.840.1.113883.3.1937.777.24.2.2719 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.2719 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.2719 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.2719 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.1791 "Version 1.6f des MII Broad Consent"
* #2.16.840.1.113883.3.1937.777.24.2.1791 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.1791 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.1791 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.1791 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.1791 ^designation.value = "Version 1.6f des MII Broad Consent"
* #2.16.840.1.113883.3.1937.777.24.2.1791 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.1791 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.1791 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.1791 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.2720 "Version 1.6f Komplettwiderruf"
* #2.16.840.1.113883.3.1937.777.24.2.2720 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.2720 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.2720 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2720 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2720 ^designation.value = "Version 1.6f Komplettwiderruf"
* #2.16.840.1.113883.3.1937.777.24.2.2720 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.2720 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.2720 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.2720 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.2721 "Version 1.6f Teilwiderruf"
* #2.16.840.1.113883.3.1937.777.24.2.2721 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.2721 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.2721 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2721 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2721 ^designation.value = "Version 1.6f Teilwiderruf"
* #2.16.840.1.113883.3.1937.777.24.2.2721 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.2721 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.2721 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.2721 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.2079 "Version 1.7.2 des MII Broad Consent"
* #2.16.840.1.113883.3.1937.777.24.2.2079 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.2079 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.2079 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2079 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2079 ^designation.value = "Version 1.7.2 des MII Broad Consent"
* #2.16.840.1.113883.3.1937.777.24.2.2079 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.2079 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.2079 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.2079 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.4054 "Version 1.7.2 Ablehnung"
* #2.16.840.1.113883.3.1937.777.24.2.4054 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.4054 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.4054 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4054 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4054 ^designation.value = "Version 1.7.2 Ablehnung"
* #2.16.840.1.113883.3.1937.777.24.2.4054 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.4054 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.4054 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.4054 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.4055 "Version 1.7.2 Vertretende"
* #2.16.840.1.113883.3.1937.777.24.2.4055 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.4055 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.4055 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4055 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4055 ^designation.value = "Version 1.7.2 Vertretende"
* #2.16.840.1.113883.3.1937.777.24.2.4055 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.4055 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.4055 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.4055 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.2722 "Version 1.7.2 Komplettwiderruf"
* #2.16.840.1.113883.3.1937.777.24.2.2722 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.2722 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.2722 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2722 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2722 ^designation.value = "Version 1.7.2 Komplettwiderruf"
* #2.16.840.1.113883.3.1937.777.24.2.2722 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.2722 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.2722 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.2722 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.2723 "Version 1.7.2 Teilwiderruf"
* #2.16.840.1.113883.3.1937.777.24.2.2723 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.2723 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.2723 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2723 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.2723 ^designation.value = "Version 1.7.2 Teilwiderruf"
* #2.16.840.1.113883.3.1937.777.24.2.2723 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.2723 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.2723 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.2723 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.3542 "Version 1.7.2 Eltern und Sorgeberechtigte für Minderjährige v1.1"
* #2.16.840.1.113883.3.1937.777.24.2.3542 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.3542 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.3542 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.3542 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.3542 ^designation.value = "Version 1.7.2 Eltern und Sorgeberechtigte für Minderjährige v1.1"
* #2.16.840.1.113883.3.1937.777.24.2.3542 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.3542 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.3542 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.3542 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.3543 "Version 1.7.2 7-11 Minderjährige v1.1"
* #2.16.840.1.113883.3.1937.777.24.2.3543 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.3543 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.3543 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.3543 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.3543 ^designation.value = "Version 1.7.2 7-11 Minderjährige v1.1"
* #2.16.840.1.113883.3.1937.777.24.2.3543 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.3543 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.3543 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.3543 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.3544 "Version 1.7.2 12-17 Minderjährige v1.1"
* #2.16.840.1.113883.3.1937.777.24.2.3544 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.3544 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.3544 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.3544 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.3544 ^designation.value = "Version 1.7.2 12-17 Minderjährige v1.1"
* #2.16.840.1.113883.3.1937.777.24.2.3544 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.3544 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.3544 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.3544 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.184
* #2.16.840.1.113883.3.1937.777.24.2.4052 "Zusatzmodule des MII Broad Consent" "\n                        Dieser Code (OID) gruppiert die Zusatzmodule des MII Broad Consent."
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^designation.value = "Zusatzmodule des MII Broad Consent"
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.4031
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.4036
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.4037
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^property[+].code = #child
* #2.16.840.1.113883.3.1937.777.24.2.4052 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.4048
* #2.16.840.1.113883.3.1937.777.24.2.4031 "Zusatzmodul ACRIBiS (Z2)"
* #2.16.840.1.113883.3.1937.777.24.2.4031 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.4031 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.4031 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4031 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4031 ^designation.value = "Zusatzmodul ACRIBiS (Z2)"
* #2.16.840.1.113883.3.1937.777.24.2.4031 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.4031 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.4031 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.4031 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.4052
* #2.16.840.1.113883.3.1937.777.24.2.4036 "Zusatzmodul Patientenbefragung (Z3)"
* #2.16.840.1.113883.3.1937.777.24.2.4036 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.4036 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.4036 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4036 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4036 ^designation.value = "Zusatzmodul Patientenbefragung (Z3)"
* #2.16.840.1.113883.3.1937.777.24.2.4036 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.4036 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.4036 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.4036 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.4052
* #2.16.840.1.113883.3.1937.777.24.2.4037 "Zusatzmodul Fachnetzwerk Infektion - SNID (Z4)"
* #2.16.840.1.113883.3.1937.777.24.2.4037 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.4037 ^designation.use.system = "http://snomed.info/sct"
* #2.16.840.1.113883.3.1937.777.24.2.4037 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4037 ^designation.use.display = "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4037 ^designation.value = "Zusatzmodul Fachnetzwerk Infektion - SNID (Z4)"
* #2.16.840.1.113883.3.1937.777.24.2.4037 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.4037 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.4037 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.4037 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.4052
* #2.16.840.1.113883.3.1937.777.24.2.4048 "Zusatzmodul Deutsche Zentrum für Psychische Gesundheit - DZPG (Z5)"
* #2.16.840.1.113883.3.1937.777.24.2.4048 ^designation.language = #de-DE
* #2.16.840.1.113883.3.1937.777.24.2.4048 ^designation.use = $sct#900000000000003001 "Fully specified name"
* #2.16.840.1.113883.3.1937.777.24.2.4048 ^designation.value = "Zusatzmodul Deutsche Zentrum für Psychische Gesundheit - DZPG (Z5)"
* #2.16.840.1.113883.3.1937.777.24.2.4048 ^property[0].code = #status
* #2.16.840.1.113883.3.1937.777.24.2.4048 ^property[=].valueCode = #draft
* #2.16.840.1.113883.3.1937.777.24.2.4048 ^property[+].code = #parent
* #2.16.840.1.113883.3.1937.777.24.2.4048 ^property[=].valueCode = #2.16.840.1.113883.3.1937.777.24.2.4052
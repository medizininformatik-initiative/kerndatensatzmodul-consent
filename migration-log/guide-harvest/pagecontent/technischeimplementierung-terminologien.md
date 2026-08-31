<!-- Harvested from https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/Terminologien?version=2026.0.0 on 2026-08-31 by scripts/guide-harvest.sh (spec 5.1d). -->
<!-- Source of record: the Simplifier-rendered guide. Links and images are still absolute to simplifier.net and the page is not yet mapped onto the template page set (spec 9). TODO:REVIEW -->

## Terminologien

### ValueSets

This value set includes codes from the following code systems:Import all codes from CodeSystem `[MII CS Consent Policy](https://simplifier.net/resolve?scope=project:MedizininformatikInitiative-ModulConsent&filepath=terminologie/codesystems/CodeSystem-MiiConsentPolicyCodeSystem.xml)`

Erweiterungen des PolicyValueSets im ART-DECOR werden zeitnah durch die TFCU in diesem IG eingepflegt. Eine erneute Ballotierung ist nicht erforderlich.

### mii-vs-consent-signaturetypes

Gemäß HL7-D AG Einwilligungsmanagement-Empfehlung

[https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-signaturetypes](https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-signaturetypes)

| Art der Unterschrift | System | Code | Display |

| --- | --- | --- | --- |

| Unterschrift der einwilligenden Person | urn:iso-astm:E1762-95:2013 | 1.2.840.10065.1.12.1.7 | Consent Signature |

| Unterschrift der (gesetzlich) vertretenden Person | urn:iso-astm:E1762-95:2013 | 1.2.840.10065.1.12.1.11 | Consent Witness Signature |

| Unterschrift der aufklärenden Person | urn:iso-astm:E1762-95:2013 | 1.2.840.10065.1.12.1.5 | Verification Signature |

### mii-vs-consent-answer

This value set includes codes from the following code systems:The following codes from system: `[MII\_CS\_Consent\_Answer](https://simplifier.net/resolve?scope=project:MedizininformatikInitiative-ModulConsent&filepath=terminologie/codesystems/CodeSystem-MiiConsentAnswerCodeSystem.xml)`CodeDisplaySynonym (de-DE)Synonym (en-US)[2.16.840.1.113883.3.1937.777.24.5.2.3](https://simplifier.net/resolve?scope=project:MedizininformatikInitiative-ModulConsent&filepath=terminologie/codesystems/CodeSystem-MiiConsentAnswerCodeSystem.xml)unbekanntunbekanntunknown[2.16.840.1.113883.3.1937.777.24.5.2.2](https://simplifier.net/resolve?scope=project:MedizininformatikInitiative-ModulConsent&filepath=terminologie/codesystems/CodeSystem-MiiConsentAnswerCodeSystem.xml)nicht gültignicht gültignot valid[2.16.840.1.113883.3.1937.777.24.5.2.1](https://simplifier.net/resolve?scope=project:MedizininformatikInitiative-ModulConsent&filepath=terminologie/codesystems/CodeSystem-MiiConsentAnswerCodeSystem.xml)gültiggültigvalid

Dieses ValueSet findet ausschließlich im Kontext von Questionnaires Verwendung.

## CodeSysteme

### MII CS Consent Version and Modules

Dieses Code System `urn:oid:2.16.840.1.113883.3.1937.777.24.5.27` enthält die folgenden Codes: PropertiesThis code system defines the following properties for its concepts:CodeURITypeDescriptionstatushttp://hl7.org/fhir/concept-properties#statusCodeA code that indicates the status of the concept. Values found in this version of the code system are: draftparenthttp://hl7.org/fhir/concept-properties#parentCodeThe concept identified in this property is a parent of the concept on which it is a property. The property type will be 'code'. The meaning of 'parent' is defined by the hierarchyMeaning attributechildhttp://hl7.org/fhir/concept-properties#childCodeThe concept identified in this property is a child of the concept on which it is a property. The property type will be 'code'. The meaning of 'child' is defined by the hierarchyMeaning attributeConceptsThis code system `https://www.medizininformatik-initiative.de/fhir/modul-consent/CodeSystem/mii-cs-consent-version-modules` defines the following codes:CodeDisplayDefinitionstatuschildparent2.16.840.1.113883.3.1937.777.24.2.184MII Broad Consent Dieser Code (OID) kennzeichnet den Broad Consent der Medizininformatik Initiative (MII).draft2.16.840.1.113883.3.1937.777.24.2.17902.16.840.1.113883.3.1937.777.24.2.1790Version 1.6d des MII Broad Consent Version 1.6d des MII Broad Consentdraft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.4053Version 1.6d Ablehnungdraft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.2718Version 1.6d Komplettwiderrufdraft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.2719Version 1.6d Teilwiderrufdraft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.1791Version 1.6f des MII Broad Consentdraft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.2720Version 1.6f Komplettwiderrufdraft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.2721Version 1.6f Teilwiderrufdraft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.2079Version 1.7.2 des MII Broad Consentdraft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.4054Version 1.7.2 Ablehnungdraft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.2722Version 1.7.2 Komplettwiderrufdraft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.2723Version 1.7.2 Teilwiderrufdraft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.3542Version 1.7.2 Eltern und Sorgeberechtigte für Minderjährige v1.1draft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.3543Version 1.7.2 7-11 Minderjährige v1.1draft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.3544Version 1.7.2 12-17 Minderjährige v1.1draft2.16.840.1.113883.3.1937.777.24.2.1842.16.840.1.113883.3.1937.777.24.2.4052Zusatzmodule des MII Broad Consent Dieser Code (OID) gruppiert die Zusatzmodule des MII Broad Consent.draft2.16.840.1.113883.3.1937.777.24.2.40312.16.840.1.113883.3.1937.777.24.2.4031Zusatzmodul ACRIBiS (Z2)draft2.16.840.1.113883.3.1937.777.24.2.40522.16.840.1.113883.3.1937.777.24.2.4036Zusatzmodul Patientenbefragung (Z3)draft2.16.840.1.113883.3.1937.777.24.2.40522.16.840.1.113883.3.1937.777.24.2.4037Zusatzmodul Fachnetzwerk Infektion - SNID (Z4)draft2.16.840.1.113883.3.1937.777.24.2.40522.16.840.1.113883.3.1937.777.24.2.4048Zusatzmodul Deutsche Zentrum für Psychische Gesundheit - DZPG (Z5)draft2.16.840.1.113883.3.1937.777.24.2.4052Additional Language DisplaysCodeDeutsch (Deutschland) (German (Germany), de)2.16.840.1.113883.3.1937.777.24.2.184MII Broad Consent2.16.840.1.113883.3.1937.777.24.2.1790Version 1.6d des MII Broad Consent2.16.840.1.113883.3.1937.777.24.2.4053Version 1.6d Ablehnung2.16.840.1.113883.3.1937.777.24.2.2718Version 1.6d Komplettwiderruf2.16.840.1.113883.3.1937.777.24.2.2719Version 1.6d Teilwiderruf2.16.840.1.113883.3.1937.777.24.2.1791Version 1.6f des MII Broad Consent2.16.840.1.113883.3.1937.777.24.2.2720Version 1.6f Komplettwiderruf2.16.840.1.113883.3.1937.777.24.2.2721Version 1.6f Teilwiderruf2.16.840.1.113883.3.1937.777.24.2.2079Version 1.7.2 des MII Broad Consent2.16.840.1.113883.3.1937.777.24.2.4054Version 1.7.2 Ablehnung2.16.840.1.113883.3.1937.777.24.2.2722Version 1.7.2 Komplettwiderruf2.16.840.1.113883.3.1937.777.24.2.2723Version 1.7.2 Teilwiderruf2.16.840.1.113883.3.1937.777.24.2.3542Version 1.7.2 Eltern und Sorgeberechtigte für Minderjährige v1.12.16.840.1.113883.3.1937.777.24.2.3543Version 1.7.2 7-11 Minderjährige v1.12.16.840.1.113883.3.1937.777.24.2.3544Version 1.7.2 12-17 Minderjährige v1.12.16.840.1.113883.3.1937.777.24.2.4052Zusatzmodule des MII Broad Consent2.16.840.1.113883.3.1937.777.24.2.4031Zusatzmodul ACRIBiS (Z2)2.16.840.1.113883.3.1937.777.24.2.4036Zusatzmodul Patientenbefragung (Z3)2.16.840.1.113883.3.1937.777.24.2.4037Zusatzmodul Fachnetzwerk Infektion - SNID (Z4)2.16.840.1.113883.3.1937.777.24.2.4048Zusatzmodul Deutsche Zentrum für Psychische Gesundheit - DZPG (Z5)

### MII\_CS\_Consent\_Answer

ConceptsThis code system `urn:oid:2.16.840.1.113883.3.1937.777.24.5.2` defines the following codes:CodeDisplay2.16.840.1.113883.3.1937.777.24.5.2.3unbekannt2.16.840.1.113883.3.1937.777.24.5.2.2nicht gültig2.16.840.1.113883.3.1937.777.24.5.2.1gültigAdditional Language DisplaysCodeDeutsch (Deutschland) (German (Germany), de)English (United States) (English (United States), en)2.16.840.1.113883.3.1937.777.24.5.2.3unbekanntunknown2.16.840.1.113883.3.1937.777.24.5.2.2nicht gültignot valid2.16.840.1.113883.3.1937.777.24.5.2.1gültigvalid

### MII CS Consent Policy

**Hinweis**: Das Konzept der **Verschachtelte Provision-Elemente** im MII-Kontext arbeite mit zwei Level. Das übergeordnete Provision-Element, die Level1-Provision, repräsentiert eine Frage in der Einwilligung und legt über den Provision.Type=DENY (Out-In-Modell) fest, dass alles verboten ist, außer es ist in Form von untergeordneten Provision-Elementen, die Level2-Provision, explizit erlaubt. D.h. für die Interpretation, ob ein Erlaubnis für eine bestimmte Nutzung (erheben, speichern, nutzen) von spetifischen Daten (IDAT, MADT, BIOMAT, ...) vorliegt, müssen die Elemete der Level2-Provisions ausgewertet werden.

Teilwiderrufe können ebenfalls auf den Level2-Provisions Änderungen hervor rufen. Z.B. kann die Erhebung untersagt werden, aber die Speicherung und Nutzung kann davon unbetroffen bleiben ("MDAT erheben"="deny", aber "MDAT wissenschaftlich nutzen EU DSGVO NIVEAU"="permit").

**Achtung: Für die Nutzung in Level2-Provisions sind ausschließlich Policy-Codes vorgesehen. (Siehe nachstehende Tabelle, Spalte Lvl mit Wert 2)**

Policies, die den Status "deprecated/inactive" haben, sollen zukünftig nicht mehr neu erzeugten Consent-Ressourcen hinzugefügt werden. Diese Policies sollten zukünftig auch nicht mehr ausgewertet werden (Enforcement).

Dieses Code System `urn:oid:2.16.840.1.113883.3.1937.777.24.5.3` enthält die folgenden Codes:

| Lvl | Art | Display | Code | Gültigkeit | Status |

| --- | --- | --- | --- | --- | --- |

| 1 | Modul | PATDAT erheben, speichern, nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.1 |  |  |

| 2 | Policy | IDAT erheben | 2.16.840.1.113883.3.1937.777.24.5.3.2 | 30 |  |

| 2 | Policy | IDAT speichern, verarbeiten | 2.16.840.1.113883.3.1937.777.24.5.3.3 | 30 |  |

| 2 | Policy | IDAT zusammenführen mit Dritten | 2.16.840.1.113883.3.1937.777.24.5.3.4 | 30 |  |

| 2 | Policy | IDAT bereitstellen | 2.16.840.1.113883.3.1937.777.24.5.3.5 | 30 |  |

| 2 | Policy | MDAT erheben | 2.16.840.1.113883.3.1937.777.24.5.3.6 | 5 |  |

| 2 | Policy | MDAT speichern, verarbeiten | 2.16.840.1.113883.3.1937.777.24.5.3.7 | 30 |  |

| 2 | Policy | MDAT wissenschaftlich nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.8 | 30 |  |

| 2 | Policy | MDAT zusammenführen mit Dritten | 2.16.840.1.113883.3.1937.777.24.5.3.9 | 30 |  |

| 2 | Policy | Rekontaktierung von Ergebnissen mit erheblicher Bedeutung | 2.16.840.1.113883.3.1937.777.24.5.3.37 | 30 |  |

| 1 | Modul | Patientendaten retrospektiv verarbeiten, nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.44 |  |  |

| 2 | Policy | MDAT retrospektiv speichern, verarbeiten | 2.16.840.1.113883.3.1937.777.24.5.3.45 | 30 |  |

| 2 | Policy | MDAT retrospektiv wissenschaftlich nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.46 | 30 | inactive |

| 2 | Policy | MDAT retrospektiv zusammenführen mit Dritten | 2.16.840.1.113883.3.1937.777.24.5.3.47 | 30 | inactive |

| 1 | Modul | Patientendaten Weitergabe ohne EU-DSGVO NIVEAU | 2.16.840.1.113883.3.1937.777.24.5.3.48 |  |  |

| 2 | Policy | MDAT wissenschaftlich nutzen ohne EU DSGVO NIVEAU | 2.16.840.1.113883.3.1937.777.24.5.3.49 | 30 |  |

| 1 | Modul | Krankenkassendaten retrospektiv übertragen, speichern, nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.10 |  |  |

| 2 | Policy | KKDAT 5 Jahre retrospektiv übertragen | 2.16.840.1.113883.3.1937.777.24.5.3.11 | EINMALIG |  |

| 2 | Policy | KKDAT 5 Jahre retrospektiv speichern, verarbeiten | 2.16.840.1.113883.3.1937.777.24.5.3.12 | 30 |  |

| 2 | Policy | KKDAT 5 Jahre retrospektiv wissenschaftlich nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.13 | 30 |  |

| 2 | Policy | KKDAT 5 Jahre retrospektiv übertragen KVNR | 2.16.840.1.113883.3.1937.777.24.5.3.38 | EINMALIG |  |

| 1 | Modul | Krankenkassendaten prospektiv übertragen, speichern, nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.14 |  |  |

| 2 | Policy | KKDAT 5 Jahre prospektiv übertragen | 2.16.840.1.113883.3.1937.777.24.5.3.15 | 5 |  |

| 2 | Policy | KKDAT 5 Jahre prospektiv speichern, verarbeiten | 2.16.840.1.113883.3.1937.777.24.5.3.16 | 30 | inactive |

| 2 | Policy | KKDAT 5 Jahre prospektiv wissenschaftlich nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.17 | 30 | inactive |

| 2 | Policy | KKDAT 5 Jahre prospektiv übertragen KVNR | 2.16.840.1.113883.3.1937.777.24.5.3.39 | 5 |  |

| 1 | Modul | Biomaterial erheben, lagern, nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.18 |  |  |

| 2 | Policy | BIOMAT erheben | 2.16.840.1.113883.3.1937.777.24.5.3.19 | 5 |  |

| 2 | Policy | BIOMAT lagern, verarbeiten | 2.16.840.1.113883.3.1937.777.24.5.3.20 | 30 |  |

| 2 | Policy | BIOMAT Eigentum übertragen | 2.16.840.1.113883.3.1937.777.24.5.3.21 | 5 |  |

| 2 | Policy | BIOMAT wissenschaftlich nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.22 | 30 |  |

| 2 | Policy | BIOMAT Analysedaten zusammenführen Dritte | 2.16.840.1.113883.3.1937.777.24.5.3.23 | 30 |  |

| 1 | Modul | Biomaterial Zusatzentnahme | 2.16.840.1.113883.3.1937.777.24.5.3.24 |  |  |

| 2 | Policy | BIOMAT Zusatzmengen entnehmen | 2.16.840.1.113883.3.1937.777.24.5.3.25 | 5 |  |

| 1 | Modul | Biomaterial retrospektiv speichern, nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.50 |  |  |

| 2 | Policy | BIOMAT retrospektiv lagern, verarbeiten | 2.16.840.1.113883.3.1937.777.24.5.3.51 | 30 |  |

| 2 | Policy | BIOMAT retrospektiv wissenschaftlich nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.52 | 30 |  |

| 2 | Policy | BIOMAT retrospektiv Analysedaten zusammenführen mit Dritten | 2.16.840.1.113883.3.1937.777.24.5.3.53 | 30 |  |

| 1 | Modul | Biomaterial Weitergabe ohne EU-DSGVO NIVEAU | 2.16.840.1.113883.3.1937.777.24.5.3.54 |  |  |

| 2 | Policy | BIOMAT bereitstellen ohne EU DSGVO NIVEAU | 2.16.840.1.113883.3.1937.777.24.5.3.55 | 30 |  |

| 1 | Modul | Rekontaktierung Ergänzungen | 2.16.840.1.113883.3.1937.777.24.5.3.26 |  |  |

| 2 | Policy | Rekontaktierung Verknüpfung mit anderen Datenbanken | 2.16.840.1.113883.3.1937.777.24.5.3.27 | 30 |  |

| 2 | Policy | Rekontaktierung weitere Erhebung | 2.16.840.1.113883.3.1937.777.24.5.3.28 | 30 |  |

| 2 | Policy | Rekontaktierung weitere Studien | 2.16.840.1.113883.3.1937.777.24.5.3.29 | 30 |  |

| 1 | Modul | Rekontaktierung Zusatzbefund | 2.16.840.1.113883.3.1937.777.24.5.3.30 |  |  |

| 2 | Policy | Rekontaktierung Zusatzbefund | 2.16.840.1.113883.3.1937.777.24.5.3.31 | 30 |  |

| 1 | Modul | Z1 GECCO83 Nutzung NUM/CODEX | 2.16.840.1.113883.3.1937.777.24.5.3.32 |  |  |

| 2 | Policy | MDAT GECCO83 komplettieren einmalig | 2.16.840.1.113883.3.1937.777.24.5.3.40 | einmalig |  |

| 2 | Policy | MDAT GECC083 erheben | 2.16.840.1.113883.3.1937.777.24.5.3.43 | 30 |  |

| 2 | Policy | MDAT GECCO83 bereitstellen NUM/CODEX | 2.16.840.1.113883.3.1937.777.24.5.3.33 | einmalig |  |

| 2 | Policy | MDAT GECCO83 speichern, verarbeiten NUM/CODEX | 2.16.840.1.113883.3.1937.777.24.5.3.34 | 30 |  |

| 2 | Policy | MDAT GECCO83 wissenschaftlich nutzen zur COVID-19 Forschung EU DSGVO konform | 2.16.840.1.113883.3.1937.777.24.5.3.41 | 30 | inactive |

| 2 | Policy | MDAT GECCO83 wissenschaftlich nutzen zur Pandemie-Forschung EU DSGVO konform | 2.16.840.1.113883.3.1937.777.24.5.3.42 | 30 | inactive |

| 2 | Policy | MDAT GECCO83 wissenschaftlich nutzen NUM/CODEX | 2.16.840.1.113883.3.1937.777.24.5.3.56 | 30 |  |

| 1 | Modul | Z1 GECCO83 Weitergabe NUM/CODEX non-EU-DSGVO NIVEAU | 2.16.840.1.113883.3.1937.777.24.5.3.35 |  |  |

| 2 | Policy | MDAT GECCO83 bereitstellen NUM/CODEX ohne EU DSGVO NIVEAU | 2.16.840.1.113883.3.1937.777.24.5.3.36 | 30 |  |

| 1 | Modul | Z2 PATDAT erheben nutzen kontakt (ACRIBIS) | 2.16.840.1.113883.3.1937.777.24.5.3.57 |  |  |

| 2 | Policy | PATDAT erheben nutzen kontakt (ACRIBIS) | 2.16.840.1.113883.3.1937.777.24.5.3.58 | 5 |  |

| 1 | Modul | Z2 IDAT Melderegister abfragen speichern verarbeiten (ACRIBIS) | 2.16.840.1.113883.3.1937.777.24.5.3.59 |  |  |

| 2 | Policy | IDAT Melderegister abfragen speichern verarbeiten (ACRIBIS) | 2.16.840.1.113883.3.1937.777.24.5.3.60 | 5 |  |

| 1 | Modul | Z2 MDAT Hausarzt erheben speichern verarbeiten nutzen (ACRIBIS) | 2.16.840.1.113883.3.1937.777.24.5.3.61 |  |  |

| 2 | Policy | MDAT Hausarzt erheben speichern verarbeiten nutzen (ACRIBIS) | 2.16.840.1.113883.3.1937.777.24.5.3.62 | 5 |  |

| 1 | Modul | Z3 PROMDAT Patientenbefragung | 2.16.840.1.113883.3.1937.777.24.5.3.63 |  |  |

| 2 | Policy | PROMDAT erheben | 2.16.840.1.113883.3.1937.777.24.5.3.64 | 5 |  |

| 2 | Policy | PROMDAT wissenschaftlich nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.65 | 30 |  |

| 2 | Policy | Rekontaktierung PROM Studien | 2.16.840.1.113883.3.1937.777.24.5.3.66 | 30 |  |

| 1 | Modul | Z4 Datenschutzerklärung | 2.16.840.1.113883.3.1937.777.24.5.3.67 |  |  |

| 2 | Policy | IDAT speichern verabeiten (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.68 | 30 |  |

| 2 | Policy | CONSENT speichern verarbeiten (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.69 | 30 |  |

| 2 | Policy | IDAT Einsicht Monitoring (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.70 | 30 |  |

| 2 | Policy | MDAT erheben (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.71 | 5 |  |

| 2 | Policy | MDAT speichern verarbeiten (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.72 | 30 |  |

| 2 | Policy | MDAT bereitstellen (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.73 | 30 |  |

| 2 | Policy | MDAT Einsicht Monitoring (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.74 | 30 |  |

| 2 | Policy | BIOMAT Eigentum uebertragen NUM (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.75 | 30 |  |

| 2 | Policy | CONSENT BC bereitstellen (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.76 | 30 |  |

| 2 | Policy | CONSENT BC speichern verarbeiten (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.77 | 30 |  |

| 1 | Modul | Z4 Einsicht ePa | 2.16.840.1.113883.3.1937.777.24.5.3.78 |  |  |

| 2 | Policy | IDAT ePA bereitstellen (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.79 | 5 |  |

| 2 | Policy | MDAT ePA erheben (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.80 | 5 |  |

| 2 | Policy | MDAT ePA speichern verarbeiten (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.81 | 30 |  |

| 1 | Modul | Z4 Krebsregister | 2.16.840.1.113883.3.1937.777.24.5.3.82 |  |  |

| 2 | Policy | MDAT KReg speichern verarbeiten (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.83 | 30 |  |

| 2 | Policy | IDAT KReg KVNR speichern verarbeiten (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.84 | 30 |  |

| 1 | Modul | Z4 KRegDAT retrospektiv | 2.16.840.1.113883.3.1937.777.24.5.3.85 |  |  |

| 2 | Policy | IDAT KVNR KReg bereitstellen retrospektiv (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.86 | einmalig |  |

| 2 | Policy | MDAT KReg erheben retrospektiv (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.87 | einmalig |  |

| 1 | Modul | Z4 KRegDAT | 2.16.840.1.113883.3.1937.777.24.5.3.88 |  |  |

| 2 | Policy | IDAT KVNR KReg bereitstellen prospektiv (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.89 | 5 |  |

| 2 | Policy | MDAT KReg erheben prospektiv (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.90 | 5 |  |

| 1 | Modul | Z4 Weitergabe Dritte | 2.16.840.1.113883.3.1937.777.24.5.3.91 |  |  |

| 2 | Policy | MDAT SNID bereitstellen Dritte | 2.16.840.1.113883.3.1937.777.24.5.3.92 | 30 |  |

| 2 | Policy | BIOMAT SNID bereitstellen Dritte | 2.16.840.1.113883.3.1937.777.24.5.3.93 | 30 |  |

| 1 | Modul | Z4 Rekontaktierung Patient | 2.16.840.1.113883.3.1937.777.24.5.3.94 |  |  |

| 2 | Policy | Rekontaktierung Gesundheitszustand nach Studienabschluss (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.95 | 30 |  |

| 1 | Modul | Z4 Rekontaktierung FU | 2.16.840.1.113883.3.1937.777.24.5.3.96 |  |  |

| 2 | Policy | Rekontaktierung weitere Studien (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.97 | 30 |  |

| 2 | Policy | IDAT SNID bereitstellen OE | 2.16.840.1.113883.3.1937.777.24.5.3.98 | 30 |  |

| 1 | Modul | Z4 Erhebung Hausarzt | 2.16.840.1.113883.3.1937.777.24.5.3.99 |  |  |

| 2 | Policy | MDAT Hausarzt erheben speichern verarbeiten nutzen (SNID) | 2.16.840.1.113883.3.1937.777.24.5.3.100 | 30 |  |

| 2 | Policy | IDAT bereitstellen Hausarzt | 2.16.840.1.113883.3.1937.777.24.5.3.101 | 30 |  |

| 1 | Modul | Z5 PATDAT BIOMAT PHENO erheben speichern gewinnen lagern zusaetzlich nutzen (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.102 |  |  |

| 2 | Policy | MDAT Zusatzdaten PHAENO erheben (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.103 | 5 |  |

| 2 | Policy | MDAT speichern verarbeiten (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.104 | 30 |  |

| 2 | Policy | MDAT wissenschaftlich nutzen (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.105 | 30 |  |

| 2 | Policy | MDAT zusammenführen mit Dritten (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.106 | 30 |  |

| 2 | Policy | BIOMAT Zusatzmaterial entnehmen (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.107 | 5 |  |

| 2 | Policy | BIOMAT Zusatzmaterial lagern verarbeiten (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.108 | 30 |  |

| 2 | Policy | BIOMAT wissenschaftlich nutzen (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.109 | 30 |  |

| 2 | Policy | BIOMAT zusammenfuehren mit Dritten (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.110 | 30 |  |

| 1 | Modul | Z5 NEURODAT IMGDAT erheben speichern zusaetzlich nutzen (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.111 |  |  |

| 2 | Policy | IMGDAT erheben (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.112 | 5 |  |

| 2 | Policy | IMGDAT speichern verarbeiten (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.113 | 30 |  |

| 2 | Policy | IMGDAT wissenschaftlich nutzen (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.114 | 30 |  |

| 2 | Policy | IMGDAT zusammenfuehren mit Dritten (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.115 | 30 |  |

| 2 | Policy | NEURODAT erheben (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.116 | 5 |  |

| 2 | Policy | NEURODAT speichern verarbeiten (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.117 | 30 |  |

| 2 | Policy | NEURODAT wissenschaftlich nutzen (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.118 | 30 |  |

| 2 | Policy | NEURODAT zusammenfuehren mit Dritten (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.119 | 30 |  |

| 1 | Modul | Z5 IPSC Verbunddaten gewinnen speichern nutzen (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.120 |  |  |

| 2 | Policy | IPSC Verbunddaten gewinnen (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.121 | 5 |  |

| 2 | Policy | IPSC Verbunddaten speichern verarbeiten (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.122 | 30 |  |

| 2 | Policy | IPSC Verbunddaten wissenschaftlich nutzen (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.123 | 30 |  |

| 2 | Policy | IPSC Verbunddaten zusammenfuehren mit Dritten (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.124 | 30 |  |

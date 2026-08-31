<!-- Harvested from https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Release-Notes?version=2026.0.0 on 2026-08-31 by scripts/guide-harvest.sh (spec 5.1d). -->
<!-- Source of record: the Simplifier-rendered guide. Links and images are still absolute to simplifier.net and the page is not yet mapped onto the template page set (spec 9). TODO:REVIEW -->

## Release Notes

### Version 2026.0.0

Datum 18.12.2025

- ValueSet *MII\_VS\_Consent\_SignatureTypes* um den Code *1.2.840.10065.1.12.1.5* "Verification Signature" erweitert

- CodeSystem *MII Consent: Policy CodeSystem*   - ergänzt um Gültigkeitsdauer je Policy (Property *period-of-validity* mit ISO 8601:2004 date String bzw. 'einmalig')   - Policy *2.16.840.1.113883.3.1937.777.24.5.3.46* "MDAT retrospektiv wissenschaftlich nutzen" ist nun als veraltet markiert (deprecated) und soll nicht mehr verwendet werden   - Policy *2.16.840.1.113883.3.1937.777.24.5.3.47* "MDAT retrospektiv zusammenfuehren Dritte" ist nun als veraltet markiert (deprecated) und soll nicht mehr verwendet werden   - Policy *2.16.840.1.113883.3.1937.777.24.5.3.16* "KKDAT 5J prospektiv speichern verarbeiten" ist nun als veraltet markiert (deprecated) und soll nicht mehr verwendet werden   - Policy *2.16.840.1.113883.3.1937.777.24.5.3.17* "KKDAT 5J prospektiv wissenschaftlich nutzen" ist nun als veraltet markiert (deprecated) und soll nicht mehr verwendet werden   - Markdown Repräsentation in Tabellenform zur Darstellung des CodeSystems unter 'Terminologie' im IG erstellt

- CodeSystem *mii-cs-consent-version-modules* für die BC-Versionen und Zusatzmodule erstellt   - Ergänzung von OIDs für Ablehnungen (BC v1.6d und v1.7.2)

- *Consent.provision.period.end* und *Consent.provision.provision.period.end* sind nun Kardinalität 0..1, also nicht mehr verpflichtend

- Beispiele überarbeitet und ergänzt

- IG: redaktionelle Überarbeitung und Erläuterungen verbessert   - neue Seite *Empfehlungen zur praktischen Anwendung* hinzugefügt (ResultType)   - Umgang mit Widerrufen bei Einwilligungen von Minderjährigen (Gültigkeitsdauer bzw. Ablauf der Einwilligung)   - Hinweise zur Verwendung im Modellvorhaben Genomsequenzierung (§64e)   - Erläuterung zu neuen Suchparametern ergänzt

Full Changelog: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.3...2026.0.0](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.3...2026.0.0)

### Version 2025.0.4

Datum 16.06.2025

- Terminologien:   - Policy CodeSystem Ressource display angepasst (Abkürzung->sprechende Bezeichner)

- Bugfix:   - pagelink-Fehler behoben

### Version 2025.0.3

Datum 12.06.2025

- IG/Consent:   - Unterstützung von Zusatzmodul Fachnetzwerk Infektion - SNID (Z4) hinzugefügt   - Unterstützung von Zusatzmodul Deutsche Zentrum für Psychische Gesundheit - DZPG (Z5) hinzugefügt   - Consent: Liste der verfügbaren MII Consents zur Verwendung in Consent.policy.uri aktualisiert   - Terminologies: Policy CodeSystem um SNID und DZPG Policies erweitert

Full Changelog: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.0...2025.0.3](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.0...2025.0.3)

### Version 2025.0.2

Datum 11.06.2025

- IG/Consent:   - Unterstützung von Zusatzmodul Fachnetzwerk Infektion - SNID (Z4) hinzugefügt     - Consent: Liste der verfügbaren MII Consents zur Verwendung in Consent.policy.uri aktualisiert     - Terminologies: Policy CodeSystem um SNID Policies erweitert

### Version 2025.0.1

Datum 21.01.2025

- IG/Consent:   - Liste der verfügbaren MII Consents zur Verwendung in Consent.policy.uri aktualisiert:     - Zusatzmodul ACRIBiS (Z2)     - Zusatzmodul Patientenbefragung (Z3)

### Version 2025.0.0

Datum 17.12.2024

- Consent-Ressource   - Consent.category -> max value="\*"   - Consent.provision.type ->fixedCode deny entfernt   - Consent.provision.provision.type ->fixedCode permit entfernt￼   - IG/Consent entspr. angepasst

- IG/Consent   - Liste der verfügbaren MII Consents zur Verwendung in Consent.policy.uri aktualisiert (Widerrufe und Minderjährige)

- Policy-CodeSystem: acribis und PROM Policies hinzugefügt

- IG/Terminologie:   - Level-Angaben korrigiert   - Formatierung Hinweis-Text korrigiert   - Hinweis 1 (FHIR+Policies) korrigiert

Full Changelog: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/1.0.7...2025.0.0](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/1.0.7...2025.0.0)

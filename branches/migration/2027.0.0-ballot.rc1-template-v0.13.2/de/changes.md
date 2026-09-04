# Änderungshistorie - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Änderungshistorie**

## Änderungshistorie

Diese Seite hält die Änderungen zwischen den veröffentlichten Versionen des Moduls **Consent** fest, die neueste Version zuerst. Sie folgt [Keep a Changelog](https://keepachangelog.com/de/1.1.0/) und dem KDS-CalVer-Schema, das die Seite [Versionierung](version-history.md) beschreibt.

Jede Version erhält einen eigenen Abschnitt mit dem Release-Datum und den nach Kategorien gruppierten Änderungen:

* **Hinzugefügt** — neue Profile, Extensions, ValueSets, Suchparameter, Seiten.
* **Geändert** — geänderte Einschränkungen, Bindings, Hinweise oder Dokumentation.
* **Abgekündigt** — Artefakte, die noch existieren, aber nicht mehr genutzt werden sollen.
* **Entfernt** — zurückgezogene Artefakte.
* **Behoben** — Korrekturen von Fehlern.
* **Sicherheit** — Änderungen mit Auswirkung auf Sicherheit oder Datenschutz.

Kategorien ohne Inhalt werden weggelassen. Geht eine Änderung auf ein Issue oder einen Pull-Request zurück, wird darauf verlinkt.

##### Breaking Changes MÜSSEN berichtet und erläutert werden

Ein Versionsabschnitt mit einer Breaking Change ist erst vollständig, wenn er ausdrücklich und in diesem Changelog beantwortet:

* **Was genau sich geändert hat** zwischen den beiden Versionen — das Artefakt, das Element, die alte und die neue Einschränkung (nicht nur „Profil X wurde überarbeitet“).
* **Was das für bestehende Daten bedeutet:** Validieren Daten, die der Vorversion entsprachen, weiterhin gegen die neue Version? Falls nein: welche Ressourcen und Elemente sind betroffen, und wie zeigt sich der Fehler?
* **Was Implementierende tun sollten:** die Empfehlung der Autorinnen und Autoren zur Migration bestehender Daten auf die neue Version — Transformationsschritte, Standardwerte, Umkodierungs-Hinweise — oder die ausdrückliche Aussage, dass kein Migrationspfad bereitgestellt wird, und warum.

**Was als Breaking Change zählt** — behandeln Sie eine Änderung als Breaking Change, wenn sie eines der Folgenden tut, auch wenn sie klein wirkt: eine Kardinalität verschärft (`0..*` → `1..1`), eine Binding-Stärke erhöht (example → required), Codes aus einem required-ValueSet entfernt, ein Element oder einen Slice entfernt oder umbenennt, einen Typ einengt, eine Invariante oder eine Must-Support-Pflicht hinzufügt oder eine kanonische URL ändert. Im Zweifel: als Breaking Change berichten.

**Breaking für wen:** benennen Sie beide Perspektiven — *gespeicherte Daten* (Instanzen, die gegen die alte Version valide sind) und *Implementierungen* (Clients und Server, die dagegen gebaut wurden; ein entfernter Suchparameter bricht Implementierungen, während jede gespeicherte Instanz valide bleibt).

**Die Versionsnummer warnt niemanden.** Das KDS-Kalender-Versionsschema (`JJJJ.n.n`) trägt kein Major-Signal wie SemVer — dieser Changelog-Abschnitt ist die *einzige* Warnung, die Lesende bekommen.

**Verlinken Sie das technische Delta.** Ab der zweiten formalen Publikation aktivieren Sie den Versionsvergleich des IG Publishers (`version-comparison` in `sushi-config.yaml` — siehe die Seite [Versionierung](version-history.md) zur Einrichtung und ihren Voraussetzungen); er veröffentlicht einen maschinell erzeugten Vergleich unter `comparison-v<Vorversion>/index.html`. Verlinken Sie ihn aus dem Versionsabschnitt, damit die Erläuterung und der technische Diff nebeneinanderstehen.

Kennzeichnen Sie solche Einträge deutlich (zum Beispiel mit dem Präfix **BREAKING:**), damit sie beim Überfliegen des Abschnitts nicht übersehen werden können.

-------

#### Frische Migration auf das offizielle Release 2027.0.0-ballot.rc1 (2026-09-04)

Datum 04.09.2026

* **Geändert** — Inhaltsbasis dieses Branches ist jetzt das **offizielle Release [2027.0.0-ballot.rc1](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/releases/tag/2027.0.0-ballot.rc1)** (Tag `508a666`, veröffentlicht 03.09.2026; Repo-Baum byte-identisch mit dem zuvor inkorporierten develop-Stand `744f7ba` — die inhaltlichen Aussagen des develop-Abschnitts unten gelten unverändert). Vollständige Re-Derivation aller Ressourcen aus dem Release-Paket (goFSH; Nachweis: `migration-log/rederivation-diff-release-2027.txt`) und Delta-Übernahme des Leitfadens in Version 2027.0.0-ballot.rc1 (18/18 Seiten; u. a. neu strukturierte Policy-Erläuterungen auf der CodeSystem-Seite).
* **Geändert** — Eltern-Paket-Pin auf `de.einwilligungsmanagement` **2.0.4-rc1** (Pin des Release-Pakets). Das Eltern-Profil hat sein eigenes `Consent.category`-Slicing in 2.0.4 entfernt; dieses Profil deklariert die vier Slices (consentCategory/mii/resultType/templateType) jetzt selbst — Validierungssemantik unverändert.
* **Behoben** — die in der 2026er-Migration mit dem "Darstellung"-Abschnitt entfallenen "Unterschiede zum Basis-Profil"-Tabellen der Provenance- und DocumentReference-Seiten sind in den Profil-Einleitungen ergänzt.
* Bewusste, protokollierte Abweichungen vom ausgelieferten Release-Paket (Details: `migration-log/run.log`, Eintrag 5.2): harmonisierte Artefakt-Versionen, kanonische SearchParameter-IDs (das Paket liefert keine), korrigierte Beispiel-Displays und CodeSystem-Zählungen, `publisher`-Metadaten sowie das im Paket fehlende Version-Modules-CodeSystem.

#### develop-Inkorporation (Stand 744f7ba, 2026-08-21) — Teil von 2027.0.0-ballot.rc1

Datum 01.09.2026

* **BREAKING: Geändert** — Profil `MII PR Consent Einwilligung`: Ableitung jetzt vom HL7-D-Profil `ConsentManagement/Consent`; Category-Slices umbenannt/ergänzt (`loinc` → `consentCategory`; neu `resultType` (required Binding) und `templateType` (extensible Binding)); die im develop-Differential deklarierte Kardinalität `category 0..*` ist gegen das Eltern-Profil (1..**) unwirksam und wird als 1..** geerbt (Upstream-Befund). Bestehende Instanzen ohne resultType-Category validieren nicht mehr.
* **Behoben** — Beispiele: Category-System auf das definierte CodeSystem `mii-cs-consent-version-modules` umgestellt (zuvor referenzierten sie das nirgends definierte `mii-cs-consent-consent_category`).
* **Geändert** — Policy-CodeSystem: ~19 Display-Korrekturen (ACRIBIS-, PROM- und SNID-Bezeichner); Version-Modules-CodeSystem: neues Konzept `…24.2.4055` "Version 1.7.2 Vertretende". Eltern-Paket-Pin auf `de.einwilligungsmanagement` 2.0.3 (develop/rc-Linie) angehoben.

#### Version 2027.0.0-ballot.rc1

Datum 31.08.2026

* **Geändert** — Migration des Leitfadens auf das [MII-KDS-Modul-Template](https://github.com/medizininformatik-initiative/mii-kds-module-template) v0.13.2 (IG-Publisher-Toolchain, DE-first-Sprachmodell, Template-Seitenstruktur); **inhaltlich identisch mit Release 2026.0.0** (Profile, Terminologien und Beispiele unverändert; Nachweis: `migration-log/` auf diesem Branch). Alle Artefakt-Versionen auf die Paketversion 2027.0.0-ballot.rc1 harmonisiert (zuvor je Artefakt abweichend, z. B. 1.0.9/1.6.0/1.1.0).

#### Version 2027.0.0-ballot.rc1 (Release Notes der Quelle)

Datum 03.09.2026

* Policies SNID korrigiert #121
* Policy Labels ACRIBIS korrigiert #129
* MIIConsentVersionModuleCodeSystem: BC Varianten für Vertretende hinzugefügt #127
* Validierungs- und Abhängigkeits-Probleme ( `consent.category` Slices) behoben #124, #119
* CodeSystem in Beispielen korrigiert #113
* sprachliche Verbesserung zur Beschreibung der Level #112

**Full Changelog**: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2026.0.0…2027.0.0-ballot.rc1](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2026.0.0...2027.0.0-ballot.rc1)

#### Version 2026.0.0

Datum 18.12.2025

* ValueSet **MII_VS_Consent_SignatureTypes** um den Code **1.2.840.10065.1.12.1.5** "Verification Signature" erweitert
* CodeSystem **MII Consent: Policy CodeSystem** - ergänzt um Gültigkeitsdauer je Policy (Property **period-of-validity** mit ISO 8601:2004 date String bzw. 'einmalig') - Policy **2.16.840.1.113883.3.1937.777.24.5.3.46** "MDAT retrospektiv wissenschaftlich nutzen" ist nun als veraltet markiert (deprecated) und soll nicht mehr verwendet werden - Policy **2.16.840.1.113883.3.1937.777.24.5.3.47** "MDAT retrospektiv zusammenfuehren Dritte" ist nun als veraltet markiert (deprecated) und soll nicht mehr verwendet werden - Policy **2.16.840.1.113883.3.1937.777.24.5.3.16** "KKDAT 5J prospektiv speichern verarbeiten" ist nun als veraltet markiert (deprecated) und soll nicht mehr verwendet werden - Policy **2.16.840.1.113883.3.1937.777.24.5.3.17** "KKDAT 5J prospektiv wissenschaftlich nutzen" ist nun als veraltet markiert (deprecated) und soll nicht mehr verwendet werden - Markdown Repräsentation in Tabellenform zur Darstellung des CodeSystems unter 'Terminologie' im IG erstellt
* CodeSystem **mii-cs-consent-version-modules** für die BC-Versionen und Zusatzmodule erstellt - Ergänzung von OIDs für Ablehnungen (BC v1.6d und v1.7.2)
* **Consent.provision.period.end** und **Consent.provision.provision.period.end** sind nun Kardinalität 0..1, also nicht mehr verpflichtend
* Beispiele überarbeitet und ergänzt
* IG: redaktionelle Überarbeitung und Erläuterungen verbessert - neue Seite **Empfehlungen zur praktischen Anwendung** hinzugefügt (ResultType) - Umgang mit Widerrufen bei Einwilligungen von Minderjährigen (Gültigkeitsdauer bzw. Ablauf der Einwilligung) - Hinweise zur Verwendung im Modellvorhaben Genomsequenzierung (§64e) - Erläuterung zu neuen Suchparametern ergänzt

Full Changelog: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.3…2026.0.0](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.3...2026.0.0)

#### Version 2025.0.4

Datum 16.06.2025

* Terminologien: - Policy CodeSystem Ressource display angepasst (Abkürzung->sprechende Bezeichner)
* Bugfix: - pagelink-Fehler behoben

#### Version 2025.0.3

Datum 12.06.2025

* IG/Consent: - Unterstützung von Zusatzmodul Fachnetzwerk Infektion - SNID (Z4) hinzugefügt - Unterstützung von Zusatzmodul Deutsche Zentrum für Psychische Gesundheit - DZPG (Z5) hinzugefügt - Consent: Liste der verfügbaren MII Consents zur Verwendung in Consent.policy.uri aktualisiert - Terminologies: Policy CodeSystem um SNID und DZPG Policies erweitert

Full Changelog: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.0…2025.0.3](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.0...2025.0.3)

#### Version 2025.0.2

Datum 11.06.2025

* IG/Consent: - Unterstützung von Zusatzmodul Fachnetzwerk Infektion - SNID (Z4) hinzugefügt - Consent: Liste der verfügbaren MII Consents zur Verwendung in Consent.policy.uri aktualisiert - Terminologies: Policy CodeSystem um SNID Policies erweitert

#### Version 2025.0.1

Datum 21.01.2025

* IG/Consent: - Liste der verfügbaren MII Consents zur Verwendung in Consent.policy.uri aktualisiert: - Zusatzmodul ACRIBiS (Z2) - Zusatzmodul Patientenbefragung (Z3)

#### Version 2025.0.0

Datum 17.12.2024

* Consent-Ressource - Consent.category -> max value="*" - Consent.provision.type ->fixedCode deny entfernt - Consent.provision.provision.type ->fixedCode permit entfernt - IG/Consent entspr. angepasst
* IG/Consent - Liste der verfügbaren MII Consents zur Verwendung in Consent.policy.uri aktualisiert (Widerrufe und Minderjährige)
* Policy-CodeSystem: acribis und PROM Policies hinzugefügt
* IG/Terminologie: - Level-Angaben korrigiert - Formatierung Hinweis-Text korrigiert - Hinweis 1 (FHIR+Policies) korrigiert

Full Changelog: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/1.0.7…2025.0.0](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/1.0.7...2025.0.0)


<!-- markdownlint-disable MD041 -->
<!-- Deutsche Übersetzung der Standardsprachseite input/pagecontent/changes.md
     — beide Dateien müssen dasselbe aussagen. Struktur aus kerndatensatz-basis
     input/pagecontent/changes.md (Branch main) — ein Abschnitt je Version,
     neueste zuerst — und aus der MII-Release-Notes-Vorlage
     (kerndatensatz-meta/implementation-guides/MedizininformatikInitiative-ImplementationGuide-Template/
     MII-IG-Modul--Modul/Release-notes.page.md), die "Keep a Changelog" vorgibt.

     Pflegeregel: Für jedes Release oben einen neuen Abschnitt
     `#### Version <x>` ergänzen, in BEIDEN Sprachen, als Teil des
     Release-Pull-Requests. Einen veröffentlichten Abschnitt danach nicht mehr
     ändern. -->


Diese Seite hält die Änderungen zwischen den veröffentlichten Versionen des
Moduls **Consent** fest, die neueste Version zuerst. Sie folgt
[Keep a Changelog](https://keepachangelog.com/de/1.1.0/) und dem
KDS-CalVer-Schema, das die Seite [Versionierung](version-history.html)
beschreibt.

Jede Version erhält einen eigenen Abschnitt mit dem Release-Datum und den nach
Kategorien gruppierten Änderungen:

* **Hinzugefügt** — neue Profile, Extensions, ValueSets, Suchparameter, Seiten.
* **Geändert** — geänderte Einschränkungen, Bindings, Hinweise oder
  Dokumentation.
* **Abgekündigt** — Artefakte, die noch existieren, aber nicht mehr genutzt
  werden sollen.
* **Entfernt** — zurückgezogene Artefakte.
* **Behoben** — Korrekturen von Fehlern.
* **Sicherheit** — Änderungen mit Auswirkung auf Sicherheit oder Datenschutz.

Kategorien ohne Inhalt werden weggelassen. Geht eine Änderung auf ein Issue oder
einen Pull-Request zurück, wird darauf verlinkt.

<div class="ig-highlight ig-highlight-red">
<h5>Breaking Changes MÜSSEN berichtet und erläutert werden</h5>
<p>Ein Versionsabschnitt mit einer Breaking Change ist erst vollständig, wenn
er ausdrücklich und in diesem Changelog beantwortet:</p>
<ul>
<li><b>Was genau sich geändert hat</b> zwischen den beiden Versionen — das
Artefakt, das Element, die alte und die neue Einschränkung (nicht nur
„Profil X wurde überarbeitet“).</li>
<li><b>Was das für bestehende Daten bedeutet:</b> Validieren Daten, die der
Vorversion entsprachen, weiterhin gegen die neue Version? Falls nein: welche
Ressourcen und Elemente sind betroffen, und wie zeigt sich der Fehler?</li>
<li><b>Was Implementierende tun sollten:</b> die Empfehlung der Autorinnen
und Autoren zur Migration bestehender Daten auf die neue Version —
Transformationsschritte, Standardwerte, Umkodierungs-Hinweise — oder die
ausdrückliche Aussage, dass kein Migrationspfad bereitgestellt wird, und
warum.</li>
</ul>
<p><b>Was als Breaking Change zählt</b> — behandeln Sie eine Änderung als
Breaking Change, wenn sie eines der Folgenden tut, auch wenn sie klein wirkt:
eine Kardinalität verschärft (<code>0..*</code> → <code>1..1</code>), eine
Binding-Stärke erhöht (example → required), Codes aus einem required-ValueSet
entfernt, ein Element oder einen Slice entfernt oder umbenennt, einen Typ
einengt, eine Invariante oder eine Must-Support-Pflicht hinzufügt oder eine
kanonische URL ändert. Im Zweifel: als Breaking Change berichten.</p>
<p><b>Breaking für wen:</b> benennen Sie beide Perspektiven — <i>gespeicherte
Daten</i> (Instanzen, die gegen die alte Version valide sind) und
<i>Implementierungen</i> (Clients und Server, die dagegen gebaut wurden; ein
entfernter Suchparameter bricht Implementierungen, während jede gespeicherte
Instanz valide bleibt).</p>
<p><b>Die Versionsnummer warnt niemanden.</b> Das KDS-Kalender-Versionsschema
(<code>JJJJ.n.n</code>) trägt kein Major-Signal wie SemVer — dieser
Changelog-Abschnitt ist die <i>einzige</i> Warnung, die Lesende bekommen.</p>
<p><b>Verlinken Sie das technische Delta.</b> Ab der zweiten formalen
Publikation aktivieren Sie den Versionsvergleich des IG Publishers
(<code>version-comparison</code> in <code>sushi-config.yaml</code> — siehe die
Seite <a href="version-history.html">Versionierung</a> zur Einrichtung und
ihren Voraussetzungen); er veröffentlicht einen maschinell erzeugten
Vergleich unter <code>comparison-v&lt;Vorversion&gt;/index.html</code>.
Verlinken Sie ihn aus dem Versionsabschnitt, damit die Erläuterung und der
technische Diff nebeneinanderstehen.</p>
<p>Kennzeichnen Sie solche Einträge deutlich (zum Beispiel mit dem Präfix
<b>BREAKING:</b>), damit sie beim Überfliegen des Abschnitts nicht übersehen
werden können.</p>
</div>

---

<!-- Ab hier: wortgetreue Übernahme der Release Notes der Quelle
     (https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Release-Notes?version=2026.0.0, Harvest 2026-08-31).
     Historische Abschnitte behalten das Format der Quelle (keine nachträgliche
     Keep-a-Changelog-Umgruppierung veröffentlichter Einträge). -->

#### Version 2027.0.0-ballot.rc1

Datum 31.08.2026

* **Geändert** — Migration des Leitfadens auf das
  [MII-KDS-Modul-Template](https://github.com/medizininformatik-initiative/mii-kds-module-template)
  v0.13.2 (IG-Publisher-Toolchain, DE-first-Sprachmodell, Template-Seitenstruktur);
  **inhaltlich identisch mit Release 2026.0.0** (Profile, Terminologien und
  Beispiele unverändert; Nachweis: `migration-log/` auf diesem Branch). Alle
  Artefakt-Versionen auf die Paketversion 2027.0.0-ballot.rc1 harmonisiert
  (zuvor je Artefakt abweichend, z. B. 1.0.9/1.6.0/1.1.0).

#### Version 2026.0.0

Datum 18.12.2025

- ValueSet *MII\_VS\_Consent\_SignatureTypes* um den Code *1.2.840.10065.1.12.1.5* "Verification Signature" erweitert

- CodeSystem *MII Consent: Policy CodeSystem*   - ergänzt um Gültigkeitsdauer je Policy (Property *period-of-validity* mit ISO 8601:2004 date String bzw. 'einmalig')   - Policy *2.16.840.1.113883.3.1937.777.24.5.3.46* "MDAT retrospektiv wissenschaftlich nutzen" ist nun als veraltet markiert (deprecated) und soll nicht mehr verwendet werden   - Policy *2.16.840.1.113883.3.1937.777.24.5.3.47* "MDAT retrospektiv zusammenfuehren Dritte" ist nun als veraltet markiert (deprecated) und soll nicht mehr verwendet werden   - Policy *2.16.840.1.113883.3.1937.777.24.5.3.16* "KKDAT 5J prospektiv speichern verarbeiten" ist nun als veraltet markiert (deprecated) und soll nicht mehr verwendet werden   - Policy *2.16.840.1.113883.3.1937.777.24.5.3.17* "KKDAT 5J prospektiv wissenschaftlich nutzen" ist nun als veraltet markiert (deprecated) und soll nicht mehr verwendet werden   - Markdown Repräsentation in Tabellenform zur Darstellung des CodeSystems unter 'Terminologie' im IG erstellt

- CodeSystem *mii-cs-consent-version-modules* für die BC-Versionen und Zusatzmodule erstellt   - Ergänzung von OIDs für Ablehnungen (BC v1.6d und v1.7.2)

- *Consent.provision.period.end* und *Consent.provision.provision.period.end* sind nun Kardinalität 0..1, also nicht mehr verpflichtend

- Beispiele überarbeitet und ergänzt

- IG: redaktionelle Überarbeitung und Erläuterungen verbessert   - neue Seite *Empfehlungen zur praktischen Anwendung* hinzugefügt (ResultType)   - Umgang mit Widerrufen bei Einwilligungen von Minderjährigen (Gültigkeitsdauer bzw. Ablauf der Einwilligung)   - Hinweise zur Verwendung im Modellvorhaben Genomsequenzierung (§64e)   - Erläuterung zu neuen Suchparametern ergänzt

Full Changelog: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.3...2026.0.0](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.3...2026.0.0)

#### Version 2025.0.4

Datum 16.06.2025

- Terminologien:   - Policy CodeSystem Ressource display angepasst (Abkürzung->sprechende Bezeichner)

- Bugfix:   - pagelink-Fehler behoben

#### Version 2025.0.3

Datum 12.06.2025

- IG/Consent:   - Unterstützung von Zusatzmodul Fachnetzwerk Infektion - SNID (Z4) hinzugefügt   - Unterstützung von Zusatzmodul Deutsche Zentrum für Psychische Gesundheit - DZPG (Z5) hinzugefügt   - Consent: Liste der verfügbaren MII Consents zur Verwendung in Consent.policy.uri aktualisiert   - Terminologies: Policy CodeSystem um SNID und DZPG Policies erweitert

Full Changelog: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.0...2025.0.3](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.0...2025.0.3)

#### Version 2025.0.2

Datum 11.06.2025

- IG/Consent:   - Unterstützung von Zusatzmodul Fachnetzwerk Infektion - SNID (Z4) hinzugefügt     - Consent: Liste der verfügbaren MII Consents zur Verwendung in Consent.policy.uri aktualisiert     - Terminologies: Policy CodeSystem um SNID Policies erweitert

#### Version 2025.0.1

Datum 21.01.2025

- IG/Consent:   - Liste der verfügbaren MII Consents zur Verwendung in Consent.policy.uri aktualisiert:     - Zusatzmodul ACRIBiS (Z2)     - Zusatzmodul Patientenbefragung (Z3)

#### Version 2025.0.0

Datum 17.12.2024

- Consent-Ressource   - Consent.category -> max value="\*"   - Consent.provision.type ->fixedCode deny entfernt   - Consent.provision.provision.type ->fixedCode permit entfernt￼   - IG/Consent entspr. angepasst

- IG/Consent   - Liste der verfügbaren MII Consents zur Verwendung in Consent.policy.uri aktualisiert (Widerrufe und Minderjährige)

- Policy-CodeSystem: acribis und PROM Policies hinzugefügt

- IG/Terminologie:   - Level-Angaben korrigiert   - Formatierung Hinweis-Text korrigiert   - Hinweis 1 (FHIR+Policies) korrigiert

Full Changelog: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/1.0.7...2025.0.0](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/1.0.7...2025.0.0)

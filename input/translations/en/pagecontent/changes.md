<!-- markdownlint-disable MD041 -->
<!-- machine translation of source page changes.md (de). TODO:REVIEW — Gate C. -->
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

### Change history

This page records the changes between the published versions of the
**Consent** module, most recent version first. It follows
[Keep a Changelog](https://keepachangelog.com/de/1.1.0/) and the
KDS CalVer scheme described on the
[Versioning](version-history.html) page.

Each version gets its own section with the release date and the changes
grouped by category:

* **Added** — new profiles, extensions, ValueSets, search parameters, pages.
* **Changed** — changed constraints, bindings, notes, or
  documentation.
* **Deprecated** — artifacts that still exist but should no longer be
  used.
* **Removed** — withdrawn artifacts.
* **Fixed** — corrections of errors.
* **Security** — changes affecting security or data protection.

Categories without content are omitted. If a change goes back to an issue or
a pull request, it is linked.

<div class="ig-highlight ig-highlight-red">
<h5>Breaking changes MUST be reported and explained</h5>
<p>A version section containing a breaking change is only complete once it
explicitly answers, in this changelog:</p>
<ul>
<li><b>What exactly changed</b> between the two versions — the
artifact, the element, the old and the new constraint (not just
"profile X was revised").</li>
<li><b>What this means for existing data:</b> Does data that conformed to the
previous version still validate against the new version? If not: which
resources and elements are affected, and how does the error show up?</li>
<li><b>What implementers should do:</b> the authors'
recommendation for migrating existing data to the new version —
transformation steps, default values, recoding guidance — or the
explicit statement that no migration path is provided, and
why.</li>
</ul>
<p><b>What counts as a breaking change</b> — treat a change as a
breaking change if it does any of the following, even if it seems small:
tightens a cardinality (<code>0..*</code> → <code>1..1</code>), raises a
binding strength (example → required), removes codes from a required ValueSet,
removes or renames an element or a slice, narrows a type,
adds an invariant or a must-support obligation, or changes a
canonical URL. When in doubt: report it as a breaking change.</p>
<p><b>Breaking for whom:</b> name both perspectives — <i>stored
data</i> (instances that are valid against the old version) and
<i>implementations</i> (clients and servers built against it; a
removed search parameter breaks implementations while every stored
instance stays valid).</p>
<p><b>The version number warns nobody.</b> The KDS calendar versioning scheme
(<code>JJJJ.n.n</code>) carries no major signal like SemVer — this
changelog section is the <i>only</i> warning readers get.</p>
<p><b>Link the technical delta.</b> From the second formal
publication onward, enable the IG Publisher's version comparison
(<code>version-comparison</code> in <code>sushi-config.yaml</code> — see the
<a href="version-history.html">Versioning</a> page for the setup and
its prerequisites); it publishes a machine-generated
comparison at <code>comparison-v&lt;Vorversion&gt;/index.html</code>.
Link it from the version section so that the explanation and the
technical diff stand side by side.</p>
<p>Mark such entries clearly (for example with the prefix
<b>BREAKING:</b>) so they cannot be overlooked when skimming the
section.</p>
</div>

---

<!-- Ab hier: wortgetreue Übernahme der Release Notes der Quelle
     (https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Release-Notes?version=2026.0.0, Harvest 2026-08-31).
     Historische Abschnitte behalten das Format der Quelle (keine nachträgliche
     Keep-a-Changelog-Umgruppierung veröffentlichter Einträge). -->

#### Fresh migration onto the official release 2027.0.0-ballot.rc1 (2026-09-04)

Date 04.09.2026

* **Changed** — this branch's content basis is now the **official release
  [2027.0.0-ballot.rc1](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/releases/tag/2027.0.0-ballot.rc1)**
  (tag `508a666`, published 03.09.2026; the repository tree is byte-identical to
  the previously incorporated develop state `744f7ba` — the content statements
  of the develop section below remain valid unchanged). Complete re-derivation
  of all resources from the release package (goFSH; evidence:
  `migration-log/rederivation-diff-release-2027.txt`) and delta port of the
  guide at version 2027.0.0-ballot.rc1 (18/18 pages; among others the
  restructured policy explanations on the CodeSystem page).
* **Changed** — parent package pin raised to `de.einwilligungsmanagement`
  **2.0.4-rc1** (the release package's pin). The parent profile removed its own
  `Consent.category` slicing in 2.0.4; this profile now declares the four
  slices (consentCategory/mii/resultType/templateType) itself — validation
  semantics unchanged.
* **Fixed** — the "differences to the base profile" tables of the Provenance
  and DocumentReference pages, dropped with the "Darstellung" section in the
  2026 migration, have been added to the profile intro notes.
* Deliberate, logged divergences from the shipped release package (details:
  `migration-log/run.log`, entry 5.2): harmonized artifact versions, canonical
  SearchParameter ids (the package ships none), corrected CodeSystem counts, and the Version-Modules CodeSystem
  the package is missing. The example displays initially harmonized with the
  corrected Policy CodeSystem were **reverted to the release-faithful values on
  operator instruction (2026-09-04)** — the harmonization is deferred until the
  owners decide; QA therefore again shows the source's display/ValueSet pair
  errors.

#### develop incorporation (state 744f7ba, 2026-08-21) — part of 2027.0.0-ballot.rc1

Date 01.09.2026

* **BREAKING: Changed** — profile `MII PR Consent Einwilligung`: now derives
  from the HL7-D profile `ConsentManagement/Consent`; category slices
  renamed/added (`loinc` → `consentCategory`; new `resultType` (required
  binding) and `templateType` (extensible binding)); the `category 0..*`
  cardinality declared in the develop differential is void against the parent
  profile (1..*) and is inherited as 1..* (upstream finding). Existing
  instances without a resultType category no longer validate.
* **Fixed** — examples: category system switched to the defined CodeSystem
  `mii-cs-consent-version-modules` (they previously referenced the nowhere-
  defined `mii-cs-consent-consent_category`).
* **Changed** — Policy CodeSystem: ~19 display corrections (ACRIBIS, PROM and
  SNID labels); Version-Modules CodeSystem: new concept `…24.2.4055`
  "Version 1.7.2 Vertretende". Parent package pin raised to
  `de.einwilligungsmanagement` 2.0.3 (develop/rc line).

#### Version 2027.0.0-ballot.rc1

Date 31.08.2026

* **Changed** — migration of the guide onto the
  [MII KDS module template](https://github.com/medizininformatik-initiative/mii-kds-module-template)
  v0.13.2 (IG Publisher toolchain, DE-first language model, template page
  structure); **content-identical to release 2026.0.0** (profiles, terminology
  and examples unchanged; evidence: `migration-log/` on this branch). All
  artefact versions harmonized to the package version 2027.0.0-ballot.rc1
  (previously divergent per artefact, e.g. 1.0.9/1.6.0/1.1.0).

<!-- Upstream release notes for version 2027.0.0-ballot.rc1, verbatim from the
     source (https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Release-Notes?version=2027.0.0-ballot.rc1,
     harvest 2026-09-04). Describes the same substantive changes as the
     "develop incorporation" section above, from the upstream perspective with
     issue numbers; heading suffixed with "(Source Release Notes)" to
     distinguish it from the migration section of the same version. -->

#### Version 2027.0.0-ballot.rc1 (Source Release Notes)

Date 03.09.2026

- Policies SNID corrected #121

- Policy labels ACRIBIS corrected #129

- MIIConsentVersionModuleCodeSystem: BC variants for representatives added #127

- Validation and dependency problems (`consent.category` slices) fixed #124, #119

- CodeSystem in examples corrected #113

- linguistic improvement to the description of the levels #112

**Full Changelog**: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2026.0.0...2027.0.0-ballot.rc1](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2026.0.0...2027.0.0-ballot.rc1)

#### Version 2026.0.0

Date 18.12.2025

- ValueSet *MII\_VS\_Consent\_SignatureTypes* extended by the code *1.2.840.10065.1.12.1.5* "Verification Signature"

- CodeSystem *MII Consent: Policy CodeSystem*   - supplemented with a period of validity per policy (property *period-of-validity* with an ISO 8601:2004 date string or 'einmalig')   - Policy *2.16.840.1.113883.3.1937.777.24.5.3.46* "MDAT retrospektiv wissenschaftlich nutzen" is now marked as deprecated and should no longer be used   - Policy *2.16.840.1.113883.3.1937.777.24.5.3.47* "MDAT retrospektiv zusammenfuehren Dritte" is now marked as deprecated and should no longer be used   - Policy *2.16.840.1.113883.3.1937.777.24.5.3.16* "KKDAT 5J prospektiv speichern verarbeiten" is now marked as deprecated and should no longer be used   - Policy *2.16.840.1.113883.3.1937.777.24.5.3.17* "KKDAT 5J prospektiv wissenschaftlich nutzen" is now marked as deprecated and should no longer be used   - Markdown representation in table form created for displaying the CodeSystem under 'Terminologie' in the IG

- CodeSystem *mii-cs-consent-version-modules* created for the BC versions and additional modules   - addition of OIDs for refusals (BC v1.6d and v1.7.2)

- *Consent.provision.period.end* and *Consent.provision.provision.period.end* are now cardinality 0..1, i.e. no longer mandatory

- Examples revised and supplemented

- IG: editorial revision and improved explanations   - new page *Empfehlungen zur praktischen Anwendung* added (ResultType)   - handling of withdrawals for consents of minors (period of validity or expiry of the consent)   - notes on use in the Modellvorhaben Genomsequenzierung (§64e)   - explanation of new search parameters added

Full Changelog: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.3...2026.0.0](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.3...2026.0.0)

#### Version 2025.0.4

Date 16.06.2025

- Terminologies:   - Policy CodeSystem resource display adjusted (abbreviations -> descriptive names)

- Bugfix:   - pagelink error fixed

#### Version 2025.0.3

Date 12.06.2025

- IG/Consent:   - support for the additional module Fachnetzwerk Infektion - SNID (Z4) added   - support for the additional module Deutsche Zentrum für Psychische Gesundheit - DZPG (Z5) added   - Consent: list of the available MII Consents for use in Consent.policy.uri updated   - Terminologies: Policy CodeSystem extended by SNID and DZPG policies

Full Changelog: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.0...2025.0.3](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/2025.0.0...2025.0.3)

#### Version 2025.0.2

Date 11.06.2025

- IG/Consent:   - support for the additional module Fachnetzwerk Infektion - SNID (Z4) added     - Consent: list of the available MII Consents for use in Consent.policy.uri updated     - Terminologies: Policy CodeSystem extended by SNID policies

#### Version 2025.0.1

Date 21.01.2025

- IG/Consent:   - list of the available MII Consents for use in Consent.policy.uri updated:     - additional module ACRIBiS (Z2)     - additional module Patientenbefragung (Z3)

#### Version 2025.0.0

Date 17.12.2024

- Consent resource   - Consent.category -> max value="\*"   - Consent.provision.type ->fixedCode deny removed   - Consent.provision.provision.type ->fixedCode permit removed   - IG/Consent adjusted accordingly

- IG/Consent   - list of the available MII Consents for use in Consent.policy.uri updated (withdrawals and minors)

- Policy CodeSystem: acribis and PROM policies added

- IG/Terminology:   - level information corrected   - formatting of the note text corrected   - note 1 (FHIR+policies) corrected

Full Changelog: [https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/1.0.7...2025.0.0](https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent/compare/1.0.7...2025.0.0)

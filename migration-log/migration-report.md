# Migration report — MII KDS Modul Consent 2026.0.0 → MII KDS module template v0.13.2

**Executed 2026-08-31**, branch `migration/2027.0.0-ballot.rc1-template-v0.13.2` — prepared in the FGDH
sandbox `mii-kds-consent-ig-inoffiziell` and **placed on this official repository on the
operator's explicit instruction** (the venue half of decision D-0; the sandbox keeps the plan +
recon + preservation-harvest evidence on its branch `evidence/2026-08-31-plan-recon`). Skill:
`mii-ig-migration` **v0.25.0** + sibling `fhir-ig-analysis` (agent-skills v0.25.0).
**Nothing here is published, and this PR must not be merged before the Gate A–D review** —
on this repository's conventions the release line is `master`, so merging is what adopts the
template structure for the module (Gate D: TF KDS / AG IOP / NSG).

## Summary — read this first (for everyone)

* **Version: `2027.0.0-ballot.rc1`** (operator instruction, 2026-08-31 — after the equivalence
  evidence below was produced AT the source version 2026.0.0, the branch was re-versioned as a
  separate, content-neutral commit): package + IG + **every conformance resource** now carry the
  package version (superseded per-resource drift recorded in the run log: SDs 1.0.9/1.0.8/1.0.8,
  CS 1.1.0/0.2.0/1.6.0, VS 1.0.1/1.6.0/1.0.3, SPs 1.0.7), `releaseLabel: ballot`,
  sequence 2027, date/approval stand-ins 2026-08-31; the changelog carries the new version
  section in both languages. Content is **identical to release 2026.0.0**.

* **Source:** tag `2026.0.0` = `792f9f3e` (== `master`; == registry `dist-tags.latest`; == the only
  Simplifier guide version). Shape **B**: 20 raw Forge XML/JSON resources, no build scaffolding, no CI;
  the whole narrative (18 pages) existed ONLY on Simplifier.
* **What happened:** goFSH 2.6.1 derivation (SUSHI errors **41 → 5 → 0**, the 5 = the parent-snapshot
  class), narrative harvest **18/18/0** (twice: preservation + run-of-record, byte-identical), template
  v0.13.2 skeleton **DE-first** (decision D-3, incl. the 3-file CI patch), artefact transfer with IDs
  and canonicals **byte-unchanged**, bilingual EN mirror (machine-translated, Gate C), full IG-Publisher
  2.3.2 render with **0 broken links**.
* **QA vs source:** the source had NO QA baseline — one was built (publisher-in-Docker wrapper around
  the unmigrated resources): **source 67 validation errors, migrated 70**, with the +3 fully attributed:
  the added registry-only 6th example (D-14, 15 errors of the same classes as its siblings) against
  resolved wrapper-artefacts. **Zero migration-introduced error classes** (two first-build regressions —
  24 SearchParameter id-mismatches, category slice-append duplication — were fixed, not triaged;
  `migration-log/qa-delta.txt`).
* **Verification (mechanical):** `verify-migration` = **99 IDENTISCH / 33 DIVERGIERT / 15 NICHT PRÜFBAR**;
  every DIVERGIERT is adjudicated in the run log (C4/C7 = the documented link-stripping checker
  limitation, spot-refuted on 5 samples; R1 = Simplifier chrome tables; R2 = publisher-own
  `searchform {{title}}`; F1/F2 = the two recorded decisions). Every NICHT PRÜFBAR is named below.
* **Conservation:** C1 **20/20 source artefacts present** (by id/canonical); C2 every generated
  resource rendered + listed in both language variants; C3 **18/18 harvested pages** consumed by the
  reviewed page map.

## Where the evidence lives

Everything is in `migration-log/` on this branch: `run.log` (the protocol below is generated from it),
`identity-claims.tsv`, `guide-harvest.tsv` + `guide-harvest/` (run-of-record harvest incl. HTML),
`page-map.tsv` (REVIEWED contract, 10 `[MAP-EDIT]` rows), `derived-content.tsv` (10 markers),
`qa-baseline-source.txt` + `qa-target.txt` + `qa-delta.txt` (the QA acceptance evidence),
`qa-baseline-wrapper/` (the throwaway wrapper config that produced the baseline),
`preflight-analysis.json` / `postflight-analysis.json` / `prepost-delta.md` /
`same-module-comparison.md`, `verification-findings.tsv` + `verification.md`,
`template-pages-v0.13.2.tsv` + `template-artifacts-v1.3.4.tsv` (re-measured manifests, decision D-11),
`source-inventory.json`. The plan + recon + preservation harvest: branch `evidence/2026-08-31-plan-recon`.

## ① Decision queue (Gate A — someone must choose)

| # | Decision | Who | State / if nobody acts | Effort · Reversibility |
|---|---|---|---|---|
| ①-1 | **D-0 GO**: the VENUE half is decided — the branch sits on the official repository (operator instruction, 2026-08-31); the OWNER half stays open: review Gates A–D and decide the MERGE (merging adopts the template structure for the module) | Owners (Stäubert/Bialke, TF CU) | The branch stays an open draft PR; the module's published state is untouched | review · deleting the branch reverts everything |
| ①-2 | **D-1 licence field**: `license: CC-BY-4.0` now machine-readable in sushi-config (the release never declared one; LICENSE file + guide prose agree) | Owners | Without sign-off, published metadata would gain a field the release lacked | 1 line · trivial |
| ①-3 | **D-2 baseline + version**: migrated CONTENT = tag 2026.0.0 (the develop/rc-line — 18 commits ahead, rc-1..rc-4, parent 2.0.3 — deliberately NOT migrated); target VERSION = **2027.0.0-ballot.rc1** (operator instruction; per-resource versions harmonized to it — confirm the ballot-RC versioning fits the TF-CU 2027 schedule) | Owners | The ballot-RC version ships; content stays 2026.0.0-identical | ~½ day re-run on a newer tag · version = 1 commit |
| ①-4 | **D-4 parent snapshots**: `de.einwilligungsmanagement` ships 0 snapshots (2.0.2 AND 2.0.3) → CI prebuild (`scripts/generate-parent-snapshots.sh`, official HL7 generator, cache entry `2.0.2-snapshots`); 3 of 21 differentials REFUSED by the generator (TemplateFrame, TemplateModule, QuestionnaireComposed — none a parent here) | Operator chose; owners informed; **upstream escalation to the einwilligungsmanagement maintainers open** | Without the prebuild no build anywhere resolves the parent | shipped · revertible |
| ①-5 | **D-5 ids**: profile UUID ids + ART-DECOR VS/CS ids kept verbatim (guardrail); the 6 id-LESS SearchParameters got minted ids = their canonical tails (`mii-sp-consent-*`) | Owners confirm minted ids | id/url-mismatch QA errors stay (they are source-inherent for SD/VS/CS) | n/a · minted ids trivially renameable |
| ①-6 | **D-6 status**: `active` (guide index) over `draft` (Simplifier IG skeleton) — both readings in the ledger | Owners | — | 1 line |
| ①-7 | **D-10 topic code**: `{TOPIC_NCI_CODE}` = **C16735 "Informed Consent"** (verified against NCI EVS live) | Owners | A wrong topic code ships in the CRMI metadata | 1 line |
| ①-8 | **D-14 sixth example**: `Example_MII_Consent_Einwilligung_1` exists ONLY in the published package (not in git) — INCLUDED from the pinned tarball | Owners (include vs record exclusion) | Included: the package the release published stays complete | delete 1 file |
| ①-9 | **§9b CapabilityStatement**: source ships none → SUGGESTED `mii-cap-consent-server` (draft/requirements/experimental, derived from the module's own profiles + SPs, marked in FSH + on the page) | Owners confirm / amend / **delete** | The proposal renders marked as such | delete 1 file + page text |
| ①-10 | **F1 title**: `MII Implementation Guide Consent` (template convention M4) vs source README `Medizininformatik Initiative - Modul Consent` | Owners | Template-convention title ships | 1 line |
| ①-11 | **Stand-ins** (DERIVED:stand-in): APPROVAL_DATE = release date 2025-12-18 (no upstream record); MODULE_AUTHOR_EMAIL = info@medizininformatik-initiative.de | Owners | Stand-ins ship visibly marked | 2 lines |

## ② Review queue (Gates B/C — someone must check)

* **Gate B (narrative):** the REVIEWED `page-map.tsv` (10 `[MAP-EDIT]` rows — datasets→logical-models
  per §9a, profile pages→intro-notes with recorded SPLITs, Empfehlungen→implementer-guidance with the
  researcher-guidance REMOVE); the M9 removals (researcher-guidance, extensions, operations, metadata);
  M11 stage 3 = the source's own "Datenschutz-Aspekte" section (NOT the default text); source-defect
  repairs (4 broken `pagelink` directives → code-systems links; the source's broken Provenance XML
  render documented); the ART-DECOR terminology gap carried verbatim ("werden zeitnah durch die TFCU …").
* **Gate C (language):** every English page is a **machine translation** of its German source, marked
  `machine translation of source page <name> (de)` — 17 translated files + the IG-level `.po`
  (19/19 titles). German is the default language (DE-first, D-3).
* **Derived content (generated ledger):** 10 markers (8 bridge / 2 suggestion) — `migration-log/derived-content.tsv`; derived-scan clean.

## ③ QA triage (what the build says, and whose problem it is)

* `qa.txt`: **err 70 / warn 137 / info 498; broken links 0** (source baseline: err 67 — built for this
  migration, see `qa-baseline-*`). Attribution per class in `qa-delta.txt` + run.log `5.6 ig-publisher`:
  id/url-mismatch family (SD/VS/CS — source-inherent, D-5), instance validation classes incl. the
  **dangling `mii-cs-consent-consent_category`** the release itself carries (D-9 — the fix exists only
  on develop; owners' call), and the D-14 example's 15 sibling-class errors.
* `prepost-delta`: 1 REGRESSION row = **false positive** ("CC0" = substring of the source's typo'd
  policy display "MDAT GECC083 erheben"); adjudicated with evidence; licence is uncontradicted CC-BY-4.0.
* **Upstream findings for the owners** (never patched here): einwilligungsmanagement 0-snapshots + 3
  refused differentials; `GECC083` display typo; broken pagelink/xml renders in the source guide;
  dangling `consent_category` CodeSystem on the release; registry rc-line drift (2026.0.1-rc-1..4).

## Identity (generated — where each value came from)

| Field | Tier | Source | Value | Contradiction |
| --- | --- | --- | --- | --- |
| packageId | P | package/package.json | de.medizininformatikinitiative.kerndatensatz.consent |  |
| version | P | package/package.json | 2026.0.0 |  |
| description | P | package/package.json | KDS Modul Consent Release 2026.0.0 | YES -- Gate A |
| fhirVersions | P | package/package.json | ["4.0.1"] |  |
| jurisdiction | P | package/package.json | urn:iso:std:iso:3166#DE |  |
| dependency:de.einwilligungsmanagement | P | package/package.json (source pin) | 2.0.2 |  |
| dependency:hl7.fhir.r4.core | P | package/package.json (source pin) | 4.0.1 |  |
| canonical | P | packaged resource urls (13 of 13 agree) | https://www.medizininformatik-initiative.de/fhir/modul-consent |  |
| title | R | README.md first heading | Medizininformatik Initiative - Modul Consent |  |
| license | R | LICENSE (text matched) | CC-BY-4.0 |  |
| description | R | GitHub repository description | Kerndatensatzmodul Consent | YES -- Gate A |
| license | R | GitHub license.spdx_id | CC-BY-4.0 |  |
| status | P | packaged ImplementationGuide.json (Simplifier skeleton) | draft | YES -- Gate A |
| status | H | guide index table Status column (recon/guide.md g.1; human-read at Gate A) | active | YES -- Gate A |

The `publisher` in sushi-config is **NUM-DIZ template chrome** (spec §2.2, deliberate exception);
the recovered TFCU/MII strings live in the ledger as content attribution only.

## Content map (generated — where every source page went)

> **Preview links:** the rendered-target links point at the FGDH sandbox's branch
> preview (it builds and serves TODAY). Once GitHub Pages is enabled on
> `medizininformatik-initiative/kerndatensatzmodul-consent`, the identical preview
> appears under `https://medizininformatik-initiative.github.io/kerndatensatzmodul-consent/branches/…`.

### Comparison table (GENERATED by comparison-table.py — do not retype; regenerate instead)

This table belongs inside `migration-log/migration-report.md` (section *Content map*), whose glossary explains every term used here; `references/codes.md` of the skill is the backstop. "Agreed page" = a page of the template's fixed menu; "migration-written blocks" = passages the migration WROTE rather than carried, marked in the rendered guide and listed per page in `derived-content.tsv`. Found a discrepancy while comparing? Record it as a report item (REV-n) — never fix a page ad hoc.

**Where every source page went** — one row per page-map row; open both links side by side to compare manually. *(constructed)* marks a source link derived from the guide root rather than read from the harvest manifest.

| Rendered source page | Rendered target page | What moved | Migration-written blocks on the target |
|---|---|---|---|
| [`index.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0) | [`input/pagecontent/index.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/index.html) | merged into an agreed page | — |
| [`release-notes.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Release-Notes?version=2026.0.0) | [`input/pagecontent/changes.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/changes.html) | merged into an agreed page | — |
| [`beschreibung-modul-consent.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Beschreibung-Modul-Consent?version=2026.0.0) | [`input/pagecontent/index.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/index.html) | merged into an agreed page | — |
| [`kontextimgesamtprojektbezgezuanderenmodulen.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/KontextimGesamtprojektBezgezuanderenModulen?version=2026.0.0) | [`input/pagecontent/implementer-guidance.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/implementer-guidance.html) | merged into an agreed page | 2 |
| [`referenzen.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Referenzen?version=2026.0.0) | [`input/pagecontent/implementer-guidance.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/implementer-guidance.html) | merged into an agreed page | 2 |
| [`anwendungsflleinformationsmodell.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell?version=2026.0.0) | [`input/pagecontent/logical-models.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/logical-models.html) | merged into an agreed page | — |
| [`anwendungsflleinformationsmodell-beschreibungvonszenarienfrdieanwendungdesmoduls.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungdesModuls?version=2026.0.0) | [`input/pagecontent/guidance.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/guidance.html) | merged into an agreed page | 2 |
| [`anwendungsflleinformationsmodell-datenstzeinkl.beschreibungen.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen?version=2026.0.0) | [`input/pagecontent/logical-models.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/logical-models.html) | merged into an agreed page | — |
| [`anwendungsflleinformationsmodell-uml.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/UML?version=2026.0.0) | [`input/pagecontent/uml-diagrams.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/uml-diagrams.html) | merged into an agreed page | — |
| [`anwendungsflleinformationsmodell-fragebgen.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/Fragebgen?version=2026.0.0) | [`input/pagecontent/frageboegen.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/frageboegen.html) | its own page | — |
| [`technischeimplementierung.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung?version=2026.0.0) | [`input/pagecontent/implementer-guidance.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/implementer-guidance.html) | merged into an agreed page | 2 |
| [`technischeimplementierung-fhirprofile.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile?version=2026.0.0) | [`input/pagecontent/profiles.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/profiles.html) | merged into an agreed page | — |
| [`technischeimplementierung-fhirprofile-consent.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Consent?version=2026.0.0) | [`input/intro-notes/StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0-intro.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0.html) *(renders inside the artefact page)* | into an artefact's intro note | 2 |
| [`technischeimplementierung-fhirprofile-provenance.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Provenance?version=2026.0.0) | [`input/intro-notes/StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464-intro.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`technischeimplementierung-fhirprofile-documentreference.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/DocumentReference?version=2026.0.0) | [`input/intro-notes/StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c-intro.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.html) *(renders inside the artefact page)* | into an artefact's intro note | — |
| [`technischeimplementierung-fhirprofile-weitererelevanteprofile.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/WeitererelevanteProfile?version=2026.0.0) | [`input/pagecontent/profiles.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/profiles.html) | merged into an agreed page | — |
| [`technischeimplementierung-fhirprofile-empfehlungen-zur-praktischen-anwendung.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Empfehlungen-zur-praktischen-Anwendung?version=2026.0.0) | [`input/pagecontent/implementer-guidance.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/implementer-guidance.html) | merged into an agreed page | 2 |
| [`technischeimplementierung-terminologien.md`](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/Terminologien?version=2026.0.0) | [`input/pagecontent/code-systems.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/code-systems.html) | merged into an agreed page | — |

**The template's own pages** — the template puts these pages in EVERY module, so their EXISTENCE needs no source page; per row whether their CONTENT stayed template-default or also receives source content. Class: `scaffold` = the template ships it and every module keeps it · `optional` = kept only while artefacts of its type exist (check M9) · `demo` = must be gone on a release branch (check M8).

| Template page | Class | Receives source content? | Migration-written blocks |
|---|---|---|---|
| [`input/pagecontent/capability-statements.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/capability-statements.html) | scaffold | no — template content | 2 |
| [`input/pagecontent/changes.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/changes.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/code-systems.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/code-systems.html) | optional | yes — see its rows above | — |
| [`input/pagecontent/downloads.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/downloads.html) | scaffold | no — template content | — |
| [`input/pagecontent/examples.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/examples.html) | scaffold | no — template content | 2 |
| [`input/pagecontent/extensions.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/extensions.html) | optional | no — template content | — |
| [`input/pagecontent/guidance.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/guidance.html) | scaffold | yes — see its rows above | 2 |
| [`input/pagecontent/implementer-guidance.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/implementer-guidance.html) | scaffold | yes — see its rows above | 2 |
| [`input/pagecontent/index.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/index.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/logical-models.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/logical-models.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/metadata.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/metadata.html) | optional | no — template content | — |
| [`input/pagecontent/operations.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/operations.html) | optional | no — template content | — |
| [`input/pagecontent/profiles.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/profiles.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/rendering-artifacts.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/rendering-artifacts.html) | demo | no — template content | — |
| [`input/pagecontent/researcher-guidance.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/researcher-guidance.html) | optional | no — template content | — |
| [`input/pagecontent/search-parameters.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/search-parameters.html) | optional | no — template content | — |
| [`input/pagecontent/security-and-privacy.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/security-and-privacy.html) | scaffold | no — template content | — |
| [`input/pagecontent/translationinfo.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/translationinfo.html) | scaffold | no — template content | — |
| [`input/pagecontent/uml-diagrams.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/uml-diagrams.html) | scaffold | yes — see its rows above | — |
| [`input/pagecontent/value-sets.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/value-sets.html) | optional | no — template content | — |
| [`input/pagecontent/version-history.md`](https://forschungsgruppe-digital-health.github.io/mii-kds-consent-ig-inoffiziell/branches/migration%2F2027.0.0-ballot.rc1-template-v0.13.2/de/version-history.html) | scaffold | no — template content | — |

## Verification (generated — paste of `migration-log/verification.md`)

## Verification (generated — do not retype)

Produced by `verify-migration.py` from the target tree AND `migration-log/run.log`, the two oracles. **99 IDENTISCH · 33 DIVERGIERT · 15 NICHT PRÜFBAR.**

Verdicts: **IDENTISCH** = matches the source · **DIVERGIERT** = differs, named below · **NICHT PRÜFBAR** = could not be checked, which is **not** a pass and owes a named human an action.

| Layer | Check | What it asks | IDENTISCH | DIVERGIERT | NICHT PRÜFBAR |
|---|---|---|---|---|---|
| conservation | C1 | every source artefact still exists in the migrated module | 1 | 0 | 0 |
| conservation | C2 | every artefact is reachable from the rendered Artifacts page | 2 | 0 | 0 |
| conservation | C3 | every source guide page was migrated or explicitly retired | 18 | 0 | 0 |
| conservation | C4 | the source's narrative text is present somewhere in the target | 1 | 14 | 3 |
| conservation | C5 | menus lead somewhere, and every page is in a menu | 4 | 0 | 0 |
| conservation | C6 | each text passage landed on the page the page map promised | 16 | 0 | 0 |
| conservation | C7 | content the migration wrote is marked as such in the guide | 0 | 10 | 3 |
| fidelity | F1 | module identity is unchanged (id, canonical, version, licence, ...) | 4 | 1 | 4 |
| fidelity | F2 | dependency versions are pinned exactly as the source pinned them | 1 | 1 | 3 |
| fidelity | F3 | the licence is asserted from evidence, never defaulted | 2 | 0 | 0 |
| fidelity | F4 | no mechanical FSH conversion residue is left | 1 | 0 | 0 |
| provenance | P1 | the rendered site reports the template package it was built with | 1 | 0 | 0 |
| provenance | P2 | the module-template ref the skeleton came from is the latest release | 1 | 0 | 0 |
| provenance | P3 | the IG Publisher version matches the workflow pin | 1 | 0 | 1 |
| provenance | P4 | the source guide was pinned to a published version, not 'current' | 1 | 0 | 0 |
| provenance | P5 | ig.ini points at the IG resource the build actually writes | 1 | 0 | 0 |
| rendering | R1 | tables, tabs and images render with content, not empty | 3 | 5 | 0 |
| rendering | R2 | page header and footer metadata render correctly | 0 | 2 | 0 |
| rendering | R3 | a translated page really differs from the default language | 1 | 0 | 0 |
| rendering | R4 | no links point at template example artefacts that were deleted | 1 | 0 | 0 |
| rendering | R5 | every page has a title unit in the translation catalogue | 1 | 0 | 0 |
| log | L0 | a run log exists at all | 1 | 0 | 0 |
| log | L1 | every partial-success warning was acted on | 1 | 0 | 0 |
| log | L2 | every expected step actually wrote a log line | 30 | 0 | 1 |
| log | L3 | no identity contradiction is still open | 3 | 0 | 0 |
| log | L4 | the log's counts agree with what the tree holds | 3 | 0 | 0 |

### DIVERGIERT — each one a stop or a recorded decision

| id | Check | What it asks | Subject | Evidence | Next action | Auto-fixable |
|---|---|---|---|---|---|---|
| `C4-9eb98a` | C4 | the source's narrative text is present somewhere in the target | anwendungsflleinformationsmodell-beschreibungvonszenarienfrdieanwendungdesmoduls.md | 2 of 8 PROSE runs of the source page are in no target page (first: ## Beschreibung von Szenarien für die Anwendung des Moduls D…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-a1c54a` | C4 | the source's narrative text is present somewhere in the target | anwendungsflleinformationsmodell-datenstzeinkl.beschreibungen.md | 1 of 3 PROSE runs of the source page are in no target page (first: - [formularbasierte Beschreibung MII Dataset, Concept 'Conse…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-b9b940` | C4 | the source's narrative text is present somewhere in the target | anwendungsflleinformationsmodell-fragebgen.md | 7 of 14 PROSE runs of the source page are in no target page (first: ## Fragebögen Die [AG Einwilligungsmanagement]( hat sich umf…); 5 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-7494b2` | C4 | the source's narrative text is present somewhere in the target | anwendungsflleinformationsmodell-uml.md | 6 of 17 PROSE runs of the source page are in no target page (first: ## UML ### [Consent]( Die Consent-Resource stellt eine rein …) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-e5132a` | C4 | the source's narrative text is present somewhere in the target | anwendungsflleinformationsmodell.md | 1 of 1 PROSE runs of the source page are in no target page (first: ## Anwendungsfälle / Informationsmodell Diese Seite wurde ab…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-f2a3c5` | C4 | the source's narrative text is present somewhere in the target | beschreibung-modul-consent.md | 3 of 4 PROSE runs of the source page are in no target page (first: # Beschreibung Modul Consent ![]( Das MII KDS Modul Consent …) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-ef59ff` | C4 | the source's narrative text is present somewhere in the target | index.md | 4 of 18 PROSE runs of the source page are in no target page (first: ## Kerndatensatz-Modul Consent Die vorliegende Spezifikation…); 6 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-c9ac53` | C4 | the source's narrative text is present somewhere in the target | kontextimgesamtprojektbezgezuanderenmodulen.md | 1 of 4 PROSE runs of the source page are in no target page (first: ### Verweise auf andere Vorhaben In der [Handreichung]( zur …) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-5f8d7e` | C4 | the source's narrative text is present somewhere in the target | referenzen.md | 2 of 3 PROSE runs of the source page are in no target page (first: - [Implementation Guide der Arbeitsgruppe Einwilligungsmanag…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-76968d` | C4 | the source's narrative text is present somewhere in the target | release-notes.md | 1 of 20 PROSE runs of the source page are in no target page (first: ## Release Notes ### Version 2026.0.0 Datum 18.12.2025 - Val…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-8434d0` | C4 | the source's narrative text is present somewhere in the target | technischeimplementierung-fhirprofile-empfehlungen-zur-praktischen-anwendung.md | 4 of 13 PROSE runs of the source page are in no target page (first: ## Empfehlungen zur praktischen Anwendung ### Bedeutung der …); 4 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-09788a` | C4 | the source's narrative text is present somewhere in the target | technischeimplementierung-fhirprofile-weitererelevanteprofile.md | 1 of 4 PROSE runs of the source page are in no target page (first: ## Weitere relevante Profile Neben [Consent]( [Provenance]( …); 11 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-909a4e` | C4 | the source's narrative text is present somewhere in the target | technischeimplementierung-fhirprofile.md | 1 of 5 PROSE runs of the source page are in no target page (first: ### Verpflichtende / must-support Elemente Für **verpflichte…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-ccb0aa` | C4 | the source's narrative text is present somewhere in the target | technischeimplementierung-terminologien.md | 9 of 19 PROSE runs of the source page are in no target page (first: ## Terminologien ### ValueSets This value set includes codes…); 131 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C7-bd1fc5` | C7 | content the migration wrote is marked as such in the guide | logical-models | 1 of 3 prose runs of the source page anwendungsflleinformationsmodell-datenstzeinkl.beschreibungen.md are in no target page (C4), and logical-models carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-d2e35f` | C7 | content the migration wrote is marked as such in the guide | frageboegen | 7 of 14 prose runs of the source page anwendungsflleinformationsmodell-fragebgen.md are in no target page (C4), and frageboegen carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-8a1680` | C7 | content the migration wrote is marked as such in the guide | uml-diagrams | 6 of 17 prose runs of the source page anwendungsflleinformationsmodell-uml.md are in no target page (C4), and uml-diagrams carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-c764cd` | C7 | content the migration wrote is marked as such in the guide | logical-models | 1 of 1 prose runs of the source page anwendungsflleinformationsmodell.md are in no target page (C4), and logical-models carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-0209b1` | C7 | content the migration wrote is marked as such in the guide | index | 3 of 4 prose runs of the source page beschreibung-modul-consent.md are in no target page (C4), and index carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-668b36` | C7 | content the migration wrote is marked as such in the guide | index | 4 of 18 prose runs of the source page index.md are in no target page (C4), and index carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-4f50d8` | C7 | content the migration wrote is marked as such in the guide | changes | 1 of 20 prose runs of the source page release-notes.md are in no target page (C4), and changes carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-8c8c7d` | C7 | content the migration wrote is marked as such in the guide | profiles | 1 of 4 prose runs of the source page technischeimplementierung-fhirprofile-weitererelevanteprofile.md are in no target page (C4), and profiles carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-ae2f0c` | C7 | content the migration wrote is marked as such in the guide | profiles | 1 of 5 prose runs of the source page technischeimplementierung-fhirprofile.md are in no target page (C4), and profiles carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `C7-fabfa8` | C7 | content the migration wrote is marked as such in the guide | code-systems | 9 of 19 prose runs of the source page technischeimplementierung-terminologien.md are in no target page (C4), and code-systems carries no DERIVED marker at all -- text was rewritten and the guide does not say so | mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead | no |
| `F1-b5b102` | F1 | module identity is unchanged (id, canonical, version, licence, ...) | title | target MII Implementation Guide Consent  vs  source Medizininformatik Initiative - Modul Consent | the SOURCE wins (spec 2.2); restore it or record the divergence as a Gate-A decision -- never normalise silently | no |
| `F2-94f168` | F2 | dependency versions are pinned exactly as the source pinned them | de.einwilligungsmanagement | target 2.0.2-snapshots  vs  source pin 2.0.2 (migration-log/identity-claims.tsv, tier(s) P) | the source pin is the evidence; a registry dist-tag is not. Restore the pin or make the bump a Gate-A decision | no |
| `R2-48ed52` | R2 | page header and footer metadata render correctly | output/de id="ig-status" [{{] | on 1 page(s), e.g. searchform.html: Search {{title}} (Current Build) | rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) | no |
| `R2-d1da9a` | R2 | page header and footer metadata render correctly | output/en id="ig-status" [{{] | on 1 page(s), e.g. searchform.html: Search {{title}} (Current Build) | rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) | no |
| `R1-51f27a` | R1 | tables, tabs and images render with content, not empty | release-notes -> changes.html | source rendering had 1 tables; the target page has none | a live table or figure that vanished in migration is a CONTENT loss the build cannot see -- restore it or record the substitution in the report's content map | no |
| `R1-954cb2` | R1 | tables, tabs and images render with content, not empty | anwendungsflleinformationsmodell -> logical-models.html | source rendering had 1 tables; the target page has none | a live table or figure that vanished in migration is a CONTENT loss the build cannot see -- restore it or record the substitution in the report's content map | no |
| `R1-3aa2ea` | R1 | tables, tabs and images render with content, not empty | anwendungsflleinformationsmodell-beschreibungvonszenarienfrdieanwendungdesmoduls -> guidance.html | source rendering had 1 tables; the target page has none | a live table or figure that vanished in migration is a CONTENT loss the build cannot see -- restore it or record the substitution in the report's content map | no |
| `R1-7580db` | R1 | tables, tabs and images render with content, not empty | anwendungsflleinformationsmodell-datenstzeinkl.beschreibungen -> logical-models.html | source rendering had 1 tables; the target page has none | a live table or figure that vanished in migration is a CONTENT loss the build cannot see -- restore it or record the substitution in the report's content map | no |
| `R1-ba859a` | R1 | tables, tabs and images render with content, not empty | anwendungsflleinformationsmodell-uml -> uml-diagrams.html | source rendering had 1 tables; the target page has none | a live table or figure that vanished in migration is a CONTENT loss the build cannot see -- restore it or record the substitution in the report's content map | no |

### NICHT PRÜFBAR — not a pass; each needs a human

| id | Check | What it asks | Subject | Why not mechanisable | Who does what |
|---|---|---|---|---|---|
| `C4-b8093b` | C4 | the source's narrative text is present somewhere in the target | technischeimplementierung-fhirprofile-consent.md | the source page embeds an element-tree rendering (174 occurrences of the renderer's marker); 1039 of 1093 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-7926aa` | C4 | the source's narrative text is present somewhere in the target | technischeimplementierung-fhirprofile-documentreference.md | the source page embeds an element-tree rendering (60 occurrences of the renderer's marker); 363 of 364 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-a4c8ef` | C4 | the source's narrative text is present somewhere in the target | technischeimplementierung-fhirprofile-provenance.md | the source page embeds an element-tree rendering (66 occurrences of the renderer's marker); 380 of 380 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C7-40e18f` | C7 | content the migration wrote is marked as such in the guide | technischeimplementierung-fhirprofile-consent.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-42473f` | C7 | content the migration wrote is marked as such in the guide | technischeimplementierung-fhirprofile-documentreference.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-059fd9` | C7 | content the migration wrote is marked as such in the guide | technischeimplementierung-fhirprofile-provenance.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `F1-093008` | F1 | module identity is unchanged (id, canonical, version, licence, ...) | id | no source value (neither the source tree nor the claims ledger yields one) | supply it at Gate A -- an identity field nobody can compare is not a field that matches |
| `F1-8a3995` | F1 | module identity is unchanged (id, canonical, version, licence, ...) | status | the claims ledger holds 2 contradicting readings (active, draft) | decide the field at Gate A (check L3), then re-run verification |
| `F1-5451f2` | F1 | module identity is unchanged (id, canonical, version, licence, ...) | publisher | no source value (neither the source tree nor the claims ledger yields one) | supply it at Gate A -- an identity field nobody can compare is not a field that matches |
| `F1-f60f40` | F1 | module identity is unchanged (id, canonical, version, licence, ...) | fhirVersion | no source value (neither the source tree nor the claims ledger yields one) | supply it at Gate A -- an identity field nobody can compare is not a field that matches |
| `F2-fd0e73` | F2 | dependency versions are pinned exactly as the source pinned them | hl7.fhir.uv.crmi | target-only dependency 2.0.0 (not in the source) | confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition |
| `F2-047205` | F2 | dependency versions are pinned exactly as the source pinned them | hl7.fhir.uv.extensions.r4 | target-only dependency 5.3.0 (not in the source) | confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition |
| `F2-8f9355` | F2 | dependency versions are pinned exactly as the source pinned them | hl7.terminology.r4 | target-only dependency 7.3.0 (not in the source) | confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition |
| `P3-c39a79` | P3 | the IG Publisher version matches the workflow pin | IG Publisher currency | the publisher reports itself out of date (current 2.3.3) | upgrading the publisher is a target-repository decision, not a migration one -- record it, do not act on it here |
| `L2-07bdbb` | L2 | every expected step actually wrote a log line | 5.1c simplifier-discover | no line in the log; the step is conditional (no rendered-IG URL was supplied) | confirm the condition did not hold -- Without the discovery chain the guide is not found, and a migration then ships the template's starter pages. |

**Inputs:** target `.` · source `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/recon/source-tag` · rendered `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/target/output` · log `migration-log/run.log`

## Sign-off (generated checklist)

### QA checklist (GENERATED by qa-checklist.py — do not retype; regenerate instead)

One checkbox per open obligation, from the machine ledgers. Ticking a box asserts the *named person* did the *named thing*. This list belongs inside `migration-log/migration-report.md` (section *Sign-off*): the detail behind every item id, the glossary for every code, term, gate owner and source shape, and the *How to re-run* commands all live there (and in the skill's `references/codes.md`). Pages named bare live in `input/pagecontent/`; names ending in `-intro` live in `input/intro-notes/`. 99 finding(s) verdicted IDENTISCH owe nobody anything and are not listed.

#### Gate A — identity (module maintainer, with TF-KDS)

- [ ] **F1 ×3** (F1 - module identity unchanged): supply it at Gate A -- an identity field nobody can compare is not a field that matches — *do the named action so the check can run - this is not a pass*  <sub>ids: F1-093008, F1-5451f2, F1-f60f40</sub>
- [ ] **F1-8a3995** (F1 - module identity unchanged): decide the field at Gate A (check L3), then re-run verification — *do the named action so the check can run - this is not a pass*
- [ ] **F1-b5b102** (F1 - module identity unchanged): the SOURCE wins (spec 2.2); restore it or record the divergence as a Gate-A decision -- never normalise silently — *fix it, or accept it with a named reason in the report*
- [ ] **F2-94f168** (F2 - dependency pins identical to the source's): the source pin is the evidence; a registry dist-tag is not. Restore the pin or make the bump a Gate-A decision — *fix it, or accept it with a named reason in the report*
- [ ] **F2 ×3** (F2 - dependency pins identical to the source's): confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition — *do the named action so the check can run - this is not a pass*  <sub>ids: F2-fd0e73, F2-047205, F2-8f9355</sub>
- [ ] **identity `description`** claims 2 different values: `KDS Modul Consent Release 2026.0.0` (package/package.json) vs `Kerndatensatzmodul Consent` (GitHub repository description) — *choose one and record why*
- [ ] **identity `status`** claims 2 different values: `draft` (packaged ImplementationGuide.json (Simplifier skeleton)) vs `active` (guide index table Status column (recon/guide.md g.1; human-read at Gate A)) — *choose one and record why*
- [ ] **`capability-statements`**: review 2 migration-written block(s) (suggestion; default/en) — *keep, correct, or delete each one*

#### Gate B — narrative (the module's clinical and technical authors)

- [ ] **C4 ×14** (C4 - the source's narrative text present somewhere): map the missing text to a target page section, or record the loss in the report's content map — *fix it, or accept it with a named reason in the report*  <sub>ids: C4-9eb98a, C4-a1c54a, C4-b9b940, C4-7494b2, C4-e5132a, C4-f2a3c5, C4-ef59ff, C4-c9ac53, C4-5f8d7e, C4-76968d, C4-8434d0, C4-09788a, C4-909a4e, C4-ccb0aa</sub>
- [ ] **C4 ×3** (C4 - the source's narrative text present somewhere): read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here — *do the named action so the check can run - this is not a pass*  <sub>ids: C4-b8093b, C4-7926aa, C4-a4c8ef</sub>
- [ ] **R2 ×2** (R2 - page header/footer metadata render correctly): rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) — *fix it, or accept it with a named reason in the report*  <sub>ids: R2-48ed52, R2-d1da9a</sub>
- [ ] **R1 ×5** (R1 - tables, tabs and images render with content): a live table or figure that vanished in migration is a CONTENT loss the build cannot see -- restore it or record the substitution in the report's content map — *fix it, or accept it with a named reason in the report*  <sub>ids: R1-51f27a, R1-954cb2, R1-3aa2ea, R1-7580db, R1-ba859a</sub>
- [ ] **`StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0-intro`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`examples`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`guidance`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`implementer-guidance`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*

#### Gate C — language (a reviewer competent in both languages)

- [ ] **C7 ×10** (C7 - migration-written content is marked as such): mark the passage per spec section 9d (the DERIVED comment plus the visible box, in BOTH language mirrors), or restore the source wording; if the text was deliberately dropped, record that in migration-log/page-map.tsv instead — *fix it, or accept it with a named reason in the report*  <sub>ids: C7-bd1fc5, C7-d2e35f, C7-8a1680, C7-c764cd, C7-0209b1, C7-668b36, C7-4f50d8, C7-8c8c7d, C7-ae2f0c, C7-fabfa8</sub>
- [ ] **C7 ×3** (C7 - migration-written content is marked as such): read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d — *do the named action so the check can run - this is not a pass*  <sub>ids: C7-40e18f, C7-42473f, C7-059fd9</sub>

#### Gate D — release (TF-KDS / AG IOP / NSG; merging is what publishes)

- [ ] **P3-c39a79** (P3 - IG Publisher version matches the workflow pin): upgrading the publisher is a target-repository decision, not a migration one -- record it, do not act on it here — *do the named action so the check can run - this is not a pass*
- [ ] **L2-07bdbb** (L2 - every expected step wrote a log line): confirm the condition did not hold -- Without the discovery chain the guide is not found, and a migration then ships the template's starter pages. — *do the named action so the check can run - this is not a pass*
- [ ] **pre/post delta**: `prepost-delta.md` shows no REGRESSION row, or every regression is explained in the report — *never merged unexplained*
- [ ] **CI**: the module's own checks are green on the migration branch
- [ ] **gates A–C**: signed by the named reviewers above
- [ ] **publication decision**: recorded with name and date — *merging is what publishes*

<!-- REPORT-AUTHORED ITEMS - the generator cannot enumerate judgement.
     Add ONE checkbox per DEC-n / REV-n / QA-n block of this report,
     under the gate that owns it, in the form:
     - [ ] **DEC-1** <its one-line what> - *<its next action>*  -->

## Protocol (generated from `migration-log/run.log`)

```text
2026-08-31T17:34:03Z  INFO   log  run-boundary  ===== run 1 starts  run=1 label=Consent 2026.0.0 -> mii-kds-module-template v0.13.2 — sandbox route, skill mii-ig-migration v0.25.0 cwd=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/target log=migration-log/run.log
2026-08-31T17:34:03Z  INFO   pre.1  human-inputs  guide-url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0 repo-url=https://github.com/medizininformatik-initiative/kerndatensatzmodul-consent
2026-08-31T17:34:03Z  INFO   pre.2  classify-source-shape  shape=B src-commit=792f9f3e (tag 2026.0.0 == master)
2026-08-31T17:34:03Z  INFO   pre.3  target-state  venue=sandbox forschungsgruppe-digital-health/mii-kds-consent-ig-inoffiziell re-migration-context=stale-run-present
2026-08-31T17:34:03Z  INFO   pre.3  venue-decision  decision: sandbox route — NO owner GO exists (plan D-0 pending); user ordered execution 2026-08-31; MII repo untouched (read-only policy); in-place route requires owner mechanics + explicit re-authorization per plan section 7
2026-08-31T17:34:03Z  INFO   pre.4  placeholder-census  plan: census by EXCLUSION grep -rIl '{{' . --exclude-dir=.git, pre- and post-skeleton; --include lists forbidden (ig.ini killed a publisher run, PROs try-run)
2026-08-31T17:34:03Z  INFO   pre.5  toolchain  node=v22.22.3(nvm) sushi=npx-fsh-sushi@3.20.0 gofsh=npx-gofsh@2.6.1 python3=3.14.4 java=openjdk-25.0.2 validator_cli=6.10.0(pinned,fetch-on-detect) publisher=2.3.2-in-docker-hl7fhir/ig-publisher-base jekyll=4.4.1(container)
2026-08-31T17:34:03Z  INFO   2  baseline-decision  decision: source baseline = tag 2026.0.0 (792f9f3e); target version 2026.0.0 (plan D-2) — the only state where git tag, registry dist-tags.latest and guide version agree; develop/rc line (18 ahead, rc-1..rc-4) surfaced to owners as drift evidence, not migrated
2026-08-31T17:34:03Z  INFO   5.4  language-decision  decision: DE-first (i18n-default-lang=de) per MII wiki Release-2027 'IG Umbau - DE First' + Dokument PR #36 precedent (plan D-3) — conscious deviation from skill spec par.1/par.4.2 (EN-default); 3-file template-CI patch carried in skeleton commit
2026-08-31T17:34:03Z  INFO   5.6a  sibling-skill-check  start  cmd=`bash /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-44…`  raw_log=migration-log/sibling-skill-check.log
2026-08-31T17:34:03Z  INFO   5.6a  sibling-skill-check  sibling-skill-present  skill=fhir-ig-analysis path=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/recon/agent-skills/skills/fhir-ig-analysis roots_examined=1 ref=<ref> ref_source=not recorded
2026-08-31T17:34:03Z  INFO   5.6a  sibling-skill-check  done  cmd=`bash /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-44…`  exit=0 raw_log=migration-log/sibling-skill-check.log raw_log_lines=4
2026-08-31T17:34:03Z  INFO   1  preflight-analysis  start  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  raw_log=migration-log/preflight-analysis.log
2026-08-31T17:34:03Z  INFO   1  preflight-analysis  done  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  exit=0 raw_log=migration-log/preflight-analysis.log raw_log_lines=1
2026-08-31T17:38:53Z  WARN   1  preflight-analysis  reduced-census-limitation: ig-stats mode=reduced classifies NO raw Forge XML artefacts (census 0) and reads no canonical space from XML — measured on this run, this shape
2026-08-31T17:38:53Z  INFO   1  package-census  package=de.medizininformatikinitiative.kerndatensatz.consent@2026.0.0 census: StructureDefinition=3 SearchParameter=6 CodeSystem=3 ValueSet=3 ImplementationGuide=1(simplifier-skeleton,id-less) examples=6
2026-08-31T17:41:22Z  INFO   1  qa-baseline-wrapper  wrapper assembled at mig/qa-baseline (OUTSIDE the tree, throwaway): ig.ini(template=fhir.base.template) + hand-written IG resource listing all 20 tree resources + minimal index.md; dependsOn de.einwilligungsmanagement 2.0.2 (source pin)
2026-08-31T17:41:22Z  WARN   1  qa-baseline-wrapper  wrapper-adaptation: 6 id-less SearchParameters got ids minted from their canonical tails IN THE THROWAWAY COPIES ONLY (publisher cannot load an id-less resource); source files untouched; same ids goFSH will mint downstream (Gate-A item, plan D-5)
2026-08-31T17:44:35Z  INFO   1  qa-baseline-build  start  cmd=`docker run --rm -v /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e…`  raw_log=migration-log/qa-baseline-build.log
2026-08-31T17:45:01Z  INFO   2.1  package-identity  start  cmd=`bash /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-44…`  raw_log=migration-log/package-identity.log
2026-08-31T17:45:01Z  INFO   2.1  package-identity  params  package=de.medizininformatikinitiative.kerndatensatz.consent version=2026.0.0 registry=https://packages.simplifier.net work=/var/folders/d6/s255vt4x5pq9fy738bv7cs0h0000gq/T/tmp.5ClZ9RB9Vu
2026-08-31T17:45:01Z  INFO   2.1  package-identity  params  package=de.medizininformatikinitiative.kerndatensatz.consent version=2026.0.0 registry=https://packages.simplifier.net work=/var/folders/d6/s255vt4x5pq9fy738bv7cs0h0000gq/T/tmp.5ClZ9RB9Vu
2026-08-31T17:45:01Z  INFO   2.1  package-identity  version supplied by the operator  version=2026.0.0 source=--version package=de.medizininformatikinitiative.kerndatensatz.consent
2026-08-31T17:45:01Z  INFO   2.1  package-identity  version supplied by the operator  version=2026.0.0 source=--version package=de.medizininformatikinitiative.kerndatensatz.consent
2026-08-31T17:45:01Z  INFO   2.1  package-identity  fetched  cmd=`curl -sfL https://packages.simplifier.net/de.medizininformatikinitiative.kerndatensatz.consent/…`  bytes=12053 json_files=22 manifest=package/package.json
2026-08-31T17:45:01Z  INFO   2.1  package-identity  fetched  cmd=`curl -sfL https://packages.simplifier.net/de.medizininformatikinitiative.kerndatensatz.consent/…`  bytes=12053 json_files=22 manifest=package/package.json
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest field  name=de.medizininformatikinitiative.kerndatensatz.consent  -- = packageId (spec §2.1)
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest field  name=de.medizininformatikinitiative.kerndatensatz.consent  -- = packageId (spec §2.1)
2026-08-31T17:45:01Z  INFO   2.1  package-identity  identity-claim  field=packageId value=de.medizininformatikinitiative.kerndatensatz.consent tier=P source=package/package.json
2026-08-31T17:45:01Z  INFO   2.1  package-identity  identity-claim  field=packageId value=de.medizininformatikinitiative.kerndatensatz.consent tier=P source=package/package.json
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest field  version=2026.0.0  -- the module version -- authoritative for this RELEASE
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest field  version=2026.0.0  -- the module version -- authoritative for this RELEASE
2026-08-31T17:45:01Z  INFO   2.1  package-identity  identity-claim  field=version value=2026.0.0 tier=P source=package/package.json
2026-08-31T17:45:01Z  INFO   2.1  package-identity  identity-claim  field=version value=2026.0.0 tier=P source=package/package.json
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest field  description=KDS Modul Consent Release 2026.0.0
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest field  description=KDS Modul Consent Release 2026.0.0
2026-08-31T17:45:01Z  INFO   2.1  package-identity  identity-claim  field=description value=KDS Modul Consent Release 2026.0.0 tier=P source=package/package.json
2026-08-31T17:45:01Z  INFO   2.1  package-identity  identity-claim  field=description value=KDS Modul Consent Release 2026.0.0 tier=P source=package/package.json
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest field  fhirVersions=["4.0.1"]
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest field  fhirVersions=["4.0.1"]
2026-08-31T17:45:01Z  INFO   2.1  package-identity  identity-claim  field=fhirVersions value=["4.0.1"] tier=P source=package/package.json
2026-08-31T17:45:01Z  INFO   2.1  package-identity  identity-claim  field=fhirVersions value=["4.0.1"] tier=P source=package/package.json
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest field  jurisdiction=urn:iso:std:iso:3166#DE
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest field  jurisdiction=urn:iso:std:iso:3166#DE
2026-08-31T17:45:01Z  INFO   2.1  package-identity  identity-claim  field=jurisdiction value=urn:iso:std:iso:3166#DE tier=P source=package/package.json
2026-08-31T17:45:01Z  INFO   2.1  package-identity  identity-claim  field=jurisdiction value=urn:iso:std:iso:3166#DE tier=P source=package/package.json
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest field  author=sebastianstubert  -- a REGISTRY ACCOUNT, not `publisher`
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest field  author=sebastianstubert  -- a REGISTRY ACCOUNT, not `publisher`
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest read  package/package.json  recovered=6 absent=5 fields=name,version,description,fhirVersions,jurisdiction,author
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest read  package/package.json  recovered=6 absent=5 fields=name,version,description,fhirVersions,jurisdiction,author
2026-08-31T17:45:01Z  WARN   2.1  package-identity  not-in-a-package-manifest: title, license, publisher
2026-08-31T17:45:01Z  WARN   2.1  package-identity  not-in-a-package-manifest: title, license, publisher
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest fields absent (optional in this format)  canonical, homepage
2026-08-31T17:45:01Z  INFO   2.1  package-identity  manifest fields absent (optional in this format)  canonical, homepage
2026-08-31T17:45:02Z  INFO   2.1  package-identity  identity-claim  field=dependency:de.einwilligungsmanagement value=2.0.2 tier=P source=package/package.json (source pin)
2026-08-31T17:45:02Z  INFO   2.1  package-identity  identity-claim  field=dependency:de.einwilligungsmanagement value=2.0.2 tier=P source=package/package.json (source pin)
2026-08-31T17:45:02Z  INFO   2.1  package-identity  identity-claim  field=dependency:hl7.fhir.r4.core value=4.0.1 tier=P source=package/package.json (source pin)
2026-08-31T17:45:02Z  INFO   2.1  package-identity  identity-claim  field=dependency:hl7.fhir.r4.core value=4.0.1 tier=P source=package/package.json (source pin)
2026-08-31T17:45:02Z  INFO   2.1  package-identity  dependency pins from the SOURCE package  de.einwilligungsmanagement@2.0.2 hl7.fhir.r4.core@4.0.1
2026-08-31T17:45:02Z  INFO   2.1  package-identity  dependency pins from the SOURCE package  de.einwilligungsmanagement@2.0.2 hl7.fhir.r4.core@4.0.1
2026-08-31T17:45:02Z  INFO   2.1  package-identity  packaged ImplementationGuide  file=ImplementationGuide.json url=/guide/mii-ig-modul-consent-2026?version=current version=2026.0.0 name=MII IG Consent v2026 title=<absent> publisher=<absent> license=<absent>
2026-08-31T17:45:02Z  INFO   2.1  package-identity  packaged ImplementationGuide  file=ImplementationGuide.json url=/guide/mii-ig-modul-consent-2026?version=current version=2026.0.0 name=MII IG Consent v2026 title=<absent> publisher=<absent> license=<absent>
2026-08-31T17:45:02Z  WARN   2.1  package-identity  ig-url-not-canonical: the packaged ImplementationGuide's url is not an absolute http(s) URL  url=/guide/mii-ig-modul-consent-2026?version=current
2026-08-31T17:45:02Z  WARN   2.1  package-identity  ig-url-not-canonical: the packaged ImplementationGuide's url is not an absolute http(s) URL  url=/guide/mii-ig-modul-consent-2026?version=current
2026-08-31T17:45:02Z  INFO   2.1  package-identity  urls excluded from the canonical derivation  count=3
2026-08-31T17:45:02Z  INFO   2.1  package-identity  urls excluded from the canonical derivation  count=3
2026-08-31T17:45:02Z  INFO   2.1  package-identity  packaged resources carrying no url  count=6
2026-08-31T17:45:02Z  INFO   2.1  package-identity  packaged resources carrying no url  count=6
2026-08-31T17:45:02Z  INFO   2.1  package-identity  identity-claim  field=canonical value=https://www.medizininformatik-initiative.de/fhir/modul-consent tier=P source=packaged resource urls (13 of 13 agree)
2026-08-31T17:45:02Z  INFO   2.1  package-identity  identity-claim  field=canonical value=https://www.medizininformatik-initiative.de/fhir/modul-consent tier=P source=packaged resource urls (13 of 13 agree)
2026-08-31T17:45:02Z  INFO   2.1  package-identity  canonical derived by common prefix  canonical=https://www.medizininformatik-initiative.de/fhir/modul-consent agree=13 of 13
2026-08-31T17:45:02Z  INFO   2.1  package-identity  canonical derived by common prefix  canonical=https://www.medizininformatik-initiative.de/fhir/modul-consent agree=13 of 13
2026-08-31T17:45:02Z  INFO   2.1  package-identity  done  package=de.medizininformatikinitiative.kerndatensatz.consent version=2026.0.0  canonical=derived exit=0
2026-08-31T17:45:02Z  INFO   2.1  package-identity  done  package=de.medizininformatikinitiative.kerndatensatz.consent version=2026.0.0  canonical=derived exit=0
2026-08-31T17:45:02Z  INFO   2.1  package-identity  done  cmd=`bash /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-44…`  exit=0 raw_log=migration-log/package-identity.log raw_log_lines=54
2026-08-31T17:45:02Z  INFO   2.1  repo-identity  start  cmd=`bash /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-44…`  raw_log=migration-log/repo-identity.log
2026-08-31T17:45:02Z  INFO   2.1  repo-identity  params  dir=. repo=medizininformatik-initiative/kerndatensatzmodul-consent rendered=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0
2026-08-31T17:45:02Z  INFO   2.1  repo-identity  params  dir=. repo=medizininformatik-initiative/kerndatensatzmodul-consent rendered=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0
2026-08-31T17:45:02Z  INFO   2.1  repo-identity  identity-claim  field=title value=Medizininformatik Initiative - Modul Consent tier=R source=README.md first heading
2026-08-31T17:45:02Z  INFO   2.1  repo-identity  identity-claim  field=title value=Medizininformatik Initiative - Modul Consent tier=R source=README.md first heading
2026-08-31T17:45:02Z  INFO   2.1  repo-identity  identity-claim  field=license value=CC-BY-4.0 tier=R source=LICENSE (text matched)
2026-08-31T17:45:02Z  INFO   2.1  repo-identity  identity-claim  field=license value=CC-BY-4.0 tier=R source=LICENSE (text matched)
2026-08-31T17:45:02Z  INFO   2.1  repo-identity  release tags in the local checkout (newest last)  tags=1.0.7 2025.0.0 2025.0.0-alpha 2025.0.3 2026.0.0
2026-08-31T17:45:02Z  INFO   2.1  repo-identity  release tags in the local checkout (newest last)  tags=1.0.7 2025.0.0 2025.0.0-alpha 2025.0.3 2026.0.0
2026-08-31T17:45:03Z  INFO   2.1  repo-identity  identity-claim  field=description value=Kerndatensatzmodul Consent tier=R source=GitHub repository description
2026-08-31T17:45:03Z  INFO   2.1  repo-identity  identity-claim  field=description value=Kerndatensatzmodul Consent tier=R source=GitHub repository description
2026-08-31T17:45:03Z  WARN   2.1  repo-identity  identity-contradiction: field=description  now=Kerndatensatzmodul Consent (tier R, GitHub repository description)  vs  description=KDS Modul Consent Release 2026.0.0 (tier P, package/package.json)
2026-08-31T17:45:03Z  WARN   2.1  repo-identity  identity-contradiction: field=description  now=Kerndatensatzmodul Consent (tier R, GitHub repository description)  vs  description=KDS Modul Consent Release 2026.0.0 (tier P, package/package.json)
2026-08-31T17:45:03Z  INFO   2.1  repo-identity  identity-claim  field=license value=CC-BY-4.0 tier=R source=GitHub license.spdx_id
2026-08-31T17:45:03Z  INFO   2.1  repo-identity  identity-claim  field=license value=CC-BY-4.0 tier=R source=GitHub license.spdx_id
2026-08-31T17:45:03Z  WARN   2.1  repo-identity  not-recoverable-from-a-repository: publisher  owner=medizininformatik-initiative
2026-08-31T17:45:03Z  WARN   2.1  repo-identity  not-recoverable-from-a-repository: publisher  owner=medizininformatik-initiative
2026-08-31T17:45:04Z  INFO   2.1  repo-identity  release tags on GitHub (newest first)  tags=2026.0.0 2025.0.3 2025.0.0 2025.0.0-alpha 1.0.7
2026-08-31T17:45:04Z  INFO   2.1  repo-identity  release tags on GitHub (newest first)  tags=2026.0.0 2025.0.3 2025.0.0 2025.0.0-alpha 1.0.7
2026-08-31T17:45:06Z  INFO   2.1  repo-identity  rendered page probed  cmd=`curl -sL https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0`…`  http=200 bytes=24509 script_markers=5 identity_markers=0 guide_page_links=18
2026-08-31T17:45:06Z  INFO   2.1  repo-identity  rendered page probed  cmd=`curl -sL https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0`…`  http=200 bytes=24509 script_markers=5 identity_markers=0 guide_page_links=18
2026-08-31T17:45:06Z  INFO   2.1  repo-identity  server-rendered-guide: this URL space DOES deliver content  http=200 bytes=24509 guide_page_links=18 url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0
2026-08-31T17:45:06Z  INFO   2.1  repo-identity  server-rendered-guide: this URL space DOES deliver content  http=200 bytes=24509 guide_page_links=18 url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0
2026-08-31T17:45:06Z  INFO   2.1  repo-identity  done  fields_recovered=4 exit=0
2026-08-31T17:45:06Z  INFO   2.1  repo-identity  done  fields_recovered=4 exit=0
2026-08-31T17:45:06Z  INFO   2.1  repo-identity  done  cmd=`bash /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-44…`  exit=0 raw_log=migration-log/repo-identity.log raw_log_lines=41
2026-08-31T17:45:54Z  INFO   2.1  read-identity  identity-claim  field=status value=draft tier=P source=packaged ImplementationGuide.json (Simplifier skeleton)
2026-08-31T17:45:54Z  INFO   2.1  read-identity  identity-claim  field=status value=active tier=H source=guide index table Status column (recon/guide.md g.1; human-read at Gate A)
2026-08-31T17:45:54Z  WARN   2.1  read-identity  identity-contradiction: field=status  now=active (tier H, guide index table Status column (recon/guide.md g.1; human-read at Gate A))  vs  status=draft (tier P, packaged ImplementationGuide.json (Simplifier skeleton))
2026-08-31T17:45:54Z  INFO   2.1  read-identity  carried identity (unchanged, guardrail 1): packageId=de.medizininformatikinitiative.kerndatensatz.consent version=2026.0.0 canonical=https://www.medizininformatik-initiative.de/fhir/modul-consent (13/13 unanimous) fhirVersion=4.0.1 deps=de.einwilligungsmanagement@2.0.2+hl7.fhir.r4.core@4.0.1 license=CC-BY-4.0(tier R text+spdx)
2026-08-31T17:45:54Z  INFO   2.1  identity-decisions  decision: status=active (plan D-6 — the index table is what the release communicates; packaged IG is a null-ridden Simplifier skeleton). decision: description=tier P 'KDS Modul Consent Release 2026.0.0' adjusted to release-neutral at Gate A. decision: title=R candidate (matches guide branding)
2026-08-31T17:46:47Z  INFO   log  run-boundary  ===== run 2 starts  run=2 label=step 2b — Path B on /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/recon/source-tag cwd=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/target log=migration-log/run.log
2026-08-31T17:46:47Z  INFO   5.1b.2  gofsh-staging  decision: goFSH input = pristine tag worktree /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/recon/source-tag (HEAD=792f9f3e, byte-identical to branch baseline) NOT the working tree — recorded reason: working tree now carries migration-log/ incl. a FHIR-parseable wrapper IG that would pollute the by-content input census
2026-08-31T17:46:47Z  INFO   5.1b.2  gofsh-input  inputs=20 src=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/recon/source-tag
2026-08-31T17:46:47Z  INFO   5.1b.2  gofsh-convert  start  cmd=`npx --yes gofsh@2.6.1 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal…`  raw_log=migration-log/gofsh.log
2026-08-31T17:46:56Z  INFO   5.1b.2  gofsh-convert  done  cmd=`npx --yes gofsh@2.6.1 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal…`  exit=0 raw_log=migration-log/gofsh.log raw_log_lines=101
2026-08-31T17:46:56Z  INFO   5.1b.2  gofsh-convert  goFSH RESULTS table (of 1 in the log, the last) profiles=3 extensions=0 logicals=0 resources=0 valuesets=3 codesystems=3 instances=11 invariants=0 mappings=0 aliases=8  converted=20 counted=profiles+extensions+logicals+resources+valuesets+codesystems+instances not_counted=invariants,mappings,aliases  gofsh_log=migration-log/gofsh.log
2026-08-31T17:46:56Z  INFO   5.1b.2  gofsh-convert  converted 20 of 20 inputs  expected=20 actual=20 exit=0
2026-08-31T17:46:56Z  INFO   5.1b.3  sushi-before  start  cmd=`bash -c 'cd '\''/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d0…`  raw_log=migration-log/sushi-before.log
2026-08-31T17:47:04Z  ERROR  5.1b.3  sushi-before  failed  cmd=`bash -c 'cd '\''/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d0…`  exit=41 raw_log=migration-log/sushi-before.log raw_log_lines=177
2026-08-31T17:47:04Z  INFO   5.1b.3  sushi-before  errors=41
2026-08-31T17:47:04Z  INFO   5.1b.3  postprocess-gofsh  start  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  raw_log=migration-log/postprocess-gofsh.log
2026-08-31T17:47:04Z  INFO   5.1b.3  postprocess-gofsh  params  fsh_dir=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/gofsh-out/input/fsh dry_run=False drop_comments=False
2026-08-31T17:47:04Z  INFO   5.1b.3  postprocess-gofsh  scan  files=21 entities_declared=28 gofsh_log=migration-log/gofsh.log renames_reported=1
2026-08-31T17:47:04Z  INFO   5.1b.3  postprocess-gofsh  /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/gofsh-out/input/fsh/instances/34150a23-b1c8-404f-874f-e042a30435d2.fsh  changes=34
2026-08-31T17:47:04Z  INFO   5.1b.3  postprocess-gofsh  /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/gofsh-out/input/fsh/instances/5143266b-8d60-4b28-8ee9-635140ffa5bb.fsh  changes=27
2026-08-31T17:47:04Z  INFO   5.1b.3  postprocess-gofsh  /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/gofsh-out/input/fsh/instances/55219d12-6245-4de4-8b50-ddf6f16a789b.fsh  changes=8
2026-08-31T17:47:04Z  INFO   5.1b.3  postprocess-gofsh  /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/gofsh-out/input/fsh/instances/8a3d1799-2463-405e-b49c-6a16c8692b01.fsh  changes=3
2026-08-31T17:47:04Z  INFO   5.1b.3  postprocess-gofsh  /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/gofsh-out/input/fsh/instances/Example-MII-Consent-ResultType-document.fsh  changes=20
2026-08-31T17:47:04Z  INFO   5.1b.3  postprocess-gofsh  result  fhir_comments=53 (preserved as FSH comments) code_references=39 changed=5 of 21 file(s)  exit=0
2026-08-31T17:47:04Z  INFO   5.1b.3  postprocess-gofsh  next: run `npx --yes fsh-sushi@3.20.0 .`; remaining errors are NOT mechanical
2026-08-31T17:47:04Z  INFO   5.1b.3  postprocess-gofsh  done  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  exit=0 raw_log=migration-log/postprocess-gofsh.log raw_log_lines=105
2026-08-31T17:47:04Z  INFO   5.1b.3  sushi-after  start  cmd=`bash -c 'cd '\''/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d0…`  raw_log=migration-log/sushi-after.log
2026-08-31T17:47:13Z  WARN   5.1b.3  sushi-after  anticipated-nonzero-exit: shape B: unresolvable parents are a Gate-A escalation (§5.1b.4)  cmd=`bash -c 'cd '\''/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d0…`  exit=5 raw_log=migration-log/sushi-after.log raw_log_lines=69
2026-08-31T17:47:13Z  INFO   5.1b.3  sushi-after  errors=5 resolved=36  before=41
2026-08-31T17:48:11Z  ERROR  1  qa-baseline-build  failed  cmd=`docker run --rm -v /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e…`  exit=1 raw_log=migration-log/qa-baseline-build.log raw_log_lines=181
2026-08-31T17:53:11Z  INFO   1  qa-baseline-wrapper  wrapper iteration 2: first build's validator phase ran but jekyll failed on missing menu include (fhir.base.template requires input/includes/menu.xml) and qa report was not serialized (qa.json=exception stub) — minimal menu stub added (recorded in migration-log/qa-baseline-wrapper/), rebuilding
2026-08-31T17:53:11Z  INFO   1  qa-baseline-build  start  cmd=`docker run --rm -v /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e…`  raw_log=migration-log/qa-baseline-build.log prev_raw_log=migration-log/qa-baseline-build.prev.log
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  start  cmd=`bash /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-44…`  raw_log=migration-log/parent-snapshots.log
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  params  mode=detect dir=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/parent/package (no fetch) fhir_version=4.0.1
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  params  mode=detect dir=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/parent/package (no fetch) fhir_version=4.0.1
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  surveyed  structure_definitions=21 with_snapshot=0 without_snapshot=21
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  surveyed  structure_definitions=21 with_snapshot=0 without_snapshot=21
2026-08-31T17:53:17Z  WARN   5.1b.5  parent-snapshots  parent-without-snapshots: 21 of 21 StructureDefinitions carry NO snapshot
2026-08-31T17:53:17Z  WARN   5.1b.5  parent-snapshots  parent-without-snapshots: 21 of 21 StructureDefinitions carry NO snapshot
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  derivation chain is flat: every SD derives directly from outside this package  count=21
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  derivation chain is flat: every SD derives directly from outside this package  count=21
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  done  mode=detect missing_snapshots=21 of 21 exit=1
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  done  mode=detect missing_snapshots=21 of 21 exit=1
2026-08-31T17:53:17Z  ERROR  5.1b.5  parent-snapshots  failed  cmd=`bash /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-44…`  exit=1 raw_log=migration-log/parent-snapshots.log raw_log_lines=15
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  start  cmd=`bash /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-44…`  raw_log=migration-log/parent-snapshots-build.log
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  params  mode=build dir=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/parent/package (no fetch) fhir_version=4.0.1
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  params  mode=build dir=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/parent/package (no fetch) fhir_version=4.0.1
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  surveyed  structure_definitions=21 with_snapshot=0 without_snapshot=21
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  surveyed  structure_definitions=21 with_snapshot=0 without_snapshot=21
2026-08-31T17:53:17Z  WARN   5.1b.5  parent-snapshots  parent-without-snapshots: 21 of 21 StructureDefinitions carry NO snapshot
2026-08-31T17:53:17Z  WARN   5.1b.5  parent-snapshots  parent-without-snapshots: 21 of 21 StructureDefinitions carry NO snapshot
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  derivation chain is flat: every SD derives directly from outside this package  count=21
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  derivation chain is flat: every SD derives directly from outside this package  count=21
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  base package for the element-count floor  base_dir=/Users/marcel/.fhir/packages/hl7.fhir.r4.core#4.0.1/package
2026-08-31T17:53:17Z  INFO   5.1b.5  parent-snapshots  base package for the element-count floor  base_dir=/Users/marcel/.fhir/packages/hl7.fhir.r4.core#4.0.1/package
2026-08-31T17:53:20Z  INFO   5.1b.5  parent-snapshots  generating with the OFFICIAL HL7 generator  validator=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/validator_cli.jar java="openjdk version "25.0.2" 2026-01-20" fhir_version=4.0.1
2026-08-31T17:53:20Z  INFO   5.1b.5  parent-snapshots  generating with the OFFICIAL HL7 generator  validator=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/validator_cli.jar java="openjdk version "25.0.2" 2026-01-20" fhir_version=4.0.1
2026-08-31T17:53:42Z  INFO   5.1d  harvest-route  decision: route 2 guide-harvest (anonymous rendering) per plan D-8 — no authenticated project download available in this run (project-download-unavailable: no credentialed human in the loop; the D-0 ask stands); preservation copy from phase 0.0 kept on the evidence branch as backstop + diff reference; THIS run is the pinned run-of-record
2026-08-31T17:53:43Z  INFO   5.1d  guide-harvest  guide root fetched  cmd=`curl -sL https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0`…`  http=200 bytes=24509
2026-08-31T17:53:43Z  INFO   5.1d  guide-harvest  page tree discovered from the root's own hrefs  discovered=18 region_id=preview-content
2026-08-31T17:53:44Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/index.md  region=found kind=narrative src_text_chars=2806 md_text_chars=4667 missing_runs=0 internal_links=13 images=1 artefact_markers=0 title=Kerndatensatz-Modul Consent
2026-08-31T17:53:45Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Release-Notes?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/release-notes.md  region=found kind=narrative src_text_chars=3662 md_text_chars=4124 missing_runs=0 internal_links=0 images=0 artefact_markers=0 title=Release Notes
2026-08-31T17:53:47Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Beschreibung-Modul-Consent?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/beschreibung-modul-consent.md  region=found kind=narrative src_text_chars=680 md_text_chars=1168 missing_runs=0 internal_links=0 images=1 artefact_markers=0 title=Beschreibung Modul Consent
2026-08-31T17:53:50Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/KontextimGesamtprojektBezgezuanderenModulen?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/kontextimgesamtprojektbezgezuanderenmodulen.md  region=found kind=narrative src_text_chars=858 md_text_chars=1094 missing_runs=0 internal_links=0 images=0 artefact_markers=0 title=Kontext im Gesamtprojekt / Bezüge zu anderen Modulen
2026-08-31T17:53:53Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/Referenzen?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/referenzen.md  region=found kind=narrative src_text_chars=613 md_text_chars=1083 missing_runs=0 internal_links=0 images=0 artefact_markers=0 title=Referenzen
2026-08-31T17:53:55Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/anwendungsflleinformationsmodell.md  region=found kind=narrative src_text_chars=81 md_text_chars=84 missing_runs=0 internal_links=0 images=0 artefact_markers=0 title=Anwendungsfälle / Informationsmodell
2026-08-31T17:53:56Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungdesModuls?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/anwendungsflleinformationsmodell-beschreibungvonszenarienfrdieanwendungdesmoduls.md  region=found kind=narrative src_text_chars=1407 md_text_chars=1640 missing_runs=0 internal_links=0 images=0 artefact_markers=0 title=Beschreibung von Szenarien für die Anwendung des Moduls
2026-08-31T17:53:58Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/anwendungsflleinformationsmodell-datenstzeinkl.beschreibungen.md  region=found kind=narrative src_text_chars=384 md_text_chars=604 missing_runs=0 internal_links=0 images=0 artefact_markers=0 title=Datensätze inkl. Beschreibungen
2026-08-31T17:53:59Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/UML?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/anwendungsflleinformationsmodell-uml.md  region=found kind=narrative src_text_chars=1861 md_text_chars=2913 missing_runs=0 internal_links=5 images=1 artefact_markers=0 title=UML
2026-08-31T17:54:01Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/Fragebgen?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/anwendungsflleinformationsmodell-fragebgen.md  region=found kind=narrative src_text_chars=2094 md_text_chars=3293 missing_runs=0 internal_links=1 images=0 artefact_markers=0 title=Fragebögen
2026-08-31T17:54:07Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/technischeimplementierung.md  region=found kind=narrative src_text_chars=731 md_text_chars=773 missing_runs=0 internal_links=0 images=0 artefact_markers=0 title=Technische Implementierung
2026-08-31T17:54:14Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/technischeimplementierung-fhirprofile.md  region=found kind=narrative src_text_chars=760 md_text_chars=895 missing_runs=0 internal_links=0 images=0 artefact_markers=0 title=FHIR Profile
2026-08-31T17:54:26Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Consent?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/technischeimplementierung-fhirprofile-consent.md  region=found kind=artefact-view src_text_chars=239875 md_text_chars=423755 missing_runs=8 internal_links=0 images=0 artefact_markers=2171 title=Consent
2026-08-31T17:54:26Z  INFO   5.1d  guide-harvest  rendered-artefact-view: this page is a RENDERING of a conformance resource, not narrative  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Consent?version=2026.0.0 file=migration-log/guide-harvest/pagecontent/technischeimplementierung-fhirprofile-consent.md src_text_chars=239875
2026-08-31T17:54:26Z  WARN   5.1d  guide-harvest  generated-view-lossy: 8 text run(s) of a RENDERED ARTEFACT VIEW did not survive the conversion  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Consent?version=2026.0.0 file=migration-log/guide-harvest/pagecontent/technischeimplementierung-fhirprofile-consent.md src_text_chars=239875 md_text_chars=423755
2026-08-31T17:54:29Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Provenance?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/technischeimplementierung-fhirprofile-provenance.md  region=found kind=artefact-view src_text_chars=73477 md_text_chars=102418 missing_runs=4 internal_links=1 images=0 artefact_markers=397 title=Provenance
2026-08-31T17:54:29Z  INFO   5.1d  guide-harvest  rendered-artefact-view: this page is a RENDERING of a conformance resource, not narrative  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Provenance?version=2026.0.0 file=migration-log/guide-harvest/pagecontent/technischeimplementierung-fhirprofile-provenance.md src_text_chars=73477
2026-08-31T17:54:29Z  WARN   5.1d  guide-harvest  generated-view-lossy: 4 text run(s) of a RENDERED ARTEFACT VIEW did not survive the conversion  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Provenance?version=2026.0.0 file=migration-log/guide-harvest/pagecontent/technischeimplementierung-fhirprofile-provenance.md src_text_chars=73477 md_text_chars=102418
2026-08-31T17:54:32Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/DocumentReference?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/technischeimplementierung-fhirprofile-documentreference.md  region=found kind=artefact-view src_text_chars=74149 md_text_chars=101637 missing_runs=2 internal_links=0 images=0 artefact_markers=359 title=DocumentReference
2026-08-31T17:54:32Z  INFO   5.1d  guide-harvest  rendered-artefact-view: this page is a RENDERING of a conformance resource, not narrative  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/DocumentReference?version=2026.0.0 file=migration-log/guide-harvest/pagecontent/technischeimplementierung-fhirprofile-documentreference.md src_text_chars=74149
2026-08-31T17:54:32Z  WARN   5.1d  guide-harvest  generated-view-lossy: 2 text run(s) of a RENDERED ARTEFACT VIEW did not survive the conversion  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/DocumentReference?version=2026.0.0 file=migration-log/guide-harvest/pagecontent/technischeimplementierung-fhirprofile-documentreference.md src_text_chars=74149 md_text_chars=101637
2026-08-31T17:54:34Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/WeitererelevanteProfile?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/technischeimplementierung-fhirprofile-weitererelevanteprofile.md  region=found kind=narrative src_text_chars=892 md_text_chars=1959 missing_runs=0 internal_links=3 images=0 artefact_markers=0 title=Weitere relevante Profile
2026-08-31T17:54:37Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Empfehlungen-zur-praktischen-Anwendung?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/technischeimplementierung-fhirprofile-empfehlungen-zur-praktischen-anwendung.md  region=found kind=narrative src_text_chars=2960 md_text_chars=3440 missing_runs=0 internal_links=0 images=0 artefact_markers=0 title=Empfehlungen zur praktischen Anwendung
2026-08-31T17:54:38Z  INFO   5.1d  guide-harvest  page harvested  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/Terminologien?version=2026.0.0  file=migration-log/guide-harvest/pagecontent/technischeimplementierung-terminologien.md  region=found kind=artefact-view src_text_chars=30045 md_text_chars=22255 missing_runs=8 internal_links=0 images=0 artefact_markers=5 title=Terminologien
2026-08-31T17:54:38Z  INFO   5.1d  guide-harvest  rendered-artefact-view: this page is a RENDERING of a conformance resource, not narrative  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/Terminologien?version=2026.0.0 file=migration-log/guide-harvest/pagecontent/technischeimplementierung-terminologien.md src_text_chars=30045
2026-08-31T17:54:38Z  WARN   5.1d  guide-harvest  generated-view-lossy: 8 text run(s) of a RENDERED ARTEFACT VIEW did not survive the conversion  url=https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/Terminologien?version=2026.0.0 file=migration-log/guide-harvest/pagecontent/technischeimplementierung-terminologien.md src_text_chars=30045 md_text_chars=22255
2026-08-31T17:54:39Z  INFO   5.1d  guide-harvest  harvested 18 of 18 pages  expected=18 actual=18
2026-08-31T17:54:39Z  INFO   5.1d  guide-harvest  harvest complete  discovered=18 harvested=18 skipped=0 short=0 artefact_views=4 assets=3 out=migration-log/guide-harvest/pagecontent
2026-08-31T17:57:44Z  INFO   1  qa-baseline-build  done  cmd=`docker run --rm -v /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e…`  exit=0 raw_log=migration-log/qa-baseline-build.log raw_log_lines=197
2026-08-31T17:58:05Z  WARN   5.1b.5  parent-snapshots  generator-refused: profile-ConsentManagement-TemplateFrame.json  url=http://fhir.de/ConsentManagement/StructureDefinition/TemplateFrame reason=Exception generating snapshot for http://fhir.de/ConsentManagement/StructureDefinition/TemplateFrame|2.0.2: The element Questionnaire.item.text.extension:renderingMarkdown.value[x]:valueMarkdown launches straight into slicing without the slicing being set up properly first
2026-08-31T17:58:05Z  WARN   5.1b.5  parent-snapshots  generator-refused: profile-ConsentManagement-TemplateFrame.json  url=http://fhir.de/ConsentManagement/StructureDefinition/TemplateFrame reason=Exception generating snapshot for http://fhir.de/ConsentManagement/StructureDefinition/TemplateFrame|2.0.2: The element Questionnaire.item.text.extension:renderingMarkdown.value[x]:valueMarkdown launches straight into slicing without the slicing being set up properly first
2026-08-31T17:58:17Z  WARN   5.1b.5  parent-snapshots  generator-refused: profile-ConsentManagement-TemplateModule.json  url=http://fhir.de/ConsentManagement/StructureDefinition/TemplateModule reason=Exception generating snapshot for http://fhir.de/ConsentManagement/StructureDefinition/TemplateModule|2.0.2: The element Questionnaire.item.text.extension:renderingMarkdown.value[x]:valueMarkdown launches straight into slicing without the slicing being set up properly first
2026-08-31T17:58:17Z  WARN   5.1b.5  parent-snapshots  generator-refused: profile-ConsentManagement-TemplateModule.json  url=http://fhir.de/ConsentManagement/StructureDefinition/TemplateModule reason=Exception generating snapshot for http://fhir.de/ConsentManagement/StructureDefinition/TemplateModule|2.0.2: The element Questionnaire.item.text.extension:renderingMarkdown.value[x]:valueMarkdown launches straight into slicing without the slicing being set up properly first
2026-08-31T17:58:28Z  WARN   5.1b.5  parent-snapshots  generator-refused: profile-ConsentManagementQuestionnaireComposed.json  url=http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireComposed reason=Exception generating snapshot for http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireComposed|2.0.2: The element Questionnaire.item.text.extension:renderingMarkdown.value[x]:valueMarkdown launches straight into slicing without the slicing being set up properly first
2026-08-31T17:58:28Z  WARN   5.1b.5  parent-snapshots  generator-refused: profile-ConsentManagementQuestionnaireComposed.json  url=http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireComposed reason=Exception generating snapshot for http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireComposed|2.0.2: The element Questionnaire.item.text.extension:renderingMarkdown.value[x]:valueMarkdown launches straight into slicing without the slicing being set up properly first
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-ConsentMode.json snapshot=12 differential=5 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-ConsentMode.json snapshot=12 differential=5 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-ContextIdentifier.json snapshot=20 differential=12 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-ContextIdentifier.json snapshot=20 differential=12 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-DomainReference.json snapshot=22 differential=11 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-DomainReference.json snapshot=22 differential=11 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-Logo.json snapshot=5 differential=2 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-Logo.json snapshot=5 differential=2 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-OrganizationDescription.json snapshot=5 differential=2 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-OrganizationDescription.json snapshot=5 differential=2 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-SignatureLocation.json snapshot=5 differential=2 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-SignatureLocation.json snapshot=5 differential=2 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-SourceDocument.json snapshot=15 differential=4 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-SourceDocument.json snapshot=15 differential=4 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-SubQuestionnaire.json snapshot=11 differential=6 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-SubQuestionnaire.json snapshot=11 differential=6 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-VersionFormat.json snapshot=15 differential=10 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-VersionFormat.json snapshot=15 differential=10 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-Xacml.json snapshot=5 differential=2 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-Xacml.json snapshot=5 differential=2 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-XacmlTemplate.json snapshot=15 differential=9 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=extension-ConsentManagement-XacmlTemplate.json snapshot=15 differential=9 base=5
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagement-Consent.json snapshot=132 differential=32 base=57
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagement-Consent.json snapshot=132 differential=32 base=57
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagement-DocumentReference.json snapshot=61 differential=8 base=45
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagement-DocumentReference.json snapshot=61 differential=8 base=45
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagement-Domain-Organization.json snapshot=91 differential=23 base=26
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagement-Domain-Organization.json snapshot=91 differential=23 base=26
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagement-Domain-ResearchStudy.json snapshot=104 differential=23 base=44
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagement-Domain-ResearchStudy.json snapshot=104 differential=23 base=44
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagement-Patient.json snapshot=64 differential=7 base=45
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagement-Patient.json snapshot=64 differential=7 base=45
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagement-Provenance.json snapshot=65 differential=20 base=32
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagement-Provenance.json snapshot=65 differential=20 base=32
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagementQuestionnaireResponse.json snapshot=39 differential=14 base=33
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  snapshot verified and merged  file=profile-ConsentManagementQuestionnaireResponse.json snapshot=39 differential=14 base=33
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  rebuild written  dir=/var/folders/d6/s255vt4x5pq9fy738bv7cs0h0000gq/T/tmp.84cFWoL9ek/rebuilt/package merged=18 refused=0
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  rebuild written  dir=/var/folders/d6/s255vt4x5pq9fy738bv7cs0h0000gq/T/tmp.84cFWoL9ek/rebuilt/package merged=18 refused=0
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  generated 18 of 21 snapshots  expected=21 actual=18
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  generated 18 of 21 snapshots  expected=21 actual=18
2026-08-31T17:58:40Z  WARN   5.1b.5  parent-snapshots  silent-partial-success: generated 18 of 21 snapshots
2026-08-31T17:58:40Z  WARN   5.1b.5  parent-snapshots  silent-partial-success: generated 18 of 21 snapshots
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  required parent snapshotted  require=http://fhir.de/ConsentManagement/StructureDefinition/DocumentReference file=profile-ConsentManagement-DocumentReference.json
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  required parent snapshotted  require=http://fhir.de/ConsentManagement/StructureDefinition/DocumentReference file=profile-ConsentManagement-DocumentReference.json
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  required parent snapshotted  require=http://fhir.de/ConsentManagement/StructureDefinition/DomainReference file=extension-ConsentManagement-DomainReference.json
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  required parent snapshotted  require=http://fhir.de/ConsentManagement/StructureDefinition/DomainReference file=extension-ConsentManagement-DomainReference.json
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  required parent snapshotted  require=http://fhir.de/ConsentManagement/StructureDefinition/Provenance file=profile-ConsentManagement-Provenance.json
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  required parent snapshotted  require=http://fhir.de/ConsentManagement/StructureDefinition/Provenance file=profile-ConsentManagement-Provenance.json
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  required parent snapshotted  require=http://fhir.de/ConsentManagement/StructureDefinition/Consent file=profile-ConsentManagement-Consent.json
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  required parent snapshotted  require=http://fhir.de/ConsentManagement/StructureDefinition/Consent file=profile-ConsentManagement-Consent.json
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  installed as a NEW cache entry  dest=/Users/marcel/.fhir/packages/de.einwilligungsmanagement#2.0.2-snapshots version=2.0.2-snapshots
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  installed as a NEW cache entry  dest=/Users/marcel/.fhir/packages/de.einwilligungsmanagement#2.0.2-snapshots version=2.0.2-snapshots
2026-08-31T17:58:40Z  WARN   5.1b.5  parent-snapshots  rebuild-incomplete: the generator refused 3 of 21 StructureDefinition(s)  files=profile-ConsentManagement-TemplateFrame.json profile-ConsentManagement-TemplateModule.json profile-ConsentManagementQuestionnaireComposed.json
2026-08-31T17:58:40Z  WARN   5.1b.5  parent-snapshots  rebuild-incomplete: the generator refused 3 of 21 StructureDefinition(s)  files=profile-ConsentManagement-TemplateFrame.json profile-ConsentManagement-TemplateModule.json profile-ConsentManagementQuestionnaireComposed.json
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  done  mode=build generated=18 of 21 required=all-snapshotted exit=0
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  done  mode=build generated=18 of 21 required=all-snapshotted exit=0
2026-08-31T17:58:40Z  INFO   5.1b.5  parent-snapshots  done  cmd=`bash /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-44…`  exit=0 raw_log=migration-log/parent-snapshots-build.log raw_log_lines=76
2026-08-31T17:59:01Z  INFO   5.2  skeleton-vendored  ref=v0.13.2 commit=a2390dea3eacf8139b2231713510f38fa558dad5
2026-08-31T17:59:01Z  INFO   5.2  template-reference  url=https://github.com/medizininformatik-initiative/ig-template-mii-kds release=v1.3.4
2026-08-31T17:59:01Z  INFO   5.2  no-vendor  ig-template/ NOT copied; deleted sync machinery: sync-ig-template.yml sync-ig-template.sh resolve-ig-template-source.sh; ig.ini keeps the repository-URL template line (v0.25.0 doctrine)
2026-08-31T18:00:04Z  INFO   5.1b.5  parent-snapshots  repin: gofsh-out sushi-config de.einwilligungsmanagement 2.0.2 -> 2.0.2-snapshots (suffixes the SOURCE pin per spec 5.1b.5; F2 DIVERGIERT vs source pin expected + pre-triaged as the recorded Gate-A carry decision, plan D-4)
2026-08-31T18:00:04Z  INFO   5.1b.5  sushi-after-snapshots  start  cmd=`bash -c 'cd '\''/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d0…`  raw_log=migration-log/sushi-after-snapshots.log
2026-08-31T18:00:12Z  INFO   5.1b.5  sushi-after-snapshots  done  cmd=`bash -c 'cd '\''/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d0…`  exit=0 raw_log=migration-log/sushi-after-snapshots.log raw_log_lines=72
2026-08-31T18:00:12Z  INFO   5.1b.5  sushi-after-snapshots  errors=0 (was 5 before snapshots, 41 before postprocess) — measured 41 -> 5 -> 0
2026-08-31T18:00:12Z  INFO   1  qa-baseline-build  SOURCE QA BASELINE MEASURED: err=68 warn=88 info=49 (publisher 2.3.2, fhir.base.template wrapper, tx.fhir.org) — full qa.txt at migration-log/qa-baseline-source.txt, census tsv at migration-log/qa-baseline-census.tsv; wrapper config at migration-log/qa-baseline-wrapper/; acceptance basis for phase 9: target qa errors form a subset of these classes (compare by element path)
2026-08-31T18:02:40Z  INFO   5.2  first-run-bootstrap  decision: scripts/first-run-bootstrap.sh run in its default DRY-RUN mode only; the 6-item removal list applied BY HAND (release-please.yml notify-zulip.yml release-demo.yml release-please-config.json .release-please-manifest.json CHANGELOG.md); --apply NOT used — its branch-setup/branch-protection side effects are out of scope on a migration branch (spec 5.2)
2026-08-31T18:02:40Z  INFO   5.2  demo-removal  M8 demo set deleted: rendering-artifacts.md x2, demo/, gen-rendering-demo.py, demo-de.md, demo-en.md, rendering-demo-codes.json (pages:/menu entries removed in the config surgery)
2026-08-31T18:02:40Z  INFO   5.2  example-removal  template example artefacts deleted BEFORE transfer (guardrail 5): example-patient.fsh, example-patient-instance.fsh, tests fixture example-patient-valid.json (paths verified against the v0.13.2 checkout)
2026-08-31T18:02:58Z  INFO   5.2  de-first-flip  DE-first tree swap done: template German mirror pages -> input/pagecontent (default), template English pages -> input/translations/en/pagecontent; menu.xml swapped (DE default, EN mirror); IG-level .po moved to translations/en/ (content regenerated at step 6)
2026-08-31T18:04:40Z  INFO   5.2  config-surgery  sushi-config merged: DE-first i18n (de default, en translation-sources), pages titles germanized from the template's own .po catalogue, demo page entry removed (M8), dependencies = source pin einwilligungsmanagement 2.0.2-snapshots (D-4) + 3 recorded target-only additions (crmi, THO, extensions — D-12), special-url regenerated with the 2 urn:oid CS canonicals; basisprofil/meta/xver template parity pins NOT imported (source never had them)
2026-08-31T18:06:39Z  INFO   5.2  de-first-ci-patch  3-file DE-first CI patch applied (one logical change, same commit as the flip): language-model-check.sh fully inverted (guards German-default now; docs/ + translations/en excluded with recorded reason), convention-check.mjs translation-tree paths de->en (+header note), convention-check.test.mjs fixtures de->en; sushi-config comment prose updated to the DE-first model
2026-08-31T18:11:38Z  INFO   5.2  license-align  start  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  raw_log=migration-log/license-align.log
2026-08-31T18:11:38Z  INFO   5.2  license-align  params  source=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/recon/source-tag target=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/target
2026-08-31T18:11:38Z  INFO   5.2  license-align  license-replaced: from=CC-BY-4.0 to=CC-BY-4.0 mode=source-file file=LICENSE
2026-08-31T18:11:38Z  INFO   5.2  license-align  result  REPLACED the target LICENSE: CC-BY-4.0 (template scaffold) -> CC-BY-4.0 (copied byte-faithfully from the source's LICENSE)  exit=0
2026-08-31T18:11:38Z  INFO   5.2  license-align  done  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  exit=0 raw_log=migration-log/license-align.log raw_log_lines=3
2026-08-31T18:12:11Z  INFO   pre.4  placeholder-census  post-skeleton census by exclusion: 0 ACTIVE placeholders in build inputs (input/**, sushi-config non-comment, ig.ini, publication-request, qc) — every surviving {{...}} accounted: Actions ${{ }} (.github), commented-out OPTIONAL blocks (CITATION_*, SPECIAL_URL_1 in the sushi-config comment table), instructional prose (docs/, AGENTS.md, tests/README, input READMEs), self-test fixtures + template machinery (scripts/*.mjs, self-check-substitute.sh, skills/wiki-consistency-check), and run.log quoting the census plan
2026-08-31T18:12:11Z  INFO   5.2  sushi-pin-note  sushi-skeleton runs the TARGET's pinned SUSHI 3.20.1 (read from .github/workflows/ig-publisher.yml env SUSHI_VERSION per skill step-7 doctrine), not the skill block's 3.20.0 literal (that pin governs the goFSH derivation, already done)
2026-08-31T18:12:11Z  INFO   5.2  sushi-skeleton  start  cmd=`npx --yes fsh-sushi@3.20.1 .`  raw_log=migration-log/sushi-skeleton.log
2026-08-31T18:12:16Z  INFO   5.2  sushi-skeleton  done  cmd=`npx --yes fsh-sushi@3.20.1 .`  exit=0 raw_log=migration-log/sushi-skeleton.log raw_log_lines=42
2026-08-31T18:14:29Z  INFO   5.3  transfer-artefacts  goFSH-derived FSH transferred structure-preserving: 3 profiles + 3 codesystems + 3 valuesets + 11 instances (5 examples + 6 SearchParameters); IDs/URLs byte-unchanged; goFSH index.txt not transferred (tool index, not an artefact)
2026-08-31T18:14:29Z  INFO   5.3  sushi-transfer  start  cmd=`npx --yes fsh-sushi@3.20.1 .`  raw_log=migration-log/sushi-transfer.log
2026-08-31T18:14:36Z  INFO   5.3  sushi-transfer  done  cmd=`npx --yes fsh-sushi@3.20.1 .`  exit=0 raw_log=migration-log/sushi-transfer.log raw_log_lines=70
2026-08-31T18:16:04Z  INFO   5.4  fql-scan  start  cmd=`bash /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-44…`  raw_log=migration-log/fql-scan.log
2026-08-31T18:16:04Z  INFO   5.4  fql-scan  params  rules=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/recon/agent-skills/skills/mii-ig-migration/references/fql-rules.tsv  targets=input/pagecontent  defaulted=1
2026-08-31T18:16:04Z  INFO   5.4  fql-scan  target  path=input/pagecontent  kind=dir  files=21
2026-08-31T18:16:05Z  INFO   5.4  fql-scan  result  mapped=0 unknown=0 files=21  exit=0  no directives found
2026-08-31T18:16:05Z  INFO   5.4  fql-scan  done  cmd=`bash /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-44…`  exit=0 raw_log=migration-log/fql-scan.log raw_log_lines=3
2026-08-31T18:16:05Z  INFO   5.4c  page-routing  start  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  raw_log=migration-log/page-routing.log
2026-08-31T18:16:05Z  INFO   5.4c  page-routing  done  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  exit=0 raw_log=migration-log/page-routing.log raw_log_lines=1
2026-08-31T18:20:58Z  INFO   5.4c  page-routing  map REVIEWED and edited: 10 [MAP-EDIT] rows (datasets->logical-models per 9a; frageboegen clean slug; technischeimplementierung+empfehlungen -> implementer-guidance (4 merged sources, 806 words, under both size gates); fhirprofile+weitere -> profiles; 3 profile pages -> intro-notes branch 1 with recorded SPLITs to search-parameters/examples; terminologien SPLIT VS section -> value-sets); generator had 0-artefact census gap so branch 1 never fired - corrected by review; step 5 consumes ONLY this reviewed map
2026-08-31T18:20:58Z  INFO   5.4a  optional-page-decisions  M9 MEASURED decisions (package census, spec 9a): REMOVE researcher-guidance (no researcher narrative; the Empfehlungen page is implementer/DIZ-oriented: 'Datenintegrationszentren', gICS-Anwender, FDPG, DIZ-Dashboard - quoted evidence), extensions (0 artefacts), operations (0 artefacts), metadata (no source narrative routed there); KEEP search-parameters (6), value-sets (3), code-systems (3) - banners deleted at page assembly; 5-touch removal per docs/optional-pages.md executed (files x2, menus x2, pages:, inbound links; .po touch moot - catalogue is regenerated at step 6)
2026-08-31T18:30:43Z  INFO   5.4b  security-privacy-decision  M11 stage-3 decision: MODULE ASPECTS EXIST in the source — the Consent profile page's 'Datenschutz-Aspekte' section moved (SPLIT, verbatim) into stage 3; default text NOT adopted (it would falsely claim no module-specific aspects); Person illustrative-example box + ILLUSTRATIVE-EXAMPLE marker + TODO box deleted in the German default page (English mirror replaced wholesale at step 6)
2026-08-31T18:30:43Z  INFO   5.3  capabilitystatement-suggested  source ships 0 CapabilityStatements (package census) -> spec 9b SUGGESTED CS written as input/fsh/capabilitystatements/MII_CAP_Consent_Server.fsh: kind=requirements, status=draft, experimental, description names it a migration proposal; rest.resource per profiled type w/ supportedProfile canonicals + 6 searchParam entries read from the module's own SearchParameter resources; rendered INLINE on capability-statements.md via lang-fragment; queue-1 Gate-A item
2026-08-31T18:30:43Z  INFO   5.4  narrative-transfer  14 narrative + 4 artefact-view source pages transferred per the reviewed map: 12 default-language pages assembled (verbatim priority, links rewritten per LINKMAP, 2 images localized from figures/), 3 intro-notes (profile prose atop artifact pages), SPLITs executed (Datenschutz->security, Suchparameter+Suchbeispiele->search-parameters, Beispiel-Sektionen->examples as artifact links, Terminologien VS->value-sets), rendered artefact-views NOT pasted (publisher regenerates); source defect recorded: provenance example XML render broken in the SOURCE guide (Gate-B finding)
2026-08-31T18:30:43Z  INFO   5.4d  derived-scan  start  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  raw_log=migration-log/derived-scan.log
2026-08-31T18:30:43Z  INFO   11  derived-scan  params  target=. out=./migration-log/derived-content.tsv markdown=no
2026-08-31T18:30:43Z  ERROR  11  derived-scan  derived-marker-twin-missing: input/translations/en/pagecontent/capability-statements.md  subject=capability-statements [suggestion source=none]  marker present in lang=default (input/pagecontent/capability-statements.md:10) and absent from lang=en -- the mirror renders the same text WITHOUT the box, telling that reader it is sourced
2026-08-31T18:30:43Z  ERROR  11  derived-scan  derived-marker-twin-missing: input/translations/en/pagecontent/examples.md  subject=examples [bridge source=technischeimplementierung-fhirprofile-consent.md]  marker present in lang=default (input/pagecontent/examples.md:15) and absent from lang=en -- the mirror renders the same text WITHOUT the box, telling that reader it is sourced
2026-08-31T18:30:43Z  ERROR  11  derived-scan  derived-marker-twin-missing: input/translations/en/pagecontent/guidance.md  subject=guidance [bridge source=anwendungsflleinformationsmodell-fragebgen.md]  marker present in lang=default (input/pagecontent/guidance.md:42) and absent from lang=en -- the mirror renders the same text WITHOUT the box, telling that reader it is sourced
2026-08-31T18:30:43Z  ERROR  11  derived-scan  derived-marker-twin-missing: input/translations/en/pagecontent/implementer-guidance.md  subject=implementer-guidance [bridge source=technischeimplementierung.md]  marker present in lang=default (input/pagecontent/implementer-guidance.md:8) and absent from lang=en -- the mirror renders the same text WITHOUT the box, telling that reader it is sourced
2026-08-31T18:30:43Z  INFO   11  derived-scan  result  files=38 markers=5 gates=A:1,B:4,C:0 kinds=bridge:4,suggestion:1 langs=default findings=4 (twin-missing=4) out=./migration-log/derived-content.tsv exit=1
2026-08-31T18:30:43Z  WARN   11  derived-scan  derived-scan: 4 finding(s) -- a marker that does not parse, renders no box, or is missing from a language mirror is derived content that is NOT marked where it counts.
2026-08-31T18:30:43Z  ERROR  5.4d  derived-scan  failed  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  exit=1 raw_log=migration-log/derived-scan.log raw_log_lines=13
2026-08-31T18:35:06Z  INFO   5.5  gen-page-title-po  start  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  raw_log=migration-log/gen-page-title-po.log
2026-08-31T18:35:06Z  INFO   5.5  gen-page-title-po  params  ig=fsh-generated/resources/ImplementationGuide-mii-ig-consent.json seed=migration-log/menu-titles-en.txt lang=en out=input/translations/en/ImplementationGuide-mii-ig-consent.po
2026-08-31T18:35:06Z  INFO   5.5  gen-page-title-po  seed  path=migration-log/menu-titles-en.txt  lines=26 entries=26 matched=18 applied=17 unused=8
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  seed entry unused (no such page title)  title='Anleitung für Forschende'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  seed entry unused (no such page title)  title='Artefakt-Rendering (Demo)'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  seed entry unused (no such page title)  title='Extensions'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  seed entry unused (no such page title)  title='Inhaltsverzeichnis'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  seed entry unused (no such page title)  title='MII Implementierungsleitfaden Consent'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  seed entry unused (no such page title)  title='Metadaten-Übersicht'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  seed entry unused (no such page title)  title='NUM-DIZ'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  seed entry unused (no such page title)  title='Operationen'
2026-08-31T18:35:06Z  INFO   5.5  gen-page-title-po  written  out=input/translations/en/ImplementationGuide-mii-ig-consent.po pages=19 units=19 translated=19 untranslated=0 carried_over=2 preserved_foreign=2 header_preserved=False
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Capability Statements'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Changelog'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Code Systems'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Examples'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Extensions'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Guidance'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Guidance for Implementers'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Guidance for Researchers'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Home'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Logical Models'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='MII ImplementationGuide Resource'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Metadata Overview'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Operations'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Profiles'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Rendering Artifacts (demo)'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Search Parameters'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Security and Privacy'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Translation Information'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='UML Diagrams'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Value Sets'
2026-08-31T18:35:06Z  WARN   5.5  gen-page-title-po  unit dropped (no longer in the pages: tree)  title='Versioning'
2026-08-31T18:35:06Z  INFO   5.5  gen-page-title-po  result  exit=0  every page title translated
2026-08-31T18:35:06Z  INFO   5.5  gen-page-title-po  done  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  exit=0 raw_log=migration-log/gen-page-title-po.log raw_log_lines=33
2026-08-31T18:36:50Z  INFO   5.5  gen-page-title-po  hand-fix per spec 5.5/2.2: the two units carried over from the RETIRED template de-catalogue had inverted directions for the en catalogue (msgstr German) — set msgstr to the English values ('Table of Contents' identity; IG title 'MII Implementation Guide Consent' identity); publisher unit NUM-DIZ correct chrome (language-neutral, spec 2.2)
2026-08-31T19:14:01Z  WARN   5.4  narrative-transfer  source-render-defect repaired: the SOURCE guide's Consent page contained 4 broken 'pagelink' directives (rendered as "Command 'pagelink' could not render: Page not found.") pointing at the MiiConsentPolicyValueSet section of the Terminologien page — replaced by links to code-systems.html in the intro-note (Gate-B item; the defect itself is upstream evidence, recorded here + in the report)
2026-08-31T19:17:08Z  INFO   5.4d  derived-scan  start  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  raw_log=migration-log/derived-scan.log prev_raw_log=migration-log/derived-scan.prev.log
2026-08-31T19:17:08Z  INFO   11  derived-scan  params  target=. out=./migration-log/derived-content.tsv markdown=no
2026-08-31T19:17:08Z  INFO   11  derived-scan  result  files=42 markers=10 gates=A:2,B:8,C:0 kinds=bridge:8,suggestion:2 langs=default,en findings=0 (none) out=./migration-log/derived-content.tsv exit=0
2026-08-31T19:17:08Z  INFO   5.4d  derived-scan  done  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  exit=0 raw_log=migration-log/derived-scan.log raw_log_lines=2
2026-08-31T19:17:13Z  INFO   7  sushi-verify  start  cmd=`npx --yes fsh-sushi@3.20.1 .`  raw_log=migration-log/sushi-verify.log
2026-08-31T19:17:53Z  INFO   7  sushi-verify  done  cmd=`npx --yes fsh-sushi@3.20.1 .`  exit=0 raw_log=migration-log/sushi-verify.log raw_log_lines=72
2026-08-31T19:20:34Z  INFO   5.6  ig-publisher  start  cmd=`docker run --rm -v /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e…`  raw_log=migration-log/ig-publisher.log
2026-08-31T19:21:50Z  INFO   11  manifest-restamp  decision D-11 executed: template-pages/template-artifacts manifests RE-MEASURED at module-template v0.13.2 (a2390dea) / ig-template v1.3.4 into migration-log/ (page set proven byte-identical to the skill's vendored v0.11.1 stamps: compare v0.11.1...v0.13.2 touches ZERO files under input/); passed to verify-migration via --template-pages/--template-artifacts so C5c/R4 do not downgrade to NICHT PRUEFBAR
2026-08-31T19:26:13Z  INFO   5.6  ig-publisher  done  cmd=`docker run --rm -v /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e…`  exit=0 raw_log=migration-log/ig-publisher.log raw_log_lines=5693
2026-08-31T19:31:35Z  INFO   5.3  transfer-artefacts  fidelity repairs after the first rendered build (evidence migration-log/qa-delta.txt): (1) the 6 example instances switched InstanceOf <profile> -> InstanceOf <base resource> + explicit meta.profile — SUSHI's slice inheritance had APPENDED profile-required category slice items (measured: source 4 categories, export 6) and byte-fidelity to the source instances wins; validation stays publisher-side via meta.profile exactly like the raw-XML baseline; (2) the 6 goFSH-minted CamelCase SearchParameter ids renamed to their canonical tails (mii-sp-consent-*) — the SPs are id-less in the source, minting is sanctioned (Gate-A queue-2), tail-matching ids remove 24 id/url-mismatch errors and match the QA-baseline wrapper's minting
2026-08-31T19:33:21Z  INFO   5.6  ig-publisher  start  cmd=`docker run --rm -v /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e…`  raw_log=migration-log/ig-publisher.log prev_raw_log=migration-log/ig-publisher.prev.log
2026-08-31T19:33:36Z  INFO   5.6  postflight-analysis  start  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  raw_log=migration-log/postflight-analysis.log
2026-08-31T19:33:36Z  INFO   5.6  postflight-analysis  done  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  exit=0 raw_log=migration-log/postflight-analysis.log raw_log_lines=1
2026-08-31T19:33:36Z  INFO   7  prepost-delta  start  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  raw_log=migration-log/prepost-delta.log
2026-08-31T19:33:36Z  INFO   7  prepost-delta  params  pre=migration-log/preflight-analysis.json post=migration-log/postflight-analysis.json out=migration-log/prepost-delta.md tsv=migration-log/prepost-delta.tsv
2026-08-31T19:33:36Z  WARN   7  prepost-delta  census-mode-mismatch: pre=reduced post=static -- artefact-count differences reported as expected-change, never as regressions
2026-08-31T19:33:36Z  WARN   7  prepost-delta  delta-not-measurable: identity.id  pre=- post=mii-ig-consent
2026-08-31T19:33:36Z  WARN   7  prepost-delta  delta-not-measurable: identity.canonical  pre=- post=https://www.medizininformatik-initiative.de/fhir/modul-consent
2026-08-31T19:33:36Z  WARN   7  prepost-delta  delta-not-measurable: identity.packageId  pre=- post=de.medizininformatikinitiative.kerndatensatz.consent
2026-08-31T19:33:36Z  WARN   7  prepost-delta  delta-not-measurable: identity.name  pre=- post=MII_IG_Consent
2026-08-31T19:33:36Z  WARN   7  prepost-delta  delta-not-measurable: identity.version  pre=- post=2026.0.0
2026-08-31T19:33:36Z  WARN   7  prepost-delta  delta-not-measurable: identity.fhirVersion  pre=- post=4.0.1
2026-08-31T19:33:36Z  WARN   7  prepost-delta  delta-not-measurable: identity.license  pre=- post=CC-BY-4.0
2026-08-31T19:33:36Z  WARN   7  prepost-delta  delta-not-measurable: identity.publisher  pre=- post=NUM-DIZ
2026-08-31T19:33:36Z  WARN   7  prepost-delta  delta-not-measurable: identity.status  pre=- post=active
2026-08-31T19:33:36Z  WARN   7  prepost-delta  delta-not-measurable: identity.title  pre=- post=MII Implementation Guide Consent
2026-08-31T19:33:36Z  ERROR  7  prepost-delta  delta-regression: licence.contradictory  pre=false post=true
2026-08-31T19:33:36Z  INFO   7  prepost-delta  result  rows=34 unchanged=9 improved=1 expected-change=13 regression=1 not-measurable=10 out=migration-log/prepost-delta.md tsv=migration-log/prepost-delta.tsv exit=1
2026-08-31T19:33:36Z  WARN   7  prepost-delta  prepost-delta: 1 regression(s) -- a property of the module got WORSE between the pre- and post-measurement.
2026-08-31T19:33:36Z  ERROR  7  prepost-delta  failed  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  exit=1 raw_log=migration-log/prepost-delta.log raw_log_lines=31
2026-08-31T19:34:36Z  INFO   7  prepost-delta  ADJUDICATED to the decision queue (spec 10.3): the single REGRESSION row licence.contradictory false->true is a measured FALSE POSITIVE of the licence census on source-verbatim data — the 'CC0' evidence in input/pagecontent/code-systems.md is the substring inside the official policy display string 'MDAT GECC083 erheben' (source typo, zero for O; byte-identical in the source guide table, harvest line 156); the other three evidence values (CC-BY-4.0 / 'Attribution 4.0 International' / 'CC BY 4.0') are the SAME licence in three spellings. The module's licence is uncontradicted CC-BY-4.0; the source table is never edited (guardrail). Queue-3 item with this evidence; upstream note: the display typo GECC083 belongs to the owners' backlog
2026-08-31T19:36:42Z  INFO   5.6  ig-publisher  done  cmd=`docker run --rm -v /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e…`  exit=0 raw_log=migration-log/ig-publisher.log raw_log_lines=5644
2026-08-31T19:38:07Z  INFO   5.6  ig-publisher  QA ACCEPTANCE MET (evidence migration-log/qa-delta.txt + qa-target.txt vs qa-baseline-source.txt): target err=70 warn=137 vs source baseline err=67 (validation sections; the baseline's 373 broken-link errors were wrapper chrome, excluded); broken links in target = 0. Per-class triage: (a) id/url-mismatch family on 3 SDs + 3 VS + 2 CS = SOURCE-INHERENT (UUID/ART-DECOR ids vs slug canonicals, decision D-5 keeps them verbatim; baseline shows the same class keyed under the raw-XML file names); (b) instance validation classes (tx displays, policy codes, Patient/ResearchStudy references not found, category:mii slice) = SOURCE-INHERENT, present in the baseline example sections; (c) Consent-89f494a3 15 errors = the D-14 registry-only example ABSENT from the baseline by construction — its classes equal its siblings' (pre-triaged, decision D-14). ZERO migration-introduced error classes; first-build regressions (24 SP id-mismatches, slice-append category duplication) were FIXED, not triaged
2026-08-31T19:38:23Z  INFO   5.6  same-module-verification  start  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  raw_log=migration-log/same-module-verification.log
2026-08-31T19:38:23Z  INFO   5.6  same-module-verification  done  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  exit=0 raw_log=migration-log/same-module-verification.log raw_log_lines=1
2026-08-31T19:40:06Z  INFO   11  verify-migration  start  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  raw_log=migration-log/verify-migration.log
2026-08-31T19:40:07Z  INFO   11  verify-migration  params  target=. source=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/recon/source-tag guide_tree=- rendered=output log=migration-log/run.log layers=conservation,fidelity,provenance,rendering,log
2026-08-31T19:40:07Z  INFO   11  verify-migration  conservation C1  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  conservation C2  identisch=2 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  conservation C3  identisch=18 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  conservation C4  identisch=1 divergiert=14 nicht_pruefbar=3
2026-08-31T19:40:07Z  WARN   11  verify-migration  verification-divergence: conservation C4  count=14 subjects=anwendungsflleinformationsmodell-beschreibungvonszenarienfrdieanwendungdesmoduls.md, anwendungsflleinformationsmodell-datenstzeinkl.beschreibungen.md, anwendungsflleinformationsmodell-fragebgen.md …
2026-08-31T19:40:07Z  WARN   11  verify-migration  not-mechanisable: conservation C4  count=3 subjects=technischeimplementierung-fhirprofile-consent.md, technischeimplementierung-fhirprofile-documentreference.md, technischeimplementierung-fhirprofile-provenance.md
2026-08-31T19:40:07Z  INFO   11  verify-migration  conservation C5  identisch=3 divergiert=1 nicht_pruefbar=0
2026-08-31T19:40:07Z  WARN   11  verify-migration  verification-divergence: conservation C5  count=1 subjects=input/pagecontent/frageboegen.md
2026-08-31T19:40:07Z  INFO   11  verify-migration  conservation C6  identisch=16 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  conservation C7  identisch=0 divergiert=10 nicht_pruefbar=3
2026-08-31T19:40:07Z  WARN   11  verify-migration  verification-divergence: conservation C7  count=10 subjects=logical-models, frageboegen, uml-diagrams …
2026-08-31T19:40:07Z  WARN   11  verify-migration  not-mechanisable: conservation C7  count=3 subjects=technischeimplementierung-fhirprofile-consent.md, technischeimplementierung-fhirprofile-documentreference.md, technischeimplementierung-fhirprofile-provenance.md
2026-08-31T19:40:07Z  INFO   11  verify-migration  fidelity F1  identisch=4 divergiert=1 nicht_pruefbar=4
2026-08-31T19:40:07Z  WARN   11  verify-migration  verification-divergence: fidelity F1  count=1 subjects=title
2026-08-31T19:40:07Z  WARN   11  verify-migration  not-mechanisable: fidelity F1  count=4 subjects=id, status, publisher …
2026-08-31T19:40:07Z  INFO   11  verify-migration  fidelity F2  identisch=1 divergiert=1 nicht_pruefbar=3
2026-08-31T19:40:07Z  WARN   11  verify-migration  verification-divergence: fidelity F2  count=1 subjects=de.einwilligungsmanagement
2026-08-31T19:40:07Z  WARN   11  verify-migration  not-mechanisable: fidelity F2  count=3 subjects=hl7.fhir.uv.crmi, hl7.fhir.uv.extensions.r4, hl7.terminology.r4
2026-08-31T19:40:07Z  INFO   11  verify-migration  fidelity F3  identisch=2 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  fidelity F4  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  provenance P1  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  provenance P2  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  provenance P3  identisch=1 divergiert=0 nicht_pruefbar=1
2026-08-31T19:40:07Z  WARN   11  verify-migration  not-mechanisable: provenance P3  count=1 subjects=IG Publisher currency
2026-08-31T19:40:07Z  INFO   11  verify-migration  provenance P4  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  provenance P5  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  rendering R1  identisch=3 divergiert=5 nicht_pruefbar=0
2026-08-31T19:40:07Z  WARN   11  verify-migration  verification-divergence: rendering R1  count=5 subjects=release-notes -> changes.html, anwendungsflleinformationsmodell -> logical-models.html, anwendungsflleinformationsmodell-beschreibungvonszenarienfrdieanwendungdesmoduls -> guidance.html …
2026-08-31T19:40:07Z  INFO   11  verify-migration  rendering R2  identisch=0 divergiert=2 nicht_pruefbar=0
2026-08-31T19:40:07Z  WARN   11  verify-migration  verification-divergence: rendering R2  count=2 subjects=output/de id="ig-status" [{{], output/en id="ig-status" [{{]
2026-08-31T19:40:07Z  INFO   11  verify-migration  rendering R3  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  rendering R4  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  rendering R5  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  log L0  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  log L1  identisch=0 divergiert=1 nicht_pruefbar=0
2026-08-31T19:40:07Z  WARN   11  verify-migration  verification-divergence: log L1  count=1 subjects=5.1b.5/parent-snapshots @ 2026-08-31T17:58:40Z
2026-08-31T19:40:07Z  INFO   11  verify-migration  log L2  identisch=28 divergiert=2 nicht_pruefbar=1
2026-08-31T19:40:07Z  WARN   11  verify-migration  verification-divergence: log L2  count=2 subjects=5.1 source-inventory, 5.6 sushi-build
2026-08-31T19:40:07Z  WARN   11  verify-migration  not-mechanisable: log L2  count=1 subjects=5.1c simplifier-discover
2026-08-31T19:40:07Z  INFO   11  verify-migration  log L3  identisch=3 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  INFO   11  verify-migration  log L4  identisch=3 divergiert=0 nicht_pruefbar=0
2026-08-31T19:40:07Z  WARN   11  verify-migration  result  identisch=95 divergiert=37 nicht_pruefbar=15 findings=./migration-log/verification-findings.tsv markdown=./migration-log/verification.md exit=1
2026-08-31T19:40:07Z  WARN   11  verify-migration  anticipated-nonzero-exit: findings are this step OUTPUT (1 = DIVERGIERT, 3 = NICHT PRÜFBAR)  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  exit=1 raw_log=migration-log/verify-migration.log raw_log_lines=66
2026-08-31T19:41:25Z  INFO   5.1  source-inventory  source inventory written to migration-log/source-inventory.json: 20 artefacts by content (paths + resourceTypes from the pinned tag worktree) + 18 harvested narrative pages (from guide-harvest.tsv); single authoritative guide tree (no implementation-guides/ multi-tree complexity)
2026-08-31T19:41:25Z  INFO   5.6  sushi-build  start  cmd=`npx --yes fsh-sushi@3.20.1 .`  raw_log=migration-log/sushi-build.log
2026-08-31T19:41:31Z  INFO   5.6  sushi-build  done  cmd=`npx --yes fsh-sushi@3.20.1 .`  exit=0 raw_log=migration-log/sushi-build.log raw_log_lines=52
2026-08-31T19:41:31Z  INFO   5.1b.5  parent-snapshots  resolved: the silent-partial-success WARN (generated 18 of 21 snapshots) is the documented upstream defect — the official generator REFUSED 3 of 21 differentials (TemplateFrame, TemplateModule, QuestionnaireComposed; refusal reasons in migration-log/parent-snapshots-build.log), NONE of which is a parent of this module's profiles; all 4 --require'd parents snapshotted and verified; escalation to the de.einwilligungsmanagement maintainers recorded (decision D-4, spec 5.1b.5 — never hand-finished)
2026-08-31T19:43:05Z  INFO   11  verify-adjudication  C4 (14 rows) ADJUDICATED as the documented checker limitation + recorded drops: 5 spot-verified 'missing' runs are present VERBATIM in their targets (frageboegen/index/logical-models/uml-diagrams/implementer-guidance greps = 1 hit each) — C4 strips URLs from the needle but not the haystack, so every link-bearing run never matches (same class the Dokument run adjudicated, 12 rows there); the residue are the RECORDED drops: M10 title headings, the Simplifier TOC section (publisher generates toc.html), rendered composition/expansion lines on artefact-view pages (generated-view doctrine), and the 'absichtlich leer' folder-stub line preserved as an HTML comment
2026-08-31T19:43:05Z  INFO   11  verify-migration  start  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  raw_log=migration-log/verify-migration.log prev_raw_log=migration-log/verify-migration.prev.log
2026-08-31T19:43:06Z  INFO   11  verify-migration  params  target=. source=/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/recon/source-tag guide_tree=- rendered=output log=migration-log/run.log layers=conservation,fidelity,provenance,rendering,log
2026-08-31T19:43:06Z  INFO   11  verify-migration  conservation C1  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  conservation C2  identisch=2 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  conservation C3  identisch=18 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  conservation C4  identisch=1 divergiert=14 nicht_pruefbar=3
2026-08-31T19:43:06Z  WARN   11  verify-migration  verification-divergence: conservation C4  count=14 subjects=anwendungsflleinformationsmodell-beschreibungvonszenarienfrdieanwendungdesmoduls.md, anwendungsflleinformationsmodell-datenstzeinkl.beschreibungen.md, anwendungsflleinformationsmodell-fragebgen.md …
2026-08-31T19:43:06Z  WARN   11  verify-migration  not-mechanisable: conservation C4  count=3 subjects=technischeimplementierung-fhirprofile-consent.md, technischeimplementierung-fhirprofile-documentreference.md, technischeimplementierung-fhirprofile-provenance.md
2026-08-31T19:43:06Z  INFO   11  verify-migration  conservation C5  identisch=4 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  conservation C6  identisch=16 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  conservation C7  identisch=0 divergiert=10 nicht_pruefbar=3
2026-08-31T19:43:06Z  WARN   11  verify-migration  verification-divergence: conservation C7  count=10 subjects=logical-models, frageboegen, uml-diagrams …
2026-08-31T19:43:06Z  WARN   11  verify-migration  not-mechanisable: conservation C7  count=3 subjects=technischeimplementierung-fhirprofile-consent.md, technischeimplementierung-fhirprofile-documentreference.md, technischeimplementierung-fhirprofile-provenance.md
2026-08-31T19:43:06Z  INFO   11  verify-migration  fidelity F1  identisch=4 divergiert=1 nicht_pruefbar=4
2026-08-31T19:43:06Z  WARN   11  verify-migration  verification-divergence: fidelity F1  count=1 subjects=title
2026-08-31T19:43:06Z  WARN   11  verify-migration  not-mechanisable: fidelity F1  count=4 subjects=id, status, publisher …
2026-08-31T19:43:06Z  INFO   11  verify-migration  fidelity F2  identisch=1 divergiert=1 nicht_pruefbar=3
2026-08-31T19:43:06Z  WARN   11  verify-migration  verification-divergence: fidelity F2  count=1 subjects=de.einwilligungsmanagement
2026-08-31T19:43:06Z  WARN   11  verify-migration  not-mechanisable: fidelity F2  count=3 subjects=hl7.fhir.uv.crmi, hl7.fhir.uv.extensions.r4, hl7.terminology.r4
2026-08-31T19:43:06Z  INFO   11  verify-migration  fidelity F3  identisch=2 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  fidelity F4  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  provenance P1  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  provenance P2  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  provenance P3  identisch=1 divergiert=0 nicht_pruefbar=1
2026-08-31T19:43:06Z  WARN   11  verify-migration  not-mechanisable: provenance P3  count=1 subjects=IG Publisher currency
2026-08-31T19:43:06Z  INFO   11  verify-migration  provenance P4  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  provenance P5  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  rendering R1  identisch=3 divergiert=5 nicht_pruefbar=0
2026-08-31T19:43:06Z  WARN   11  verify-migration  verification-divergence: rendering R1  count=5 subjects=release-notes -> changes.html, anwendungsflleinformationsmodell -> logical-models.html, anwendungsflleinformationsmodell-beschreibungvonszenarienfrdieanwendungdesmoduls -> guidance.html …
2026-08-31T19:43:06Z  INFO   11  verify-migration  rendering R2  identisch=0 divergiert=2 nicht_pruefbar=0
2026-08-31T19:43:06Z  WARN   11  verify-migration  verification-divergence: rendering R2  count=2 subjects=output/de id="ig-status" [{{], output/en id="ig-status" [{{]
2026-08-31T19:43:06Z  INFO   11  verify-migration  rendering R3  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  rendering R4  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  rendering R5  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  log L0  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  log L1  identisch=1 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  log L2  identisch=30 divergiert=0 nicht_pruefbar=1
2026-08-31T19:43:06Z  WARN   11  verify-migration  not-mechanisable: log L2  count=1 subjects=5.1c simplifier-discover
2026-08-31T19:43:06Z  INFO   11  verify-migration  log L3  identisch=3 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  INFO   11  verify-migration  log L4  identisch=3 divergiert=0 nicht_pruefbar=0
2026-08-31T19:43:06Z  WARN   11  verify-migration  result  identisch=99 divergiert=33 nicht_pruefbar=15 findings=./migration-log/verification-findings.tsv markdown=./migration-log/verification.md exit=1
2026-08-31T19:43:06Z  WARN   11  verify-migration  anticipated-nonzero-exit: findings are this step OUTPUT (1 = DIVERGIERT, 3 = NICHT PRÜFBAR)  cmd=`python3 /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb…`  exit=1 raw_log=migration-log/verify-migration.log raw_log_lines=60
2026-08-31T19:44:13Z  INFO   5.6  ig-publisher  start  cmd=`docker run --rm -v /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e…`  raw_log=migration-log/ig-publisher.log prev_raw_log=migration-log/ig-publisher.prev.log
2026-08-31T19:47:17Z  INFO   5.6  ig-publisher  done  cmd=`docker run --rm -v /private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e…`  exit=0 raw_log=migration-log/ig-publisher.log raw_log_lines=5644
```

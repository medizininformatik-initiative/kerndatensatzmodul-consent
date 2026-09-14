# Page-structure advice

**This report PROPOSES and never edits a module.** It reads the source and target repositories read-only; its only writes are this report and the page-map v2 TSV (`--map`) - the map is the PRIMARY output and the contract step 5 consumes, this report is its rendering. Every routing row below is the branch the MEASUREMENTS support - a human (or the skill at step 5) decides and applies it.

| Input | Value |
| --- | --- |
| source repo | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/recon/source-tag` |
| target repo | `.` |
| routing table | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/recon/agent-skills/skills/mii-ig-migration/references/routing-table.tsv` (17 patterns) |
| harvest manifest | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/target/migration-log/guide-harvest.tsv` (auto-discovered) (18 pages, 0 skipped) |
| Gate 0 preflight | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/target/migration-log/preflight-analysis.json` |
| artefact census | empty (no fsh-generated, no preflight census, no input/fsh) |
| page map | `migration-log/page-map.tsv` |
| generated | 2026-08-31T18:16:05Z |
| script | `page-structure-advice.py` v1.3.0 |

Contract limits in force: menu total <= 33, dropdown children <= 10, top level <= 8, menu depth <= 2; size gate at > 2500 words, > 4 merged sources, or ANY repeated heading title; hub at >= 3 children.

## 1. Source page tree

The tree is taken from the FIRST of four inputs that yields pages: **(a)** the `pages:` block of the source `sushi-config.yaml`, **(b)** the authoritative Simplifier guide tree under `implementation-guides/` (spec 5.1a), **(c)** a flat count of `input/pagecontent/*.md`.

**Input used: (d) the step-2c harvest manifest `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/9e6d07a4-6adb-4483-b4c7-d44df6dc83fb/scratchpad/mig/target/migration-log/guide-harvest.tsv` - the narrative exists only on the rendered Simplifier guide (spec 5.1d).**

### 1.1 Depth histogram

Parsed from the harvest manifest in discovery order; levels derive from the guide URL depth, shallowest at 1.

| Level | Pages | Share |
| --- | ---: | ---: |
| 1 | 1 | 6% |
| 2 | 6 | 33% |
| 3 | 6 | 33% |
| 4 | 5 | 28% |
| **total** | **18** | 100% |

Maximum depth used: **4**. Total words across the 18 source pages: **48494**. Pages in `input/pagecontent/`: **0**.

### 1.2 Parent-child tree

```
`- Kerndatensatz-Modul Consent  `index.md`
   |- Release Notes  `release-notes.md`
   |- Beschreibung Modul Consent  `beschreibung-modul-consent.md`
   |- Kontext im Gesamtprojekt / Bezüge zu anderen Modulen  `kontextimgesamtprojektbezgezuanderenmodulen.md`
   |- Referenzen  `referenzen.md`
   |- Anwendungsfälle / Informationsmodell  `anwendungsflleinformationsmodell.md`
   |  |- Beschreibung von Szenarien für die Anwendung des Moduls  `anwendungsflleinformationsmodell-beschreibungvonszenarienfrdieanwendungdesmoduls.md`
   |  |- Datensätze inkl. Beschreibungen  `anwendungsflleinformationsmodell-datenstzeinkl.beschreibungen.md`
   |  |- UML  `anwendungsflleinformationsmodell-uml.md`
   |  `- Fragebögen  `anwendungsflleinformationsmodell-fragebgen.md`
   `- Technische Implementierung  `technischeimplementierung.md`
      |- FHIR Profile  `technischeimplementierung-fhirprofile.md`
      |  |- Consent  `technischeimplementierung-fhirprofile-consent.md`
      |  |- Provenance  `technischeimplementierung-fhirprofile-provenance.md`
      |  |- DocumentReference  `technischeimplementierung-fhirprofile-documentreference.md`
      |  |- Weitere relevante Profile  `technischeimplementierung-fhirprofile-weitererelevanteprofile.md`
      |  `- Empfehlungen zur praktischen Anwendung  `technischeimplementierung-fhirprofile-empfehlungen-zur-praktischen-anwendung.md`
      `- Terminologien  `technischeimplementierung-terminologien.md`
```

## 2. Target page measurements

Words = whitespace tokens after removing HTML comments, table separator rows and the markup characters `>`, `|`, `*`, `_`, `` ` ``. Headings, list items, table cells and fenced code all count: the gate measures what the reader has to traverse. Repeated titles are compared case-sensitively; each repeat costs one publisher-appended anchor (`-2`, `-3`, ...). Merged sources are the distinct `<!-- source: X.md -->` section markers the migration itself left behind.

| Page | Words | h2 | h3 | h4 | other h | Repeated titles | Anchor collisions | Merged sources | Size gate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| `ImplementationGuide-mii-ig-consent.md` | 253 | 0 | 5 | 0 | 0 | 0 | 0 | 0 | ok |
| `capability-statements.md` | 31 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `changes.md` | 529 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | ok |
| `code-systems.md` | 131 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `downloads.md` | 299 | 0 | 0 | 7 | 0 | 0 | 0 | 0 | ok |
| `examples.md` | 42 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `extensions.md` | 115 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `guidance.md` | 120 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `implementer-guidance.md` | 28 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `index.md` | 435 | 0 | 9 | 0 | 0 | 0 | 0 | 0 | ok |
| `logical-models.md` | 33 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `metadata.md` | 1919 | 0 | 1 | 7 | 1 | 0 | 0 | 0 | ok |
| `operations.md` | 96 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `profiles.md` | 67 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `researcher-guidance.md` | 99 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `search-parameters.md` | 97 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `security-and-privacy.md` | 396 | 0 | 0 | 3 | 0 | 0 | 0 | 0 | ok |
| `translationinfo.md` | 70 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `uml-diagrams.md` | 42 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `value-sets.md` | 159 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `version-history.md` | 503 | 0 | 0 | 6 | 0 | 0 | 0 | 0 | ok |

## 3. Menu budget

Clickable entries are the menu's real destinations: every `<li><a>` except the dropdown toggles, which only repeat their first child's href.

| Metric | Measured | Contract limit | Headroom |
| --- | ---: | ---: | ---: |
| total clickable entries | 25 | 33 | 8 |
| widest dropdown (Artefakte) | 10 | 10 | 0 |
| top-level entries | 7 | 8 | 1 |
| menu depth used | 2 | 2 | 0 |

| Dropdown | Children | Free (of 10) |
| --- | ---: | ---: |
| Anleitung | 5 | 5 |
| Konformität | 5 | 5 |
| Artefakte | 10 | 0 |
| Metadaten | 2 | 8 |

After the proposals in section 4: total 8 free, top level 1 free, freest dropdown Metadaten (8 free).

## 4. Routing proposal (spec 9d/9e)

One row per source page. The branch number is the spec's; the measurement column is the number that forced it. Branch-4 rows state the presentation (4a) and the visibility (4b), and, where a menu entry fits, the remaining budget after it. `Words` is the source page's own size, counted the same way as the target pages in section 2.

| # | Source page | Lvl | Children | Words | Branch | Proposed destination | Measurement |
| ---: | --- | ---: | ---: | ---: | --- | --- | --- |
| 1 | `index.md` | 1 | 6 | 328 | 3 merge into agreed page | index.md <br>_(harvested guide page (kind=narrative))_ | agreed page named 'index' exists in the target |
| 2 | `release-notes.md` | 2 | 0 | 417 | 3 merge into agreed page | changes.md <br>_(harvested guide page (kind=narrative))_ | semantic match 'releasenotes' -> changes (routing-table) |
| 3 | `beschreibung-modul-consent.md` | 2 | 0 | 90 | 3 merge into agreed page | index.md <br>_(harvested guide page (kind=narrative))_ | semantic match 'beschreibungmodul' -> index (routing-table) |
| 4 | `kontextimgesamtprojektbezgezuanderenmodulen.md` | 2 | 0 | 108 | 3 merge into agreed page | implementer-guidance.md <br>_(harvested guide page (kind=narrative))_ | semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table) |
| 5 | `referenzen.md` | 2 | 0 | 76 | 3 merge into agreed page | implementer-guidance.md <br>_(harvested guide page (kind=narrative))_ | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 6 | `anwendungsflleinformationsmodell.md` | 2 | 4 | 10 | 3 merge into agreed page | logical-models.md <br>_(harvested guide page (kind=narrative))_ | semantic match 'informationsmodell' -> logical-models (routing-table) |
| 7 | `anwendungsflleinformationsmodell-beschreibungvonszenarienfrdieanwendungdesmoduls.md` | 3 | 0 | 170 | 3 merge into agreed page | guidance.md <br>_(harvested guide page (kind=narrative))_ | semantic match 'szenarien' -> guidance (routing-table) |
| 8 | `anwendungsflleinformationsmodell-datenstzeinkl.beschreibungen.md` | 3 | 0 | 52 | 4 own page | own page (merged page), pages:-NESTED under anwendungsflleinformationsmodell.md (its host has no menu entry) <br>_(harvested guide page (kind=narrative))_ | no artefact anchor; no agreed page; 0 child page(s) |
| 9 | `anwendungsflleinformationsmodell-uml.md` | 3 | 0 | 234 | 3 merge into agreed page | uml-diagrams.md <br>_(harvested guide page (kind=narrative))_ | semantic match 'uml' -> uml-diagrams (routing-table) |
| 10 | `anwendungsflleinformationsmodell-fragebgen.md` | 3 | 0 | 244 | 4 own page | own page (merged page), pages:-NESTED under anwendungsflleinformationsmodell.md (its host has no menu entry) <br>_(harvested guide page (kind=narrative))_ | no artefact anchor; no agreed page; 0 child page(s) |
| 11 | `technischeimplementierung.md` | 2 | 2 | 90 | 4 own page | own page (merged page), pages:-NESTED under index.md (its host has no menu entry) <br>_(harvested guide page (kind=narrative))_ | no artefact anchor; no agreed page; 2 child page(s) |
| 12 | `technischeimplementierung-fhirprofile.md` | 3 | 5 | 93 | 4 own page | own page (HUB), pages:-NESTED under technischeimplementierung.md (its host has no menu entry) <br>_(harvested guide page (kind=narrative))_ | no artefact anchor; no agreed page; 5 child page(s) |
| 13 | `technischeimplementierung-fhirprofile-consent.md` | 4 | 0 | 27149 | 4 own page | own page (merged page), pages:-NESTED under technischeimplementierung-fhirprofile.md (its host has no menu entry) <br>_(harvested guide page (kind=artefact-view) - a RENDERING of artefacts, not narrative; it regenerates from the artefacts themselves)_ | no artefact anchor; no agreed page; 0 child page(s) |
| 14 | `technischeimplementierung-fhirprofile-provenance.md` | 4 | 0 | 8871 | 4 own page | own page (merged page), pages:-NESTED under technischeimplementierung-fhirprofile.md (its host has no menu entry) <br>_(harvested guide page (kind=artefact-view) - a RENDERING of artefacts, not narrative; it regenerates from the artefacts themselves)_ | no artefact anchor; no agreed page; 0 child page(s) |
| 15 | `technischeimplementierung-fhirprofile-documentreference.md` | 4 | 0 | 8504 | 4 own page | own page (merged page), pages:-NESTED under technischeimplementierung-fhirprofile.md (its host has no menu entry) <br>_(harvested guide page (kind=artefact-view) - a RENDERING of artefacts, not narrative; it regenerates from the artefacts themselves)_ | no artefact anchor; no agreed page; 0 child page(s) |
| 16 | `technischeimplementierung-fhirprofile-weitererelevanteprofile.md` | 4 | 0 | 92 | 4 own page | own page (merged page), pages:-NESTED under technischeimplementierung-fhirprofile.md (its host has no menu entry) <br>_(harvested guide page (kind=narrative))_ | no artefact anchor; no agreed page; 0 child page(s) |
| 17 | `technischeimplementierung-fhirprofile-empfehlungen-zur-praktischen-anwendung.md` | 4 | 0 | 345 | 4 own page | own page (merged page), pages:-NESTED under technischeimplementierung-fhirprofile.md (its host has no menu entry) <br>_(harvested guide page (kind=narrative))_ | no artefact anchor; no agreed page; 0 child page(s) |
| 18 | `technischeimplementierung-terminologien.md` | 3 | 0 | 1621 | 3 merge into agreed page | code-systems.md <br>_(harvested guide page (kind=artefact-view) - a RENDERING of artefacts, not narrative; it regenerates from the artefacts themselves)_ | semantic match 'terminologien' -> code-systems (routing-table) |

Branch totals: 3 merge into agreed page = 9, 4 own page = 9.

## 5. Report queue 1 items

The menu budget forced a ToC-nesting where a menu entry was otherwise warranted. Allocation below is first-come-first-served in source document order; the human may spend the budget differently.

- anwendungsflleinformationsmodell-datenstzeinkl.beschreibungen.md - nested under anwendungsflleinformationsmodell.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- anwendungsflleinformationsmodell-fragebgen.md - nested under anwendungsflleinformationsmodell.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- technischeimplementierung.md - nested under index.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- technischeimplementierung-fhirprofile.md - nested under technischeimplementierung.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- technischeimplementierung-fhirprofile-consent.md - nested under technischeimplementierung-fhirprofile.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- technischeimplementierung-fhirprofile-provenance.md - nested under technischeimplementierung-fhirprofile.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- technischeimplementierung-fhirprofile-documentreference.md - nested under technischeimplementierung-fhirprofile.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- technischeimplementierung-fhirprofile-weitererelevanteprofile.md - nested under technischeimplementierung-fhirprofile.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- technischeimplementierung-fhirprofile-empfehlungen-zur-praktischen-anwendung.md - nested under technischeimplementierung-fhirprofile.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.

## 6. Suggested `5.4c page-routing` run-log lines

One per source page (union pages included), ready for the migration run log. The `5.4c page-routing` step IS the advice run that GENERATES the page map (`--map`) - the map is machine-written, never hand-written; these lines are only its run-log form.

```
5.4c page-routing	index.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	release-notes.md	branch=3	changes.md	semantic match 'releasenotes' -> changes (routing-table)
5.4c page-routing	beschreibung-modul-consent.md	branch=3	index.md	semantic match 'beschreibungmodul' -> index (routing-table)
5.4c page-routing	kontextimgesamtprojektbezgezuanderenmodulen.md	branch=3	implementer-guidance.md	semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table)
5.4c page-routing	referenzen.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	anwendungsflleinformationsmodell.md	branch=3	logical-models.md	semantic match 'informationsmodell' -> logical-models (routing-table)
5.4c page-routing	anwendungsflleinformationsmodell-beschreibungvonszenarienfrdieanwendungdesmoduls.md	branch=3	guidance.md	semantic match 'szenarien' -> guidance (routing-table)
5.4c page-routing	anwendungsflleinformationsmodell-datenstzeinkl.beschreibungen.md	branch=4	own page (merged page), pages:-NESTED under anwendungsflleinformationsmodell.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	anwendungsflleinformationsmodell-uml.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	anwendungsflleinformationsmodell-fragebgen.md	branch=4	own page (merged page), pages:-NESTED under anwendungsflleinformationsmodell.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	technischeimplementierung.md	branch=4	own page (merged page), pages:-NESTED under index.md (its host has no menu entry)	no artefact anchor; no agreed page; 2 child page(s)
5.4c page-routing	technischeimplementierung-fhirprofile.md	branch=4	own page (HUB), pages:-NESTED under technischeimplementierung.md (its host has no menu entry)	no artefact anchor; no agreed page; 5 child page(s)
5.4c page-routing	technischeimplementierung-fhirprofile-consent.md	branch=4	own page (merged page), pages:-NESTED under technischeimplementierung-fhirprofile.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	technischeimplementierung-fhirprofile-provenance.md	branch=4	own page (merged page), pages:-NESTED under technischeimplementierung-fhirprofile.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	technischeimplementierung-fhirprofile-documentreference.md	branch=4	own page (merged page), pages:-NESTED under technischeimplementierung-fhirprofile.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	technischeimplementierung-fhirprofile-weitererelevanteprofile.md	branch=4	own page (merged page), pages:-NESTED under technischeimplementierung-fhirprofile.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	technischeimplementierung-fhirprofile-empfehlungen-zur-praktischen-anwendung.md	branch=4	own page (merged page), pages:-NESTED under technischeimplementierung-fhirprofile.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	technischeimplementierung-terminologien.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	map rows=18 retired=0 coverage=ok	map=migration-log/page-map.tsv
```

## 7. Page map (v2) and coverage

The page map is the CONTRACT of the narrative migration: this run generates and validates it, step 5 consumes ONLY it, step 8 checks against it. Columns: `source_page`, `target` (repo-relative path or `RETIRED`), `reason`, `branch` (spec 9e 1-4; 5 = RETIRED), `measure`. One row per page of the source page universe - the authoritative guide tree UNION `input/pagecontent` UNION on-disk pages no toc lists.

Rows: **18** total - 18 routed source pages (18 from the primary tree, 0 union pages outside it) and 0 RETIRED guide-tree summary row(s).

### 7.3 Coverage validation

Universe re-derived from disk: **18** page(s). Every one needs a row with a non-empty target; every RETIRED row needs a reason. The exit code reports the result (0 covered, 1 not).

**Covered.** All 18 universe pages have a target row; every RETIRED row carries a reason.

## 8. M9 optional-page / other-bucket proposal (Gate 0 census)

Counts: FSH-declaration counts (no generated cross-check!). Rule (spec 9a): count 0 -> REMOVE the optional page, count > 0 -> KEEP and fill it; artefacts are never deleted to force a removal. Each proposal is a `5.4a` run-log line and a HUMAN decision - this table only measures.

| Optional page | Census key | Count | Proposal |
| --- | --- | ---: | --- |
| `extensions.md` | `extensions` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `search-parameters.md` | `searchparameters` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `operations.md` | `operations` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `value-sets.md` | `valuesets` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `code-systems.md` | `codesystems` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `researcher-guidance.md` | - | - | no artefact count decides it - source narrative does (human decision) |
| `metadata.md` | - | - | no artefact count decides it - source narrative does (human decision) |

_The census reports no `other`-bucket artefact types._


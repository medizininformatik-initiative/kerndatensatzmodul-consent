# Pre/post delta — the two ig-stats measurements compared

| Side | Measurement |
|---|---|
| pre | preflight-analysis.json (consent 2026.0.0 unmigrated source, 792f9f3, 2026-08-31T17:34:03Z) |
| post | postflight-analysis.json (consent 2027.0.0-ballot.rc1 migrated tree, 5d025ff, 2026-08-31T21:40:03Z) |

Verdicts: **unchanged** 9 · **improved** 1 · **expected-change** 13 · **REGRESSION** 1 · **not-measurable** 10.

## ⛔ Regressions — properties that got WORSE

Each one blocks the migration until it is fixed or explained; an explanation belongs in the migration report, not in a merge commit.

- **`licence.contradictory`**: `false` → `true` — the target now declares CONTRADICTORY licences (the target declares: attribution4.0international, cc-by-4.0, cc0-1.0, ccby4.0) -- one file will be read as the licence by someone, and it will be the wrong one

## Identity

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `identity.id` | - | mii-ig-consent | not-measurable | the field is absent from the pre measurement |
| `identity.canonical` | - | https://www.medizininformatik-initiative.de/fhir/modul-consent | not-measurable | the field is absent from the pre measurement |
| `identity.packageId` | - | de.medizininformatikinitiative.kerndatensatz.consent | not-measurable | the field is absent from the pre measurement |
| `identity.name` | - | MII_IG_Consent | not-measurable | the field is absent from the pre measurement |
| `identity.version` | - | 2027.0.0-ballot.rc1 | not-measurable | the field is absent from the pre measurement |
| `identity.fhirVersion` | - | 4.0.1 | not-measurable | the field is absent from the pre measurement |
| `identity.license` | - | CC-BY-4.0 | not-measurable | the field is absent from the pre measurement |
| `identity.calver` | false | true | expected-change | descriptive metadata, not machine identity -- confirm the change is deliberate in the report |
| `identity.publisher` | - | NUM-DIZ | not-measurable | the field is absent from the pre measurement |
| `identity.status` | - | active | not-measurable | the field is absent from the pre measurement |
| `identity.title` | - | MII Implementation Guide Consent | not-measurable | the field is absent from the pre measurement |

## Preflight flags

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `licence.contradictory` | false | true | **REGRESSION** | the target now declares CONTRADICTORY licences (the target declares: attribution4.0international, cc-by-4.0, cc0-1.0, ccby4.0) -- one file will be read as the licence by someone, and it will be the wrong one |
| `dependency_health.injection_risk` | true | false | improved | the dependency-injection risk the source carried is cleared |
| `narrative_sources.dual_source` | false | false | unchanged |  |

## Artefact counts

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `mode` | reduced | static | expected-change | census modes differ (pre=reduced, post=static): a raw-resource census and an FSH-declaration census classify the same artefacts differently, so a count difference here is not evidence of loss -- conservation is checked by id, not by count (the verifier's C1) |
| `artifacts.profiles` | 0 | 3 | expected-change | census modes differ (pre=reduced, post=static): a raw-resource census and an FSH-declaration census classify the same artefacts differently, so a count difference here is not evidence of loss -- conservation is checked by id, not by count (the verifier's C1) |
| `artifacts.extensions` | 0 | 0 | unchanged |  |
| `artifacts.valuesets` | 0 | 3 | expected-change | census modes differ (pre=reduced, post=static): a raw-resource census and an FSH-declaration census classify the same artefacts differently, so a count difference here is not evidence of loss -- conservation is checked by id, not by count (the verifier's C1) |
| `artifacts.codesystems` | 0 | 3 | expected-change | census modes differ (pre=reduced, post=static): a raw-resource census and an FSH-declaration census classify the same artefacts differently, so a count difference here is not evidence of loss -- conservation is checked by id, not by count (the verifier's C1) |
| `artifacts.logicals` | 0 | 0 | unchanged |  |
| `artifacts.capabilitystatements` | 0 | 1 | expected-change | census modes differ (pre=reduced, post=static): a raw-resource census and an FSH-declaration census classify the same artefacts differently, so a count difference here is not evidence of loss -- conservation is checked by id, not by count (the verifier's C1) |
| `artifacts.questionnaires` | 0 | 0 | unchanged |  |
| `artifacts.searchparameters` | 0 | 6 | expected-change | census modes differ (pre=reduced, post=static): a raw-resource census and an FSH-declaration census classify the same artefacts differently, so a count difference here is not evidence of loss -- conservation is checked by id, not by count (the verifier's C1) |
| `artifacts.operations` | 0 | 0 | unchanged |  |
| `artifacts.examples` | 0 | 6 | expected-change | census modes differ (pre=reduced, post=static): a raw-resource census and an FSH-declaration census classify the same artefacts differently, so a count difference here is not evidence of loss -- conservation is checked by id, not by count (the verifier's C1) |
| `artifacts.rulesets` | 0 | 55 | expected-change | census modes differ (pre=reduced, post=static): a raw-resource census and an FSH-declaration census classify the same artefacts differently, so a count difference here is not evidence of loss -- conservation is checked by id, not by count (the verifier's C1) |
| `artifacts.invariants` | 0 | 0 | unchanged |  |
| `artifacts.mappings` | 0 | 0 | unchanged |  |
| `artifacts.other_total` | 0 | 0 | unchanged |  |
| `artifacts.total` | 0 | 22 | expected-change | census modes differ (pre=reduced, post=static): a raw-resource census and an FSH-declaration census classify the same artefacts differently, so a count difference here is not evidence of loss -- conservation is checked by id, not by count (the verifier's C1) |

## Narrative pages

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `narrative.pages` | 0 | 18 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.intro_note_pages` | 0 | 3 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.translation_pages` | 0 | 18 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |

## Directives

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `directives.total` | 0 | 0 | unchanged |  |


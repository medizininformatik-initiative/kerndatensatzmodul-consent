# MII KDS Modul Consent — Migration auf das MII-KDS-Modul-Template

> **⚠️ Migrations-Branch — nicht freigegeben.** Dieser Branch trägt die
> Migration des Moduls auf das MII-KDS-Modul-Template und ist **keine
> MII-Publikation**; die Freigabe (Gate D) liegt bei TF KDS / AG IOP / NSG —
> erst der Merge nach der Gate-Review macht diese Struktur zur offiziellen.
> Vollständige Evidenz: [`migration-log/`](migration-log/); Plan, Recon und
> Preservation-Harvest: Branch `evidence/2026-08-31-plan-recon` in der
> [FGDH-Sandbox](https://github.com/forschungsgruppe-digital-health/mii-kds-consent-ig-inoffiziell).

Migration des **KDS Modul Consent** (Quelle: Release 2026.0.0, Tag `2026.0.0`
= `792f9f3e`) auf das
[mii-kds-module-template](https://github.com/medizininformatik-initiative/mii-kds-module-template)
**v0.13.2**, durchgeführt mit dem Skill `mii-ig-migration` v0.25.0
([agent-skills](https://github.com/forschungsgruppe-digital-health/agent-skills)).
Vollständige Nachvollziehbarkeit: [`migration-log/`](migration-log/) (Run-Log,
Identitäts-Ledger, Harvest-Manifest, QA-Baseline, Migrationsbericht).

| Koordinate | Wert |
| --- | --- |
| Canonical | `https://www.medizininformatik-initiative.de/fhir/modul-consent` |
| Package | `de.medizininformatikinitiative.kerndatensatz.consent` 2027.0.0-ballot.rc1 (Ballot-Kandidat; inhaltlich = Release 2026.0.0) |
| FHIR | R4 (4.0.1) |
| Quell-IG (Simplifier, gepinnt) | [MII IG Modul Consent 2026.0.0](https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent?version=2026.0.0) |
| Sprache | **DE-first**: Deutsch = Standardsprache, Englisch = Übersetzung unter `input/translations/en/` (Entscheidung D-3) |
| Lizenz | CC BY 4.0 (Quelle: LICENSE der Quelle, byte-getreu übernommen) |

## Bauen

Der Build läuft über die Template-Workflows (`.github/workflows/`), lokal über
SUSHI + IG Publisher. **Zwingende Vorstufe:** das Eltern-Paket
`de.einwilligungsmanagement` 2.0.2 liefert **keine Snapshots** — vor jedem
Build muss der Cache-Eintrag `de.einwilligungsmanagement#2.0.2-snapshots`
erzeugt werden:

```bash
bash scripts/generate-parent-snapshots.sh   # einmal pro Maschine/CI-Lauf
npx --yes fsh-sushi@3.20.1 .
```

Ohne diesen Schritt bricht SUSHI mit „missing a snapshot" ab (Details im
Skript-Header und in `migration-log/`; Entscheidung D-4).

## Repository-Struktur

| Pfad | Inhalt |
| --- | --- |
| `input/fsh/` | FSH-Quellen (aus den Roh-XML/JSON-Ressourcen der Quelle per goFSH 2.6.1 abgeleitet, IDs/Canonicals unverändert) |
| `input/pagecontent/` | Deutsche Leitfaden-Seiten (Standardsprache) |
| `input/translations/en/` | Englische Übersetzungen (Seiten, Menü, `.po`) |
| `migration-log/` | Migrations-Evidenz: Run-Log, Ledger, Harvest, QA-Baseline, Bericht |
| `ressourcen-profile/`, `searchparameters/`, `terminologie/`, `examples/` | **Alt-Quellbestand (Roh-XML/JSON)** — bleibt bis zur Freigabe (Gate D) erhalten, danach Rückbau (Entscheidung D-13) |
| `README.simplifier-legacy.md` | Die ursprüngliche README der Quelle (unverändert archiviert) |

## Herkunft & Governance

Inhaltlich unverändert übernommen: alle Canonical-URLs, IDs, Versionen und die
Lizenz der Quelle (Guardrail 1). Jede Entscheidung der Migration ist im
[Migrationsbericht](migration-log/migration-report.md) mit Gate-Zuordnung
dokumentiert; offene Punkte tragen `TODO:REVIEW`.

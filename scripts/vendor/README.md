# Vendored scripts

`parent-snapshots.sh` + its logging dependency `migration-log.sh`, vendored
verbatim from
[forschungsgruppe-digital-health/agent-skills](https://github.com/forschungsgruppe-digital-health/agent-skills)
v0.25.0, `skills/mii-ig-migration/scripts/` (Apache-2.0). They drive the
OFFICIAL HL7 snapshot generator (`validator_cli.jar snapshot`) and verify every
generated snapshot (element-count floor vs differential and base) — see the
long header comment in `parent-snapshots.sh` for why a snapshot is NEVER
hand-rolled. Entry point for this module: `scripts/generate-parent-snapshots.sh`
(one directory up). Update by re-copying from a newer agent-skills release.

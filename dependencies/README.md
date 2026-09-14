# Vendored FHIR dependency — TEMPORARY

This directory exists for one reason: **`de.einwilligungsmanagement` ships zero
snapshots**, and SUSHI cannot import a parent profile without one
(`is missing a snapshot. Snapshot is required for import.`).

Measured across every release of the parent package:

| Version | StructureDefinitions | With snapshot |
| --- | --- | --- |
| 2.0.2 | 21 | 0 |
| 2.0.3 | 21 | 0 |
| 2.0.4-rc1 | 21 | 0 |
| **2.0.4** (current pin) | **23** | **0** |

## What is in here

`de.einwilligungsmanagement-2.0.4-snapshots.tgz` is the upstream release
**2.0.4**, with a `snapshot` element added to each of its 23
StructureDefinitions. Nothing else was changed: every other field is upstream's.

The snapshots were generated with the **official HL7 generator** —
`validator_cli.jar snapshot` (ProfileUtilities), pinned to version 6.10.0 with
its SHA-256 verified — one invocation per file, because a batch run aborts at the
first failure and silently skips the rest. Result: **23 of 23 generated, 0
refused.** Nothing here merges a differential by hand.

The manifest inside the tarball declares `version: 2.0.4`, so the package
installs into the FHIR cache under the version `sushi-config.yaml` pins. Its
`description` records that it is a snapshot-bearing rebuild, so the provenance
travels with the artifact.

Integrity: `de.einwilligungsmanagement-2.0.4-snapshots.tgz.sha256`, verified by
the installer before anything is unpacked.

## How it is used

`scripts/install-parent-snapshots.sh` unpacks it into the FHIR package cache as
`de.einwilligungsmanagement#2.0.4`, but **only** when the cached copy is missing
or carries no snapshots. It is idempotent and needs no network, no Java and no
Python — which is why it works in the pinned IG Publisher container, where the
generator does not (that image has no `python3`).

To rebuild it from upstream rather than trusting the committed copy:

```bash
bash scripts/generate-parent-snapshots.sh      # downloads upstream 2.0.4 + validator_cli
```

## Why this is temporary, and when it goes away

This is a workaround for an upstream defect. Delete this directory, the
installer script and its workflow step as soon as
`de.einwilligungsmanagement` publishes a release whose StructureDefinitions
carry snapshots.

**It does not fix everything.** The MII reusable validation workflows
(`ci_dotnet_validation.yml`) run SUSHI themselves and call no repository script,
so they still restore the snapshot-less upstream package from the registry and
still fail. That fix belongs upstream in `kerndatensatz-meta` — a snapshot
prebuild step in the reusable workflow — not here.

## Provenance and licence

The tarball is a derivative of the upstream package published by the HL7
Deutschland / IHE Deutschland **AG Einwilligungsmanagement**. It is redistributed
here solely to make this module buildable, it is not an upstream release, and it
must not be published to a package registry. The authoritative package remains
the one on the registry.

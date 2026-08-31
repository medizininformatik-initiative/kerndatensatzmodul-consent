#!/usr/bin/env bash
# generate-parent-snapshots.sh — make de.einwilligungsmanagement importable.
#
# WHY (migration decision D-4, Gate A): this module's profiles derive from
# de.einwilligungsmanagement 2.0.2 (the SOURCE pin of the published
# 2026.0.0 package). That upstream package ships 21 StructureDefinitions and
# ZERO snapshots — in 2.0.2 AND 2.0.3 — and SUSHI cannot import a parent
# without a snapshot. This script generates the missing snapshots with the
# OFFICIAL HL7 generator and installs them as a NEW FHIR-cache entry
#   ~/.fhir/packages/de.einwilligungsmanagement#2.0.2-snapshots
# (upstream is never overwritten), which sushi-config.yaml pins. CI runs this
# before every build; run it once locally before `npx fsh-sushi .`.
#
# The upstream defect (3 of 21 differentials are refused by the generator:
# TemplateFrame, TemplateModule, QuestionnaireComposed — none of them parents
# of this module's profiles) is escalated to the upstream maintainers, never
# patched here.
#
# Idempotent: exits 0 immediately when the cache entry already exists.
set -euo pipefail

PARENT_PACKAGE="de.einwilligungsmanagement"
PARENT_VERSION="2.0.2"                       # THE SOURCE PIN — keep in sync with sushi-config.yaml
VALIDATOR_VERSION="6.10.0"
VALIDATOR_SHA256="fc663ae55dd31bbfde19788dddfb49cacbeebc3c64498fa7b7779df90000434b"

CACHE_ENTRY="${HOME}/.fhir/packages/${PARENT_PACKAGE}#${PARENT_VERSION}-snapshots"
if [ -f "${CACHE_ENTRY}/package/package.json" ]; then
  echo "generate-parent-snapshots: ${CACHE_ENTRY} already installed — nothing to do."
  exit 0
fi

command -v java >/dev/null || { echo "ERROR: java is required (the snapshot generator is validator_cli.jar)." >&2; exit 2; }

here="$(cd -- "$(dirname -- "$0")" && pwd)"
workdir="$(mktemp -d)"
trap 'rm -rf "${workdir}"' EXIT

jar="${workdir}/validator_cli.jar"
echo "Fetching validator_cli.jar ${VALIDATOR_VERSION} (~187 MB, pinned)…"
curl --fail --location --silent --show-error \
  "https://github.com/hapifhir/org.hl7.fhir.core/releases/download/${VALIDATOR_VERSION}/validator_cli.jar" \
  --output "${jar}"
echo "${VALIDATOR_SHA256}  ${jar}" | shasum -a 256 -c - >/dev/null || {
  echo "ERROR: validator_cli.jar checksum mismatch — refusing to run an unverified generator." >&2; exit 2; }

exec bash "${here}/vendor/parent-snapshots.sh" build \
  --package "${PARENT_PACKAGE}" --version "${PARENT_VERSION}" \
  --validator "${jar}" --fhir-version 4.0.1 --install \
  --require http://fhir.de/ConsentManagement/StructureDefinition/Consent \
  --require http://fhir.de/ConsentManagement/StructureDefinition/DocumentReference \
  --require http://fhir.de/ConsentManagement/StructureDefinition/DomainReference \
  --require http://fhir.de/ConsentManagement/StructureDefinition/Provenance

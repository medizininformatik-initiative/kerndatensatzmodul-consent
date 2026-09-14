#!/usr/bin/env bash
# install-parent-snapshots.sh — make de.einwilligungsmanagement importable, offline.
#
# WHY: the upstream package ships ZERO snapshots in every release (2.0.2, 2.0.3,
# 2.0.4-rc1 and 2.0.4 — measured), and SUSHI cannot import a parent without one:
#   "... is missing a snapshot. Snapshot is required for import."
#
# WHAT: unpacks the committed, snapshot-bearing rebuild from dependencies/ into
# the FHIR package cache as de.einwilligungsmanagement#<PARENT_VERSION> — the
# version sushi-config.yaml pins. Only the `snapshot` element was added upstream;
# see dependencies/README.md for provenance, integrity and the removal condition.
#
# WHY NOT generate it here: scripts/generate-parent-snapshots.sh does that, but it
# needs a 187 MB validator_cli download, Java AND python3. The pinned IG Publisher
# container has no python3, so the generator cannot run inside it. This installer
# needs none of the three, so local builds, the dev container and CI all behave
# identically.
#
# TEMPORARY: delete this script, dependencies/ and the workflow step that calls it
# as soon as upstream publishes snapshots.
#
# Idempotent. Never touches a cached copy that already carries snapshots.
set -euo pipefail

PARENT_PACKAGE="de.einwilligungsmanagement"
PARENT_VERSION="2.0.4"          # keep in sync with sushi-config.yaml and package.json

here="$(cd -- "$(dirname -- "$0")/.." && pwd)"
tarball="${here}/dependencies/${PARENT_PACKAGE}-${PARENT_VERSION}-snapshots.tgz"
checksum="${tarball}.sha256"
cache="${FHIR_PACKAGE_CACHE:-${HOME}/.fhir/packages}"
dest="${cache}/${PARENT_PACKAGE}#${PARENT_VERSION}"

log() { echo "install-parent-snapshots: $*"; }

[ -f "${tarball}" ]  || { echo "ERROR: vendored package missing: ${tarball}" >&2; exit 2; }
[ -f "${checksum}" ] || { echo "ERROR: checksum missing: ${checksum}" >&2; exit 2; }

# Does the cache already hold a usable copy?
if [ -d "${dest}/package" ]; then
  if grep -lq '"snapshot"' "${dest}/package"/*.json 2>/dev/null; then
    log "${dest} already carries snapshots — nothing to do."
    exit 0
  fi
  log "cached ${PARENT_PACKAGE}#${PARENT_VERSION} carries NO snapshots — replacing it with the"
  log "  snapshot-bearing rebuild from dependencies/ (upstream defect; see dependencies/README.md)."
else
  log "installing ${PARENT_PACKAGE}#${PARENT_VERSION} from dependencies/ (not in the cache yet)."
fi

# Verify before unpacking anything.
( cd "$(dirname "${tarball}")" && \
  if command -v sha256sum >/dev/null 2>&1; then sha256sum -c "$(basename "${checksum}")" >/dev/null
  else shasum -a 256 -c "$(basename "${checksum}")" >/dev/null; fi ) \
  || { echo "ERROR: checksum mismatch — refusing to install an unverified package." >&2; exit 2; }

work="$(mktemp -d)"; trap 'rm -rf "${work}"' EXIT
tar -xzf "${tarball}" -C "${work}"
[ -f "${work}/package/package.json" ] || { echo "ERROR: tarball has no package/package.json." >&2; exit 2; }

mkdir -p "${cache}"
rm -rf "${dest}.tmp" && mv "${work}/package" "${dest}.tmp.pkgdir"
mkdir -p "${dest}.tmp" && mv "${dest}.tmp.pkgdir" "${dest}.tmp/package"
rm -rf "${dest}" && mv "${dest}.tmp" "${dest}"

count=$(grep -l '"snapshot"' "${dest}/package"/*.json 2>/dev/null | wc -l | tr -d ' ')
log "installed ${dest} (${count} resources carry a snapshot)."
log "TEMPORARY workaround — remove once upstream ships snapshots."

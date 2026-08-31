#!/usr/bin/env bash
# language-model-check.sh — guard the German-default / English-translation model.
#
# THIS MODULE IS DE-FIRST (migration decision D-3, per the MII meta wiki
# "Release 2027 — IG Umbau – DE First" and the kerndatensatz-dokument
# precedent): it renders in GERMAN by default (sushi-config.yaml
# `i18n-default-lang: de`) with an ENGLISH translation under
# `input/translations/en/`. This INVERTS the template's stock model
# (English-default, German translation) — this script is the DE-first-patched
# variant of the template's stock check, changed in the same commit as the
# i18n flip. Prose that calls English the default/leading/authoritative/source
# language contradicts the shipped configuration and fails here.
#
#   scripts/language-model-check.sh        # scan the tracked text files
#
# Exit 0 = clean, 1 = residue found. Run by .github/workflows/convention-check.yml.
#
# Legitimate hits go in ALLOW below, one "<path>|<substring>" per entry — do NOT
# weaken PATTERNS.
#
# Not scanned: input/translations/en/** (the English translation itself),
# docs/** (the template's generic authoring documentation, which describes the
# template's stock English-default model — kept verbatim from the scaffold, its
# subject is the template, not this module), and this file. Binary files are
# skipped by `git grep -I`.
#
# Bash 3.2 compatible.
set -u
cd "$(dirname "$0")/.." || exit 1

# Phrases that assert the wrong language model — the DE-first inversion of the
# template's curated list. Word boundaries are written as `[^A-Za-z]` /
# `(^|[^A-Za-z])` / `([^A-Za-z]|$)`, NOT as `\b`: git's built-in regex engine
# silently matches nothing for `\b` on some platforms.
PATTERNS=(
  'english[^.]{0,30}[^A-Za-z](default|leading|authoritative|binding)([^A-Za-z]|$)'
  'english[^A-Za-z]{0,6}(is|stays|remains|as)?[^A-Za-z]{0,6}(the[^A-Za-z]{0,6})?(source|original)([^A-Za-z]|$)'
  'english[^.]{0,25}[^A-Za-z]the (source|original)([^A-Za-z]|$)'
  'falls back to english'
  'leave it english'
  'english-led([^A-Za-z]|$)'
  'english starter page'
  '(^|[^A-Za-z])en-default([^A-Za-z]|$)'
  'back to de-default'
  'englisch \(standardsprache\)'
  'i18n-lang:[^]]{0,20}[^A-Za-z]de([^A-Za-z]|$)'
  'input/translations/de([^A-Za-z]|$)'
)

# Reviewed exceptions: "<path>|<substring of the offending line>", one per line.
# A module author writing their own prose can record a legitimate hit here
# without blanking a whole file from the scan.
ALLOW='scripts/publication-url-consistency.template-test.mjs|is English-default with German translation supplements
scripts/publication-url-consistency.template-test.mjs|i18n-lang:
scripts/self-check-substitute.sh|input/translations/de/ImplementationGuide-mii-ig-
skills/wiki-consistency-check/references/check-matrix.md|i18n-default-lang: en'

args=()
for pattern in "${PATTERNS[@]}"; do
  args+=(-e "$pattern")
done

hits="$(git grep -n -I -i -E "${args[@]}" -- . \
  ':(exclude)input/translations/en' \
  ':(exclude)docs' \
  ':(exclude)migration-log' \
  ':(exclude)README.simplifier-legacy.md' \
  ':(exclude)scripts/language-model-check.sh')"
rc=$?

# git grep exits 0 on a hit, 1 on no hit, and >1 on an error. The error case
# must not be mistaken for a clean tree, so the status is handled explicitly.
case "$rc" in
  1) echo "language-model-check: no English-default residue found."; exit 0;;
  0) ;;
  *) echo "ERROR: git grep failed (exit $rc)." >&2; exit "$rc";;
esac

status=0
while IFS= read -r hit; do
  [ -n "$hit" ] || continue
  f="${hit%%:*}"
  allowed=0
  while IFS= read -r entry; do
    [ -n "$entry" ] || continue
    case "$entry" in
      "$f|"*)
        needle="${entry#*|}"
        case "$hit" in *"$needle"*) allowed=1;; esac;;
    esac
  done <<EOF
$ALLOW
EOF
  [ "$allowed" = 1 ] && continue
  echo "$hit"
  status=1
done <<EOF
$hits
EOF

if [ "$status" != 0 ]; then
  cat >&2 <<'MSG'

English-default language residue found (see the lines above).

This IG is German-default with an English translation (DE-first, decision D-3):
  - input/pagecontent/**            German  — the source
  - input/translations/en/**        English — the translation, renders on /en/
  - input/includes/menu.xml         German  — the source menu
There is no input/translations/de/ in this module.

If a hit is legitimate, add it to ALLOW in scripts/language-model-check.sh with a
reason in the commit message. Do not widen the exclusions or relax PATTERNS.
MSG
else
  echo "language-model-check: no English-default residue found."
fi
exit "$status"

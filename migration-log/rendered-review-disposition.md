# Rendered-page review — findings disposition (2026-08-31)

Full-surface review of the rendered IG: mechanical sweep over **420 HTML files**
(`rendered-page-scan.tsv`) + an 8-inspector semantic review over **50 content and
artifact pages** in both languages (51 findings). Every finding below is either
**FIXED** (in the markdown sources, re-verified on the rebuilt output) or
**RECORDED** (source data, template- or publisher-level — with its owner). Nothing
is unreported.

## FIXED (verified on the rebuild)

| # | Finding (pages) | Root cause | Fix |
|---|---|---|---|
| F1 | Every transferred pipe table shattered into per-row mini-tables with the `\|---\|` separator leaking as visible em-dash text (index, frageboegen, implementer-guidance, code-systems ×125 fragments, value-sets, search-parameters, Einwilligung intro-note ×51 fragments — DE + EN) | The Simplifier harvest emitted tables with blank lines between rows and multi-line cells; kramdown parses each line separately | `normalize_tables` across all 18 narrative/intro-note files: rows joined (multi-line cells → `<br/>`), inter-row blanks removed |
| F2 | Einwilligung intro-note `Consent.policy.uri` row rendered as raw pipe text (DE + EN) | Multi-line cell (same root cause) | Covered by F1 (cell joined with `<br/>`) |
| F3 | search-parameters: all 6 per-parameter definition blocks collapsed into run-together garble with visible `\[base\]` escapes (DE + EN) | The harvest flattened Simplifier's SP definition tables into single text runs | Rebuilt as clean per-parameter definition tables (Invocations/Resource/Code/Type/FhirPath, values parsed from the runs; in-cell pipes escaped `\|`) |
| F4 | Visible `2..\*` escaped asterisk (implementer-guidance DE + EN) | Harvest escape inside a code span | `2..\*` → `2..*` |
| F5 | U+FFFC object-replacement character visible in the changes pages (DE + EN) | Junk codepoint in the source guide's release-notes render | Character stripped |
| F6 | version-history paragraph truncated mid-sentence (DE + EN) | **Own defect**: the M9 metadata-link removal cut the line mid-sentence | Sentence completed, now pointing at the IG-resource page |
| F7 | Template TODO prompts still visible on EN downloads (2×) and EN version-history | **Own defect**: earlier removal regexes silently failed (string mismatch, wrongly reported as done) | Blocks removed; downloads links the IG-resource page like the DE side |
| F8 | capability-statements DE page embedded the ENGLISH CS fragment | `lang-fragment` resolved the bare alias, which the publisher writes in English even under a DE default (upstream interplay, see R-list) | Explicit per-language includes (`…-html-de.xhtml` / `…-html-en.xhtml`) |
| F9 | guidance page showed internal repo commentary ("This entry shares its target … docs/page-structure.md") | Template starter prose kept during assembly | Trimmed (both languages) |

## RECORDED — source data (owners' backlog; never edited, guardrail 3)

* `artifacts.html`: the Policy-ValueSet **description element** contains markdown links → rendered literally; smart typography corrupts the visible ART-DECOR URL (`--mide-` → `–mide-`). Resource **data**.
* ip-statements block on the IG page: German copyright sentences appear on /en/ (resource `copyright` data), CC-BY markdown link inside `<code>` unrendered.
* en/frageboegen "modeled in ART-DECOR)" dangling parenthesis = **source typo**, transferred verbatim (DE identical).
* Source typos noted by inspectors (`spetifischen`, `Elemete`, `Feasability`, `Geschlecht,Anschrift`) — verbatim source content.

## RECORDED — template / publisher level (upstream findings)

* **14 dead `.ttl.html` links** on Instance-type artifact pages (6 SearchParameters + CapabilityStatement × both languages): `excludettl: true` (template default) removes the files but the publisher still renders the TTL format link on Instance pages. → template/publisher issue.
* **toc/breadcrumb English chrome under the DE default** ("Table of Contents" breadcrumb root on every /de/ page, English toc title, `en/toc.html` falling back to the German tree wholesale): publisher i18n gap around the generated toc page — affects any DE-first module.
* **Translation-banner literal markdown** `[here](translationinfo.html)` on /en/ pages: the ig-template's language-fallback fragment renders a markdown link un-processed. → ig-template issue.
* **`lang-fragment` bare-alias language**: the publisher writes the bare fragment alias in English even when `i18n-default-lang: de`, so `{% lang-fragment %}` on default-language pages can embed the wrong language (F8's root cause). → template/publisher interplay, affects DE-first modules.
* SNOMED `&amp;reg;` double-escape in the generated IP-statements usage list; `searchform {{title}}`; `qa-ipreview → ../qa.html`; English publish-box chrome on all pages — publisher-own.
* Header status bar renders "2027.0.0-ballot.rc1 - " with a trailing dash before the flag (template-wide cosmetic).

## Verified clean by the review (no findings)

DERIVED boxes render as styled review boxes with lead-in on all 10 markers (both languages); all images valid and served locally; Consent example pages render exactly **4** categories (resource-content tabs, both examples, both languages); artifacts.html lists all 23 entries with resolving links; menus carry Fragebögen/Questionnaires; element-tree tabs populated (Einwilligung snapshot 231 rows); no mojibake; no visible error strings; publication table values (2027.0.0-ballot.rc1 / 31.08.2026) present in both languages.

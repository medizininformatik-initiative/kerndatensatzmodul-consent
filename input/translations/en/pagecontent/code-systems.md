<!-- markdownlint-disable MD041 -->
<!-- machine translation of source page code-systems.md (de). TODO:REVIEW — Gate C. -->
<!-- Quellseite (page-map): Terminologien — Abschnitt "CodeSysteme". Die
     gerenderten Konzeptlisten der Quellseite (Version-Modules, Answer) werden
     vom IG Publisher auf den Artefaktseiten neu erzeugt und sind hier durch
     Links ersetzt. Die Policy-Tabelle ist HANDGEPFLEGTE Quelle (Spalte
     "Gültigkeit" ist im CodeSystem nicht abbildbar) und bleibt wortgetreu
     erhalten. -->
### CodeSystems

This page describes the CodeSystems of the **Consent** module. The ValueSets
built on top of them are described on the [ValueSets](value-sets.html) page.

{:.bg-info}
**Important:** CodeSystem resources of external terminologies (e.g. ICD-10-GM, OPS,
SNOMED CT) are **not** published in this module; they are obtained from the
central KDS terminology server (SU-TermServ):
[https://mii-termserv.de/](https://mii-termserv.de/).

### MII CS Consent Version and Modules

Codes for the Broad Consent versions and additional modules
(`urn:oid:2.16.840.1.113883.3.1937.777.24.5.27`): see the artifact page
[mii-cs-consent-version-modules](CodeSystem-mii-cs-consent-version-modules.html).

### MII_CS_Consent_Answer

Answer codes (`urn:oid:2.16.840.1.113883.3.1937.777.24.5.2`): see the
artifact page
[MII_CS_Consent_Answer](CodeSystem-2.16.840.1.113883.3.1937.777.24.5.2--20210423105554.html).

<!-- Policy table updated from terminologie/codesystems/CodeSystem-MiiConsentPolicy.md @ develop 744f7ba (develop incorporation 2026-09-01; struck-through = deprecated). -->
### MII CS Consent Policy

#### Consent resource and provision levels

The **Consent resource** allows a refinement of `consent.provision`, in that `consent.provision` can itself again contain a `provision`. In this IG, this refinement in Consent resources is restricted to 2 levels. Level 1 (`consent.provision`) is set to DENY in accordance with the opt-out model (`consent.provision.type=DENY`). This specifies that initially EVERYTHING is prohibited (per the opt-in approach). Level 2 of the Consent resource, `consent.provision.provision`, is the refinement of the level 1 provisions and can now add permissions in a targeted way. For **level 2 provisions** within the Consent resource, the **policies** from the following CodeSystem *MII CS Consent Policy* are used.

Example:

```
<provision> <!-- Level 1 Provision steht auf 'deny' -->
  <type value="deny" />
  <period>
    <start value="2020-09-01" />
    <end value="2050-08-31" />
  </period>
  <provision> <!-- Level 2 Provision steht auf 'permit' -->
    <type value="permit" />
    <period>
      <start value="2020-09-01" />
      <end value="2025-08-31" />
    </period>
    <code>
      <coding>
        <system value="urn:oid:2.16.840.1.113883.3.1937.777.24.5.3" />
        <code value="2.16.840.1.113883.3.1937.777.24.5.3.6" />
        <display value="MDAT_erheben" />
      </coding>
    </code>
  </provision>
</provision>
```

#### Policy CodeSystem and its level entries ("Lvl") for modules and policies

As can be seen in the following **table**, the **CodeSystem *MII CS Consent Policy*** is likewise structured in 2 levels: **CodeSystem level 1** (Lvl=1) represents the **modules** and thus the questions in the Broad Consent.

Example:

| Lvl | Type | Display | Code | Validity | Status |
| --- | --- | --- | --- | --- | --- |
| 1 | Modul | PATDAT erheben, speichern, nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.1 |  |  |

**CodeSystem level 2** (Lvl=2) represents the semantic policies of the MII Broad Consent. Policies allow a fine-grained differentiation of permissions within a module.

Example:

| Lvl | Type | Display | Code | Validity | Status |
| --- | --- | --- | --- | --- | --- |
| 2 | Policy | MDAT wissenschaftlich nutzen | 2.16.840.1.113883.3.1937.777.24.5.3.8 | 30 |  |

**In the Consent resource, only the policy entries (Lvl=2) may be used in `consent.provision.provision` (level 2 provisions)**!

#### Notes on use in withdrawals and partial withdrawals

To implement withdrawals or partial withdrawals, the corresponding policies must be set to DENY by means of the level 2 provisions (`consent.provision.provision`). For example, collection (.6) can be prohibited while storage and use (.8) remain unaffected ("MDAT erheben"="DENY", but "MDAT wissenschaftlich nutzen"="PERMIT").

#### Notes on policies with \_status "deprecated/inactive"

Policies that have the status "deprecated/inactive" in the following table shall no longer be added to newly created Consent resources in the future. These policies should also no longer be evaluated in the future (enforcement).

This code system `urn:oid:2.16.840.1.113883.3.1937.777.24.5.3` contains the following codes:

| Lvl | Type    | Display                                                                          | Code                                        | Validity | Status |
| --- | ------ | -------------------------------------------------------------------------------- | ------------------------------------------- | ---------- | ---------- |
| 1   | Modul  | PATDAT erheben, speichern, nutzen                                                | 2.16.840.1.113883.3.1937.777.24.5.3.1       |            |            |
| 2   | Policy | IDAT erheben                                                                     | 2.16.840.1.113883.3.1937.777.24.5.3.2       | 30         |            |
| 2   | Policy | IDAT speichern, verarbeiten                                                      | 2.16.840.1.113883.3.1937.777.24.5.3.3       | 30         |            |
| 2   | Policy | IDAT zusammenführen mit Dritten                                                  | 2.16.840.1.113883.3.1937.777.24.5.3.4       | 30         |            |
| 2   | Policy | IDAT bereitstellen                                                               | 2.16.840.1.113883.3.1937.777.24.5.3.5       | 30         |            |
| 2   | Policy | MDAT erheben                                                                     | 2.16.840.1.113883.3.1937.777.24.5.3.6       | 5          |            |
| 2   | Policy | MDAT speichern, verarbeiten                                                      | 2.16.840.1.113883.3.1937.777.24.5.3.7       | 30         |            |
| 2   | Policy | MDAT wissenschaftlich nutzen                                                     | 2.16.840.1.113883.3.1937.777.24.5.3.8       | 30         |            |
| 2   | Policy | MDAT zusammenführen mit Dritten                                                  | 2.16.840.1.113883.3.1937.777.24.5.3.9       | 30         |            |
| 2   | Policy | Rekontaktierung von Ergebnissen mit erheblicher Bedeutung                        | 2.16.840.1.113883.3.1937.777.24.5.3.37      | 30         |            |
| 1   | Modul  | Patientendaten retrospektiv verarbeiten, nutzen                                  | 2.16.840.1.113883.3.1937.777.24.5.3.44      |            |            |
| 2   | Policy | MDAT retrospektiv speichern, verarbeiten                                         | 2.16.840.1.113883.3.1937.777.24.5.3.45      | 30         |            |
| 2   | Policy | <s>MDAT retrospektiv wissenschaftlich nutzen</s>                                    | <s>2.16.840.1.113883.3.1937.777.24.5.3.46</s>  | <s>30</s>     | inactive   |
| 2   | Policy | <s>MDAT retrospektiv zusammenführen mit Dritten</s>                                 | <s>2.16.840.1.113883.3.1937.777.24.5.3.47</s>  | <s>30</s>     | inactive   |
| 1   | Modul  | Patientendaten Weitergabe ohne EU-DSGVO NIVEAU                                   | 2.16.840.1.113883.3.1937.777.24.5.3.48      |            |            |
| 2   | Policy | MDAT wissenschaftlich nutzen ohne EU DSGVO NIVEAU                                | 2.16.840.1.113883.3.1937.777.24.5.3.49      | 30         |            |
| 1   | Modul  | Krankenkassendaten retrospektiv übertragen, speichern, nutzen                    | 2.16.840.1.113883.3.1937.777.24.5.3.10      |            |            |
| 2   | Policy | KKDAT 5 Jahre retrospektiv übertragen                                            | 2.16.840.1.113883.3.1937.777.24.5.3.11      | EINMALIG   |            |
| 2   | Policy | KKDAT 5 Jahre retrospektiv speichern, verarbeiten                                | 2.16.840.1.113883.3.1937.777.24.5.3.12      | 30         |            |
| 2   | Policy | KKDAT 5 Jahre retrospektiv wissenschaftlich nutzen                               | 2.16.840.1.113883.3.1937.777.24.5.3.13      | 30         |            |
| 2   | Policy | KKDAT 5 Jahre retrospektiv übertragen KVNR                                       | 2.16.840.1.113883.3.1937.777.24.5.3.38      | EINMALIG   |            |
| 1   | Modul  | Krankenkassendaten prospektiv übertragen, speichern, nutzen                      | 2.16.840.1.113883.3.1937.777.24.5.3.14      |            |            |
| 2   | Policy | KKDAT 5 Jahre prospektiv übertragen                                              | 2.16.840.1.113883.3.1937.777.24.5.3.15      | 5          |            |
| 2   | Policy | <s>KKDAT 5 Jahre prospektiv speichern, verarbeiten</s>                              | <s>2.16.840.1.113883.3.1937.777.24.5.3.16</s>  | <s>30</s>         | inactive   |
| 2   | Policy | <s>KKDAT 5 Jahre prospektiv wissenschaftlich nutzen</s>                             | <s>2.16.840.1.113883.3.1937.777.24.5.3.17</s>  | <s>30</s>         | inactive   |
| 2   | Policy | KKDAT 5 Jahre prospektiv übertragen KVNR                                         | 2.16.840.1.113883.3.1937.777.24.5.3.39      | 5          |            |
| 1   | Modul  | Biomaterial erheben, lagern, nutzen                                              | 2.16.840.1.113883.3.1937.777.24.5.3.18      |            |            |
| 2   | Policy | BIOMAT erheben                                                                   | 2.16.840.1.113883.3.1937.777.24.5.3.19      | 5          |            |
| 2   | Policy | BIOMAT lagern, verarbeiten                                                       | 2.16.840.1.113883.3.1937.777.24.5.3.20      | 30         |            |
| 2   | Policy | BIOMAT Eigentum übertragen                                                       | 2.16.840.1.113883.3.1937.777.24.5.3.21      | 5          |            |
| 2   | Policy | BIOMAT wissenschaftlich nutzen                                                   | 2.16.840.1.113883.3.1937.777.24.5.3.22      | 30         |            |
| 2   | Policy | BIOMAT Analysedaten zusammenführen Dritte                                        | 2.16.840.1.113883.3.1937.777.24.5.3.23      | 30         |            |
| 1   | Modul  | Biomaterial Zusatzentnahme                                                       | 2.16.840.1.113883.3.1937.777.24.5.3.24      |            |            |
| 2   | Policy | BIOMAT Zusatzmengen entnehmen                                                    | 2.16.840.1.113883.3.1937.777.24.5.3.25      | 5          |            |
| 1   | Modul  | Biomaterial retrospektiv speichern, nutzen                                       | 2.16.840.1.113883.3.1937.777.24.5.3.50      |            |            |
| 2   | Policy | BIOMAT retrospektiv lagern, verarbeiten                                          | 2.16.840.1.113883.3.1937.777.24.5.3.51      | 30         |            |
| 2   | Policy | BIOMAT retrospektiv wissenschaftlich nutzen                                      | 2.16.840.1.113883.3.1937.777.24.5.3.52      | 30         |            |
| 2   | Policy | BIOMAT retrospektiv Analysedaten zusammenführen mit Dritten                      | 2.16.840.1.113883.3.1937.777.24.5.3.53      | 30         |            |
| 1   | Modul  | Biomaterial Weitergabe ohne EU-DSGVO NIVEAU                                      | 2.16.840.1.113883.3.1937.777.24.5.3.54      |            |            |
| 2   | Policy | BIOMAT bereitstellen ohne EU DSGVO NIVEAU                                        | 2.16.840.1.113883.3.1937.777.24.5.3.55      | 30         |            |
| 1   | Modul  | Rekontaktierung Ergänzungen                                                      | 2.16.840.1.113883.3.1937.777.24.5.3.26      |            |            |
| 2   | Policy | Rekontaktierung Verknüpfung mit anderen Datenbanken                              | 2.16.840.1.113883.3.1937.777.24.5.3.27      | 30         |            |
| 2   | Policy | Rekontaktierung weitere Erhebung                                                 | 2.16.840.1.113883.3.1937.777.24.5.3.28      | 30         |            |
| 2   | Policy | Rekontaktierung weitere Studien                                                  | 2.16.840.1.113883.3.1937.777.24.5.3.29      | 30         |            |
| 1   | Modul  | Rekontaktierung Zusatzbefund                                                     | 2.16.840.1.113883.3.1937.777.24.5.3.30      |            |            |
| 2   | Policy | Rekontaktierung Zusatzbefund                                                     | 2.16.840.1.113883.3.1937.777.24.5.3.31      | 30         |            |
| 1   | Modul  | Z1 GECCO83 Nutzung NUM/CODEX                                                     | 2.16.840.1.113883.3.1937.777.24.5.3.32      |            |            |
| 2   | Policy | MDAT GECCO83 komplettieren einmalig                                              | 2.16.840.1.113883.3.1937.777.24.5.3.40      | einmalig   |            |
| 2   | Policy | MDAT GECC083 erheben                                                             | 2.16.840.1.113883.3.1937.777.24.5.3.43      | 30         |            |
| 2   | Policy | MDAT GECCO83 bereitstellen NUM/CODEX                                             | 2.16.840.1.113883.3.1937.777.24.5.3.33      | einmalig   |            |
| 2   | Policy | MDAT GECCO83 speichern, verarbeiten NUM/CODEX                                    | 2.16.840.1.113883.3.1937.777.24.5.3.34      | 30         |            |
| 2   | Policy | <s>MDAT GECCO83 wissenschaftlich nutzen zur COVID-19 Forschung EU DSGVO konform</s> | <s>2.16.840.1.113883.3.1937.777.24.5.3.41</s>  | <s>30</s>     | inactive   |
| 2   | Policy | <s>MDAT GECCO83 wissenschaftlich nutzen zur Pandemie-Forschung EU DSGVO konform</s> | <s>2.16.840.1.113883.3.1937.777.24.5.3.42</s>  | <s>30</s>     | inactive   |
| 2   | Policy | MDAT GECCO83 wissenschaftlich nutzen NUM/CODEX                                   | 2.16.840.1.113883.3.1937.777.24.5.3.56      | 30         |            |
| 1   | Modul  | Z1 GECCO83 Weitergabe NUM/CODEX non-EU-DSGVO NIVEAU                              | 2.16.840.1.113883.3.1937.777.24.5.3.35      |            |            |
| 2   | Policy | MDAT GECCO83 bereitstellen NUM/CODEX ohne EU DSGVO NIVEAU                        | 2.16.840.1.113883.3.1937.777.24.5.3.36      | 30         |            |
| 1   | Modul  | Z2 PATDAT erheben nutzen kontakt (ACRIBIS)                                       | 2.16.840.1.113883.3.1937.777.24.5.3.57      |            |            |
| 2   | Policy | PATDAT erheben nutzen kontakt (ACRIBIS)                                          | 2.16.840.1.113883.3.1937.777.24.5.3.58      | 5          |            |
| 1   | Modul  | Z2 IDAT Melderegister abfragen speichern verarbeiten (ACRIBIS)                   | 2.16.840.1.113883.3.1937.777.24.5.3.59      |            |            |
| 2   | Policy | IDAT Melderegister abfragen speichern verarbeiten (ACRIBIS)                      | 2.16.840.1.113883.3.1937.777.24.5.3.60      | 5          |            |
| 1   | Modul  | Z2 MDAT Hausarzt erheben speichern verarbeiten nutzen (ACRIBIS)                  | 2.16.840.1.113883.3.1937.777.24.5.3.61      |            |            |
| 2   | Policy | MDAT Hausarzt erheben speichern verarbeiten nutzen (ACRIBIS)                     | 2.16.840.1.113883.3.1937.777.24.5.3.62      | 5          |            |
| 1   | Modul  | Z3 PROMDAT Patientenbefragung (PROM)                                             | 2.16.840.1.113883.3.1937.777.24.5.3.63      |            |            |
| 2   | Policy | PROMDAT erheben (PROM)                                                           | 2.16.840.1.113883.3.1937.777.24.5.3.64      | 5          |            |
| 2   | Policy | PROMDAT wissenschaftlich nutzen (PROM)                                           | 2.16.840.1.113883.3.1937.777.24.5.3.65      | 30         |            |
| 2   | Policy | Rekontaktierung PROM Studien (PROM)                                              | 2.16.840.1.113883.3.1937.777.24.5.3.66      | 30         |            |
| 1   | Modul  | Z4 Datenschutzerklärung  (SNID)                                                  | 2.16.840.1.113883.3.1937.777.24.5.3.67      |            |            |
| 2   | Policy | IDAT speichern verarbeiten (SNID)                                                 | 2.16.840.1.113883.3.1937.777.24.5.3.68      | 30         |            |
| 2   | Policy | CONSENT speichern verarbeiten (SNID)                                             | 2.16.840.1.113883.3.1937.777.24.5.3.69      | 30         |            |
| 2   | Policy | IDAT Einsicht Monitoring (SNID)                                                  | 2.16.840.1.113883.3.1937.777.24.5.3.70      | 30         |            |
| 2   | Policy | MDAT erheben (SNID)                                                              | 2.16.840.1.113883.3.1937.777.24.5.3.71      | 5          |            |
| 2   | Policy | MDAT speichern verarbeiten (SNID)                                                | 2.16.840.1.113883.3.1937.777.24.5.3.72      | 30         |            |
| 2   | Policy | MDAT bereitstellen (SNID)                                                        | 2.16.840.1.113883.3.1937.777.24.5.3.73      | 30         |            |
| 2   | Policy | MDAT Einsicht Monitoring (SNID)                                                  | 2.16.840.1.113883.3.1937.777.24.5.3.74      | 30         |            |
| 2   | Policy | BIOMAT Eigentum uebertragen NUM (SNID)                                           | 2.16.840.1.113883.3.1937.777.24.5.3.75      | 30         |            |
| 2   | Policy | CONSENT BC bereitstellen (SNID)                                                  | 2.16.840.1.113883.3.1937.777.24.5.3.76      | 30         |            |
| 2   | Policy | CONSENT BC speichern verarbeiten (SNID)                                          | 2.16.840.1.113883.3.1937.777.24.5.3.77      | 30         |            |
| 1   | Modul  | Z4 Einsicht ePa (SNID)                                                           | 2.16.840.1.113883.3.1937.777.24.5.3.78      |            |            |
| 2   | Policy | IDAT ePA bereitstellen (SNID)                                                    | 2.16.840.1.113883.3.1937.777.24.5.3.79      | 5          |            |
| 2   | Policy | MDAT ePA erheben (SNID)                                                          | 2.16.840.1.113883.3.1937.777.24.5.3.80      | 5          |            |
| 2   | Policy | MDAT ePA speichern verarbeiten (SNID)                                            | 2.16.840.1.113883.3.1937.777.24.5.3.81      | 30         |            |
| 1   | Modul  | Z4 Krebsregister (SNID)                                                          | 2.16.840.1.113883.3.1937.777.24.5.3.82      |            |            |
| 2   | Policy | MDAT KReg speichern verarbeiten (SNID)                                           | 2.16.840.1.113883.3.1937.777.24.5.3.83      | 30         |            |
| 2   | Policy | IDAT KReg KVNR speichern verarbeiten (SNID)                                      | 2.16.840.1.113883.3.1937.777.24.5.3.84      | 30         |            |
| 1   | Modul  | Z4 KRegDAT retrospektiv (SNID)                                                   | 2.16.840.1.113883.3.1937.777.24.5.3.85      |            |            |
| 2   | Policy | IDAT KVNR KReg bereitstellen retrospektiv (SNID)                                 | 2.16.840.1.113883.3.1937.777.24.5.3.86      | einmalig   |            |
| 2   | Policy | MDAT KReg erheben retrospektiv (SNID)                                            | 2.16.840.1.113883.3.1937.777.24.5.3.87      | einmalig   |            |
| 1   | Modul  | Z4 KRegDAT (SNID)                                                                | 2.16.840.1.113883.3.1937.777.24.5.3.88      |            |            |
| 2   | Policy | IDAT KVNR KReg bereitstellen prospektiv (SNID)                                   | 2.16.840.1.113883.3.1937.777.24.5.3.89      | 5          |            |
| 2   | Policy | MDAT KReg erheben prospektiv (SNID)                                              | 2.16.840.1.113883.3.1937.777.24.5.3.90      | 5          |            |
| 1   | Modul  | Z4 Weitergabe Dritte (SNID)                                                      | 2.16.840.1.113883.3.1937.777.24.5.3.91      |            |            |
| 2   | Policy | MDAT SNID bereitstellen Dritte (SNID)                                            | 2.16.840.1.113883.3.1937.777.24.5.3.92      | 30         |            |
| 2   | Policy | BIOMAT SNID bereitstellen Dritte (SNID)                                          | 2.16.840.1.113883.3.1937.777.24.5.3.93      | 30         |            |
| 1   | Modul  | Z4 Rekontaktierung Patient NU (SNID)                                             | 2.16.840.1.113883.3.1937.777.24.5.3.94      |            |            |
| 2   | Policy | Rekontaktierung Gesundheitszustand nach Studienabschluss (SNID)                  | 2.16.840.1.113883.3.1937.777.24.5.3.95      | 30         |            |
| 1   | Modul  | Z4 Rekontaktierung Patient weitere Studien (SNID)                                | 2.16.840.1.113883.3.1937.777.24.5.3.96      |            |            |
| 2   | Policy | Rekontaktierung Patient weitere Studien (SNID)                                   | 2.16.840.1.113883.3.1937.777.24.5.3.97      | 30         |            |
| 2   | Policy | IDAT SNID bereitstellen OE (SNID)                                                | 2.16.840.1.113883.3.1937.777.24.5.3.98      | 30         |            |
| 1   | Modul  | Z4 Erhebung Hausarzt (SNID)                                                      | 2.16.840.1.113883.3.1937.777.24.5.3.99      |            |            |
| 2   | Policy | MDAT Hausarzt erheben speichern verarbeiten nutzen (SNID)                        | 2.16.840.1.113883.3.1937.777.24.5.3.100     | 30         |            |
| 2   | Policy | IDAT bereitstellen Hausarzt (SNID)                                               | 2.16.840.1.113883.3.1937.777.24.5.3.101     | 30         |            |
| 1   | Modul  | Z5 PATDAT BIOMAT PHENO erheben speichern gewinnen lagern zusaetzlich nutzen (DZPG) | 2.16.840.1.113883.3.1937.777.24.5.3.102     |          |            |
| 2   | Policy | MDAT Zusatzdaten PHAENO erheben (DZPG)                                           | 2.16.840.1.113883.3.1937.777.24.5.3.103     | 5          |            |
| 2   | Policy | MDAT speichern verarbeiten (DZPG)                                                | 2.16.840.1.113883.3.1937.777.24.5.3.104     | 30         |            |
| 2   | Policy | MDAT wissenschaftlich nutzen (DZPG)                                              | 2.16.840.1.113883.3.1937.777.24.5.3.105     | 30         |            |
| 2   | Policy | MDAT zusammenführen mit Dritten (DZPG)                                           | 2.16.840.1.113883.3.1937.777.24.5.3.106     | 30         |            |
| 2   | Policy | BIOMAT Zusatzmaterial entnehmen (DZPG)                                           | 2.16.840.1.113883.3.1937.777.24.5.3.107     | 5          |            |
| 2   | Policy | BIOMAT Zusatzmaterial lagern verarbeiten (DZPG)                                  | 2.16.840.1.113883.3.1937.777.24.5.3.108     | 30         |            |
| 2   | Policy | BIOMAT wissenschaftlich nutzen (DZPG)                                            | 2.16.840.1.113883.3.1937.777.24.5.3.109     | 30         |            |
| 2   | Policy | BIOMAT zusammenfuehren mit Dritten (DZPG)                                        | 2.16.840.1.113883.3.1937.777.24.5.3.110     | 30         |            |
| 1   | Modul  | Z5 NEURODAT IMGDAT erheben speichern zusaetzlich nutzen (DZPG)                   | 2.16.840.1.113883.3.1937.777.24.5.3.111     |            |            |
| 2   | Policy | IMGDAT erheben (DZPG)                                                            | 2.16.840.1.113883.3.1937.777.24.5.3.112     | 5          |            |
| 2   | Policy | IMGDAT speichern verarbeiten (DZPG)                                              | 2.16.840.1.113883.3.1937.777.24.5.3.113     | 30         |            |
| 2   | Policy | IMGDAT wissenschaftlich nutzen (DZPG)                                            | 2.16.840.1.113883.3.1937.777.24.5.3.114     | 30         |            |
| 2   | Policy | IMGDAT zusammenfuehren mit Dritten (DZPG)                                        | 2.16.840.1.113883.3.1937.777.24.5.3.115     | 30         |            |
| 2   | Policy | NEURODAT erheben (DZPG)                                                          | 2.16.840.1.113883.3.1937.777.24.5.3.116     | 5          |            |
| 2   | Policy | NEURODAT speichern verarbeiten (DZPG)                                            | 2.16.840.1.113883.3.1937.777.24.5.3.117     | 30         |            |
| 2   | Policy | NEURODAT wissenschaftlich nutzen (DZPG)                                          | 2.16.840.1.113883.3.1937.777.24.5.3.118     | 30         |            |
| 2   | Policy | NEURODAT zusammenfuehren mit Dritten (DZPG)                                      | 2.16.840.1.113883.3.1937.777.24.5.3.119     | 30         |            |
| 1   | Modul  | Z5 IPSC Verbunddaten gewinnen speichern nutzen (DZPG)                            | 2.16.840.1.113883.3.1937.777.24.5.3.120     |            |            |
| 2   | Policy | IPSC Verbunddaten gewinnen (DZPG)                                                | 2.16.840.1.113883.3.1937.777.24.5.3.121     | 5          |            |
| 2   | Policy | IPSC Verbunddaten speichern verarbeiten (DZPG)                                   | 2.16.840.1.113883.3.1937.777.24.5.3.122     | 30         |            |
| 2   | Policy | IPSC Verbunddaten wissenschaftlich nutzen (DZPG)                                 | 2.16.840.1.113883.3.1937.777.24.5.3.123     | 30         |            |
| 2   | Policy | IPSC Verbunddaten zusammenfuehren mit Dritten (DZPG)                             | 2.16.840.1.113883.3.1937.777.24.5.3.124     | 30         |            |



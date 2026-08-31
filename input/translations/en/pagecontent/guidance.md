<!-- markdownlint-disable MD041 -->
<!-- machine translation of source page guidance.md (de). TODO:REVIEW — Gate C. -->
<!-- Übersichtsseite "Anleitung" (Szenarien-Inhalt aus dem Quell-Leitfaden übernommen); die
     Unterseiten-Struktur folgt kerndatensatz-basis. -->

This section bundles the domain guidance on implementing and using the
**Consent** module.

### General Implementation Guidance

* **[Data Sets and Descriptions](logical-models.html)** — the module's data
  elements, described as logical models. (This entry shares its target
  with *Artifacts → Logical Models*; none of the anchors of the artifact overview
  can be used as a link target — see
  [`docs/page-structure.md`](https://github.com/forschungsgruppe-digital-health/mii-kds-consent-ig-inoffiziell/blob/main/docs/page-structure.md) in this repository.)
* **[UML Diagrams](uml-diagrams.html)** — visual representation of the data models
  and their relationships.

### Audience-Specific Guidance

* **[Guidance for Implementers](implementer-guidance.html)** — technical
  guidance for DIZ implementers.


---
For the KDS-wide conformance requirements, see the
[conformance rules of the Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
for the technical artifacts, see [Profiles](profiles.html).

<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungdesModuls?version=2026.0.0
     (Harvest 2026-08-31, migration-log/guide-harvest/); interne Links auf die
     Zielseiten dieser IG-Struktur umgeschrieben (migration-log/page-map.tsv). -->

### Description of Scenarios for the Application of the Module

The Consent extension module provides the electronic representation of the [MII Consent](https://www.medizininformatik-initiative.de/de/mustertext-zur-patienteneinwilligung) and, beyond that, can also enable the representation of further consents. This is a prerequisite for taking the patient's will into account when the patient's medical data collected in the course of care is used for research purposes. Consent is required above all when the purpose of use goes beyond the research clauses of the respective applicable laws.

An important measure for medical research is, among other things, how many patients meet certain criteria (case count) and whether these patients have consented to the use of their data for research purposes. Such queries can only be processed and answered efficiently by electronic means if the consent status can be checked electronically. Case-count queries of this kind that take the consent status into account are essential for use cases such as 'case-count estimation', 'feasibility queries', and 'data sharing', for the MII cross-consortium use cases CORD and POLAR, as well as for the [use cases](https://www.medizininformatik-initiative.de/de/use-cases-und-projekte) of the [MII consortia](https://www.medizininformatik-initiative.de/index.php/de/konsortien).

The standardized representation of the consent information in the Core Data Set is required so that it can be included as a search criterion, in particular for cross-site queries.

<!-- DERIVED:bridge source=anwendungsflleinformationsmodell-fragebgen.md gate=B -->
> **Written during migration - review before release.** The representation of the consent questionnaires (Questionnaire-based content) is described on the subpage [Questionnaires](frageboegen.html).
{: .ig-highlight .ig-highlight-blue}

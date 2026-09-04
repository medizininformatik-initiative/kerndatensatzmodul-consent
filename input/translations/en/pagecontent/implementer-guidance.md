<!-- markdownlint-disable MD041 -->
<!-- machine translation of source page implementer-guidance.md (de). TODO:REVIEW — Gate C. -->
<!-- Zusammengeführt aus VIER Quellseiten des Simplifier-Leitfadens (page-map,
     [MAP-EDIT]-Zeilen; Harvest 2026-08-31): TechnischeImplementierung,
     KontextimGesamtprojektBezgezuanderenModulen, Referenzen und
     FHIRProfile/Empfehlungen-zur-praktischen-Anwendung. Wortgetreue Übernahme;
     nur die Zwischenüberschriften-Hierarchie wurde an die Zielseite angepasst. -->

<!-- DERIVED:bridge source=technischeimplementierung.md gate=B -->
> **Written during migration - review before release.** This page bundles the implementation-related sections of the original guide: the technical implementation, the context within the overall project, the references, and the recommendations for practical use.
{: .ig-highlight .ig-highlight-blue}

### Technical Implementation

This section describes the syntactic and semantic requirements for implementing the Consent module.

Furthermore, search parameters are defined that must be implemented by the respective systems when using the FHIR RESTful API. In general, logical AND and OR combinations of the FHIR search are supported, cf. [https://www.hl7.org/fhir/search.html](https://www.hl7.org/fhir/search.html) .

Fundamentals and further details on search and on the FHIR RESTful API are, at the time this implementation guide was created, being developed within the scope of the base modules and may supplement the specifications made here at a later point in time. If necessary, a new version of this guide will then also be published.

### Context in the Overall Project / Relations to Other Modules

The Consent module serves to support cross-site data use requests based on the patient's current consent status at the respective site.

To establish the relation between person and consent, the consent is assigned at least one unique person identifier (base module: Person). As a rule, this is a [pseudonymous identifier](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html).

### References to Other Initiatives

In version V1 of the [guidance document](https://www.bfarm.de/SharedDocs/Downloads/DE/Forschung/modellvorhaben-genomsequenzierung/Handreichung-zur-Implementierung-beim-LE.pdf?__blob=publicationFile) on the patient information & declaration of participation for the **"Modellvorhaben Genomsequenzierung bei seltenen und bei onkologischen Erkrankungen"** pursuant to § 64e SGB, chapter 2.1.4 Research Consent recommends using the MII Broad Consent from version 1.6d onwards, which in the legal sense corresponds at least to the base version without additional modules.

### References

The modelling of the data set for the Consent module contains references to the following projects:

- [Implementation Guide of the Consent Management working group of the Interop-Forum, Version 1.0](https://ig.fhir.de/einwilligungsmanagement/stable/)

- [Core data set description in ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-?conceptId=2.16.840.1.113883.3.1937.777.24.2.184)

In addition, the [core specification of HL7 FHIR](https://hl7.org/fhir/), including the corresponding resource [Consent](https://hl7.org/fhir/consent.html), and the previous work on the German base profiles in [STU3](https://simplifier.net/basisprofilde) and [R4](https://simplifier.net/basisprofil-de-r4) were taken into account.

The present specification was designed on the basis of the description of the MII core data set in the version dated 10.3.2017 ([PDF](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf)), as well as the data set description in [ART-DECOR](https://art-decor.org/art-decor/decor-project--mide-).

### Recommendations for Practical Use

### Significance of Categorising Consent Resources via ResultType

The significance of the `ResultType` parameter is explained comprehensively in the IG of the **HL7-D AG Einwilligungsmanagement** and the corresponding [publication](https://ebooks.iospress.nl/doi/10.3233/SHTI251389).

Particular attention should be drawn here to the codes `consent-status` and `document`. Further details and interrelations are described [here](https://simplifier.net/guide/Einwilligungsmanagement/Mitgeltende-Erl-uterungen?version=current).

### Usage Recommendation for the Consent.category ResultType

In practice, concrete mandatory project requirements for the use of the ResultType search parameter are only of limited benefit due to the heterogeneous technical conditions at the MII sites. The **technical realisation of the requirements depends on the concrete implementation**.

The consent management system [gICS](https://ths-greifswald.de/gics) constitutes the current [reference implementation](https://ebooks.iospress.nl/doi/10.3233/SHTI251389) of the HL7-D FHIR standard for consent management (version 2.0).

All implementations should **support at least the following variants**. The cardinality of `Consent.category` is defined as `2..*` and enables the necessary backwards compatibility.

| ResultType | Meaning for the Consent resource | Aggregation of information |
| --- | --- | --- |
| `document` | The Consent resource refers to  **one (!) completed document**  (QuestionnaireResponse).  *This should be the default in an (MII) FHIR server.* | no |
| `consent-status` | The Consent resource  **takes into account all relevant consent and withdrawal documents**  in the context of the MII  **for one (!) patient** . The Consent resource with ResultType  `consent-status`  always refers to one patient and contains the current consent status.  *This should ideally be supported by the (MII) FHIR server.* | Yes, computed by appropriate business logic at the time of the query or for a specific period. |


Ideally, the FHIR server should always hold only one Consent resource per patient containing the current aggregated consent information (ResultType `consent-status`).

*If this is not possible for other reasons, a document-specific export should be enabled at least per completed document (consent, updated consent, partial withdrawal, complete withdrawal) (ResultType `document`). In this case, it remains the responsibility of the site to provide this information* **in the form required by the FDPG***.*

#### Recommendations for gICS Users Regarding Metrics Determination and the FDPG

The data integration centres provide the information required to determine core-data-set-specific metrics for the DIZ Dashboard. On the DIZ Dashboard side, the determination of the metrics is triggered by corresponding calls to the sites, including for the MII KDS Consent module.

Sites using the [gICS consent management system](https://ths-greifswald.de/gics) should follow the precise [**vendor recommendations**](https://www.ths-greifswald.de/diz-dashboard-empfehlung-gics-kds-consent-status/) for **metrics determination** as well as when providing the Consent resources for the **FDPG**.

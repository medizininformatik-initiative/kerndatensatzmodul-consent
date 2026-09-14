<!-- machine translation of source page StructureDefinition-mii-pr-consent-einwilligung-intro.md (de). TODO:REVIEW — Gate C. -->
<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Consent?version=2027.0.0-ballot.rc1
     (Harvest 2026-09-04; Delta zu 2026.0.0: zwei Tabellenzeilen-Label); Links umgeschrieben (page-map). -->
<!-- Abschnitt "Datenschutz-Aspekte" der Quellseite: verschoben auf die Seite
     Sicherheit und Datenschutz (page-map SPLIT); Abschnitte "Suchparameter" und
     "Komplexere Beispiele": verschoben auf die Seite Suchparameter; Abschnitt
     "Beispielhafte Consent-Ressourcen": siehe Seite Beispiele. Der gerenderte
     Abschnitt "Darstellung" wird vom IG Publisher neu erzeugt. -->
This profile describes an operationalized, automatically generated and processable consent in the Medical Informatics Initiative.

When a person is enrolled in a study (including an MII use case), a consent is collected for that person on the basis of the [MII Broad Consent model texts](https://www.medizininformatik-initiative.de/de/mustertext-zur-patienteneinwilligung), and the corresponding consent documents are documented in a structured way at the respective site according to the [specifications of the MII Task Force Consent Umsetzung](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.184&conceptEffectiveDate=2018-06-29T16%3A26%3A50&language=de-DE).

On the basis of these consent documents, the FHIR Consent resource is generated automatically. The [project context](https://ig.fhir.de/einwilligungsmanagement/stable/DomainReference.html) is preserved.

The resource must be created before participation in cross-site feasibility queries and data releases. Further obligations and adaptations must be checked for each use case.

<!-- DERIVED:bridge source=technischeimplementierung-fhirprofile-consent.md gate=B -->
> **Written during migration - review before release.** The security and privacy aspects of this profile are described on the page [Security and Privacy](security-and-privacy.html); the search parameters are described on the page [Search Parameters](search-parameters.html).
{: .ig-highlight .ig-highlight-blue}

### Interoperability

To ensure the exchangeability of the operationalized consent contents beyond FHIR as well, a uniform PolicyValueSet for the **semantic representation** of the statements contained in the MII Broad Consent was agreed with the **MII AG Consent** in December 2021 and documented in [ART-DECOR](https://art-decor.org/decor/services/RetrieveValueSet?id=2.16.840.1.113883.3.1937.777.24.11.36&effectiveDate=2021-04-23T10:55:54&prefix=mide-&format=html&collapsable=true&language=de-DE&ui=en-US) (policy OIDs).

*The use of this code system is mandatory with respect to the KDS module Consent.*

#### Basic use of the FHIR Consent profile

*Only the differences from the base profile are explained below.*

| **FHIR element** | **Explanation** |
| --- | --- |
| Consent.id | Must-support, but optional |
| Consent.meta | Must-support, but optional |
| Consent.meta.source | Must-support, but optional |
| Consent.meta.profile | Must-support, but optional |
| Consent.extension:domainReference | Must-support per the specifications of the  [AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/ResearchStudy.html) , but optional |
| Consent.identifier | Contains one or more external IDs of the consent from an external system. This can be, for example, the IHE ID of the CDA document or the ID of the document in an external trusted third party. The identifier should always be given as a value pair of "system" and "value". This information is optional. |
| Consent.scope.coding.system | Fixed value:  `http://terminology.hl7.org/CodeSystem/consentscope` |
| Consent.scope.coding.code | The representation of the MII consent clearly places the context on research. Fixed value:  `research` |
| Consent.category | Must-support. Mandatory specification of  **at least two categories**  with at least one coding each for the consent categories, to enable searching for consents of type "MII consent":<br/>**(1) per [https://www.hl7.org/fhir/valueset-consent-category.html](https://www.hl7.org/fhir/valueset-consent-category.html) :**<br/>Fixed system:  `http://loinc.org`<br/>Fixed code for 'Privacy policy acknowledgement Document':  `57016-8`<br/>**(2) identification of the MII Broad Consent** :<br/>Fixed code:  `2.16.840.1.113883.3.1937.777.24.2.184`<br/>Further additional entries are not prevented. |
| Consent.category:resultType.coding | ResultType per  [ResultType](https://ig.fhir.de/einwilligungsmanagement/stable/ResultType.html) . At least  `document`  and  `consent-status`  should be supported. If  `document`  is given as the ResultType, the kind of (source) document must also be given in the templateType slice. |
| Consent.category:templateType.coding | Categorization per  [TemplateType](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateType.html) . Serves as an informal element for differentiating between consent, withdrawal, objection and refusal. |
| Consent.patient.reference | Reference to the patient the Consent resource relates to, in the form of a literal reference, relative reference, internal reference or an absolute URL, must-support.<br/>`Consent.patient.reference`  should be filled where possible, i.e. when a corresponding Patient resource exists. If this is not the case, the patient relationship must be established via  `Consent.patient.identifier` . |
| Consent.patient.identifier | Specification of the person relationship in the form of an identifier, must-support.<br/>See  `Consent.patient.reference` . The relationship to the patient should preferably be established via  `Consent.patient.reference` .  `Consent.patient.identifier`  can be used alternatively or additionally. |
| Consent.patient.identifier.system | If the person relationship is given via an identifier, the system entry as a URI is mandatory, must-support |
| Consent.patient.identifier.value | If the person relationship is given via an identifier, the value entry as a string is mandatory, must-support |
| Consent.policy.uri | Reference to the version of the MII Broad Consent document version underlying the Consent resource per the overview below,<br/>e.g.<br/>**MII Broad Consent version 1.7.2**   `urn:oid:2.16.840.1.113883.3.1937.777.24.2.2079`  or<br/>**MII Broad Consent version 1.7.2 incl. additional module Acribis**   `urn:oid:2.16.840.1.113883.3.1937.777.24.2.4031` , must-support |


<!-- DERIVED:summary source=technischeimplementierung-fhirprofile-consent.md gate=B -->
> **Written during migration - review before release.** The table above describes the state of release 2026.0.0. With the incorporation of the `develop` state (744f7ba, 2026-08-21) three changes apply: (1) the profile now derives from the HL7-D profile `ConsentManagement/Consent`; (2) the category slices are named `consentCategory` (LOINC 57016-8), `mii` (Version-Modules CodeSystem), `resultType` (required) and `templateType` (extensible); (3) the examples use the CodeSystem `mii-cs-consent-version-modules` for the MII category. The rows on `Consent.category` ("at least two categories") are superseded accordingly.
{: .ig-highlight .ig-highlight-blue}

#### **Unique identification of the MII Broad Consent**

To filter FHIR Consent resources for consents based on the MII Broad Consent, a mandatory URI is used for `Consent.policy.uri`. The TFCU has created representations of the different versions of the MII Broad Consent in ART-DECOR. These can be referenced via a unique OID (cf. the table below).

| Version of the MII Broad Consent | Unique OID per the  [TFCU specification](https://art-decor.org/decor/services/RetrieveDataSet?conceptId=2.16.840.1.113883.3.1937.777.24.2.184) |
| --- | --- |
| 1.6d | 2.16.840.1.113883.3.1937.777.24.2.1790 |
| 1.6d refusal | 2.16.840.1.113883.3.1937.777.24.2.4053 |
| 1.6d complete withdrawal | 2.16.840.1.113883.3.1937.777.24.2.2718 |
| 1.6d partial withdrawal | 2.16.840.1.113883.3.1937.777.24.2.2719 |
| 1.6f | 2.16.840.1.113883.3.1937.777.24.2.1791 |
| 1.6f complete withdrawal | 2.16.840.1.113883.3.1937.777.24.2.2720 |
| 1.6f partial withdrawal | 2.16.840.1.113883.3.1937.777.24.2.2721 |
| 1.7.2 | 2.16.840.1.113883.3.1937.777.24.2.2079 |
| 1.7.2 refusal | 2.16.840.1.113883.3.1937.777.24.2.4054 |
| 1.7.2 complete withdrawal | 2.16.840.1.113883.3.1937.777.24.2.2722 |
| 1.7.2 partial withdrawal | 2.16.840.1.113883.3.1937.777.24.2.2723 |
| 1.7.2 (parents and legal guardians for minors v1.1) | 2.16.840.1.113883.3.1937.777.24.2.3542 |
| 1.7.2 (7-11 minors v1.1) | 2.16.840.1.113883.3.1937.777.24.2.3543 |
| 1.7.2 (12-17 minors v1.1) | 2.16.840.1.113883.3.1937.777.24.2.3544 |
| Additional module ACRIBiS (Z2) | 2.16.840.1.113883.3.1937.777.24.2.4031 |
| Additional module patient survey (Z3) | 2.16.840.1.113883.3.1937.777.24.2.4036 |
| Additional module Fachnetzwerk Infektion - SNID (Z4) | 2.16.840.1.113883.3.1937.777.24.2.4037 |
| Additional module Deutsches Zentrum für Psychische Gesundheit - DZPG (Z5) | 2.16.840.1.113883.3.1937.777.24.2.4048 |


#### **Nested provision elements**

The FHIR Consent resource follows the GDPR **opt-in** requirement: only what was explicitly consented to at a specific point in time (the time of consent) is permitted. This is realized via nested provision elements.

In opt-in scenarios the **superordinate provision element** (->**level-1 provision**) forbids everything (`Provision.Type=DENY`) unless it is explicitly permitted in the form of **subordinate provision elements** (->**level-2 provisions**). Therefore, provision elements with `Provision.Type=PERMIT` must be used as subordinate provisions. For additional information, level-2 provisions with `Provision.Type=DENY` are possible.

The basic validity period of the consent is likewise realized via the superordinate provision element using `provision.period` (for the MII Broad Consent: 30 years).

However, should individual parts of the consent expire early, these exceptions can be defined as part of the subordinate provisions relating to the relevant consent component using `provision.provision.period` (e.g. a provision with code `2.16.840.1.113883.3.1937.777.24.5.3.6` for policy `MDAT\_erheben` already expires after 5 years).

**Superordinate provision (Consent.Provision)**

| **FHIR element** | **Explanation** |
| --- | --- |
| Consent.provision.type | value  `DENY`  or  `PERMIT` , must-support |
| Consent.provision.period.start | mandatory entry for the start of the consent's validity. Unless specified otherwise, this is typically the date of the affected person's signature of the consent, must-support |
| Consent.provision.period.end | mandatory entry for the end of the consent's validity. This is typically the point at which the consent duration defined for the MII expires (30 years, starting from the signature date), must-support |
| Consent.provision.action | Specifying actions is not permitted, not supported |
| Consent.provision.code | Specifying codes is not permitted in the superordinate provision, not supported |
| Consent.provision.provision | List of subordinate provision elements that explicitly permit (data-processing) activities, must-support |


**Subordinate provision elements (Consent.Provision.Provision)**

*Exactly one subordinate provision element should be used per consent policy.*

| **FHIR element** | **Explanation** |
| --- | --- |
| Consent.provision.provision.type | value  `PERMIT`  or  `DENY` , must-support |
| Consent.provision.provision.period.start | mandatory entry for the start of the consent policy's validity, must-support |
| Consent.provision.provision.period.end | mandatory entry for the end of the consent policy's validity, must-support |
| Consent.provision.provision.code | 1-n entries on the semantics of the consent policy.  **At minimum per the MII TFCU concept**  (cf. MiiConsentPolicyValueSet in the section  [CodeSystems](code-systems.html) ), must-support |
| Consent.provision.provision.code.coding.system | System entry, ideally per the  **MII TFCU concept**  (cf. MiiConsentPolicyValueSet in the section  [CodeSystems](code-systems.html) ): `urn:oid:2.16.840.1.113883.3.1937.777.24.5.3` , must-support |
| Consent.provision.provision.code.coding.code | Code entry, ideally per the  **MII TFCU concept**  (cf. MiiConsentPolicyValueSet in the section  [CodeSystems](code-systems.html) ) e.g.  `2.16.840.1.113883.3.1937.777.24.5.3.6` , must-support |
| Consent.provision.provision.code.coding.display | Optional display entry, ideally per the  **MII TFCU concept**  (cf. MiiConsentPolicyValueSet in the section  [CodeSystems](code-systems.html) ) e.g.  `MDAT\_erheben` |
| Consent.provision.provision.action | Specifying actions is not permitted, not supported |
| Consent.provision.provision.provision | Further nesting levels of provisions are not permitted, not supported |


### End of the consent and Consent resources in the context of withdrawal, refusal or objection

Per the specifications of the MII AG Consent, the patient's consent generally ends after 30 years. Consents of minors (the person affected by the consent) are a special case. In the case of consents for **minors**, which may have been filled in on their behalf by the respective legal guardians, **the consent ends when the affected person reaches the age of majority**. This must be implemented accordingly in the technical systems. [Reference implementations](https://www.ths-greifswald.de/dezember-release-2025-neue-versionen-von-e-pix-gpas-und-gics-verfuegbar/) exist.

The [withdrawal template (compatible with MII BC 1.7.2)](https://www.medizininformatik-initiative.de/sites/default/files/2025-01/MII_BC_Formular-Komplettwiderruf.pdf) is also intended for withdrawing consents of minors, since these are usually likewise filled in by the legal guardians.

With regard to Consent resources created in connection with withdrawals (complete or partial), refusals or objections, the [recommendations of the HL7-D AG Einwilligungsmanagement](https://simplifier.net/guide/Einwilligungsmanagement/Consent?version=current) apply in general (cf. the section '*Angepasste Empfehlungen zur Verwendung von Consent und Consent-Provisions nach Dokumentenart und Szenario*'):

*Level-2 provisions should therefore always be specified where possible.* If a document conceptually has no defined end (for example withdrawal, refusal, objection), the specification of `period.end` on provisions can be omitted accordingly.

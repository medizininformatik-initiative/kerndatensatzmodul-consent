<!-- markdownlint-disable MD041 -->
<!-- Quellseite (page-map SPLIT): Terminologien — Abschnitt "ValueSets". Die
     gerenderten Kompositions-/Expansionszeilen der Quellseite erzeugt der IG
     Publisher auf den Artefaktseiten neu. -->
### ValueSets

Diese Seite beschreibt die ValueSets des Moduls **Consent**; die zugrunde
liegenden CodeSystems beschreibt die Seite [CodeSystems](code-systems.html).

### MII_VS_Consent_Policy

Erweiterungen des PolicyValueSets im ART-DECOR werden zeitnah durch die TFCU in diesem IG eingepflegt. Eine erneute Ballotierung ist nicht erforderlich.

Siehe die Artefaktseite
[MII_VS_Consent_Policy](ValueSet-mii-vs-consent-policy.html).

### mii-vs-consent-signaturetypes

Gemäß HL7-D AG Einwilligungsmanagement-Empfehlung

[https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-signaturetypes](https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-signaturetypes)

| Art der Unterschrift | System | Code | Display |
| --- | --- | --- | --- |
| Unterschrift der einwilligenden Person | urn:iso-astm:E1762-95:2013 | 1.2.840.10065.1.12.1.7 | Consent Signature |
| Unterschrift der (gesetzlich) vertretenden Person | urn:iso-astm:E1762-95:2013 | 1.2.840.10065.1.12.1.11 | Consent Witness Signature |
| Unterschrift der aufklärenden Person | urn:iso-astm:E1762-95:2013 | 1.2.840.10065.1.12.1.5 | Verification Signature |


### mii-vs-consent-answer

Dieses ValueSet findet ausschließlich im Kontext von Questionnaires Verwendung.

Siehe die Artefaktseite
[mii-vs-consent-answer](ValueSet-mii-vs-consent-answer.html).

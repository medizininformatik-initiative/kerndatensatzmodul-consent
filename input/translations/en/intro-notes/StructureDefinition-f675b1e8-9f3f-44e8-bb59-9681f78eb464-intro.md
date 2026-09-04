<!-- machine translation of source page StructureDefinition-f675b1e8-9f3f-44e8-bb59-9681f78eb464-intro.md (de). TODO:REVIEW — Gate C. -->
<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Provenance?version=2026.0.0
     (Harvest 2026-08-31); Links umgeschrieben (page-map). -->
<!-- Der gerenderte Abschnitt "Darstellung" wird vom IG Publisher neu erzeugt;
     Abschnitt "Beispiele": siehe Seite Beispiele (der XML-Render der Quellseite
     war dort defekt — "Command 'xml' could not render", Gate-B-Befund). -->
Based on the [recommendations](https://ig.fhir.de/einwilligungsmanagement/stable/Provenance.html) of the AG Einwilligungsmanagement, the profile *MIIConsentProvenance* describes the provenance information of a consent document.

<!-- Completion 2026-09-04 (fresh migration onto release 2027.0.0-ballot.rc1):
     the source page's "Differences to the base profile" table was dropped
     together with the "Darstellung" section in the 2026 migration — added
     here (harvest content, tables normalized). -->
*Only the differences to the [base profile](https://ig.fhir.de/einwilligungsmanagement/stable/Provenance.html) are explained below.*

| **FHIR element** | **Explanation** |
| --- | --- |
| Provenance.entity.what | If a document scan is to be attached, the referenced resource must be of the profile type [DocumentReference](StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.html), Must-support |
| Provenance.entity.signature.type | If a base64-encoded signature is to be attached, the type of the signature must follow [MII\_VS\_Consent\_SignatureTypes](ValueSet-88464c5b-5338-4c2b-9c07-b42fef2ada64.html), Must-support |

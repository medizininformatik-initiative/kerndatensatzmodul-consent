<!-- machine translation of source page StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c-intro.md (de). TODO:REVIEW — Gate C. -->
<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/DocumentReference?version=2026.0.0
     (Harvest 2026-08-31); Links umgeschrieben (page-map). -->
<!-- Der gerenderte Abschnitt "Darstellung" wird vom IG Publisher neu erzeugt;
     Abschnitt "Beispiele": siehe Seite Beispiele. -->
Based on the [recommendations](https://ig.fhir.de/einwilligungsmanagement/stable/DocumentReference.html) of the AG Einwilligungsmanagement, the profile *MIIConsentDocumentReference* targets a real, existing document related to the consent document.

However, it is restricted to scans of consent documents in PDF format.

<!-- Completion 2026-09-04 (fresh migration onto release 2027.0.0-ballot.rc1):
     the source page's "Differences to the base profile" table was dropped
     together with the "Darstellung" section in the 2026 migration — added
     here (harvest content, table normalized). -->
*Only the differences to the [base profile](https://ig.fhir.de/einwilligungsmanagement/stable/DocumentReference.html) are explained below.*

| **FHIR element** | **Explanation** |
| --- | --- |
| DocumentReference.content.attachment.contentType | Fixed value 'application/pdf', Must-support |

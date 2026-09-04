<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/DocumentReference?version=2026.0.0
     (Harvest 2026-08-31); Links umgeschrieben (page-map). -->
<!-- Der gerenderte Abschnitt "Darstellung" wird vom IG Publisher neu erzeugt;
     Abschnitt "Beispiele": siehe Seite Beispiele. -->
Basierend auf den [Empfehlungen](https://ig.fhir.de/einwilligungsmanagement/stable/DocumentReference.html) der AG Einwilligungsmanagement, zielt das Profile *MIIConsentDocumentReference* auf ein real existierendes Dokument mit Bezug zum Einwilligungsdokument ab.

Jedoch beschränkt auf Scans von Einwilligungsdokumenten im PDF-Format.

<!-- Vervollständigung 2026-09-04 (Frische Migration auf Release 2027.0.0-ballot.rc1):
     die "Unterschiede zum Basis-Profil"-Tabelle der Quellseite wurde in der
     2026er-Migration mit dem Darstellung-Abschnitt verworfen — hier ergänzt
     (Harvest-Inhalt, Tabelle normalisiert). -->
*Nachfolgend werden nur die Unterschiede zum [Basis-Profil](https://ig.fhir.de/einwilligungsmanagement/stable/DocumentReference.html) erläutert.*

| **FHIR-Element** | **Erklärung** |
| --- | --- |
| DocumentReference.content.attachment.contentType | Fixed value 'application/pdf', Must-support |

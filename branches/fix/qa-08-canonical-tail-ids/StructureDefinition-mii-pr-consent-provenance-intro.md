<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Provenance?version=2026.0.0
     (Harvest 2026-08-31); Links umgeschrieben (page-map). -->
<!-- Der gerenderte Abschnitt "Darstellung" wird vom IG Publisher neu erzeugt;
     Abschnitt "Beispiele": siehe Seite Beispiele (der XML-Render der Quellseite
     war dort defekt — "Command 'xml' could not render", Gate-B-Befund). -->
Basierend auf den [Empfehlungen](https://ig.fhir.de/einwilligungsmanagement/stable/Provenance.html) der AG Einwilligungsmanagement, beschreibt das Profile *MIIConsentProvenance* die Herkunfsinformationen eines Einwilligungsdokuments.

<!-- Vervollständigung 2026-09-04 (Frische Migration auf Release 2027.0.0-ballot.rc1):
     die "Unterschiede zum Basis-Profil"-Tabelle der Quellseite wurde in der
     2026er-Migration mit dem Darstellung-Abschnitt verworfen — hier ergänzt
     (Harvest-Inhalt, Tabellen normalisiert). -->
*Nachfolgend werden nur die Unterschiede zum [Basis-Profil](https://ig.fhir.de/einwilligungsmanagement/stable/Provenance.html) erläutert.*

| **FHIR-Element** | **Erklärung** |
| --- | --- |
| Provenance.entity.what | Soll ein Dokumenten-Scan angehangen werden, muss die referenzierte Resource vom Profiltyp [DocumentReference](StructureDefinition-mii-pr-consent-documentreference.html) sein, Must-support |
| Provenance.entity.signature.type | Soll eine base64-codierte Unterschrift angehangen werden, muss die Art der Unterschrift gemäß [MII\_VS\_Consent\_SignatureTypes](ValueSet-mii-vs-consent-signaturetypes.html) erfolgen, Must-support |

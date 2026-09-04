<!-- Harvested from https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/KontextimGesamtprojektBezgezuanderenModulen?version=2027.0.0-ballot.rc1 on 2026-09-04 by scripts/guide-harvest.sh (spec 5.1d). -->
<!-- Source of record: the Simplifier-rendered guide. Links and images are still absolute to simplifier.net and the page is not yet mapped onto the template page set (spec 9). TODO:REVIEW -->

## Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

Das Modul Consent dient der Unterstützung von standortübergreifenden Datennutzunganfragen basierend auf dem jeweils aktuellen Einwilligungsstatus des Patienten am Standort.

Um den Bezug zwischen Person und Einwilligung herzustellen, wird die Einwilligung mit mindestens einem eindeutigen Personenidentifikator versehen (Basismodul: Person). Dies ist im Regelfall ein [pseudonymer Identifikator](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html).

### Verweise auf andere Vorhaben

In der [Handreichung](https://www.bfarm.de/SharedDocs/Downloads/DE/Forschung/modellvorhaben-genomsequenzierung/Handreichung-zur-Implementierung-beim-LE.pdf?__blob=publicationFile) zur Patienteninformation & Teilnahmeerklärung zum **„Modellvorhaben Genomsequenzierung bei seltenen und bei onkologischen Erkrankungen“** nach § 64e SGB in der Version V1 wird unter Kapitel 2.1.4 Forschungseinwilligung die Nutzung des MII-Broad Consent ab der Version 1.6d empfohlen und im gesetzlichen Sinn mindestens der Basisversion ohne Zusatzmodule entspricht.

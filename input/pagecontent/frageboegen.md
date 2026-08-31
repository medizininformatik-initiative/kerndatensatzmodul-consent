<!-- markdownlint-disable MD041 -->
<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/AnwendungsflleInformationsmodell/Fragebgen?version=2026.0.0
     (Harvest 2026-08-31, migration-log/guide-harvest/); interne Links auf die
     Zielseiten dieser IG-Struktur umgeschrieben (migration-log/page-map.tsv). -->

Die [AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/) hat sich umfassend mit der Modellierung von Einwilligungen und Einwilligungsvorlagen befasst.

Der vorliegende Implementation Guide setzt wesentlich auf diesen Vorarbeiten auf.

### Die strukturierte Einwilligungsvorlage

Die Profile [Questionnaire Composed](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireComposed.html), [Template Frame](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateFrame.html) und [Template Module](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateModule.html) basieren auf der FHIR Ressource Questionnaire und dienen der Abbildung des Einwilligungsformulars (hier: MII Broad Consent).

Dabei stellt das Template Module einen wiederverwendbaren basalen Bestandteil dar, welcher in einem oder mehreren Formularabschnitten (TemplateFrames) verwendet bzw. eingebunden wird. Ein oder mehrere TemplateFrames können zu einem vollständigen, render-fähigen Formular (QuestionnaireComposed) zusammengesetzt werden.

### Die ausgefüllte Einwilligung

Das Profil [QuestionnaireResponse](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireResponse.html) bildet den vom Patienten ausgefüllten Fragebogen elektronisch ab. Hier werden die Antworten des Patienten auf den referenzierten Fragebogen (QuestionnaireComposed) des MII Broad Consent dokumentiert.

Zur Abbildung der Antworten sollte das Value Set “[MII Consent: Answer ValueSet](https://art-decor.org/art-decor/decor-valuesets--mide-?id=2.16.840.1.113883.3.1937.777.24.11.30)” verwendet werden:

| Checkbox | Code-Bezeichner | Code (OID) |

| --- | --- | --- |

| ‘Ja‘ angekreuzt | gültig | 2.16.840.1.113883.3.1937.777.24.5.2.1 |

| ‘Nein’ angekreuzt | nicht gültig | 2.16.840.1.113883.3.1937.777.24.5.2.2 |

| nicht angekreuzt | unbekannt | 2.16.840.1.113883.3.1937.777.24.5.2.3 |

*Antworten (Checkbox), Code-Bezeichner und OIDs*

### Abbildung des MII Broad Consent

Die Datenelemente des MII Broad Consent Formulars in Version [1.6d](https://art-decor.org/art-decor/decor-datasets--mide-?conceptId=2.16.840.1.113883.3.1937.777.24.2.1790) und [1.6f](https://art-decor.org/art-decor/decor-datasets--mide-?conceptId=2.16.840.1.113883.3.1937.777.24.2.1791) sind als Dataset in ART-DECOR modelliert, siehe Abschnitt [Datensätze inkl. Beschreibungen](logical-models.html).

### Verwendung einheitlicher Policies

Die benötigten Value Sets sind ebenfalls in ART-DECOR modelliert) und mit den entspr. Datenelementen assoziert. Die Kompatibilität zu IHE BPPC (Integrating the Healthcare Enterprise, [Profil „Basic Patient Privacy Consent“](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_TF_Vol1.pdf#nameddest=19_Basic_Patient_Privacy_Consen)) wird über Policies adressiert.

Die **Operationalisierung bzw. Durchsetzung (Enforcement) der Consent Informationen** wird durch ein [einheitliches Policy-Valueset](https://art-decor.org/decor/services/RetrieveValueSet?id=2.16.840.1.113883.3.1937.777.24.11.36&effectiveDate=2021-04-23T10:55:54&prefix=mide-&format=html&collapsable=true&language=de-DE&ui=en-US) unterstützt. Dies kann interoperabel in IHE BPPC verwendet werden.

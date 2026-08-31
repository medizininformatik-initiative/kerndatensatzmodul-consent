<!-- Wortgetreu übertragen aus der Simplifier-Quellseite
     https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Consent?version=2026.0.0
     (Harvest 2026-08-31); Links umgeschrieben (page-map). -->
<!-- Abschnitt "Datenschutz-Aspekte" der Quellseite: verschoben auf die Seite
     Sicherheit und Datenschutz (page-map SPLIT); Abschnitte "Suchparameter" und
     "Komplexere Beispiele": verschoben auf die Seite Suchparameter; Abschnitt
     "Beispielhafte Consent-Ressourcen": siehe Seite Beispiele. Der gerenderte
     Abschnitt "Darstellung" wird vom IG Publisher neu erzeugt. -->
Dieses Profil beschreibt eine operationalisierte, automatisch erzeugte und prozessierbare Einwilligung in der Medizininformatik-Initiative.

Beim Einschluss einer Person in eine Studie (auch in einen MII-Use Case) wird eine Einwilligung für diese Person auf Basis der [MII Broad Consent Mustertexte](https://www.medizininformatik-initiative.de/de/mustertext-zur-patienteneinwilligung) erhoben und entsprechende Einwilligungsdokument am jeweiligen Standort strukturiert dokumentiert gemäß den [Vorgaben der MII Task Force Consent Umsetzung](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.184&conceptEffectiveDate=2018-06-29T16%3A26%3A50&language=de-DE).

Auf Grundlage dieser Einwilligungsdokumente wird die FHIR Consent Ressource automatisiert erzeugt. Der [Projektkontext](https://ig.fhir.de/einwilligungsmanagement/stable/DomainReference.html) bleibt erhalten.

Die Erstellung der Ressource muss vor der Teilnahme an Standort-übergreifenden Feasability-Anfragen und Datenherausgaben erfolgen. Weitere Pflichten und Anpassungen sind für jeden Use Case zu prüfen.

<!-- DERIVED:bridge source=technischeimplementierung-fhirprofile-consent.md gate=B -->
> **Written during migration - review before release.** Die Datenschutz-Aspekte dieses Profils beschreibt die Seite [Sicherheit und Datenschutz](security-and-privacy.html); die Suchparameter beschreibt die Seite [Suchparameter](search-parameters.html).
{: .ig-highlight .ig-highlight-blue}

### Interoperabilität

Um die Austauschbarkeit der operationalisierten Einwilligungsinhalte auch über FHIR hinaus sicherzustellen, wurde mit der **MII AG Consent** ein einheitliches PolicyValueSet zur **semantischen Abbildung** der im MII Broad Consent enthaltenen Aussagen im Dezember 2021 abgestimmt und im [ART-DECOR](https://art-decor.org/decor/services/RetrieveValueSet?id=2.16.840.1.113883.3.1937.777.24.11.36&effectiveDate=2021-04-23T10:55:54&prefix=mide-&format=html&collapsable=true&language=de-DE&ui=en-US) (Policy-OIDs) dokumentiert.

*Die Verwendung dieses Codesystems ist bezogen auf das KDS-Modul Consent verpflichtend.*

#### Grundsätzliche Verwendung des Profils FHIR Consent

*Nachfolgend werden nur die Unterschiede zum Basis-Profil erläutert.*

| **FHIR-Element** | **Erklärung** |

| --- | --- |

| Consent.id | Must-support, jedoch optional |

| Consent.meta | Must-support, jedoch optional |

| Consent.meta.source | Must-support, jedoch optional |

| Consent.meta.profile | Must-support, jedoch optional |

| Consent.extension:domainReference | Must-support gemäß Vorgaben  [AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/ResearchStudy.html) , jedoch optional |

| Consent.identifier | Enthält eine oder mehrere externe IDs der Einwilligung eines externen Systems. Dies kann z.B. die IHE-ID des CDA Dokumentes sein oder die ID des Dokuments in einer externen Treuhandstelle. Der identifier sollte immer als Wertepaar "system" und "value" angegeben werden. Die Angabe ist optional. |

| Consent.scope.coding.system | Fixed value:  `http://terminology.hl7.org/CodeSystem/consentscope` |

| Consent.scope.coding.code | Abbildung der MII Einwilligung legt Kontext klar auf Forschung. Fixed value:  `research` |

| Consent.category.coding | Must-support. Verpflichtende Angabe von  **mindestens zwei Categories**  mit je min. einem Coding für die Consent-Kategorien, um die Suche nach Einwilligungen vom Typ "MII Einwilligung" zu ermöglichen:   
   
   **(1) gemäß [https://www.hl7.org/fhir/valueset-consent-category.html](https://www.hl7.org/fhir/valueset-consent-category.html) :**     
  Fixed System:  `http://loinc.org`     
  Fixed Code für 'Privacy policy acknowledgement Document':  `57016-8`   
   
   **(2) Identifikation MII Broad Consent** :    
  Fixed Code:  `2.16.840.1.113883.3.1937.777.24.2.184`   
   
 Weitere zusätzliche Angaben werden nicht verhindert. |

| Consent.category:templateType.coding | ResultType gemäß  [ResultType](https://ig.fhir.de/einwilligungsmanagement/stable/ResultType.html) . Es sollten mindestens  `document`  und  `consent-status`  unterstützt werden. Wenn als ResultType  `document`  angegeben ist, muss die Art des (Quell-)Dokuments im Slice templateType ebenfalls angegeben werden. |

| Consent.category:templateType.coding | Kategorisierung gemäß  [TemplateType](https://ig.fhir.de/einwilligungsmanagement/stable/TemplateType.html) . Dient als informelles Element der Differenzierung zwischen Einwilligung, Widerruf, Widerspruch und Ablehnung. |

| Consent.patient.reference | Verweis zum Patienten, auf den sich die Consent Ressource bezieht in der Form Literal reference, Relative reference, Internal reference oder als absolute URL, Must-support.   
   `Consent.patient.reference`  sollte ausgefüllt werden, wenn möglich, d.h. wenn eine entsprechende Patienten Ressource vorhanden ist. Ist dies nicht der Fall, muss der Patientenbezug über  `Consent.patient.identifier`  hergestellt werden. |

| Consent.patient.identifier | Angabe des Personenbezugs in Form eines Identifiers, Must-support.    
 Siehe  `Consent.patient.reference` . Der Bezug zum Patienten sollte möglichst über  `Consent.patient.reference`  hergestellt werden.  `Consent.patient.identifier`  kann alternativ bzw. ergänzend verwendet werden. |

| Consent.patient.identifier.system | Wird der Personenbezug per Identifier angegeben, ist die System-Angabe per Uri verpflichtend, Must-support |

| Consent.patient.identifier.value | Wird der Personenbezug per Identifier angegeben, ist die Value-Angabe per String verpflichtend, Must-support |

| Consent.policy.uri | Verweis auf die Version des der Consent-Ressource zugrundeliegende MII Broad Consent Dokument-Version gemäß untenstehender Übersicht,    
 z.B.    
 **MII Broad Consent Version 1.7.2**   `urn:oid:2.16.840.1.113883.3.1937.777.24.2.2079`  oder    
 **MII Broad Consent Version 1.7.2 inkl. Zusatzmodul Acribis**   `urn:oid:2.16.840.1.113883.3.1937.777.24.2.4031` , Must-support |

#### **Eindeutige Identifikation des MII-Broad Consent**

Um FHIR-Consent Ressourcen nach Einwilligungen zu filtern, die auf dem MII Broad Consent basieren, wird ein verpflichtendes Uri für die `Consent.policy.uri` verwendet. Die TFCU hat im ART-DECOR Repräsentationen für die unterschiedlichen Versionen des MII Broad Consent angelegt. Diese können über eine eindeutige OID (vgl. nachstehende Tabelle) referenziert werden.

| Version des MII Broad Consent | Eindeutige OID gemäß  [Vorgabe der TFCU](https://art-decor.org/decor/services/RetrieveDataSet?conceptId=2.16.840.1.113883.3.1937.777.24.2.184) |

| --- | --- |

| 1.6d | 2.16.840.1.113883.3.1937.777.24.2.1790 |

| 1.6d Ablehnung | 2.16.840.1.113883.3.1937.777.24.2.4053 |

| 1.6d Komplettwiderruf | 2.16.840.1.113883.3.1937.777.24.2.2718 |

| 1.6d Teilwiderruf | 2.16.840.1.113883.3.1937.777.24.2.2719 |

| 1.6f | 2.16.840.1.113883.3.1937.777.24.2.1791 |

| 1.6f Komplettwiderruf | 2.16.840.1.113883.3.1937.777.24.2.2720 |

| 1.6f Teilwiderruf | 2.16.840.1.113883.3.1937.777.24.2.2721 |

| 1.7.2 | 2.16.840.1.113883.3.1937.777.24.2.2079 |

| 1.7.2 Ablehnung | 2.16.840.1.113883.3.1937.777.24.2.4054 |

| 1.7.2 Komplettwiderruf | 2.16.840.1.113883.3.1937.777.24.2.2722 |

| 1.7.2 Teilwiderruf | 2.16.840.1.113883.3.1937.777.24.2.2723 |

| 1.7.2 (Eltern und Sorgeberechtigte für Minderjährige v1.1) | 2.16.840.1.113883.3.1937.777.24.2.3542 |

| 1.7.2 (7-11 Minderjährige v1.1) | 2.16.840.1.113883.3.1937.777.24.2.3543 |

| 1.7.2 (12-17 Minderjährige v1.1) | 2.16.840.1.113883.3.1937.777.24.2.3544 |

| Zusatzmodul ACRIBiS (Z2) | 2.16.840.1.113883.3.1937.777.24.2.4031 |

| Zusatzmodul Patientenbefragung (Z3) | 2.16.840.1.113883.3.1937.777.24.2.4036 |

| Zusatzmodul Fachnetzwerk Infektion - SNID (Z4) | 2.16.840.1.113883.3.1937.777.24.2.4037 |

| Zusatzmodul Deutsche Zentrum für Psychische Gesundheit - DZPG (Z5) | 2.16.840.1.113883.3.1937.777.24.2.4048 |

#### **Verschachtelte Provision-Elemente**

Die FHIR Consent Ressource folgt der DSGVO-Vorgabe zum **Opt-In**: es ist nur erlaubt, was explizit zu einem bestimmten Zeitpunkt (Zeitpunkt der Einwilligung) eingewilligt wurde. Dies wird über verschachtelte Provision-Elemente realisiert.

In Opt-In-Szenarien verbietet das **übergeordnete Provision-Element** (->**Level1-Provision**) alles (`Provision.Type=DENY`), außer es ist in Form von **untergeordneten Provision-Elementen** (->**Level2-Provision**) explizit erlaubt. Daher sind als untergeordnete Provisions Provision-Elemente mit `Provision.Type=PERMIT` verbindlich zu verwenden. Für Zusatzinformationen sind Level-2-Provision mit `Provision.Type=DENY` möglich.

Die grundsätzliche Gültigkeitsdauer der Einwilligung wird ebenfalls über das übergeordnetete Provision-Element mittels `provision.period` realisiert (für den MII Broad Consent: 30 Jahre).

Sollten einzelne Bestandteile der Einwilligung jedoch bereits frühzeitig ablaufen, können diese Ausnahmen als Teil der untergeordneter Provisions mit Bezug zum relevanten Einwilligungsbestandteil mittels `provision.provision.period` definiert werden (z.B. Provision mit Code `2.16.840.1.113883.3.1937.777.24.5.3.6` für Policy `MDAT\_erheben` läuft bereits nach 5 Jahren ab).

**Übergeordnete Provision (Consent.Provision)**

| **FHIR-Element** | **Erklärung** |

| --- | --- |

| Consent.provision.type | value  `DENY`  oder  `PERMIT` , Must-support |

| Consent.provision.period.start | verpflichtende Angabe zum Beginn der Gültigkeit der Einwilligung. Sofern nicht anders festgelegt ist dies typischerweise das Datum der Unterschrift der Einwilligung der betroffenen Person, Must-support |

| Consent.provision.period.end | verpflichtende Angabe zum Ende der Gültigkeit der Einwilligung. Dies ist typischerweise der Zeitpunkt des Ablaufens der für die MII festlegte Einwilligungsdauer (30 Jahre, beginnend mit dem Unterschriftsdatum), Must-support |

| Consent.provision.action | Die Angabe von Actions ist nicht zulässig, not supported |

| Consent.provision.code | Die Angabe von Codes ist in der übergeordneten Provision nicht zulässig, not supported |

| Consent.provision.provision | Liste von untergeordneten Provision-Elementen die explizit (Datenverarbeitungs-)Tätigkeiten erlauben, Must-support |

**Untergeordnete Provision-Elemente (Consent.Provision.Provision)**

*Je Consent-Policy sollte exakt ein untergeordnetes Provision-Element genutzt werden.*

| **FHIR-Element** | **Erklärung** |

| --- | --- |

| Consent.provision.provision.type | value  `PERMIT`  oder  `DENY` , Must-support |

| Consent.provision.provision.period.start | verpflichtende Angabe zum Beginn der Gültigkeit der Consent-Policy, Must-support |

| Consent.provision.provision.period.end | verpflichtende Angabe zum Ende der Gültigkeit der Consent-Policy, Must-support |

| Consent.provision.provision.code | 1-n Angabe zur Semantik der Einwilligungspolicy.  **Mindestens aber gemäß MII TFCU Konzept**  (vgl. MiiConsentPolicyValueSet im Abschnitt  [CodeSystems](code-systems.html) ), Must-support |

| Consent.provision.provision.code.coding.system | Systemangabe, idealerweise gemäß  **MII TFCU Konzept**  (vgl. MiiConsentPolicyValueSet im Abschnitt  [CodeSystems](code-systems.html) ): `urn:oid:2.16.840.1.113883.3.1937.777.24.5.3` , Must-support |

| Consent.provision.provision.code.coding.code | Codeangabe, idealerweise gemäß  **MII TFCU Konzept**  (vgl. MiiConsentPolicyValueSet im Abschnitt  [CodeSystems](code-systems.html) ) z.B.  `2.16.840.1.113883.3.1937.777.24.5.3.6` , Must-support |

| Consent.provision.provision.code.coding.display | Optionale Displayangabe, idealerweise gemäß  **MII TFCU Konzept**  (vgl. MiiConsentPolicyValueSet im Abschnitt  [CodeSystems](code-systems.html) ) z.B.  `MDAT\_erheben` |

| Consent.provision.provision.action | Angabe von Actions sind nicht zulässig, not supported |

| Consent.provision.provision.provision | Weitere Verschachtelungsebenen von Provisions sind nicht zulässig, not supported |

### Ende der Einwilligung und Consent-Ressourcen im Kontext von Widerruf, Ablehnung oder Widerspruch

Die Einwilligung des Patienten endet nach Vorgaben der MII AG Consent grundsätzlich nach 30 Jahren. Einen Sonderfall stellen die Einwilligungen von Minderjährigen (von der Einwilligung betroffene Person) dar. Im Fall von Einwilligungen für **Minderjährige**, die ggf. durch entsprechende Sorgeberechtigte stellvertretend ausgefüllt wurden, **endet die Einwilligung mit Erreichung der Volljährigkeit** der betroffenen Person. Dies ist entsprechend technisch umzusetzen. [Referenzimplementierungen](https://www.ths-greifswald.de/dezember-release-2025-neue-versionen-von-e-pix-gpas-und-gics-verfuegbar/) existieren.

Die [Widerrufsvorlage (kompatibel mit MII BC 1.7.2)](https://www.medizininformatik-initiative.de/sites/default/files/2025-01/MII_BC_Formular-Komplettwiderruf.pdf) ist ebenfalls für den Widerruf von Einwilligungen Minderjähriger gedacht, da diese in der Regel ebenfalls durch die Sorgeberechtigten ausgefüllt werden.

Bezogen auf Consent-Ressourcen, die im Zusammenhang mit Widerrufen (vollständig, oder teilweise), Ablehnungen oder Widersprüchen erstellt wurden, gelten im Allgemeinen die [Empfehlungen der HL7-D AG Einwilligungsmanagement](https://simplifier.net/guide/Einwilligungsmanagement/Consent?version=current) (vgl. Abschnitt '*Angepasste Empfehlungen zur Verwendung von Consent und Consent-Provisions nach Dokumentenart und Szenario*'):

*Level-2 Provisions sollten insofern nach Möglichkeit stets angegeben werden.* Hat ein Dokument konzeptuell kein definiertes Ende (beispielsweise Widerruf, Ablehnung, Widerspruch) kann auf die Angabe von `period.end` bei Provisions entsprechend verzichtet werden.

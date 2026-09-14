<!-- Harvested from https://simplifier.net/guide/miiigmodulconsent/MIIIGModulConsent/TechnischeImplementierung/FHIRProfile/Empfehlungen-zur-praktischen-Anwendung?version=2027.0.0-ballot.rc1 on 2026-09-04 by scripts/guide-harvest.sh (spec 5.1d). -->
<!-- Source of record: the Simplifier-rendered guide. Links and images are still absolute to simplifier.net and the page is not yet mapped onto the template page set (spec 9). TODO:REVIEW -->

## Empfehlungen zur praktischen Anwendung

### Bedeutung der Kategorisierung von Consent-Ressourcen mittels ResultType

Im IG der **HL7-D AG Einwilligungsmanagement** und der korrespondierenden [Publikation](https://ebooks.iospress.nl/doi/10.3233/SHTI251389) wird die Bedeutung des Parameters `ResultType` umfassend erläutert.

Besonderes Augenmerk sei an dieser Stelle auf die Codes `consent-status` und `document` gelegt. Weitere Details und Zusammenhänge sind [hier](https://simplifier.net/guide/Einwilligungsmanagement/Mitgeltende-Erl-uterungen?version=current) beschrieben.

### Nutzungsempfehlung zur Verwendung der Consent.category ResultType

Konkrete verpflichtende Projektvorgaben zur Verwendung des Suchparameters ResultType sind in der Praxis aufgrund heterogener technischer Gegebenheiten an den MII-Standorten nur bedingt zielführend. Die **technische Umsetzung der Vorgaben ist abhängig von der konkreten Implementierung**.

Das Einwilligungsmanagement [gICS](https://ths-greifswald.de/gics) stellt die aktuelle [Referenzimplementierung](https://ebooks.iospress.nl/doi/10.3233/SHTI251389) des HL7-D FHIR Standards für Einwilligungsmanagement (Version 2.0) dar.

Alle Implementierungen sollten **mindestens folgende Varianten unterstützen**. Die Kardinalität von `Consent.category` ist mit `2..\*` definiert und ermöglicht die notwendige Abwärtskompatibilität.

| ResultType | Bedeutung für die Consent-Ressource | Aggregation von Informationen |

| --- | --- | --- |

| `document` | Die Consent-Ressource bezieht sich auf  **ein (!) ausgefülltes Dokument**  (QuestionnaireResponse).  *Dies sollte der Default in einem (MII) FHIR-Server sein.* | nein |

| `consent-status` | Die Consent-Ressource  **berücksichtigt alle relevanten Einwilligungs- und Widerrufsdokumente**  im Kontext der MII  **für einen (!) Patienten** . Die Consent Ressource mit ResultType  `consent-status`  bezieht sich immer auf einen Patienten und enthält den aktuellen Einwilligungsstand.  *Dies sollte idealerweise durch den (MII) FHIR-Server unterstützt werden.* | Ja, berechnet durch entsprechende Business-Logik zum Zeitpunkt der Abfrage oder für einen bestimmten Zeitraum. |

Idealerweise sollte der FHIR-Server je Patient stets nur eine Consent-Ressource mit den aktuellen aggregierten Einwilligungsinformationen (ResultType `consent-status`) vorhalten.

*Ist dies aus dritten Gründen nicht möglich, sollte mindestens je ausgefülltem Dokument (Einwilligung, aktualisierte Einwilligung,Teil-Widerruf, Vollständiger Widerruf) eine Dokument-spezifische Ausleitung ermöglicht werden (ResultType `document`). Es bleibt in diesem Fall in der Verantwortung des Standortes, diese Informationen* **in der vom FDPG geforderten Form** *bereitzustellen.*

#### Empfehlungen für gICS-Anwender bezogen auf Kennzahlen-Ermittlung und FDPG

Die Datenintegrationzentren stellen die erforderlichen Informationen zur Ermittlung von Kerndatensatzspezifischen Kennzahlen für das DIZ-Dashboard bereit. Die Ermittlung der Kennzahlen wird auf Seiten des DIZ-Dashboard durch entsprechende Aufrufe an die Standorte auch für das MII KDS Consent Modul getriggert.

Standorte, die das [Einwilligungsmanagement gICS](https://ths-greifswald.de/gics) verwenden, sollten bei der **Kennzahlen-Ermittlung** sowie bei der Bereitstellung der Consent-Ressourcen für das **FDPG** den präzisen [**Hersteller-Empfehlungen**](https://www.ths-greifswald.de/diz-dashboard-empfehlung-gics-kds-consent-status/) folgen.

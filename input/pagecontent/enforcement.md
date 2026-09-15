<!-- markdownlint-disable MD041 -->
### Enforcement: Entscheidungen auf Basis der Consent-Ressourcen

> **Entwurf.** Diese Seite beschreibt, wie aus Consent-Ressourcen eine
> Verarbeitungsentscheidung abgeleitet wird. Sie ist ein Vorschlag zur Abstimmung
> in der TF CU und **noch nicht beschlossen**. Rechtlich verbindlich sind die
> Handlungsanweisungen der MII, nicht diese Seite.

Die Consent-Ressourcen dieses Moduls bilden ab, **was** eine Person erklärt hat.
Sie beantworten nicht von sich aus die Frage, die ein Datenintegrationszentrum
beim Bereitstellen von Daten beantworten muss: **Darf dieser konkrete
Verarbeitungsschritt für diese Person zu diesem Zeitpunkt stattfinden?**

Diese Seite beschreibt den Weg von der Ressource zur Entscheidung.

#### Was ausgewertet wird

Die Entscheidung stützt sich auf die **Policy-Codes** in den verschachtelten
Provisions, nicht auf den Freitext des Einwilligungsdokuments:

| Element | Bedeutung für die Entscheidung |
| --- | --- |
| `provision.provision.code` | Welche Policy ist gemeint (z. B. `…24.5.3.8`, „MDAT wissenschaftlich nutzen") |
| `provision.provision.type` | `permit` oder `deny` |
| `provision.provision.period` | In welchem Zeitraum gilt diese Erklärung |
| `provision.dataPeriod` | Auf Daten aus welchem Zeitraum bezieht sie sich (siehe [Hinweise für Implementierende](implementer-guidance.html)) |

Die Kennzeichnung der Ressource selbst — `category:mii` (Version/Modul) und
`category:resultType` (Dokument oder ausgewerteter Status) — entscheidet
darüber, **ob** eine Ressource überhaupt in die Auswertung eingeht.

#### Ableitungsregel

1. **Alle** Consent-Ressourcen der Person heranziehen, nicht nur die jüngste.
2. Je Policy-Code die erlaubten Zeiträume aus den `permit`-Provisions
   **zusammenführen**.
3. Davon die Zeiträume aus den `deny`-Provisions **abziehen** — auch aus
   Ressourcen, die ausschliesslich einen Widerruf enthalten.
4. Prüfen, ob der interessierende Zeitpunkt in den verbleibenden erlaubten
   Zeitraum fällt.

Der Umgang mit mehreren Einwilligungen und Widerrufen ist ausführlicher auf der
Seite [Hinweise für Implementierende](implementer-guidance.html) beschrieben.

#### Referenzumsetzung

Eine vollständig ausformulierte Umsetzung dieser Auswertung — einschliesslich
Behandlung retrospektiver Policies, einer Gültigkeits-Prüfung über den Code
`…24.5.3.8` und der Reihenfolge der Schritte — beschreibt die
[TORCH-Dokumentation zur Consent-Verarbeitung](https://medizininformatik-initiative.github.io/torch/implementation/consent.html).

Standorte, die das [Einwilligungsmanagement gICS](https://ths-greifswald.de/gics)
einsetzen, finden zusätzlich
[Hersteller-Empfehlungen zur Kennzahlen-Ermittlung und FDPG-Bereitstellung](https://www.ths-greifswald.de/diz-dashboard-empfehlung-gics-kds-consent-status/).

#### Was diese Seite nicht leistet

Sie ersetzt **keine** rechtliche Prüfung und trifft keine Aussage darüber,
welche Policies für ein konkretes Forschungsvorhaben erforderlich sind. Die
Zuordnung von Datenarten zu Policies wird gesondert geführt.

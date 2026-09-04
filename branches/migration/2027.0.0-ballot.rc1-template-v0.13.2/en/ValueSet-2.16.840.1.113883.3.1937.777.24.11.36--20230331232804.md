# MII Consent: Policy ValueSet - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Consent: Policy ValueSet**

## ValueSet: MII Consent: Policy ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-policy | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-04 | *Computable Name*:MiiConsentPolicyValueSet |
| *Other Identifiers:*OID:2.16.840.1.113883.3.1937.777.24.11.36 (use: official, ) | |

 
**Disclaimer** 
(Punkte übernommen aus der Policy Liste ([MII SharePoint, TF Consent Umsetzung](https://tmfev.sharepoint.com/:f:/r/sites/tmf/mi-i/Taskforce%20Consent%20Umsetzung/02_Dokumente/Policies?csf=1&web=1&e=C0xLim ""))) 
1. Diese Liste fasst erforderliche Einwilligungsmodule und zugeordnete Einwilligungspolicies für die technische Abbildung der "MII Mustertexte Patienteneinwilligung" in den aktuell verfügbaren Versionen zusammen.
1. Für die Abbildung der Policies im Art Decor werden ausschließlich die Spalten [Policybezeichner], [Bedeutung/Kontext] und [OID] verwendet.
1. Die Formulierung in der Spalte [Bedeutung/Kontext] dient ausschließlich administrativen Zwecken und der Verständnisbildung für die jeweilige Policy.
1. Eine Darstellung der jeweiligen Formulierung innerhalb von Formularen oder digitalen Einwilligungsdokumenten ist nicht intendiert.
1. Die Spalte [Weitere Hinweise Enforcement-Seite] nennt zusätzliche Randbedingungen, die auf der datenverarbeitenden Seite über die reine Einwilligungsinformation hinaus zu berücksichtigen sind. Die Gewährleistung der Einhaltung dieser weiteren Hinweise geht über den Wirkungsraum der Task Force Consent Umsetzung hinaus.
 
**Hinweis 1 - Verwendung in FHIR:** Siehe [Implementation Guide](https://ig.fhir.de/einwilligungsmanagement/stable/Consent.html). 
**Hinweis 2 - Verwendung in IHE BPPC:** Um die in diesem ValueSet enthaltenen Codes in IHE BPPC verwenden zu können, ist eine Kombination mit dem [MII Consent: Answer ValueSet](https://art-decor.org/art-decor/decor-valuesets–mide-?id=2.16.840.1.113883.3.1937.777.24.11.30&effectiveDate=2021-03-23T23:45:09&language=de-DE "") möglich (evtl. sogar erforderlich). 
Beispiel 1: 
Patient hat dem Erheben der IDAT (Policy: 2.16.840.1.113883.3.1937.777.24.5.3.2 "IDAT_erheben") zugestimmt: 2.16.840.1.113883.3.1937.777.24.5.3.2**.1** (.1 wird aus dem [MII Consent: Answer ValueSet](https://art-decor.org/art-decor/decor-valuesets–mide-?id=2.16.840.1.113883.3.1937.777.24.11.30&effectiveDate=2021-03-23T23:45:09&language=de-DE "") angehängt) 
Beispiel 2: 
2.16.840.1.113883.3.1937.777.24.5.3.4.2 bedeutet, dass der Patient der Policy IDAT_zusammenfuehren_Dritte nicht zugestimmt hat. 

 **References** 

* [Profile - MI-I - Consent - Einwilligung](StructureDefinition-e0e166b4-0f77-478d-9062-de0034d98ce0.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "2.16.840.1.113883.3.1937.777.24.11.36--20230331232804",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2023-03-31T23:28:04+02:00"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-policy",
  "identifier" : [{
    "use" : "official",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.3.1937.777.24.11.36"
  }],
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MiiConsentPolicyValueSet",
  "title" : "MII Consent: Policy ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T11:42:10+00:00",
  "publisher" : "NUM-DIZ",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en"
      },
      {
        "url" : "content",
        "valueString" : "NUM-DIZ"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "**Disclaimer** \n\n (Punkte übernommen aus der Policy Liste ([MII SharePoint, TF Consent Umsetzung](https://tmfev.sharepoint.com/:f:/r/sites/tmf/mi-i/Taskforce%20Consent%20Umsetzung/02_Dokumente/Policies?csf=1&web=1&e=C0xLim \"\")))\n1. Diese Liste fasst erforderliche\n                    Einwilligungsmodule und zugeordnete Einwilligungspolicies für die technische Abbildung der \"MII Mustertexte Patienteneinwilligung\" in den aktuell verfügbaren Versionen zusammen. \n2. Für die Abbildung der Policies im Art Decor werden ausschließlich die Spalten [Policybezeichner], [Bedeutung/Kontext] und [OID] verwendet. \n3. Die Formulierung in\n                    der Spalte [Bedeutung/Kontext] dient ausschließlich administrativen Zwecken und der Verständnisbildung für die jeweilige Policy. \n4. Eine Darstellung der jeweiligen Formulierung innerhalb von Formularen oder digitalen Einwilligungsdokumenten ist nicht intendiert. \n5. Die Spalte [Weitere Hinweise Enforcement-Seite] nennt zusätzliche\n                    Randbedingungen, die auf der datenverarbeitenden Seite über die reine Einwilligungsinformation hinaus zu berücksichtigen sind. Die Gewährleistung der Einhaltung dieser weiteren Hinweise geht über den Wirkungsraum der Task Force Consent Umsetzung hinaus. \n\n **Hinweis 1 - Verwendung in FHIR:** Siehe [Implementation Guide](https://ig.fhir.de/einwilligungsmanagement/stable/Consent.html \"consent.provision Hierarchie ist noch in Arbeit\").  \n\n **Hinweis 2 - Verwendung in IHE BPPC:** \nUm die in diesem ValueSet enthaltenen Codes in IHE BPPC verwenden zu können, ist eine Kombination mit dem [MII Consent: Answer ValueSet](https://art-decor.org/art-decor/decor-valuesets--mide-?id=2.16.840.1.113883.3.1937.777.24.11.30&effectiveDate=2021-03-23T23:45:09&language=de-DE \"\") möglich (evtl. sogar erforderlich).  \n\n  Beispiel 1:  \n\n Patient hat dem Erheben der IDAT (Policy: 2.16.840.1.113883.3.1937.777.24.5.3.2 \"IDAT_erheben\") zugestimmt:\n                            2.16.840.1.113883.3.1937.777.24.5.3.2**.1** (.1 wird aus dem [MII Consent: Answer ValueSet](https://art-decor.org/art-decor/decor-valuesets--mide-?id=2.16.840.1.113883.3.1937.777.24.11.30&effectiveDate=2021-03-23T23:45:09&language=de-DE \"\") angehängt)  \n\n Beispiel 2:  \n\n 2.16.840.1.113883.3.1937.777.24.5.3.4.2\n                    bedeutet, dass der Patient der Policy IDAT_zusammenfuehren_Dritte nicht zugestimmt hat.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "immutable" : false,
  "compose" : {
    "include" : [{
      "system" : "urn:oid:2.16.840.1.113883.3.1937.777.24.5.3"
    }]
  }
}

```

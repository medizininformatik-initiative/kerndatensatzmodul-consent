ValueSet: MiiConsentPolicyValueSet
Id: 2.16.840.1.113883.3.1937.777.24.11.36--20230331232804
Title: "MII Consent: Policy ValueSet"
Description: """**Disclaimer** 

 (Punkte übernommen aus der Policy Liste ([MII SharePoint, TF Consent Umsetzung](https://tmfev.sharepoint.com/:f:/r/sites/tmf/mi-i/Taskforce%20Consent%20Umsetzung/02_Dokumente/Policies?csf=1&web=1&e=C0xLim "")))
1. Diese Liste fasst erforderliche
                    Einwilligungsmodule und zugeordnete Einwilligungspolicies für die technische Abbildung der "MII Mustertexte Patienteneinwilligung" in den aktuell verfügbaren Versionen zusammen. 
2. Für die Abbildung der Policies im Art Decor werden ausschließlich die Spalten [Policybezeichner], [Bedeutung/Kontext] und [OID] verwendet. 
3. Die Formulierung in
                    der Spalte [Bedeutung/Kontext] dient ausschließlich administrativen Zwecken und der Verständnisbildung für die jeweilige Policy. 
4. Eine Darstellung der jeweiligen Formulierung innerhalb von Formularen oder digitalen Einwilligungsdokumenten ist nicht intendiert. 
5. Die Spalte [Weitere Hinweise Enforcement-Seite] nennt zusätzliche
                    Randbedingungen, die auf der datenverarbeitenden Seite über die reine Einwilligungsinformation hinaus zu berücksichtigen sind. Die Gewährleistung der Einhaltung dieser weiteren Hinweise geht über den Wirkungsraum der Task Force Consent Umsetzung hinaus. 

 **Hinweis 1 - Verwendung in FHIR:** Siehe [Implementation Guide](https://ig.fhir.de/einwilligungsmanagement/stable/Consent.html "consent.provision Hierarchie ist noch in Arbeit").  

 **Hinweis 2 - Verwendung in IHE BPPC:** 
Um die in diesem ValueSet enthaltenen Codes in IHE BPPC verwenden zu können, ist eine Kombination mit dem [MII Consent: Answer ValueSet](https://art-decor.org/art-decor/decor-valuesets--mide-?id=2.16.840.1.113883.3.1937.777.24.11.30&effectiveDate=2021-03-23T23:45:09&language=de-DE "") möglich (evtl. sogar erforderlich).  

  Beispiel 1:  

 Patient hat dem Erheben der IDAT (Policy: 2.16.840.1.113883.3.1937.777.24.5.3.2 "IDAT_erheben") zugestimmt:
                            2.16.840.1.113883.3.1937.777.24.5.3.2**.1** (.1 wird aus dem [MII Consent: Answer ValueSet](https://art-decor.org/art-decor/decor-valuesets--mide-?id=2.16.840.1.113883.3.1937.777.24.11.30&effectiveDate=2021-03-23T23:45:09&language=de-DE "") angehängt)  

 Beispiel 2:  

 2.16.840.1.113883.3.1937.777.24.5.3.4.2
                    bedeutet, dass der Patient der Policy IDAT_zusammenfuehren_Dritte nicht zugestimmt hat."""
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension.valuePeriod.start = "2023-03-31T23:28:04+02:00"
* ^url = "https://www.medizininformatik-initiative.de/fhir/modul-consent/ValueSet/mii-vs-consent-policy"
* ^identifier.use = #official
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.24.11.36"
* ^version = "2027.0.0-ballot.rc1"
* ^status = #active
* ^experimental = false
* ^publisher = "MII Task Force Consent Umsetzung"
* ^contact.name = "MII Task Force Consent Umsetzung"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "office@medizininformatik-initiative.de"
* ^immutable = false
* include codes from system urn:oid:2.16.840.1.113883.3.1937.777.24.5.3
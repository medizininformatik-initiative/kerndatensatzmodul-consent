# 8a3d1799-2463-405e-b49c-6a16c8692b01 - MII Implementation Guide Consent v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **8a3d1799-2463-405e-b49c-6a16c8692b01**

## Example DocumentReference: 8a3d1799-2463-405e-b49c-6a16c8692b01

-------

**English**

-------

Last updated: 2020-12-11 09:09:07+0000

Profile: [Profile - MI-I - Consent - DocumentReference](StructureDefinition-56375452-bfa1-4111-af7c-5b5ba9a1857c.md)

**status**: Current

**subject**: [Patient/9b4a702d-162c-428a-8c5d-8b98af21b693](https://simplifier.net/resolve?scope=de.einwilligungsmanagement@2.0.3-snapshots&canonical=http://fhir.org/packages/de.einwilligungsmanagement/Patient/9b4a702d-162c-428a-8c5d-8b98af21b693)

> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Data** |
| * | application/pdf | `YmFzZTY0Q29kaWVydGVzUERGRGVzVW50ZXJzY2hyaWViZW5lblBhdGllbnRlbkVpbndpbGxpZ3VuZ3Nib2dlbnM=` |




## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "8a3d1799-2463-405e-b49c-6a16c8692b01",
  "meta" : {
    "lastUpdated" : "2020-12-11T09:09:07.5320994+00:00",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-documentreference"]
  },
  "status" : "current",
  "subject" : {
    "reference" : "Patient/9b4a702d-162c-428a-8c5d-8b98af21b693"
  },
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "data" : "YmFzZTY0Q29kaWVydGVzUERGRGVzVW50ZXJzY2hyaWViZW5lblBhdGllbnRlbkVpbndpbGxpZ3VuZ3Nib2dlbnM="
    }
  }]
}

```

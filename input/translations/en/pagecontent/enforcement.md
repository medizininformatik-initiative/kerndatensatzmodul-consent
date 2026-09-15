<!-- markdownlint-disable MD041 -->
### Enforcement: deriving decisions from Consent resources

> **Draft.** This page describes how a processing decision is derived from
> Consent resources. It is a proposal for discussion in the TF CU and has **not
> been decided**. What is legally binding are the MII Handlungsanweisungen, not
> this page.

The Consent resources of this module record **what** a person declared. They do
not by themselves answer the question a data integration centre must answer
before releasing data: **may this particular processing step happen, for this
person, at this point in time?**

This page describes the path from resource to decision.

#### What is evaluated

The decision rests on the **policy codes** in the nested provisions, not on the
prose of the consent document:

| Element | Meaning for the decision |
| --- | --- |
| `provision.provision.code` | Which policy is meant (e.g. `…24.5.3.8`, "use MDAT for research") |
| `provision.provision.type` | `permit` or `deny` |
| `provision.provision.period` | During which period this declaration applies |
| `provision.dataPeriod` | Which period the data it covers come from (see [Guidance for Implementers](implementer-guidance.html)) |

The labelling of the resource itself — `category:mii` (version/module) and
`category:resultType` (document or evaluated status) — decides **whether** a
resource enters the evaluation at all.

#### Derivation rule

1. Take **all** of the person's Consent resources, not only the most recent one.
2. Per policy code, **merge** the permitted periods from the `permit` provisions.
3. **Subtract** the periods from the `deny` provisions — including resources that
   contain a revocation only.
4. Check whether the point in time in question falls within the remaining
   permitted period.

Handling of multiple consents and revocations is described in more detail on
[Guidance for Implementers](implementer-guidance.html).

#### Reference implementation

A fully worked implementation of this evaluation — including the handling of
retrospective policies, a validity gate on code `…24.5.3.8` and the ordering of
the steps — is described in the
[TORCH documentation on consent processing](https://medizininformatik-initiative.github.io/torch/implementation/consent.html).

Sites using the [gICS consent management system](https://ths-greifswald.de/gics)
additionally have
[vendor recommendations for metrics and FDPG provisioning](https://www.ths-greifswald.de/diz-dashboard-empfehlung-gics-kds-consent-status/).

#### What this page does not do

It does **not** replace a legal assessment and makes no statement about which
policies a given research project requires. The mapping of data categories to
policies is maintained separately.

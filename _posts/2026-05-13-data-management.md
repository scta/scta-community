---
layout: page
title:  "SCTA Data Management"
date:   2026-05-13
category: policy
description: "A description of basic data management practices"
permalink: "policy/data-management"
---

# SCTA Data Management Policies and Practices

## Introduction

The Scholastic Commentaries and Texts Archive (SCTA) is a collaborative open-access infrastructure for the creation, curation, publication, and long-term preservation of scholarly textual data related to medieval and early modern intellectual traditions. 

The SCTA’s data management practices are designed to ensure transparency, reproducibility, long-term preservation, and continuous scholarly improvement through open collaborative workflows and community stewardship.


## Data Collection and Re-Use

The SCTA primarily works with public domain texts and scholarly transcriptions of historical sources. New data is produced through:

* Automated Text Recognition
* Manual transcription and encoding of historical texts
* Scholarly editing and annotation
* Metadata creation and enrichment
* Automated extraction and generation of linked data relationships
* Computational analysis of textual structures and references

All textual data and metadata are maintained in open, machine-readable formats and are continuously improved through community contributions and scholarly review.

## Data

Primary textual data is encoded in XML following the [TEI](https://www.tei-c.org/) compliant [LombardPress Transcription Guidelines](https://community.scta.info/pages/lombardpress-schema-critical.html) designed for encoding scholarly scholastic editions.

SCTA textual data is accompanied by open and publically accessible metadata files recording necessary metadata (e.g. authors, manuscript witnesses, etc.)

Documentation for data models and encoding conventions can be found on the [SCTA Documentation Page](https://community.scta.info/pages/docs)

## Data Citation

Because the SCTA assigns identifiers at all levels of the textual hierarchy (including structural divisions, paragraphs, quotations, and individual words across all witnesses) the resulting corpus can be accessed and interconnected with extremely granular precision.

In addition, Git-based version control ensures that every historical state of the data is permanently addressable through unique content hashes and commit histories.

This combination of persistent SCTA identifiers and immutable Git versioning provides strong support for reproducible scholarship, citation stability, and long-term interoperability.

## Data Quality Control

The SCTA employs automated and community-based quality control processes.

All data is maintained within publicly accessible Git repositories and undergoes version-controlled review workflows. Changes are submitted through pull requests and validated using continuous integration pipelines implemented with GitHub Actions.

Validation procedures include:

* XML schema validation
* Structural consistency checks
* Automated diff comparison against the main branch
* Verification of metadata integrity
* Build and publication testing

These workflows ensure that malformed or inconsistent data cannot be merged into production repositories without review and validation.

Because all revisions are preserved in Git history, the provenance and evolution of every change remains transparent and reproducible.

At specific milestones, editorial work is peer reviewed in collaboration with the Medieval Academy of America. Peer reviewed versions of any text are tagged and verifiable using signed certificates. See our [peer review policy](https://community.scta.info/policy/peer-review) and [2019 "Decoupling Quality Control and Publication: The Digital Latin Library and the Traveling Imprimatur," Co-authored with Sam Huskey, Digital Humanities Quarterly, 13:4 (2019)](https://digitalhumanities.org/dhq/vol/13/4/000438/000438.html).

## Storage, Backup, and Preservation During Research

All SCTA repositories are publicly hosted on GitHub under open-access licenses.

In addition to GitHub’s distributed infrastructure, SCTA data is redundantly backed up through multiple independent systems, including:

* Local development machines
* Offsite encrypted backups via Backblaze
* Apple Time Machine backups on external drives
* On-premises institutional servers hosted at Loyola University Maryland
* Institutional snapshots and redundancy systems maintained according to industry-standard backup practices

These overlapping systems provide resilience against accidental loss, corruption, or service interruption.

## Security and Sensitive Data

The SCTA primarily works with historical public-domain texts and open scholarly metadata. Consequently, privacy concerns and sensitive personal data issues are minimal.

No protected personal information, medical information, or confidential human subject data is collected or maintained within SCTA repositories.

Access controls for repository administration and deployment infrastructure follow standard institutional and GitHub security practices.

## Publication and Data Sharing

The SCTA follows an open-access and progressive publication model.

All repositories are publicly accessible and licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License]((https://creativecommons.org/licenses/by-nc-sa/4.0/)):

Rather than delaying publication until the completion of a grant cycle or editorial project, SCTA data is published continuously as improvements are merged into public repositories.

When pull requests are accepted and merged:

* Indexed databases and RDF Linked Data Graphs are updated and rebuilt.
* Updated texts become immediately avaiable via public APIs (see [SCTA APIs](https://community.scta.info/pages/technical-overview.html#apis))
* Updated texts become immediately available via Viewers that access these APIs 
  * for example:
    * [https://scta.lombardpress.org](https://scta.lombardpress.org)
    * [https://reader.lombardpress.org](https://reader.lombardpress.org) 
    * [https://mirador.scta.info/?resourceid=scta](https://mirador.scta.info/?resourceid=scta)

This progressive publication model ensures rapid dissemination while maintaining full version transparency.

## Long-Term Preservation and Sustainability

A core feature of the SCTA model is long-term community stewardship.

The SCTA community assumes ongoing responsibility for maintaining and preserving datasets beyond the lifetime of any individual grant-funded project. This infrastructure-oriented approach ensures continuity and sustainability in ways often unavailable to isolated short-term research initiatives.

Long-term preservation is supported through:

* Distributed version-controlled repositories
* Institutional server infrastructure
* Open licensing
* Community governance
* Redundant backup systems
* Persistent identifier systems

SCTA sustainability is funded through a consortium-style membership model in which supporting libraries and institutions contribute annual membership fees. Grant-funded projects utilizing SCTA infrastructure also contribute negotiated membership support during the lifetime of the grant. For more information on community funding please see our [membership policy page](https://community.scta.info/policy/membership)

Financial administration and stewardship are managed through the SCTA’s fiscal sponsor, [Council on Library and Information Resources (CLIR)](https://www.clir.org)

## Governance and Responsibility

Responsibility for SCTA data stewardship is coordinated by the Director and General Editor (Jeffrey C. Witt) and distributed across the SCTA community, [member projects](https://community.scta.info/members), repository maintainers, and affiliated institutional partners.





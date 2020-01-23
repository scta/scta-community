---
layout: page
title:  Cdf Schema
date: 2020-01-23
description: Codex Description File Schema
category: docs-data-schema
---

Extracted from official github repo [https://github.com/scta/cdf-schema](https://github.com/scta/cdf-schema) on 2020-01-23

# Codex Description File Schema

This is a repository for the schema for Codex Description Files,
maintained by the SCTA community [http://scta.info](http://scta.info)

The CDF-SCHEMA is used to associate describe a Codex Manifestation, individual Codex Ideas as well as map the Surface Manifestations and Surface Items within a given codex.

# Description

## codex

A transcription file begins with a `<codex>` as the root element, which takes a `<head>` and `<surfaces>` element.

## head

The header includes basic information about the codex and its codex item

- Children of `<head>` **MUST** be listed in the following order
- It **MUST** include a `<type>` indicating whether the codex is `manuscript` or `book`
- It **MUST** include a `<short>` id (See id naming conventions docs)
- It **MUST** include a `<title>`
- It **MAY** include an option `<initial>`. (This is depreciated and is discouraged)
- It **MAY** include a place, which as of now is a conventional string that indicates the geographical origin of the codex.
- It **MAY** include a date, which as of now is a conventional string that indicates the temporal origin of the codex.
- It **MAY** include a human readable prose description.
- It **MUST** include a `<hastItems>` child.

## hasItems

The hasItems element is designed to indicate a list of item instances of a given codex manifestation. In the case of a codex type manuscript, there should only be one `item` as a child of the `hasItems` element. In the case of a printed codex, there may be many, one for each item printed from the codex manifestation (or type setting)

- It **MUST** contain one or more `<item>` element.

## item

An `item` describes a given item instance of a codex manifestation.

- It **MAY** have a `<label>`
- It **MUST** have a `<canonical>` of value true or false; true if it should be used as the default item for this codex manifestation, otherwise it should be false.
- It **MUST** have a `<shortid>`
- It **MAY** have a `<holdingInstitution>`
- It **MAY** have a `<callNumber>`
- It **MAY** have a `<canvasBase>`
- It **MAY** have a `<manifestOfficial>`


## Surfaces

- It **MAY** have one or more `<surface>` elements

## Surface

- It **MUST** have a `<shortid>`
- It **MUST** have a `<label>`
- It **MUST** have a `<hasISurfaces>`

## hasISurfaces

- It **MUST** have one or more `<ISurface>`

## ISurface

- It **MUST** have a `<shortId>`
- It **MUST** have a `<canonical>` of value true or false; true if it should be used as the default ISurface for this Surface manifestation, otherwise it should be false.
- It **MUST** have a `<canvasslug>`

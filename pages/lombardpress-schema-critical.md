---
layout: page
title:  LombardPress Critical
date: 2020-01-22
description: LombardPress Critical
category: docs-data-schema
---

Extracted from official github repo [https://github.com/lombardpress/lombardpress-schema](https://github.com/lombardpress/lombardpress-schema) on 2020-01-22

---
layout: page
title:  "Lombard Press Schema 1.0.0 - Critical Transcription Guidelines"
date:   2016-07-15
categories: schema
---

# LombardPress Critical Transcription Guidelines

Editors:

* Jeffrey C. Witt (Loyola University Maryland)
* Michael Stenskjær Christensen (University of Copenhagen)
* Nicolas Vaughan (Universidad de los Andes)

Document Status: Draft

# Outline

* [Preamble](#preamble)
* [teiHeader](#teiheader)
  * [fileDesc](#filedesc)
    * [titleStmt](#titlestmt)
    * [editionStmt](#editionstmt)
    * [publicationStmt](#publicationstmt)
    * [sourceDesc](#sourcedesc)
  * [encodingDesc](#encodingdesc)
  * [revisionDesc](#revisiondesc)
* [text](#text)
  * [front](#front)
  * [body](#body)
  * [div](#div)
  * [p](#p)
* [Inline critical elements](#inline-critical-elements)
  * [supplied](#supplied)
  * [surplus](#surplus)
  * [sic](#sic)
* [Apparatus Criticus](#apparatus-criticus)
  * [Basic Rdg Types](#basic-rdg-types)
    * [variation](#variation)
    * [correction](#correction)
    * [note on variation and correction](#note-on-variation-and-correction)
    * [conjecture](#conjecture)
    * [connected apparatus entries](#connected-apparatus-entries)
    * [manual](#manual)
  * [witDetail](#witdetail)
  * [note](#appnote)
* [Apparatus Fontium](#apparatus-fontium)
  * [cit](#cite)
  * [ref](#ref)
  * [quote](#quote)
  * [note](#citnote)
* [Milestones](#milestones)


# Preamble

The goal of the LombardPress Critical Transcription specification is to offer a set of guidelines for the markup of medieval scholastic commentaries and texts that conform, as much as possible, to existing standards. Therefore, these guidelines adopt the rules and conventions of the [TEI guidelines](http://www.tei-c.org/) and, within these constraints, work to proscribe a single encoding practice where TEI offers multiple possibilities.

# teiHeader

The `teiHeader` defines metadata for the document about the file, including data on the author and title of the text as well as information about the edition.

## Rules

1. `teiHeader` **MUST** contain `fileDesc`.
2. `teiHeader` **MUST** contain `encodingDesc`.
3. `teiHeader` **MUST** contain `revisionDesc`.

## Example

```xml
<?xml version="1.0" encoding="UTF-8"?>
<TEI xmlns="http://www.tei-c.org/ns/1.0">
  <teiHeader>
    <fileDesc>
      <!-- Content of `fileDesc` -->
    </fileDesc>
    <encodingDesc>
      <!-- Content of `encodingDesc` -->
    </encodingDesc>
    <revisionDesc status="draft">
      <!-- Content of `revisionDesc` -->
    </revisionDesc>
  </teiHeader>
```

## fileDesc

### Description

The `fileDesc` contains the full bibliographic description of an electronic file.

### Rules

1. `fileDesc` **MUST** contain `titleStmt`.
2. `fileDesc` **MUST** contain `editionStmt`.
3. `fileDesc` **MUST** contain `publicationStmt`.


### titleStmt

#### Description

The `titleStmt` determines the bibliographical information of the encoded file.

#### Rules

1. `titleStmt` **MUST** have a `title`.
2. `titleStmt` **MUST** have an `author`.
3. `titleStmt` **SHOULD** have a `editor`.
4. `titleStmt` **MAY** have a `respStmt`.

#### Examples

``` xml
<titleStmt>
  <title>Dicta super librum De anima</title>
  <author>Simon Magister</author>
  <editor>Michael Stenskjær Christensen</editor>
  <respStmt>
    <name xml:id="comments-JJ">John Johnson</name>
    <resp>Editorial suggestions</resp>
  </respStmt>
</titleStmt>
```

### editionStmt

#### Description

`editionStmt` indicates the edition of the document within the context of its source history.

#### Rules

1. `editionStmt` **MUST** contain an `edition` element.
2. `edition@n` **MUST** be `n=X.X.X-dev`; usually, when starting a new document it should be listed as `n=0.0.0-dev`.
3. `edition` **MUST** contain a `date` element.
4. The `date` element, that is the child of `edition`, **MUST** include a `@when` attribute, whose machine-formatted value corresponds to the date in the text node.
5. `edition` **SHOULD NOT** contain any other children besides the date.


#### Examples

```xml
<editionStmt>
  <edition n="0.0.0-dev">
    <date when="2016-06-18">June 18, 2016</date>
  </edition>
</editionStmt>
```

### publicationStmt

#### Description

`publicationStmt` indicates the authority supporting this edition (usually a sponsoring or funding research group). It should also list the license and availability of the text.

#### Rules

1. `publicationStmt` **MUST** have EITHER `authority` and `availability` elements as children OR a general `p` element.
    * We highly encourage using `authority` and `availability` to identify the entity that makes the creation of the current document possible. See examples below.
2. `p` **MAY** contain a `ref` to provide an external link to the authority-like entity.
3. `authority` **MAY** contain a `ref` to provide an external link to the authority entity.
4. `availability` **SHOULD** contain `@status`.
5. `availability` **SHOULD** contain a `p` describing the license under which the edition is published.

#### Examples

##### Example 1

``` xml
<publicationStmt>
  <authority>Scholastic Commentaries and Text Archive Project</authority>
  <availability status="free">
    <p>Published under a <ref target="http://creativecommons.org/licenses/by-nc-nd/3.0/">Creative Commons Attribution-NonCommercial-NoDerivs 3.0 License</ref></p>
    </availability>
  </publicationStmt>
```

##### Example 2

``` xml
<publicationStmt>
  <authority>
    <ref target="http://representationandreality.gu.se">
      Representation and Reality: Historical and Contemporary Perspectives on the Aristotelian Tradition
    </ref>
  </authority>
  <availability status="free">
    <p>Published under a <ref target="http://creativecommons.org/licenses/by-nc-nd/3.0/">Creative Commons Attribution-NonCommercial-NoDerivs 3.0 License</ref></p>
    </availability>
  </publicationStmt>
```

##### Example 3

``` xml
<publicationStmt>
  <authority>
    <ref target="http://petrushispanusproject.po">Petrus Hispanus Project</ref></authority>
  <availability status="free">
    <p>Published under a <ref target="http://creativecommons.org/licenses/by-nc-nd/3.0/">Creative Commons Attribution-NonCommercial-NoDerivs 3.0 License</ref></p>
    </availability>
  </publicationStmt>
```

### sourceDesc

#### Description

`sourceDesc` should list the witnesses and sources used to construct the edition.

#### Rules

1. `sourceDesc` **MUST** contain `listWit`, `listBibl` or both.
2. `listWit` **MUST** contain at least one `wit`.
3. `listBibl` **MUST** contain at least one `bibl`.
4. `witness` **MUST** have a `@xml:id`.
5. `witness` **SHOULD** have a `@n` giving a short id of the witness.
  * The value of `@n` **SHOULD** correspond to the short id for the manuscript or codex in the SCTA database. If the value is not known, leave it out. It will be added later during processing.
6. For adding `handDesc`, follow TEI guidelines.

#### Examples

##### Example 1

``` xml
<listWit>
  <witness xml:id="P" n="bnf15705">Paris, Lat 15705</witness>
</listWit>
```

##### Example 2

``` xml
<listBibl>
  <bibl xml:id="Q" n="quaracchi1924">Quaracchi 1924 Edition</bibl>
</listBibl>
```

##### Example 3

```xml
<listWit>
  <witness xml:id="P" n="bnf15705">Paris, Lat 15705
    <msDesc>
      <physDesc>
        <handDesc hands="2">
          <handNote sameAs='#P'>This is the main hand of the text. German hand of the XIIIc with an inclination toward particularly complex majuscules.</handNote>
          <handNote xml:id="#P1">Flemish hand of the XVc written in mauve ink. Used for minor corrections.</handNote>
        </handDesc>
      </physDesc>
    </msDesc>
  </witness>witness>
  <witness xml:id="Pb" n="bda446">Paris, Bibliotheque de l'Arsenal, ms. lat. 446</witness>
  <witness xml:id="Z" n="zbsSII72">Solothurn, Zentralbibliothek, Cod. S II 72</witness>
</listWit>
```

## encodingDesc

### Description

`encodingDesc` provides details about the encoding methods used in the text and the schema followed.

### Rules

1. `encodingDesc` **MUST** be stated.
2. `encodingDesc` **SHOULD** contain a `variantEncoding` element as a direct child.
3. `variantEncoding` **MUST** contain `@method` which confirms that the method of variant encoding is *parallel-segmentation*.
4. `encodingDesc` **MUST** contain a `schemaRef` element as a direct child.
5. `schemaRef` **MUST** contain a `@url` that points to the URL of the LBP schema.
6. `schemaRef` **MUST** contain an `@n` pointing to the version number of the LBP schema.
7. `encodingDesc` **MAY** take an `editorialDecl` as a direct child.
8. `editorialDecl` **SHOULD** contain a `p` element with a prose description of the guidelines followed in the preparation of this edition.


### Examples

```xml
<encodingDesc>
  <variantEncoding method="parallel-segmentation"
    location="internal"/>
  <schemaRef
    n="lbp-critical-1.0.0"
    url="https://raw.githubusercontent.com/lombardpress/lombardpress-schema/master/src/1.0/critical.rng">
  </schemaRef>
  <editorialDecl>
    <p>Encoding of this text has followed the recommendations of the LombardPress 1.0.0 guidelines for a critical edition</p>
  </editorialDecl>
</encodingDesc>
```

## revisionDesc

### Description

The `revisionDesc` contains a description of the current and previous versions of the current edition.
The individual editor would usually not be responsible for maintaining the `revisionDesc`, as it should (ideally) be generated as part of the publication workflow.

### Rules

1. `revisionDesc` **MUST** be stated.
2. `revisionDesc` **MUST** contain `@status`.
3. `revisionDesc` **MUST** contain `listChange`.
4. `listChange` **MUST** contain at least one `change`.
5. `change` **MUST** contain `@when`.
6. `change` **MUST** contain `@status`. Possible values of the attribute are:
  * private-draft
  * public-draft (alias: draft)
  * out-for-review
  * peer-reviewed (alias: published)
7. `change` **MUST** contain `@n`.
8. `change` **MUST** contain either `@corresp` pointing to a description of the change in another file or a `p` describing the change.

### Examples

#### Example 1

```xml
<revisionDesc status="draft">
  <listChange>
    <change when="2015-11-11" status="draft" n="0.0.0">
      <p>Created file for the first time.</p>  
    </change>
  </listChange>
</revisionDesc>
```

#### Example 2

```xml
<revisionDesc status="draft">
  <listChange>
    <change when="2015-12-24" status="draft" n="0.1.0" corresp="versionlog.xml#v0.1.0" />
    <change when="2015-11-11" status="draft" n="0.0.0">
      <p>Created file for the first time</p>
    </change>
  </listChange>
</revisionDesc>
```
# text

## Description

`text` is the main wrapper of the edition and sibling to the `teiHeader`.

## Rules

1. `text` **SHOULD** take a `@type` attribute the value of which is "critical".
  * The possible values for `text@type` are:
    * critical
    * diplomatic
    * translation
2. `text` **SHOULD** take an `@xml:lang` attribute indicating the dominant language of the edition, usually `la` for "latin".

## front

### Description

`front` is used to make prefatory declarations about the text. For now that only includes the starting location of the text in the witnesses.

### Rules

1. `front` **MUST** take a `div` with the `xml:id="starts-on"`.
  * The content of this div should only be `pb`, `cb`, and `lb` elements indicating the page, column, and lb on which the text begins in the different witnesses. For the encoding of `pb` and `cb`
 see [the relevant section below](#milestones).
### Examples

```xml
<front>
  <div xml:id="starts-on">
    <pb ed="#V" n="5-r"/><cb ed="#V" n="b"/><lb ed="#V" n="15"/> <!-- V5rb -->
    <pb ed="#S" n="2-r"/><cb ed="#S" n="a"/><lb ed="#S" n="5"/> <!-- S2ra -->
    <pb ed="#R" n="1-r"/><cb ed="#R" n="a"/><lb ed="#R" n="1"/> <!-- R1ra -->
    <pb ed="#SV" n="187-r"/><cb ed="#SV" n="a"/><lb ed="#V" n="49"/> <!-- SV187ra -->
  </div>
</front>
```

## body

### Description

`body` is the primary wrapper of the edited text.

### Rules

1. `body` **MUST** immediately follow `front`.
2. `body` **MUST** take a `div` as an immediate child.

## div

### Description

`div` is the fundamental section unit of an edition.

### Rules

1. There **MUST** be one `div` in each edition as a direct child of `body`.
2. `div` **MAY** only contain `head` and `p` as children.
3. `div` **MAY NOT** contain any text nodes as direct children.

## head

`head` is the wrapper heading declaration for a `div`.

### Rules

1. `head` **MUST** be an immediate child of a `div`.
2. `head` **MUST** precede `p` elements in parent `div`.
3. `head` **MAY** take an `@type` attribute.
  * `@type` values include:
    * subtitle
    * question-title

## p

### Description

`p` (along with `head`) is the wrapper of all text nodes within the `body` element.

### Rules

1. All text nodes of the edition, other than those that are descendants of the `head` element, **MUST** be descendants of a `p` element.
2. `p` **MUST** be an immediate child of a `div`.

# Inline critical elements

In some situations a note in the critical apparatus is not necessary for indicating a critical evaluation by the editor. The following inline elements will usually have a semantically relevant rendering in the text.

In most cases correlated notes in the critical apparatus are also available. In only the most simple situations will this be sufficient for avoiding ambiguities. As soon as the text is not uniformly transmitted or the change is not made by the current editor, one should resort to critical notes using the critical apparatus guidelines outlined below.

## supplied

### Description

`supplied` signifies text supplied by the editor because it is believed to be missing from the text, and it can be argued that it must have been part of the original text as intended by the author.

For the use of this in a critical note, see [conjecture-supplied](#conjecture-supplied)

### Rules

1. `supplied` **MUST** contain the supplied text, and nothing but that.

### Example

```xml
Utrum fides semper <supplied>sit</supplied> acquisita
```

In a processed text, this could result in the following text:

> Utrum fides semper \<sit\> acquisita

## surplus

### Description

`surplus` marks a text present in the source which the editor believes to be superfluous or redundant. According to the editor, the word(s) marked with `surplus` is therefore not to be considered part of the established text.

For the use of this in a critical note, see [conjecture-removed](#conjecture-removed).

### Rules

1. `surplus` **MUST** contain the removed text, and nothing but that.

### Example

```xml
Ergo non sequitur quod <surplus>quia</surplus> in probationem dicitur.
```

In a processed text, this could result in the following text:

> Ergo non sequitur quod [quia] in probationem dicitur.

## sic

### Description

`sic` is used to indicate that, according to the best judgement of the editor, the demarcated text is corrupt, and the editor does not know how to solve the problem satisfyingly. Notice that this does not mean that there is a passage that the editor is not able to read, nor that a gap is left in the text, nor a physical damage is in the manuscript, but that the text as transmitted is incomprehensible.

### Rules

1. `sic` **MUST** contain the text considered to be corrupt.

### Example

```xml
subsidiis magnis <sic>epicuri</sic> constabilitas
```

In a processed text, this could result in the following text:

> subsidiis magnis †epicuri† constabilitas

# Apparatus Criticus

## General Rules

Below are the basic reading and lemma types in three main categories: variation, correction, and conjecture. Before detailing those types, the general rules of any apparatus entry are described here.

The general rules of any `app` element are:

1. `app` **MUST** contain `lem` element.
2. `app` **MUST** contain at least one `rdg` element.
3. `app` **MAY** contain a `witDetail` element.
4. `app` **MAY** contain a `note` element.
5. If `lem` is empty, it **MUST** contain the `@n` element.
6. `lem` **MAY** have `@wit` or `@source`.
7. `lem` **MAY** take an another `app` element as a descendant
8. `lem` **SHOULD** have `@wit` or `@source` when its parent `app` is contained within another `app` element.
9. `rdg` **MUST** have `@wit` or `@source`.
10. `rdg` **MAY NOT** take an another `app` element as a descendant

## Note on encoding empty lemmas

When one or more witnesses contain readings that are not adopted in the critical text, the `lem` element **MUST** be left empty. Such an encoding would signify that some readings are present in a part of the tradition, but not included in the established text. When the `lem` is left empty, it is more difficult for the processor to anchor the entry in the text, so a label is needed. `@n` gives the processor a label for this purpose. Usually the word preceding the apparatus would be used for that. An example of this encoding would look like:

```xml
Praeterea, sicut oculus
<app>
  <lem n="oculus"/>
  <rdg wit="#B">nicticoracis</rdg>
</app>
ad lumen solis
```

This would make it easy to create the following apparatus entry:

> nicticoracis *post* oculus *B*

## Basic rdg types

The basic structure of the `rdg` typology can be described as follows

* variation
  - variation-substance
  - variation-orthography
  - variation-inversion
  - variation-present
  - variation-absent
  - variation-choice
* correction
  - correction-addition
  - correction-deletion
  - correction-substitution
    + correction-transposition
  - correction-cancellation
    + deletion-of-addition
    + deletion-of-deletion
    + deletion-of-substitution
    + substitution-of-addition
* conjecture
  - conjecture-supplied
  - conjecture-removed
  - conjecture-corrected
* manual

## variation

### Description

A variation is meant as any reading that varies from the indicated lemma. At present, we have identified five main variation types listed below.

### variation-substance

#### Description

A `variation-substance` is generally the most common type of variant, in which an editor simply wants to show that the witness has a different word or phrase than what is included in the critical text.

This kind of variant is most commonly seen in an apparatus as something like:

> 10 fides] spes *A*

#### Rules


1. `rdg` **MAY** have `@type=variation-substance`.
  * The requirement for `@type` is only a "**MAY**" because this `@type` is so common and can be inferred by a processor from the following encoding pattern. Thus it is not necessary for an editor to state it on every reading.
2. `rdg` text node **MUST** be present.

#### Example

```xml
<app>
  <lem wit="#B #C #D">fides</lem>
  <rdg wit="#A" type="variation-substance">spes</rdg>
</app>

```

On a negative apparatus:

> 10 fides] spes *A*

On a positive apparatus:

> 10 fides] *BCD* spes *A*

### variation-orthography

#### Description

The `variation-orthography` class is meant to identify a class of variant instances where there is no actual variation in the substance of the word or phrase in question but simply an orthographic difference.

#### Rules

1. `rdg` **MUST** have `@type=variation-orthography`.
  * The requirement for `@type` is "**MUST**" because without the `@type` value, the encoding pattern is indistinguishable from the `@type="variation-substance"` encoding pattern.
2. `rdg` text node **MUST** be present.

#### Example

```xml
<app>
  <lem>sicut</lem>
  <rdg wit="#A" type="variation-orthography">sicud</rdg>
</app>
est
```

> 10 sicut] sicud *A*

### variation-inversion

#### Description

`variation-inversion` is meant to indicate a variant reading where two or more words have been inverted relative to the critical text.

#### Rules

1. `lem` **MUST** not be empty.
2. `rdg` **MUST** have `@type=variation-inversion`.
3. `rdg` text node **MUST** be present.
4. `rdg` **MAY** have two `seg` elements which indicate which elements have been inverted.

#### Example 1

In this simple example the `rdg` only contains two words.

```xml
fides non
<app>
  <lem>bona fides</lem>
  <rdg wit="#A" type="variation-inversion">fides bona</rdg>
</app>
```

> 10 bona fides] fides bona *A*

#### Example 2

In this example the `rdg` contains more than two words, and it is therefore necessary to indicate which words have been moved around with the `seg` element.

```xml
Ad demonstrationem tria requirantur: subiectum, passio, et
principium per quod ostenditur passio de subiecto. Ubi est
<app>
  <lem>ista tria invenire</lem>
  <rdg wit="#B">ista tria invenire</rdg>
  <rdg wit="#O" type="variation-inversion">
    <seg>invenire</seg>
    <seg>ista tria</seg>
  </rdg>
</app>
, ibi contingit ponere scientiam.
```

> 10 ista tria invenire ] invenire *et* ista tria *inv* *O*

### variation-present

#### Description

The `variation-present` type should be used to indicate that a word or phrase is present in a witness but has not been included in the critical text. It is important that this be distinguished from the type `correction-addition` which is meant to indicate that a word or phrase has been actively added as a conscious correction to the witness text.

#### Rules

1. `lem` **MUST** be an empty node.
  * As stated above in the general rules, when a `lem` is empty it should have an `@n="suggested-lemma-value"` attribute, the value of which should be the word to appear in the critical text that immediately proceeds the `app`.
2. `rdg` **MUST** have `@type=variation-present`.
3. `rdg` **MAY** include `@cause` with the following available enumerated values:
  * repetition

#### Examples

##### Example 1

```xml
fides
<app>
  <lem n="fides"/>
  <rdg wit="#A" type="variation-present">spes</rdg>
</app>
```

> 10 fides] spes *in textu* *A*

> 10 spes *post* fides *hab./scr./inest* *A*


##### Example 2

Another example of the present type where the present word is caused by an (erroneous) repetition.

```xml
spes
<app>
  <lem n="spes"/>
  <rdg wit="#A" type="variation-present" cause="repetition">spes</rdg>
</app>
```

> 10 spes *iter.* *A*

### variation-absent

#### Description

A word or phrase is absent from a witness but present in the transmitted text. This is most often rendered as a simple "omission".

> 10 fides] *om.* *A*

#### Rules

1. `rdg` **MUST NOT** have any descendant text nodes.
2. `rdg` **MAY** have a child `space` element.
  * A `space` may be used when attempting to indicate a space left by the scribe intended to be filled in later.
3. `rdg` **SHOULD** include `@type=variation-absent`.
  * The reason this is not a **MUST** is because the pattern of a present `lem` with a text value and a present but empty `rdg` element is a unique pattern that corresponds to the `variation-absent` type.
4. `rdg` **MAY** include `@cause` with the following available enumerated values:
  * `homeoteleuton`
  * `homeoarchon`


#### Examples

##### Example 1

```xml
<app>
  <lem>fides</lem>
  <rdg wit="#A" type="variation-absent"/>
</app>
```

In a positive apparatus this could be presented like this:

> 10 fides] *B* ; *om.* *A*

In a negative apparatus it would be like this:

> 10 fides] *om.* *A*


##### Example 2

The following is an example of a conjecture where a word is added to the edition but missing in the transmitted text. For more on conjectures [see below](#conjecture).

```xml
<app>
  <lem type="conjecture-supplied"><supplied>fides</supplied></lem>
  <rdg wit="#A" type="variation-absent"/>
</app>
est
```

##### Example 3

```xml
fides
<app>
  <lem>non semper sic, sed non</lem>
  <rdg wit="#A" type="variation-absent" cause="homeoteleuton"/>
</app>
```

> 10 non semper sic, sed non] *om.* *A* *(hom.)*


##### Example 4

```xml
<app>
  <lem>fides</lem>
  <rdg wit="#A" type="variation-absent"><space extent="5" unit="characters" /></rdg>
</app>
```

> 10 fides] *spat. vac. (5 litt.)* *A*

### variation-choice

#### Description

The `variation-choice` type can be used when a single witness (however the concept of witness is defined) contains two or more parallel readings, and it is not clear which reading is preferred. The distinction between this case and a correction can be difficult to discern, and one editor might feel convinced that the text contains a correction, while another might see it as two readings of potentially equivalent weight or value.

The `seg` elements are used to distinguish the different readings. If the editor wishes to indicate the chronological order of the readings, she may do so by adding the `@n` attribute as described below.

#### Rules

1. `rdg` **MUST** contain a `choice` element.
2. `choice` **MUST** contain two or more `seg` elements.
3. `seg` elements **MAY** use `@n` to indicate their relative order of the readings, when they are on the same baseline.
4. `seg` element **MAY** contain an `add` element to indicate whether and where the reading was added, when it is not on the baseline of the text.
5. `seg` or `add` **MAY** use `@hand` to indicate an alternative scribe.

#### Examples

##### Example 1

A simple example could look like this:

``` xml
<app>
  <lem>vel</lem>
  <rdg wit="#G" type="variation-choice">
    <choice>
      <seg>et</seg>
      <seg><add place="above-live">vel</add></seg>
    </choice>
  </rdg>
</app>
```

The representation in the apparatus would depend on the processor. But one suggestion is:

> vel ] et *et* vel (*s.l.*) *B*

##### Example 2

In this more complex example, M and V have the correct reading “instare”. S originally had “dicere” and then corrected it to “instare”. T includes both “dicere” and “instare” as options, but isn't sure which one is correct and simply writes “dicere vel instare”.

```xml
<app>
  <lem wit="#M #V">instare</lem>
  <rdg wit="#S" type="correction-substitution">
    <subst>
       <del>dicere</del>
       <add>instare</add>
    </subst>
  </rdg>
  <rdg wit="#T" type="variation-choice">
     <choice>
       <seg>dicere</seg>
       <seg>instare</seg>
     </choice>
   </rdg>
</app>
```

Since this is the critical encoding, and the editor interprets the “vel” in “dicere vel instare” of T to mean that the scribe believes one of the two to be the correct reading, this is encoded as a choice between the two. If the editor also produces a diplomatic edition of the witness G, it should reveal the more low level reading of “dicere vel instare”.

An apparatus representation of this could look like this:

> instare ] instare *MV* ; instare *corr. ex.* dicere *S* ; dicere *et* instare *T*


## correction

### Description

A correction is meant as any reading where it is assumed that the witness corrects a perceived error in the transmitted text.

This is *not* used to represent corrections made by the edition. These kinds of corrections are reserved for the conjecture class [below](#conjecture).

### correction-addition

#### Description

This indicates that a scribe (either the original or a later scribe) has realized that a word or phrase is missing in his text and subsequently added it. This should be clearly distinguished from `variation-present` above where the editor only means to indicate that a word is present in a witness, but has not been added through a conscious correction.

#### Rules

1. `lem` **MAY** be empty.
  * In this case, an editor may not want to include the `correction-addition` in the critical text, but still indicate that the correction has been made in a witness. This is an instance where the `correction-addition` is also taking on the form parallel to that of a `variation-present`. In such a case the additional `varation-present` type can be inferred from the empty lemma.
2. `rdg` **SHOULD** have `@type="correction-addition"`.
3. `rdg` **MUST** contain an `add` element.
4. `rdg` **MUST NOT** contain any content outside of the `add` element.
5. `add` **MUST** have a `@place` attribute.
6. `add` **MAY** have a `@hand` attribute.

#### Examples

##### Example 1

``` xml
<app>
  <lem>fides</lem>
  <rdg wit="#A" type="correction-addition">
    <add place="margin-left">fides</add>
  </rdg>
</app>
```

> 10 fides] *add. in mg.* *A*

##### Example 2

In this example, a scribe wrote "in nomine Patri et Spiritus Sancti", but a later hand (#L1) realized the mistake and added the missing phrase "Filii et" above the line.

```xml
in nomine Patri et
<app>
  <lem>Filii et</lem>
    <rdg wit="#L" type="correction-addition">
      <add place="above-line" hand="#L1">Filii et</add>
  </rdg>
</app>
Spiritus Sancti.
```

> Filii et] *add. s.l.* *L1*

> Filii et] *add. s.l. alia manu* *L*

> Filli et] *om.* *L* *(corr. *L1*)*

### correction-deletion

#### Description

This indicates that a scribe (either the original or a later scribe) has realized that a word or phrase is erroneously present in the text and subsequently deleted it.

#### Rules

1. `lem` **MAY** be empty.
  * In most cases, the `lem` will be empty, since it is normal to note a deletion of word that does not appear in the critical text. However, an editor might want to include a word in the critical text that has been deleted in one or more witnesses. In this case, the `lem` **MUST NOT** be empty.
2. `rdg` **SHOULD** have `@type="correction-deletion"`.
3. `rdg` **MUST** contain a `del` element.
4. `rdg` **MUST NOT** contain any content outside of the `del` element.
5. `del` **MAY** have a `@place` attribute.
  * Generally, it is assumed that a deletion happens `in-line`. A deletion of something not `in-line` should generally be treated as a `correction-cancellation`. [See correction-cancellation below](#correction-cancellation).
6. `del` **SHOULD** have a `@rend` attribute.
7. `del` **MAY** have a `@hand` attribute.

#### Examples

##### Example 1

``` xml
fides
<app>
  <lem n="fides"/>
  <rdg wit="#A" type="correction-deletion">
    <del>non</del>
  </rdg>
</app>
est
```

> 10 non *post* fides *del.* *A*

> 10 fides] non *scr. sed del.* *A*

##### Example 2

``` xml
sicut
<app>
  <lem>dicit</lem>
  <rdg wit="#A" type="correction-deletion">
    <del>dicit</del>
  </rdg>
</app>
Aristoteles
```

> 10 sicut] dicit *scr. sed del.* *S*

> 10 dicit *post* sicut *del.* *S*

### correction-substitution

#### Description

This indicates that a scribe (either the original or a later scribe) wants to correct one word or phrase with another.

#### Rules

1. `lem` **MAY** be empty.
  * In most cases the lemma would be included, but the editor might want to include the substitution made in the witness without including either of the possible readings in the edited text.
2. `rdg` **SHOULD** have `@type="correction-substitution"`.
3. `rdg` **MUST** contain a `subst` element as a direct child.
4. `subst` **MUST** contain a `del` and a `add` element.
5. `subst` **MUST NOT** contain any nodes other than the `del` and `add` elements.
6. The smallest unit of substitution **MUST** be a word.
7. `add` **MAY** have a `@place`.
8. `del` **MAY** have a `@rend`.
9. A `@hand` attribute **MAY** be placed on either the `subst` element or on the `add` and `del` elements.

#### Extended Commentary

A possible argument against rule 6 is that an editor might desire to produce the following rendering for a correction to a particular word.

> insidia *N* (s *add.* *N1*)

However, we find this rendering ambiguous and therefore somewhat problematic.

Does this mean N1 has added the letter "s" after "insidia" or to the word itself?

While in the case of "s", it is probably obvious to an editor that "s" is not a word by itself and therefore the editor probably meant that "s" was added to "insidia".

However, what if the added letter were "a"? Then it would be much less clear.

Likewise, scholastic texts use a lot of variables, so it is possible that a scribe could have been adding "b" or "c" as a separate word or character, and did not mean to add a new letter to the preceding word.

So for example, the following would be very ambiguous in a sequence where variables a, b, c, d, and e were in use:

> insidia] *N* (e *add.* *N2*)

Does this mean that the correction was to "insidiae" or "insidia e"?

Thus we think it would be best to handle this with a `correction-substitution`, which could render to:

> insidias] *corr. ex* insidia *alia manu* *N*

It is true that with something like

```xml
<app>
  <lem>insidias</lem>
  <rdg wit="#N" type="correction-substitution">
    <subst>
      <del>insidia</del>
      <add>insidias</add>
    <subst>
  </rdg>
</app>
```  

We certainly sacrifice some specificity about how the correction was made (namely, by simply adding an "s" rather than crossing out the whole word and replacing it with the new word). However, we gain considerable clarity about the meaning of the correction.

**In sum**: The problem we face with the language of "addition, correction, substitution" etc. is that it becomes tempting to record two distinct types of phenomena: 1) the ultimate meaning of the correction and 2) the material way in which that correction was made.

In the example above the addition of "s" to "insidias" is, in meaning, really a `correction-substitution`, even though the way that the correction was materially made makes it look like a simple `correction-addition`.

By adding "s" the scribe, did not meant to simply add an "s", but rather meant to replace the word "insidia" with "insidias".

In its rendering, it looks equivalent to the addition of a missing word or letter, but the effect or meaning of the correction is to substitute one word with another.

In our view, complex details about how a correction was precisely made is best left recorded in a `witDetail` ([see below](#witDetail)) and in an accompanying diplomatic transcriptions of the witness.

#### Examples

##### Example 1

``` xml
<app>
  <lem>fidem</lem>
  <rdg wit="#A" type="correction-substitution">
    <subst>
      <del>spem</del>
      <add>fidem</add>
    </subst>
  </rdg>
</app>
```

> 10 fidem] *corr. ex* spem *A*

##### Example 2
``` xml
<app>
  <lem>fides</lem>
  <rdg wit="#A" type="correction-substitution">
    <subst>
      <del>fidem</del>
      <add hand="#A1" place="margin-right">fides</add>
    </subst>
  </rdg>
</app>
est
```

> 10 fides] fidem *A* (*ante corr.* *A1*)

> 10 fides] *corr. ex* fidem *in mg.* *A1*

> 10 fides] *corr. ex* fidem *in alia manu* *A*

##### Example 3

``` xml
<app>
  <lem>insidias</lem>
  <rdg wit="#N" type="correction-substitution">
    <subst hand="#N1">
      <del>insidia</del>
      <add>insidias</add>
    <subst>
  </rdg>
</app>
```

> insidias] *corr. ex* insidia *alia manu* *N*

> insidias] *corr. ex* insidia *N¹*

### correction-transposition

#### Description

A `correction-transposition` is a special kind of `correction-substitution` and should follow the same rules and basic encoding pattern of a `correction-substitution`. The designation `correction-transposition` only serves to further specify the kind of substitution taking place.

#### Rules

1. See the above rules for `correction-substitution`.
2. The `del` element within the `rdg/subst` element **MAY** take `seg` elements with `@n` attributes indicating the boundaries of the transposed words or phrases. This is necessary for proper processing when the `add` element contains more than two words.
  * The `@n` indicates the relative order of the segments *after* the transposition has taken place.
  * This is required rendering more complicated transpositions a word is moved more than one position.

#### Examples

##### Example 1

A correction that simply inverts the order of two words.

``` xml
<app>
  <lem>spiritus sanctus</lem>
  <rdg wit="#A" type="correction-transposition">
    <subst>
      <del>sanctus spiritus</del>
      <add>spiritus sanctus</add>
    </subst>
  </rdg>
</app>
```

> sanctus *ante* spiritus *transp.* *A*

##### Example 2

A correction where a word is moved more than a single word.

``` xml
<app>
  <lem>et spiritus sanctus</lem>
  <rdg wit="#A" type="correction-transposition">
    <subst>
      <del><seg n="2">spiritus sanctus<seg/> <seg n="1">et</seg></del>
      <add>et spiritus sanctus</add>
    </subst>
  </rdg>
</app>
```

> et *ante* spiritus sanctus *transp.* *A*

### correction-cancellation

#### Description

*note: correction-cancellation is a particularly complicated variation type and should be considered very likely to recieve change and alteration in the next release of the guidelines*

A cancellation is a correction of a correction. This gives us nine theoretical types (resulting from the combination of `correction-addition`, `correction-deletion`, and `correction-substitution`) following the logic of the corrections described above. Thus a correction of a correction would simply be a correction wrapped in a parent correction. Some of those nine permutations are not materially possible, and thus we support the following 4 types of *corrections of corrections* :

1. deletion-of-addition
2. deletion-of-deletion
3. deletion-of-substitution
4. substitution-of-addition
  * similar to `deletion-of-addition`, but the cancellation also adds a new word in the place of the now deleted addition.

#### Rules

1. `rdg` **MUST** take `@type=<value-of-cancellation-type>`.
2. Children of `rdg` must follow the logic of one of 4 accepted patterns described in the examples below.

#### Examples


1. `deletion-of-addition`

``` xml
<rdg wit="#A" type="deletion-of-addition">
  <del>
    <add place="above-line">fides</add>
  </del>
</rdg>
```

2. `deletion-of-deletion`

``` xml
<rdg wit="#A" type="deletion-of-deletion">
  <del>
    <del>fides</del>
  </del>
</rdg>
```

3. `deletion-of-substitution`

``` xml
<rdg wit="#A" wit="deletion-of-substitution">
  <del>
    <subst>
      <add>fidem</add>
      <del>fides</del>
    </subst>
  </del>
</rdg>

```
4. `substitution-of-addition`

``` xml
<rdg wit="#A" type="substitution-of-addition">
  <subst>
    <del>
      <add>spes</add>
    </del>
    <add>fides</add>
  </subst>
</rdg>
```

## Note on Variation and Correction

With both variations and corrections discussed, it is important to pause and acknowledge two conceptual categories that should inform editorial work and the choice of reading type used.

These two categories are:

* A Variation with Correction
  * If we imagine the main text being a straight line, a variation represents an alternative stem. On this "alternative" stem it is possible for corrections to be made: a correction that has no relation to the main stem

* A Correction that Varies
  * Alternatively, it is possible for a correction to be on the "main" stem but in the course of making this correction to introduce a variation, or to inaugurate an alternative stem.

### A Variation with a Correction

When a correction is made on the "alternative" stem it becomes difficult to represent this as a simple correction because, with respect to the main line, there is nothing to correct. The very words in need of correction only occur on the alternate stem.

To handle these cases, we allow `rdg@type="variation-substance"` to include `add`, `del`, and `subst` as children. But only for the present case, i.e. a correction on an "alternative" stem.

```xml
<app>
  <lem>secum compateretur illud</lem>
  <rdg type="variation-substance" wit="#V">
    non
    <subst>
      <del>idem</del>
      <add>illud</add>
    </subst>
    est
  </rdg>
</app>
```

This will only work if the `rdg` in question represents a single witness (or two witnesses with an identical variation AND correction).

Thus, if there is another witness with an identical `rdg` but no correction, then this variation needs to be recorded in a separate reading.

In this case, a processor could be expected, to recognize any `add`, `del`, or `subst` element within a `variation-substance` and automatically produce the kind of note that would otherwise be manually written in a `witDetail`.

Such a note might look like:

> secum compateretur illud] non illud *nota* illud *corr. ex* idem *V*

As discussed [below in witDetail](#witDetail), such cases can also continue to be addressed with the use of `witDetail`. In this case, one would simply ignore the correction in the `rdg` and then add a note in `witDetail`. However, since this case is quite common, it is nice to be able to simply add the correction within the `rdg` and not worry about adding an extra `witDetail`.

### A Correction that Varies

A "correction that varies" is only possible in the `correction-addition` and `correction-substitution` cases.

The guidelines above state that a simple `correction-addition` should look as follows:

```xml
<app>
  <lem>Filii et</lem>
  <rdg type="correction-addition" wit="#V">
     <add place="above-line">Filii et</add>
  </rdg>
</app>
```

and it is suggested that this should render as:

>Filii et] *add. s.l* *V*

But what if the correction was 'Filium etiam'? Here we have not only a correction, but a "correction that varies." In such a case, we would expect that correction to be recorded as follows:

```xml
<app>
  <lem>Filii et</lem>
  <rdg type="correction-addition" wit="#V">
     <add place="above-line">Filium etiam</add>
  </rdg>
</app>
```

And the processor is expected to render something slightly different, such as:

>Filii et] Filium etiam *add. s.l* *V*

The difference in rendering is the result of the difference between a simple correction that corrects in agreement with the main stem and correction that offers a variation from the main stem.

In the end, no new requirements are placed on the editor in such a case. An editor should simply follow the rules outlined above for a `correction-addition` or `correction-substitution`. However, it is incumbent on the processor to recognize this difference by performing a string comparison on the value of the `add` and the value of the `lem`. When the two strings are identical, a simple correction can be assumed. If the strings are not identical, a "correction that varies" is assumed. If a processor does not wish to perform such a comparison, it is suggested that it should default to the rendering for a "correction that varies."

## conjecture

### Description

These types refer to the situation where a (current or previous) editor suggests or introduces an emendation to the text that is not supported by the textual tradition.

Terminologically, one might consider an improvement that is adopted in the text (i.e. it is placed in the `lem` element) to be an *emendation*, while an improvement that is merely suggested but not adopted in the text (and therefore put in a `rdg` element) can be referred to as a *conjecture*. To maintain a higher degree of flexibility and reduce the amount of necessary types, we adopt the term *conjecture* in the typology to signify both emendations and conjectures in the more restricted sense.

General rules for conjectures:

1. `@resp` **MAY** be used to indicate an internal editor responsible for suggesting or including the conjecture.
2. `@source` **MAY** be used to indicate an external scholar who has suggested the conjecture.

Notice that both of these attributes are pointers. If they do not point to an existing `xml:id`, the string after `#` will generally be used in processing.

### conjecture-supplied

#### Description

According to the the judgement of the editor, an expression is missing from the transmitted text. Ideas for improvement of the text may then either be added to the edited text itself or indicated in an apparatus note.

Notice this reading type is only relevant if a note in the apparatus is desired or required. If the addition of some material is sufficiently reflected by appropriate symbols in the text (such as <added> or {added}), the `supplied` element can simply be put in the main text, as detailed in the [section above](#supplied).

#### Rules

1. Either `lem` or `rdg` **MUST** contain `@type="conjecture-supplied"`.
2. `lem` or `rdg` element **MUST** contain a `supplied` element as its first child.
3. `supplied` element **MUST** contain the added text.

#### Examples

##### Example 1

An emendation is introduced into the edited text. The text is absent from the textual tradition but added by an editor.

``` xml
Utrum fides semper
<app>
  <lem type="conjecture-supplied">
    <supplied>sit</supplied>
  </lem>
  <rdg type="variation-absent" wit="#P #V #L"/>
</app>
acquisita
```

> 10 sit ] *suppl.*

Note: If the reading of the other witnesses had been `variation-absent`, a processor could render it like so:

> 10 sit ] *suppl.*, *om.* *PVL*

##### Example 2

Two scholars have suggested different solutions to the problem, and the solution by the scholar refered to by the `@xml:id`#John is is adopted in the text.

``` xml
Utrum fides semper
<app>
  <lem type="conjecture-supplied" source="#John">
    <supplied>sit</supplied>
  </lem>
  <rdg type="absent" wit="#P #V #L"/>
  <rdg type="conjecture-supplied" source="#James">
    <supplied>erit</supplied>
  </rdg>
</app>
acquisita
```

> 10 sit ] *suppl.* John, *om.* *PVL*, erit *suppl.* James

##### Example 3

The editor suspects that a word is missing from the text, but is not certain enough to add it to the text. This might as well have been another scholar, and in that case, the `@source` should be indicated.

``` xml
Utrum fides
<app>
  <lem n="fides"/>
  <rdg type="conjecture-supplied">
    <supplied>semper</supplied>
  </rdg>
</app>
sit
```

> 10 *num* semper *post* fides *scribendum?*

### conjecture-removed

#### Description

A word or phrase is transmitted in some or all of the textual tradition, but the editor or another scholar has suspected that it does not belong in the text and suggests that it be removed.

#### Rules

1. Either a `lem` or a `rdg` **MUST** contain `@type="conjecture-removed"`.
2. `lem` or `rdg` element **MUST** contain a `surplus` element as its only child.
3. `surplus` element **MUST** contain the removed text.

#### Examples

##### Example 1

Simple example with a unanimous transmission. The editor removes the word from the edited text.

``` xml
ut
<app>
  <lem type="conjecture-removed"><surplus>cum</surplus></lem>
  <rdg wit="#A #B #C">cum</rdg>
</app>
dicit Aristoteles
```

If the printed text reads "ut [cum] dicit Aristoteles":

> 10 [cum] ] *del.*, cum *in textu* *ABC*

Alternative, if the printed text reads "ut dicit Aristoteles":

> 10 cum *post* ut *del.*, cum *in textu* *ABC*

##### Example 2

Another scholar has suggested that a word be removed, but it is supported by the textual tradition and the editor chooses to keep it in the text.

``` xml
ut
<app>
  <lem wit="#A #B #C">cum</lem>
  <rdg source="#James" type="conjecture-removed"><surplus>cum</surplus></rdg>
</app>
dicit Aristoteles
```

> 10 cum ] *ABC*, *del.* James

### `conjecture-corrected`

#### Description

Parts of all of the textual tradition supports one reading, but an editor or scholar suggests an alternative reading in its place.

#### Rules

1. Either a `lem` or a `rdg` **MUST** contain `@type="conjecture-corrected"`.
2. `lem` or `rdg` element **MUST** contain a `corr` element as its only child.
3. `corr` element **MUST** contain the corrected text.

#### Examples

##### Example 1

The tradition is unambiguous, but the editor deems it useless and prints an emendation in the text.

``` xml
Utrum fides
<app>
  <lem type="conjecture-corrected"><corr>sit</corr></lem>
  <rdg wit="#P #V #L">servus</rdg>
</app>
acquisita
```

> 10 sit ] servus *PVL*

The note might be more explicit:

> 10 sit ] *scr.*, servus *PVL*

##### Example 2

The tradition is mixed and the editor has a conjecture that he does not dare put in the edited text, so he chooses the most appropriate of the transmitted readings (in light of his general editorial principles), which is also supported by another scholar.

``` xml
Utrum fides
<app>
  <lem wit="#C" source="#John">semper</lem>
  <rdg wit="#A #B">servus</rdg>
  <rdg resp="#Ed" type="conjecture-corrected"><corr>sit</corr></rdg>
</app>
acquisita
```

> 10 semper ] *C* John, servus *AB*, sit *conj.*

## Connected Apparatus Entries

### Overlapping Elements

#### Description

While parallel-segmentation encoding comes with a number of advantages, an editor invariably faces the challenge of overlapping lemmas and XML's prohibition against cross-nesting elements. Here we offer guidelines of how to handles such cases.

#### Rules

1. All connected `apps` **MUST** have an `@xml:id`.
2. The first `app` **MUST** contain a `@next` pointing to the next connected `app` element.
3. The last `app` **MUST** contain a `@prev` pointing to the previous connected `app`.
4. Any `app` that is neither first nor last **MUST** contain a `@next` and a `@prev` element indicating its position in the list.

#### Examples

In this complex example, we imagine an omission in witness A that begins with the last word of paragraph 1 and continues into paragraph 2. But the last word of paragraph 1 is also the lemma for a variant between witness B and C.

```xml
<p xml:id="paragraph1">lorum
  <app xml:id="app1" next="#app2">
    <lem>
      <app>
        <lem wit="#C">ipsum</lem>
        <rdg wit="#B">ipsam</rdg>
      </app>
    </lem>
    <rdg wit="#A" type="variation-absent" cause="homeoteleuton"/>
  </app>
</p>
<p xml:id="paragraph2">
  <app xml:id="app2" prev="#app1">
    <lem>this is the text</lem>
    <rdg wit="#A" type="variation-absent" cause="homeoteleuton"/>
  </app>
  of the second paragraph. The first part of which continues the homeoteleuton started in the previous paragraph
</p>
```

A processor is expected to handle the above example as follows.

Whenever an `app` is encountered with a `@next` attribute, the processor should begin looping through each connected `app` until it reaches an `app` that no longer has a `@next` attribute but only a `@prev` attribute. Throughout this loop it should concatenate the `lem` from each `app` and then concatenate the available readings, matching `rdg` by the value of the `@wit` attribute. (In complicated cases, it is advisable to give each witness a separate `rdg` to make the connection of `rdg` elements as easy as possible.) Once having looped through all connected apps. The processor should ignore all subsequent apps that have an `@prev` attribute because these have presumably been dealt with in the previous loop.

A processor can also choose to create this loop in the opposite direction, first ignoring all `apps` with a `@next` attribute until it comes to an `app` that only has a `@prev` attribute. It can then loop up to each connected app until it reaches an `app` without a `@prev` attribute.

### Generic App Connections

#### Description

Sometimes it is desirable to connect readings even if an editor is not trying to avoid overlapping lemmas. The most likely scenario for this is when it is ideal for an `app` with a lemma and a second `app` with a blank lemma to be rendered together. Despite the different motivation, this should be handled in the same way as the method used to deal with overlapping lemmas.

#### Examples

```xml
<app xml:id="app1" next="#app2">
  <lem>ars</lem>
  <rdg wit="#E" next="#app2">ars artium</rdg>
  <rdg wit="#Y #H" type="variation-present">ars artium et scientia scientiarum</rdg>
</app>
<app xml:id="app2" prev="#app1">
  <lem n="ars"/>
  <rdg wit="#E" type="correction-addition">
    <add place="above-line" hand="#E1">et scientia scientiarum</add>
  </rdg>
</app>
```

This could render as:

>10 ars] ars artium *E* + et scientia scientiarum *add. interl.* *E1* ars artium et scientia scientiarum *YH*

```xml
non
<app xml:id="app1" next="#app2">
  <lem n="non"/>
  <rdg wit="#E" type="variation-present">ars</rdg>
  <rdg wit="#Y #H" type="variation-present">ars artium</rdg>
</app>
<app xml:id="app2" prev="#app1">
  <rdg wit="#E" type="correction-addition">
    <add place="above-line" hand="#E1">artium</add>
  <rdg>
</app>
```

This could be rendered as:

>10 non] ars *in textu* *E* + artium *add. interl.* *E1* ars artium *in textu* *YH*

## Manual

### Description

Because we recognize there may be cases where an editor feels that a reading is so unique that it fits into no existing typology, we support the use of a `rdg@type="manual"`, despite highly discouraging its use.

The use of the `manual` type should be avoided at all costs, and in subsequent versions of the lbp-schema we aim to identify all instances of `manual` and either explain how these cases fit into the existing typology or expand the typology to encompass this instance.

### Rules

1. `rdg` must have an `@type="manual`.
2. `rdg` should include precisely what the editors hope will appear after the lemma
3. The description of the variant (normally the part of the reading placed in italics) should be wrapped in an `desc` element
4. The siglum should be wrapped in a `wit` element.

### Examples

*Note: for both of the examples below, there are appropriate type categorizes for these rdg types, and thus there is no need for a manual override here. These are provided just for the sake of example.*

```xml
<app>
  <lem>fides</lem>
  <rdg wit="#V" type="manual">
    fides <desc>corr. interl. ex</desc> fide <wit>V</wit>
  </rdg>
</app>
```

This would likely be rendered as:

> 10 fides] fides *corr. interl. ex* fide *V*

```xml
<app>
  <lem>fides</lem>
  <rdg wit="#V" type="manual">
    <desc>om.</desc> <wit>V</wit>
  </rdg>
</app>
```

This would likely be rendered as:

> 10 fides] *om.* *V*

## witDetail

### Description

Under normal circumstances the processor will generate, from the above described `rdg` types, text describing the particular reading. But a reading might represent a certain situation that the editor would like to describe, but is not handled by the processor. In that case the `witDetail` is handy (and preferred over resorting to the use of `rdg@type="manual"`), as its content should be added by the processor after the standard text of the reading type, but before the witness siglum.

### Rules

1. `witDetail` **MAY** take as children only text nodes and the `mentioned` element.
2. All references to the content of the established text or witness within `witDetail` should be wrapped in a `mentioned` element.
3. `witDetail` **MUST** have an `@wit` that points to the reading associated with this `witDetail`.
  * The `witDetail` information should target only one reading. General notes meant to offer detail or information about the entire apparatus should be included in a `note` element which should appear at the end of the `app`.
4. For ease of processing and clarity, `witDetail` elements should come immediately after the `rdg` with which it is associated.
5. `witDetail` **SHOULD** include an `@xml:lang`.
6. `witDetail` **SHOULD NOT** be longer than 100 words, since it is expected that this note will be included in a printed *apparatus criticus*. Longer notes should be included in an `app/note`.

### Example

```xml
<app>
  <lem type="conjecture-correction">quae</lem>
  <rdg wit="#V">q</rdg>
  <witDetail wit="#V" xml:lang="la">cum 3 litteris rasibus</witDetail>
</app>
```
A processor could render this as follows:

> quae ] conj., q *cum 3 litteris rasibus* *V*

## App/Note

### Description

The `note` element used within the `app` is the appropriate place for an extended prose discussion of the apparatus entry as a whole. Generally, a traditional print rendering of the apparatus does not have room for such notes, and it is not expected that such a note would appear directly in the apparatus. More likely, in a print rendering, these notes would appear in an appendix. Digital representations can offer alternative ways of displaying these notes. For example, see [http://lombardpress.org/conceiving-the-digital-critical-apparatus/](http://lombardpress.org/conceiving-the-digital-critical-apparatus/).

### Rules

1. `note` **SHOULD** be placed in the last position within the `app` entry, after all other `rdgs` and `witDetail`.
2. `note` **SHOULD** include an `@xml:lang` attribute.
3. `note` **MUST** include either text nodes or `ab` elements as direct children.
4. Within `note`, in order to segment the text into 2 or more conceptual parts, the `ab` element **MUST** be used.
5. `note` **MAY NOT** include `p` or `div` elements within it descendant nodes.

### Examples

```xml
<app>
  <lem>quae</lem>
  <rdg wit="#V">qod</rdg>
  <note xml:lang="la">
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
      veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
      commodo consequat.
  </note>
</app>
```xml

Or

```xml
<app>
  <lem>quae</lem>
  <rdg wit="#V">qod</rdg>
  <note xml:lang="la">
    <ab>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
      veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
      commodo consequat.
    </ab>
    <ab>
      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
      dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
      proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    <ab>
  </note>
</app>
```

# Apparatus Fontium

## cit

### Description

Any entry to the *apparatus fontium* is created with the `<cit>` element.

`<ref>` encodes the reference made by the original author. `<quote>` encodes the original quotation. `<bibl>` is reserved for the modern editor's attempt to encode a modern reference identification for the quotation. `<bibl>` is only allowed inside a `<cit>` wrapper. `<bibl>` should only contain one reference, as it is considered *the* reference object for the `<cit>` entry. `<note>` tag can be used for writing explanatory notes for the apparatus.

In this way, the following scenarios are fairly simple to encode:

1. A reference to a passage that is not quoted.
2. A quotation without any original reference.
3. A quotation with an original reference.

In the following sections, examples of those scenarios are given.

### Rules

1. `cit` **MUST** contain either a `quote` or `ref`.
2. `cit` **MAY** contain a `bibl` element.
3. `cit` **MAY** contain a `note` element.
4. `bibl` **MUST** contain a reference to exactly one bibliographical object.

### Examples

A `cit` element with a `ref` and the reference in a `bibl` element:

``` xml
Pater per
<cit>
  <ref><name>Augustinum<name> in libro X <title>de Civitate</title></ref>
  <bibl><author>Augustinus</author>, <title>De civitate Dei</title>, X, c. 1 (PL XX:XX)</bibl>
</cit>
```

A `cit` element that has a `quote` as well as a `bibl` and `note`:

``` xml
<cit>
  <quote>In the beginning God created a world</quote>
  <bibl>Genesis 1:1</bibl>
  <note>This reference to <title>Genesis</title> is ...</note>
</cit>
```

## quote

### Description

A quote, following the TEI guidelines, is intended to identify anything that is considered a quotation of another source or text. The value of quotation is most often rendered within quotation marks, i.e. "This is a quote".

### Rules

1. `quote` **MAY** stand alone, i.e. it **MAY** not be a child of a `cit` element. In such a case it is generally expected that it would not appear in the *apparatus fontium*.
2. `quote` **MAY** be the immediate child of a `cit` element. In such a case, the quote is expected to appear in the *apparatus fontium*.
3. `quote` **MAY** contain `seg` elements.
  * This would be used to indicate segments of a quote that are interrupted by an *inquit*.
  * Note that this can also be encoded by use of the `@next` and `@prev` attributes. See the examples below.
4. `quote` **MAY** take an `@type` attribute, the values of which can be:
  * direct (this is the same as simply not declaring an `@type`)
  * paraphrase
5. `quote` **MAY** take an `@ana` attribute, used to indicate a canonical reference for the quote.

### Examples

The following example will not generate an apparatus fontium entry:

```xml
<quote>In principio</quote> etc.
```

The following example will generate an *apparatus fontium* entry

``` xml
<cit>
  <quote xml:id="quote1" ana="#gen1_1">In principio creavit Deus caelum</quote>
  <note>I can't find this.</note>
</cit>
```

A `cit` element with just a `quote` tag, but where the quote consists of two quote segments and an *inquit*:

``` xml
<cit>
  <quote>
    <seg type="qs">lorum</seg>, <!-- Is @type="qs" the best way to do this? -->
    inquit,
    <seg type="qs">ipsum</seg>
  </quote>
  <bibl>Sample text</bibl>
<cit>
```

The following is another, equivalent way, of doing the same thing:

```xml
<cit>
  <quote xml:id="quote-part-1" next="#quote-part-2" ana="#gen1_1" n="1">
    In principio creavit Deus caelum
  </quote>
  <bibl>Genesis 1_1</bibl>
</cit>
scilicet angelicam naturam, sed adhuc informem, ut quibusdam placet:
<quote xml:id="quote-part-2" prev="#quote-part-1" n="2">
  et terram
</quote>
```

## ref

### Description

A reference, following the TEI guidelines, is intended to identify anything that is considered a reference to another source.

### Rules

1. `ref` **MAY** stand alone, i.e. it **MAY** not be a child of an `cit` element and thus not appear in the *apparatus fontium*.
2. `ref` **MAY** be the immediate child of a `cit` element and thus appear in the *apparatus fontium*.
3. `ref` **MAY** contain an `@ana` attribute, used to indicate a canonical reference for the reference.
3. `ref` **MAY** contain a `title`, `name`, and `num` element.
4. `ref` **MAY** contain a `seg` with `@type="incipit"` for references that include an incipit for the referenced section.

### Examples

The following example is not expected to generate an *apparatus fontium*:

```xml
<ref corresp="#quote-id">
  <name>Ockham</name> dicit in prologo
</ref>
```

The following example is expected to generate an *apparatus fontium* entry:

``` xml
<cit>
  <ref xml:id="ref1" ana="#gen1_1">
    <title ref="#gen">Genesis</title>
    1:1
  </ref>
  <bibl>Genesis 1:1</bibl>
</cit>
```

## cit/note

### Description

The `<note>` element is available for cases where the editor finds it necessary to give a prose discussion of the passage or sources. A limited set of inline elements are available for markup of the text. They can be used to give bibliographical references (`bibl`), quotes from the sources (`quote`), refer to words in the established text (`mentioned`) and references to other parts of the established text (`ref`). The `ab` can be used for separating the text into paragraph-like blocks.

### Rules

1. `note` **SHOULD** be placed in the last position within the `cit` entry.
2. `note` **SHOULD** include an `@xml:lang` attribute.
3. `note` **MUST** include either text nodes or `ab` elements as direct children.
4. `note` **MAY** include the following elements: `bibl`, `quote`, `mentioned`, `ref`.
4. `note` **MAY NOT** include `p` or `div` elements within it descendant nodes.

### Examples

Here is a simple examples with a short note:
```xml
<cit>
  <quote xml:id="quote1" ana="#gen1_1">In principio creavit Deus caelum</quote>
  <note xml:lang="en">I can't find this.</note>
</cit>
```

A more complex example where most of the allowed elements are used could look like this:

```xml
sic, cum <name ref="#Aristotle">Philosophus</name> ponit
<cit>
  <quote type="paraphrase">
    species abstractas a phantasmatibus intelligibiles
  </quote>
  <note xml:lang="en">
    <ab>
      This is probably based on <bibl><title ref="#Arist.DA">De anima</title>
      III.8 432a8-9</bibl> cf. <bibl><name ref="#Aquinas">Aquinas</name>, <title
      ref="#Aquin.SentDA">Sent. de anima</title> lib. 3, cap. 7, p.
      236, ll. 72--89</bibl>. See also <bibl><title ref="#Aquin.SentDA">ibid.</title>
      lib. 3, cap. 4, p. 218, ll. 8--23 and p. 220, ll. 101--121.</bibl>
    </ab>
    <ab>
      This statement is not reflected directly in the Aristotelian text ...
    </ab>
  </note>
</cit>
```
## Complex cases

When a text contains both a reference and a quotation, both a `ref` and a `quote` are encoded, but often only the `ref` or the `quote` should be wrapped in a `cit` element and not both. In many cases the reference is separated from the quotation by some amount of words which do not belong in the `cit` element. We recommend citing the `quote` since we see this as primary. We would then associate the `ref` with the `quote` it is related to via the `@corresp` attribute. An representative example follows:

```xml
<p>Patet per
  <ref corresp="#quote1">
    <name>Augustinum<name> in libro X <title>de Civitate</title>
  </ref>
  dicit quod:
  <cit>
    <quote xml:id="quote1" ana="#aug-cd-10_1">lorum ipsum lorum ipsum</quote>
    <bibl><author>Augustinus</author>, <title>De civitate Dei</title>, X, c. 1 (PL XX:XX)</bibl>
  </cit>
</p>
```


# Milestones

## cb

### Description

`cb` is a milestone element to mark column breaks in a material witness to the edition in question. `cb` elements are used to indicate the *start* of a new column.


### Rules

1. `@ed` **MUST** indicate the source text in which the column break occurs.
2. `@n` **MUST** be used indicate the start of the column in question, e.g. "a" or "b"

### Examples

```xml
<cb ed="#W" n="a"/>
```

## pb

### Description

`pb` is a milestone element to mark page breaks in a material witness to the edition in question. `pb` elements are used to indicate the *start* of a new page.

### Rules

1. `@ed` **MUST** indicate the source text in which the page break occurs.
2. `@n` **MUST** indicate the page or folio number (determined by `@type`). In the case of `type="folio"`, the side of the folio is delimited by a `-`.
  * `@type` **MAY** explicitly indicate the type of numbering as either paginated ("page") or foliated ("folio"). If none is given, `@type="folio"` is assumed.
  * If an `-` is used in the value of `@n`, `folio` is assumed.
  * If no `-` appears in the value of `@n`, type `page` is assumed.

### Examples

Page break in folio format

```xml
<pb ed="#W" n="15-v"/>
```

Page break in paged format

```xml
<pb ed="#W" n="15" type="page" />
```

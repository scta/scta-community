---
layout: post
title:  Digital text encoding and editing – Getting started
date:   2017-05-17 08:25:00 +0100
author: Michael S. Christensen
category: tutorial
---

Creating critical text editions has always been associated with a high mental
effort. The scholarly aspects of text editing are inherently challenging, but it
is not a law of nature that the practical sides of the endeavour cannot be
improved. By separating content and presentation many challenges of text editing
can be approached in a flexible and intelligent way. In this short guide I will
show you how to get started on that path with XML and the Lombard Press Schema.

## Background: TEI, SCTA and Lombard Press

Before we dive into encoding and converting, a bit of background information may
be relevant. You can skip this section if you already know what XML is, you are
familiar with some of the possibilities it lends the editor, and you have a
general idea of the role of the Lombard Press Schema in relation to XML TEI, the
Scholastic Commentaries and Texts Archive and the basic idea of separating
presentation and content in text encoding.

Traditionally, form and content of text editions has been closely connected, as
there was only one publishing format, the print page. That is no longer the
case, and a separation of the two is now possible. One of the challenges of a
typical text edition is that a range of apparatuses are used, for instance to
register differing readings, authoritative sources, manuscript witnesses or
comments on the content of the text. Another typical challenge is the
registration of names and passages for indices. If the editor has been so daring
as to edit a translated text, bilingual indices may also be called for. And what
happens if the editor wants to produce a text in different formats? One might
want an incarnation like the classical critical edition on the printed page and
another suitable for the interactive modus legendi of cyberspace. Should they be
identical? Of course not. Depending on which format and use case a text edition
fits into, all these challenges will be solved in different ways. But the
philological decisions made in establishing the text are the same regardless of
representation format. It is therefore natural to separate the process of
presenting and establishing a text, now that we have the technical capabilities.

This is where the flexible, semantically based, markup format XML (eXtensible
Markup Language) enters the scene. Although XML makes it formally possible to
separate form and content, there is still quite a way to go. The [Text Encoding
Initiative (TEI)](http://www.tei-c.org/index.xml) has been working on what has
become the universal industry standard for encoding of natural language textual
artefacts. The TEI schemas and recommendations for text encoding are a huge leap
towards the goal of meaningful semantic markup of texts. But the TEI schemas are
aimed at providing a general framework for text encoding, where each sub
discipline is still required to fill in a lot of gaps with their domain specific
details.

The TEI schemas make the creation of simple, flexible and semantically
meaningful documents possible. But we are not quite there yet. If we want to
create a high quality apparatus of critical notes and references, if we want to
create flexible indices and produce output for a range of different formats and
use cases, then we need something more. This is where the Lombard Press Schema
gets into the picture. It is a collection of recommendations and a thought out
semantic for critical and diplomatic text editing. It is a bit like
[EpiDoc](https://sourceforge.net/p/epidoc/wiki/Home/) if you have heard of that.

The Lombard Press Schema provides the editor with both short and long term
advantages and possibilities. The short term possibility is the simple and
flexible creation of professional text editions that make it possible to produce
output in a range of formats while still fulfilling all the expectations
scholars have to modern text editions. The long term possibilities include (but
are not limited to) the creation of a large corpus of scholastic texts that make
insights possible that would not materialise within a traditional close reading
paradigm. As will be apparent below, a large quantity of scholastic material
encoded according to the same (or compatible) guidelines make it possible to
analyse the material on a scale far beyond traditional indices and search term
investigations.

The Lombard Press Schema is designed as a subset of the XML TEI P5 schema, which
means that any LBP-schema compliant document also must comply with the TEI P5
schema. It is, in other words, simply a further specification of the general
framework provided by TEI schema. The idea for the LBP-schema comes from the
desire to create a large metadata database of scholastic texts, the Scholastic
Commentaries and Texts Archive. This means that it will be mostly trivial to
register the contents and metadata of any text encoding according to the
LBP-schema. But it does not necessarily mean that any text thus encoded must be
registered in the SCTA database. That is entirely up to the editor – though we
as editors of the SCTA, and as members of the scholarly community more generally
will highly recommend it. The LBP-schema simply provides a meaningful semantical
basis for text encoding.

With the creation of a general semantic schema for scholastic text also follows
the possibility of a range of specialised tools. The XML format is general and
abstract. So the creation of usable text editions from that format requires a
conversion aimed at the specific aims of a given situation. The development of
the LBP-schema therefore also includes concomitant XSLT scripts for conversion
of the XML documents into more usable formats. Currently that only involves
conversion into LaTeX and hence PDF documents, but that may only be the
beginning. Tools that make this process easy and efficient are also being
developed.

Of course we should mention that creating digital editions will necessarily be a
technical activity. We try to alleviate some of the worst technical frustrations
by standardising and developing good tools, but you should not be afraid to
(learn how to) use things such as the command line, general text editors and
version control systems. If you have never heard of any of this, don't worry. We
will help you.

But some technical skills are a part of the enterprise as it is done within the
paradigm used by the LBP-schema. Less technical ways may be possible, but we
believe that a very high level of control and understanding of the process comes
with an acceptable level of technical detail. But do not despair: If you are
able to learn a language as austere as Latin or Greek, and to acquire the highly
advanced skills required for interpreting a medieval manuscript, you can also
learn how to write an XML document – guaranteed!

### Terms and connections:

- *XML.* Extensible Markup Language. General, semantic markup language for text
   encoding.
- *TEI.* Text Encoding Initiative. Creates a general, high level, almost
  all-encompassing encoding schema for XML documents.
- *Lombard Press Schema (LBP-schema)*. A detailed and narrow set of
  recommendations and schemas for encoding XML TEI P5 compliant documents.
- *The Scholastic Commentaries and Texts Archive (SCTA)*. Metadata database and
  archive registry for medieval Latin scholastic texts. The database reads and
  understands LBP-schema compliant texts.
- *XSLT*. The scripting language used to declare the conversion of XML
  documents. This is used to convert LBP-schema compliant documents into other
  formats such as HTML and PDF.

## Finally, let's get started

This overview contains the following sections.

- A gentle introduction to XML.
- What is the Lombard Press Schema, really?
- Creating a critical edition in four (easy?) steps.
- Creating readable results.

The workflow of creating a critical edition can be roughly the following. These
suggestions are of course subject to the editorial principles and aim of the
edition, but generally apply *mutatis mutandis* for purely diplomatic editions
as well.

1. Create diplomatic transcriptions of your witnesses (optional).
2. Collate the diplomatic transcriptions.
3. Establish a critical edition.
4. Create one or more suitable representations of the edition.

This is very schematic, as each step usually will involve several passes of
encoding, analysis and maybe creation of representations for an impression of
the result.

### XML, the first encounter

```xml
<?xml version="1.0" encoding="UTF-8"?>
<note>
  <to>Tove</to>
  <from>Jani</from>
  <heading>Reminder</heading>
  <body>Don't forget me this weekend!</body>
  <greeting value="Kisses!" />
</note>
```
That's what it looks like. Easy, right!

Some observations:

- Elements – the stuff between `<` and `>` – describe structural things, or
  maybe better, elements. They are the fundamental building blocks of the
  language.
- Elements are closed with `</[element name]>`. It should be obvious from the
  example.
- Elements can have values. That is the content between the opening and the
  closing of the element.
- Elements do not need to have values. An element without a value can be closed
  immediately (like the `<greeting>`-element.
- Elements can contain other elements.
- Elements can have properties. The first element, `<xml>` has two properties,
  `version` and `encoding`, and `<greeting>` has one, `value`. Properties are
  key-value pairs, the string before the `=` is the key and the content
  contained by the quotes is the value of that property.

Congratulations! That is basically the syntax you need to know to read and write
XML.

### What is the Lombard Press Schema really?

The brave people in the Text Encoding Initiative have been working hard for many
years to develop a very robust and elaborate description of which elements and
properties can be used to semantically describe all kinds of documents.

The Lombard Press Schema is a further specification of which values can be used
in TEI elements and properties to adequately and succinctly describe the
phenomena of scholastic texts.

A longer example:
```xml
<p xml:id="da-49-l1q1-274hkz">
  Item quaeratur primo utrum de anima possit nobis acquiri scientia.
</p>
<p xml:id="da-49-l1q1-j01jdw">
  Videtur quod non.
</p>
<p xml:id="da-49-l1q1-ysmgk1">
  Illud de quo est scientia est intelligibile, quia cum scientia sit habitus
  intellectus, de quo est scientia oportet esse intelligibile; sed anima non est
  intelligibile, quia omnis nostra cognitio ortum habet a sensu,
  <app>
    <lem wit="#O">unde ipsum intelligere non est</lem>
    <rdg wit="#B">quia nihil intelligimus</rdg>
  </app>
  sine phantasmate, sed anima sub sensu non cadit, nec phantasma facit; ergo et
  cetera.
</p>
```

This is an excerpt from a LBP encoded edition. It is basically TEI XML, curried
with the conventions of the LBP-schema. The basics should be clear enough:

- `<p>` demarcate paragraphs.
- `<app>` starts a critical apparatus note. It can contain `<lem>` and `<rdg>`
  elements which specify the content of the *lemma* that should be printed in
  the text and one or more *readings* which constitute variants.

Aside from these basic building blocks, a valid LBP document should also contain
a `<teiHeader>` and the `<p>`'s should be wrapped in `<text><body>`. We will see
a full LBP document in a bit.

### Creating a critical edition

Okay. Let's go through some of the steps involved in creating a diplomatic or
critical edition with the Lombard Press Schema. It's more a presentation of the
concepts and steps than a real demonstration.

#### The diplomatic transcriptions
First, we will create a diplomatic transcription of one or more witnesses. The
Lombard Press Schema contains guidelines for diplomatic (semi-diplomatic,
really) transcriptions and critical editions. They are alike in many respects,
but also differ in essential ways.

For this, you will need to familiarize yourself closely with
the
[Lombard Press guidelines for diplomatic transcriptions](http://lombardpress.org/schema/docs/diplomatic/).

Such a thing could look like this (in excerpts, see the full file at
https://github.com/mldac/da-49-l1q1/blob/master/bal311_da-49-l1q1.xml)

```xml
<?xml version="1.0" encoding="UTF-8"?>
<TEI xmlns="http://www.tei-c.org/ns/1.0" xmlns:xi="http://www.w3.org/2001/XInclude">
  <teiHeader>
    <!-- Lots of header meta data goes here -->
  </teiHeader>
  <text xml:lang="la" type="diplomatic">
    <front>
      <div type="starts-on">
        <pb n="148-v" ed="#B"/><cb n="a"/>
      </div>
    </front>
    <body>
      <div xml:id="bal311_da-49-l1q1">
        <head><suppplied>Quaestio 1</suppplied></head>
        <note place="marginLeft">Questio</note>
        <p xml:id="bal311_da-49-l1q1-sdfl1o">
          Queratur
          <lb ed="#B"/> nunc primo utrum de anima possit nobis adquiri sciencia. Videtur quod non.
        </p>
        <p xml:id="bal311_da-49-l1q1-sf02lg">
          <note place="marginLeft">Argumentum</note>
          Illud
          <lb ed="#B"/> de quo est sciencia est intelligibile, quia cum sciencia sit habitus intellectus
          <lb ed="#B"/> de quo est sciencia, oportet esse intelligibile; sed anima non est intelligibile,
          <lb ed="#B"/> quia omnis nostra cognicio ortum habet a sensu, quia nihil intelligimus sine
          <lb ed="#B"/> fantasmate, sed anima sub sensu non cadit, nec fantasma facit. Ergo et cetera.
        </p>
        <!-- Much more content follows here -->
    </body>
  </text>
```

These are the first couple of lines of the same text as above, just in the
diplomatic format, which is a bit closer to the source. Notice especially how
linebreaks are indicated with `<lb>`, and the text is therefore not wrapped in
equal length lines. The orthography here is also not regularized (regularisation
choices are up to the editor, but LBP-schema *does* provide facilities for
giving original and regularized text in tandem for later processing).

Notice also the `<note>` element in the `<front>` element indicating where the
transcription starts. That is also available on critical files.

One or more files of this type can be created. They will reflect the content of
the witnesses more closely than what is encoded in the critical files. This
means that different levels of detail can be provided in the different
transcription types.

#### A critical file

These diplomatic transcriptions can then be collated in order to establish the
critical text (similar to the one already shown an excerpt of above). We are
working on solutions that can assist during the collation process. See an early
stage example of a script that might be helpful
here:
[https://github.com/stenskjaer/collator](https://github.com/stenskjaer/collator).
To get an idea of how a full critical file can look like,
see
[this example](https://github.com/mldac/da-49-l1q1/blob/master/da-49-l1q1.xml).

But when it comes down to it, collation is still a painstaking process of
comparing two or more versions of a texts. Even if you use the script mentioned
above, we have not yet found a solution that lets the computer do the hard work
of figuring out exactly how the different witnesses differ.

A possible low level workflow could simply be:
1. Copy the content of the diplomatic transcription of the witness you have
   taken a particular liking to.
2. Format it as a critical document by removing linebreaks and maybe changing
   the format of punctuation marks.
3. Open up a diplomatic transcription of another witness and start comparing the
   two.
4. As soon as you spot a difference, make an `<app>` note and register the
   readings.

At this level you will need a very good idea of the possibilities the critical
Lombard Press Schema gives you. Have the documentation open at all
times:
[http://lombardpress.org/schema/docs/critical/](http://lombardpress.org/schema/docs/critical/).

Depending on the complexity of you text and the amount of witnesses, this can
take a while. But at some point you will arrive at what you consider a critical
version of the text. At this level you will also have made indications for
references to authorities, cross-references in the text and other similar things
that often won't be in place in the diplomatic transcriptions.

#### Creating reader friendly output

Although the XML files technically can be read, it could be better. To convert
XML to another format we can use a so-called XSLT script. The XSLT script is a
general description of how any relevant elements of the XML document should be
represented in the new format. This way we can convert our XML document into a
HTML document (for a website), a TeX file (for creating a PDF) or even another
XML file for some other specified purpose.

As part of our efforts for creating a good workflow for creating digital
editions, we have made a web service where you can upload your transcriptions,
push a button and get an idea of how it might look like in a PDF.
Visit [http://print.lombardpress.org/](http://print.lombardpress.org/) to see it
in action.

Some words of introduction: The script can also handle text items registered in
the SCTA database. If you just want to test your own local encodings, you can
upload your XML files. If you want, you can also upload your own XSLT script,
but the default script used by the service can also give you a good idea of a
possible output. The service is pretty young (consider it an early beta
version), so if you experience any problems or unexpected results, please let us
know by submitting
a [issue report](https://github.com/stenskjaer/lbp_print-web-app/issues).

To test it now, try running it with the *remote* choice selected and paste in
`http://scta.info/resource/lectio1` into the SCTA id field, select *PDF* in
stead of *TeX* and run the service.

If you feel like experimenting with the same script on your local machine, you
can install and use the [lbp_print](https://github.com/stenskjaer/lbp_print)
script on your computer. This will require a bit more tech fu, but it should be
doable.
Please [report any problems](https://github.com/stenskjaer/lbp_print/issues) or
errors with it, or just if you have a question.


## What now?

This has been a conceptual presentation of some of the elements of creating a
critical (or diplomatic) edition with the Lombard Press approach.

Now, to really get started, you want to really get familiar with the schema
guidelines. You should read through both these guidelines:
- [http://lombardpress.org/schema/docs/critical/](http://lombardpress.org/schema/docs/critical/)
- [http://lombardpress.org/schema/docs/diplomatic/](http://lombardpress.org/schema/docs/diplomatic/)

You should probably also get familiar with some of the concepts of the bigger
XML TEI schema. A good starting point can be
the [TEI by example tutorials](http://teibyexample.org/). As you get further
along the [TEI guidelines](http://www.tei-c.org/release/doc/tei-p5-doc/en/html/)
will be very helpful.

As you read these, you can start your own transcriptions as soon as you feel
like it. The best way to learn this is just to get started!

If you wan't to know more about some of the background and ontology of the SCTA
database, see:
- [A SCTA modeling proposal](http://lombardpress.org/2016/06/12/scta-modeling-proposal/)
- [Linking Research, the SCTA, LombardPress, and LinkedData Notifications](http://lombardpress.org/2017/01/24/linking-research/)
- [Digital Scholarly Editions and API Consuming Applications](http://lombardpress.org/2016/11/02/dse-and-api-consuming-applications/)

## Most important: Join the community!

If you are interested in any of
this, [join our Slack channel](https://scta-team.signup.team/), we would love to
have you with! Questions are very welcome and they are generally answered pretty
quickly.

If you are working on anything related to scholasticism broadly conceived, we
invite your contributions. Whatever level you are at, whatever you're working on
— if you're willing to learn new research methods and editing tools -- there is
a way for you to contribute.

Once a month the Lombard Press and SCTA affiliated editors have a community
meeting on the first Tuesday of every month at 12pm PST, 3pm EST, 7pm UTC, 8pm
CET. The call is an opportunity for the community to share work, show demos, and
coordinate future development. THe call is open to everyone. If you're just
getting started or just curious, please join the call.

Here's the call link: [talky.io/scta](http://talky.io/scta)

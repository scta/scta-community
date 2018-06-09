---
layout: post
title:  Contributing Transcriptions to the SCTA
date:   2017-10-20
author: Jeffrey C. Witt
category: tutorial
---

If you want to transcribe a text that can be aggregated by the SCTA,
you need to follow some basic rules.

## 1. First you need to fork the corresponding SCTA Text Directory

A list of SCTA text directories can be found at [http://github.com/scta-texts](http://github.com/scta-texts)

If you're not familiar with GIT, you can use the TEI-WEB-EDITOR [https://tei-web-editor.herokuapp.com/](https://tei-web-editor.herokuapp.com/) to simplify things. Log in with your github credentials. Click the Open icon, and add the url of the repo you want to fork in the filed titled, "Fork another repository".

## 2. Second, you need to understand the structure of an SCTA directory.

Each sub-directory in a text repo corresponds to a resource in the SCTA database.
The resource can be dereferenced at http://scta.info/resource/<resource_short_id>.
The `resource_short_id` corresponds to the name of the subdirectory.

Each sub-directory / resource refers to a smaller section of the larger text.

Find the section of the text your interested in and open that sub-directory.

## 3. Third, create a properly named file.

Each resource can have several transcriptions: diplomatic transcriptions of different witnesses, translations transcriptions, and critical transcriptions.

The default canonical transcription will have the same name as the sub-directory in which it lives.

So if you've forked a repo, and you want to add the first transcription to a sub-folder titled "question1", you should make a file called question1.xml.

If you want to make a diplomatic transcription of a particular witness, you can make a file with the slug of the witness as a prefix. For example, "clm26711_question1.xml".

These are simply the default file name patterns. All of them can be over-written
in a separate file called a "transcriptions.xml" file. (We'll be adding another article about the transcriptions file later.)

## 4. Fourth, start transcribing follow the LombardPress-Schema Guidelines

See [http://lombardpress.org/schema/docs/](http://lombardpress.org/schema/docs/)

In many cases, a file called template.xml will already be populated in each sub-directory. Use this file as a template to get started, but make sure to rename it properly as stated above.

## 5. Submit a pull request at any time.

At any time you can submit a pull request for your transcription to be approved by the SCTA community and aggregated by the SCTA crawler.

Again, if you're using the TEI Web Editor [https://tei-web-editor.herokuapp.com](https://tei-web-editor.herokuapp.com), you can simply hit the pull-request icon and submit your changes directly to github.

## Further help

Remember the community is here to help. If you get stuck at any point, post a question to the community discussion board and someone will be sure to help. [https://groups.google.com/forum/#!forum/scholastic-commentaries-and-texts-archive](https://groups.google.com/forum/#!forum/scholastic-commentaries-and-texts-archive)

---
layout: post
title:  Bringing together the Adam Wodeham Corpus with IIIF and Participating IIIF institutions
date:   2018-06-08
author: Jeffrey C. Witt
category: blog
---

[The international image interoperability framework (IIIF)](http://scta.info) creates the potential for amazing trans-institutional collections and seamless user experiences: experiences that are the result of real time aggregation of data sets produced by institutions, librarians, and researchers scattered through the world.

While IIIF creates this potential, it is only actualized through the additional hard work of institutions to build the systems and infrastructures needed to deliver their content according to the stipulations of the IIIF specification.

In this post I want to say thank you to the [Bibliothèque Mazarine](http://mazarinum.bibliotheque-mazarine.fr/), the [Bibliothèque de la Sorbonne](http://www.bibliotheque.sorbonne.fr/biu/), and the [Vatican Library](https://digi.vatlib.it/) for this work and to point to a great example of how their efforts can be used to create new possibilities for scholarship.

Adam Wodeham's *Ordinatio* is an incredibly important text to the history of philosophy and theology. Today, efforts are underway to make that text available at every dimension of the editorial process, from critical edition, to diplomatic transcriptions, to easy consultation of manuscript images.

Until now, the four manuscripts of this text have been scattered throughout the world. To consult them, one needed to travel from Spain to France to Rome.

With the aid of IIIF and participating institutions, we have been able to bring all these of these witness together in a single viewer, to consult and compare side by side. Moreover, through the on-going efforts of the [Scholastic Commentaries and Texts Archive](http://scta.info) and contributing editors, we are able to bring alongside these images supplemental material such as navigational aids and diplomatic transcriptions to enhance the viewing experience.

Below is a screen shot of these four manuscripts brought together in the Mirador Viewer.

![mirador-with-four-msw](/assets/images/mirador-with-four-mss.png)

![mirador-with-four-mss2](/assets/images/mirador-with-four-mss2.png)

You can experience this for your self here: [http://mirador.scta.info/?resourceid=wodehamordinatio](http://mirador.scta.info/?resourceid=wodehamordinatio)

Leveraging the power of Linked Data, the SCTA is able to connect additional scholarly data to these images, detailed tables of contents and diplomatic transcriptions that enrich the viewing experience of these images.

![maz-sorb-toc](/assets/images/maz-sorb-toc.png)

![maz-transcription](/assets/images/maz-transcriptions.png)

This data can also be re-used and re-combined in other viewers, such as the text focused LombardPress Viewer

![maz-lbp](/assets/images/maz-lbp-example.png)
![sorb-lbp](/assets/images/sorb-lbp.png)

You can view this yourself at: [http://scta.lombardpress.org/b1-d3-qun](http://scta.lombardpress.org/b1-d3-qun)

Finally, using Linked Data Notifications and the [Mirador LDN Plugin]((https://github.com/jeffreycwitt/mirador-ldn-plugin)), institutions that make these images available, can allow their users to choose to import SCTA content into their viewing experience.

![maz-lbp](/assets/images/sorb-notification.png)
![sorb-lbp](/assets/images/sorb-ldn-imported.png)

To learn more about IIIF and Linked Data Notifications, see [https://github.com/jeffreycwitt/mirador-ldn-plugin](https://github.com/jeffreycwitt/mirador-ldn-plugin)

Again, special thanks are due to the [Bibliothèque Mazarine](http://mazarinum.bibliotheque-mazarine.fr/), the [Bibliothèque de la Sorbonne](http://www.bibliotheque.sorbonne.fr/biu/) and the [Vatican Library](https://digi.vatlib.it/) for digitizing these manuscripts and making them available via IIIF. Without the efforts of these institutions and the individuals working there, the promise of IIIF would remain a mere potentiality. Thanks also to Régis Robineau at Biblissima for helping facilitating contact with the Mazarine and Sorbonne libraries and his work on the Mirador-LDN plugin.

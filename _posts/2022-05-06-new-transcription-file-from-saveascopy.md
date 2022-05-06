---
layout: post
title:  Tutorial Document Creating a New Github File from the Venice Manuscript
date:   2022-05-06
author: Kat Vander Ahe
category: tutorial
---

# Instructions
* Go to Visual Studio Code
* Open Up the Venice Manuscript File for the Rubric File you want 
  * Venice Code is cod-pu6y7
* Command Shift S
  * then Rename the file with the code for the manuscript you want
  * Rename the file as 
    * _bHY6yh with the corresponding number 
    * Save it 
* Open the file you edit; you will need to edit these aspects right away, keep the tags as 
they are, `<tag/>`
* Edit the title to include the manuscript you are using
  * `<title>Rubrica 3</title>`
  * When it was edited it should look something like this, but with the corresponding 
title to your manuscripts 
    * `<title>Rubrica 3 [Krakow, lat 700 III Transcription]</title>`
* The Name block
  * Add your own name to the list of contributors, like so
  
```
<respStmt>
   <name ref="#jeffreycwitt">Jeffrey C. Witt</name>
   <resp>Transcription Editor</resp>
   <resp>TEI Encoder</resp>
</respStmt>
<respStmt>
  <name>Katrina Vander Ahe</name>
  <resp>Transcription Editor</resp>
  <resp>TEI Encoder</resp>
</respStmt>
```
* Edit the title again, 

```
<title>Rubrica 3</title>
<date when="2021-05-18">May 18, 2021</date>
```

* Should like this 

```
<title>Rubrica 3 [Krakow, lat 700 III Transcription]</title>
<date when="2021-05-18">May 5, 2022</date>
```

* Edit the witness 

```
<listWit>
<witness xml:id="V" n="cod-pu6y7d">Venice 1505</witness>
</listWit>
```

* New Witness should reflect the new manuscript

```
<listWit>
<witness xml:id="K" n="cod-pu6y7d">Krakow, Biblioteka Jagiellonska, MS lat. 700 III (CC.VIII.25)</witness>
</listWit>
```
* Edit page number and column to reflect where the rubric starts in the new manuscript, 
  * This will also effect the ed="#V", in your line breaks as the letter will need to change to reflect the new manuscript

```
<div xml:id="starts-on">
<pb ed="#V" n="1-v"/>
<cb ed="#V" n="a"/>
```

* The new page number and column should look like this 

```
<pb ed="#K" n="7-r"/>
<cb ed="#K" n="b"/>
```

* Next to edit the line breaks
  * These will vary from manuscript to and as such, the existing line breaks will need 
to be removed. 
  * Go into finder and select Find, command F
    * Input this code `<lb ed=”#V” [^/]*/>`
    * Leave the Replace section blank and select the highlighted (in the picture) button to clear all line breaks. 

![image]({{site.assets_url}}searchExample1.png)

* Next, remove slashes and pilcrows, as they may appear in different places in the new 
manuscript. 
  * Just follow this photo to remove slashes and repeat the same process with the 
    * Be very careful with slash. We only want to delete the virgula ("/") in the text. No the slashes in any of the XML. If you can do this with "find and replace" great. But if you cannot do this without affecting the XML, it will be better to do this by hand.

![image]({{site.assets_url}}searchExample2.png)

  * Search for the pilcrow without the bracket included and replace.

![image]({{site.assets_url}}searchExample3.png)

* By doing all of this, the file should be ready to use
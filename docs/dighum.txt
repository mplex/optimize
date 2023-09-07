
.. _dighum:


|


*****************
Digital humaniora
*****************

Brugen af ​​digitale teknologier til at forfølge forskningsspørgsmål inden for humaniora.


|


Data for humaniora
==================

1) Dokumentmarkeringssprog

   - *ConTeXt* en TeX-makropakke, der har en renere grænseflade til at kontrollere typografien af ​​dokumentet, samtidig med at LaTeX's strukturorienterede tilgang bibeholdes

     - med adskillelse af indhold og præsentation kan den formatere XML-tekst, ...

   - *EAD* (Encoded Archival Description)

     - …

2) Citation

   - Arts and Humanities Citation Index (AHCI)

     - Maskinlæsbar bibliografisk post - MARC, RIS, BibTeX

   - Geospatiale/geografiske data

     - GeoJSON er et geospatialt dataudvekslingsformat baseret på JavaScript Object Notation (JSON).

     - Leaflet er et open source JavaScript-bibliotek til mobilvenlige, interaktive kort på tværs af browsere.

   - En Web Map Service (WMS) er en standardprotokol til visning af georeferencede kortbilleder over internettet, der genereres af en kortserver ved hjælp af data fra en GIS-database.

     - Se også Web Feature Service (WFS)

|


.. index:: Dataformater


Dataformater
============

Data kan gemmes i forskellige formater.

JSON struktur
-------------

**JSON** står for *JavaScript Object Notation* og er baseret på JavaScript-programmeringssprogstandarden ECMA-262.

``JSON`` er bygget på to strukturer, nemlig en samling af navn/værdi-par og en ordnet liste over værdier. 

En JSON-struktur ser sådan ud:

    .. code-block:: 
    
        Object {
                Identifier: Value
                Identifier: Array [
                   Object {
                           Identifier: Value
                  }
                ]
        }


Hvor an ``Identifier`` er afgrænset af anførselstegn, og a ``Value`` kan være en ``string``, en ``number``, ``"true"``, ``"false"``, ``"null"``, 
eller en Array eller en anden JSON Object som ovenstående eksempel.


JSON i R
++++++++

Nogle R-pakker til at læse JSON-filer i CRAN er

* ``rjson`` v0.1.0 udgivet den 30. juli 2007

* ``RJSONIO`` v0.3-1 udgivet den 4. oktober 2010

* ``jsonlite`` v0.9.0 udgivet den 3. december 2013


|

.. index:: eXtensible Markup Language (XML)

eXtensible Markup Language
--------------------------

    .. todo::  eXtensible Markup Language (**XML**) struktur


|

.. index:: Lightweight markup languages


Lightweight markup languages
----------------------------

*Lightweight markup languages* eller letvægts markup-sprog er til fremstilling af dokumentation på nettet.

|

.. index:: Markdown

Markdown
--------

Markdown (**MD**), med suffikser ``.md``, ``.Rmd`` osv., er i øjeblikket opmærkningssproget for GitHub, og derfor meget populært blandt udviklere, der bruger denne platform. 
Populariteten af ​​dette format til at skrive til nettet udfordrer dog dets konsistens og robusthed, og i dag er der flere varianter af MD:

    * Grundlæggende og syntaks for **"Gruber Markdown"** er på `skaberens webside <https://daringfireball.net/projects/markdown/>`_

    * **CommonMark** er en udvidelse af Gruber Markdown af brugere, herunder repræsentanter fra GitHub, Stack Exchange og Reddit, og derfor i dag "de facto" standard på nettet.

    * **Github Flavored Markdown** eller **GFM** er et supersæt af CommonMark med Github-specifikke udvidelser på syntaksfunktioner.

    * Andre varianter af Markdown inkluderer MultiMarkdown , Markdown Extra , CriticMarkup , Ghost Markdown og andre ...

|

.. index:: reStructuredText

reStructuredText
----------------

reStructuredText (**RST**) er skrevet med suffikset ``.rst`` eller ``.txt`` siden er almindelig tekst, som bruger enkle og intuitive konstruktioner til at strukturere kompleks teknisk dokumentation. Her betyder "kompleks" ting som indeksering, ordlister osv.

En væsentlig nyskabelse ved Markdown var brugen af ​​overskrifter og fortolket tekst. Et skridt videre af ``RST`` i forhold til ``MD`` er brugen af ​​*direktiver* og *specialiserede roller*. 
For eksempel tillader disse funktioner reStructuredText gengivelse af tekst og matematiske formler direkte i ``LaTeX``-format.

Direktivsyntaksen i RST er

    .. code-block:: 
    
        .. directive-type:: directive
        block

og en illustration af en standard og specialiseret rolle er

    .. code-block:: 
    
        *emphasis* as standard role
        :title:*emphasis* with explicit role

hvor (de fleste) standardroller er fælles for fortolket tekst i ``MD`` og ``RST``.

For at kunne producere en dokumentation, enten i ``HTML`` eller i ``LaTeX``, skal reStructuredText have en *builder*, som er et program, der konverterer RST-kildekoden til det ønskede format.

Populære bygherrer er Pythonpakken ``docutils`` med forskellige muligheder:


    .. code-block:: 
    
        prompt> ./rst2html.py text.rst > text.html
        prompt> ./rst2latex.py text.rst > text.tex


hvor RST-kilder er i en kildemappe ``source`` og konstruktioner går ind i en ``build`` mappe.

Et andet alternativ er ``Sphinx`` at konstruere API-dokumentationen med de to mapper og udføre transformationen bagefter.

    .. code-block:: 
    
        prompt> ./sphinx-build [options] html source build
        prompt> ./sphinx-build [options] latex source build

|

.. index:: TeX
.. index:: LaTeX


TeX og LaTeX
-------------

Først udgivet i 1978, ``TeX`` er et format, der tillader sætning af komplekse matematiske formler. 
``TeX`` er også motoren eller programmet, der udfører sætningen.

``LaTeX`` er et generaliseret sæt makroer bygget ovenpå ``TeX`` for at tage sig af indholdet af dokumentet.

     .. todo::  ``TeX``  struktur

|

osv


|


.. meta::
   :description: Digitale teknologier til humaniora
   :keywords: digital-humaniora, dokumentation, data-formater


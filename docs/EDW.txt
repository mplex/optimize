
.. _VIADW:

|

**************************
Eksisterende Datawarehouse
**************************

|

Todelt arkitektur
=================

En todelt arkitektur i et Data Warehouse (:abbr:`DW (Data Warehouse)`) beskriver et dataflow i fire trin:
kilde, iscenesættelse, lager og rapportering.

|

Datakilder
----------

Kildelaget er lavet af transaktionsdatabaser (:abbr:`DB (Database)`'er).


Iscenesættelse af data
++++++++++++++++++++++

Et centralt aspekt i det midlertidige lag er en :abbr:`ETL (Udvinding, transformering og belastning)`-proces, hvor ETL-job (Extraction, Transform, and Load) oprettes til specifikke opgaver.


Oplagring
+++++++++

DW er kernetrinnet i Data Warehousing-processen , hvor metadata skal følge databaseoprettelser.
DW bruger Online Analytical Processing (:abbr:`OLAP (Online analytisk behandling)`), hvor "online" betyder "interaktiv".


Analyse
+++++++

Inden for Business Intelligence (:abbr:`BI (Business Intelligence)`) omfatter analysefasen rapportering, data mining, OLAP-værktøjer osv.


|


DW Microsoft-løsninger
======================

Ud over :abbr:`IDE (Interaktivt udviklingsmiljø)`-studiet (Interactive Development Environment) er™ andre Microsoft-løsninger  i det lokale miljø i DW til ETL-processen  og til rapportering henholdsvis  SQL Server Integration Services (:abbr:`SSIS (SQL Server Integration Services™)`) og SQL Server Reporting Services™ (:abbr:`SSRS (SQL Server Reporting Services™)`). 


|


Rapportering
============

Rapportering foretages først  med Qlik Sense™, der er integreret med R gennem Transmission Control Protocol / Internet Protocol (:abbr:`TCP/IP (Transmission Control Protocol/Internet Protocol)`).

|

Grænseflade R/S med en relationsdatabase
----------------------------------------

Interfacing  R med to Relational Database Management System (:abbr:`DBMS (Database Management System)`) er lavet med eksempel ``DBIObject`` af  R-pakken ``DBI``, som vedrører objekter ``DBIDriver``, ``DBIConnection``, ``DBIResult``. 


Identifiers
+++++++++++

    .. todo::  Identifiers

Qlik Sense og R-integration
---------------------------
Komponenterne er Rserve, Qlik Sense™ og et SSE-R-plugin (Server-Side Extension). 


|

.. |reST| replace:: reStructuredText


|

********
Ordliste
********

.. glossary::

    Sphinx
      Sphinx is a tool that makes it easy to create intelligent and beautiful documentation. It was originally created for the Python documentation, and it has excellent facilities for the documentation of software projects in a range of languages.

    reST
      |reST| is an easy-to-read, what-you-see-is-what-you-get plain text markup syntax and parser system. It is useful for in-line program documentation (such as Python docstrings), for quickly creating simple web pages, and for standalone documents. |reST| is designed for extensibility for specific application domains. The |reST| parser is a component of Docutils.

    Datalagring
      en metode til indsamling og analyse af data fra forskellige kilder for at opnå en nyttig indsigt.

    ETL-proces
      henviser til udtrækning, transformering og indlæsning af data.

    OLAP-værktøj
      henviser til en datamodel til at analysere flerdimensionelle data interaktivt fra flere perspektiver.

    Qlik Sense™
      et værktøj til sonderende dataanalyse og visualisering.

    Rserve
      en TCP/IP-server, der gør det muligt for andre programmer at bruge  R uden at initialisere en separat  R-proces eller sammenkæde med et  R-bibliotek.

    SQL Server Management Studio™
      en IDE til konfiguration, administration og administration af Microsoft SQL Server™.


|


.. Akronymer

.. :abbr:`RDBMS (Relationelt databasestyringssystem)`
.. :abbr:`SSE (Udvidelse på serversiden)`





.. meta::
   :description: Eksisterende Datawarehouse på VIA
   :keywords: datawarehouse, dokumentation, rapportering


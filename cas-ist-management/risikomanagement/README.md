# Risikomanagement

## Praktisches Risikomodell

![](../../.gitbook/assets/image%20%2827%29.png)

* Bei Projekten gibt es ein anderes Dreieck: Qualität = Scope + Termin + Kosten
* Bsp. Feuer Wien:
  * Bedrohungsereignis: Ursachengmässes anzünden
  * Bedrohungsquelle: Feuer

[Englische Risiko-Begriffe am Risiko-Modell](grundlegende-risikobegriffe.md)

## Risiko-Portfolio mit Akzeptanzlinie in Risk-Map

![](../../.gitbook/assets/image%20%2823%29.png)

## 27005 / Prozess für Risikomanagement der Informationssicherheit

![](../../.gitbook/assets/image%20%288%29.png)

### Kontext-Definition

* Enthält Gegenstand, Zweck, Absichten, Ziele, Anwendungsbereich und relevante Einflüsse, Randbedingungen und Abgrenzungen aus externer und interner Sicht
  * Inhalte \(z.B. Assets\) und Abgrenzungen
  * wichtige Ziele der Geschäfts- und Support-Prozesse
  * „Risiko- und Sicherheitspolitik“ für wichtigste Kontext- Elemente
  * für wen stehen Risiken zur Behandlung an und für wen/was wird das Risiko-Management durchgeführt \(z.B. Anspruchsgruppen\)?
  * Für das Risikomanagement massgeblichen Führungs- Aspekte, organisatorische Festlegungen und Verantwortlichkeiten sowie Berichtserstattungs- und Eskalations-Wege
  * Gesetzliche, regulatorische und vertragliche Anforderungen
  * Risiko-Arten und System-Ziele \(z.B. Prozessrisiken, Verfügbarkeits- und Integritätsanforderungen\)
  *  Schnittstellen zum Corporate Risikomanagement \(z.B. Op-Risk\)
  * Anzuwendender Risiko-Management-Ansatz
    * Bewertungskriterien und –massstäbe \(z.B. Risiko-Matrix,

      Risiko-Akzeptanz, Dringlichkeitsstufe\)

    * Impact-Kriterien \(Schadensmetrik\)
  * Akzeptanzkriterien \(z.B. Akzeptanzlinie\)
  * Dokumentationsvorgaben

### Risiko-Identifikation

Risiko-Objekte so definieren, granularisieren und logisch ordnen, wie sich die Bedrohungen auf Risiko-Objekte auswirken

* Erfassung der Assets \(Risiko-Objekte\)
* Erfassung der Bedrohungen \(Bedrohungsquellen und mögliche Bedrohungsereignisse\) und Aufsuchen bereits existierender Massnahmen
* Identifikation der vorhandenen Vulnerabilities \(Schwachstellen\)
* Erfassung relevanter Abhängigkeiten und Kausalketten \(Ursachen/Wirkungen und Konsequenzen\) von Bedrohungsereignissen

### Risiko-Analyse

* Bestimmung der Höhe von Häufigkeit, Schadensausmass \(Schadensfolgen\) und Risiko
  * **Qualitative** oder **quantitative** Risiko-Analyse
  * Semi-quantitative Analyse
* Teil-Analysen:
  * Bedrohungs-Analyse \(Analyse der relevanten Bedrohungen\)
  * Schwächen-Analyse \(Analyse der relevanten Schwachstellen\)
  * Impact-Analyse \(Analyse der potentiellen Schäden\)
  * Beliebige Kombination der Analysen 1 bis 3

#### Beispiel: Szenario-Analyse

* Risiko-Szenario = Übergang von einer Bredrohung zu einem schlagenden Riskiko
* Szenario wird als "Drehbuch für ungünstige Entwicklungen" definiert
* Beinhaltet "Wenn-Dann-Fragen"
* Befragung von Experten
* Fragenbeispiele:
  * Was sind die Impacts des Szenarios?
  * Durch welche Ursachen wird das Szenario ausgelöst?
  * Wie entwickelt sich das Schadensszenario \(plötzlich oder schleichend\)?
  * Wie häufig tritt das Schadensszenario ein?
  * Wie gross ist der erwartete Verlust des Schadensszenarios?
  * Wie hoch ist der Verlust, der nur in einem von 20 Ereignissen \(d.h. 5 %\) der Fälle überschritten wird \(Konfidenzniveau 95 %\)
  * Wie hoch ist der "Worst-Case-Verlust"?

### Risiko-Bewertung

* Bewertung des ermittelten Risikos im Kontext des Betrachtung-Gegenstands, Vergleich mit den im Kontext definierten Kriterien, z.B. Risiko-Toleranz, Akzeptanz- Kriterien
* Risiko-Wahrnehmung der Umgebung und des Managements einbeziehen
* Einbezug der für die Massnahmen relevanten zusätzlichen Anforderungen, z.B. vertragliche, gesetzliche, regulatorische Anforderungen, Standards, Qualitäts- und Leistungsanforderungen, Zeit- und Kostenbeschränkungen
* Risiken / Chancen abwägen hinsichtlich Optimum bei der Wahl der Massnahmen
* Reduktion Häufigkeit oder Schadensausmass bei der Risiko-Behandlung?
* Risiken mit Behandlungsprioritäten und anderen Attributen versehen \(z.B. „wichtig“, „dringlich“ oder „beobachten“\)
* Entscheide treffen über eine allenfalls notwendige Nachbesserung der Assessment- Ergebnisse

![](../../.gitbook/assets/image%20%2814%29.png)

### Risiko-Behandlung

* Berücksichtigung der Anforderungen an Massnahmen
* Behandlungs-Optionen-Wahl:
  * Risiken **vermeiden**, z.B. durch Aufgabe
  * Risiken **reduzieren**, durch Reduktion entweder der Eintritts-Wahrscheinlichkeit oder des Schadensausmasses
  * Risiken **transferieren**, z.B. Überwälzung finanzieller Schäden auf Versicherungen
  * Risiken **bewusst eingehen** und tragen, z.B. Tragen des Restrisikos, welches im Rahmen der betrieblichen Reserven und eines allfälligen Goodwill-Verlusts verkraftbar ist
* Auswahl von generischen Massnahmen mit Hilfe von ISO/IEC 27002:2013
* Untersuchung der Machbarkeit fraglicher Massnahmen
* Abwägen Risiken mit Massnahmenkosten \(u.a. Kosten-/Nutzen-Untersuchungen\)
* Erstellung Behandlungsplan

### Risiko-Akzeptanz

* Behandlungsplan \(mit Verantwortlichkeiten und Terminen\) sowie Restrisiko-Einschätzung müssen durch das zuständige Management formal akzeptiert sein
* Restrisiken, die nach der Behandlung die Akzeptanz-Kriterien nicht erfüllen, müssen schriftlich begründet und durch das zuständige Management schriftlich zur Kenntnis genommen und akzeptiert werden.
* Massnahmen-Überwachung, Massnahmen-Überprüfung, ggf. erneute Risiko-Einschätzung und –Bewertung aufgrund veränderter Situation
* Wiederholung, z.B. im Rahmen eines jährlichen Risikoberichts \(z.B. synchron zum rollierenden Strategieprozess\)

### Risiko Kommunikation und Konsultation

* Kommunikation mit Beteiligten und Betroffenen \(z.B. Anspruchsgruppen\)
* Dem Verständnis der Thematik angemessene Kommunikation unter Fachpersonen, Experten, Entscheidungsträgern und Anspruchsgruppen
* Berücksichtigung der Risiko-Wahrnehmung Stärkung des Risiko-Bewusstseins
* Einsatz „stark strukturierter“ Kommunikationsformen
* Kommunikations-Konzept für Risiko- Kommunikation im Normalbetrieb, für risikorelevante Ereignisse und in Notfallsituationen

### Risiko Überwachung und Überprüfung

* Überwachen der Abwicklung des Risiko- management-Prozesses und der Risiko- Situation \(z.B. Überwachung der Aufgabenzuteilung und termin- und sachgerechten Aufgabenerledigung\)
* Risiko-Überwachung mit Risiko-Indikatoren und mit Frühwarnsystem
* Registrierung der Veränderungen von Kontext und Risikosituation
* Verbesserungs-Empfehlungen hinsichtlich Risikomanagement sowie hinsichtlich der aktuellen und der zukünftigen Risiko- Situation
* Überprüfung durch unabhängige Auditoren
* Verifikation anhand Reifegradmodell und/

  oder einer Prozessfähigkeits-Beurteilung

* Risiko-Berichte
* Unabhängigkeit der Berichterstattung








# Vorgehen: Grundschutz

### Bemerkungen

* Keine Unterscheidung zw. Gefahren und Schwachstellen
* Empfehlungscharakter, keine Gesetze
* Keine Garantie auf Vollständigkeit
* Massnahmen müssen individuell angepasst und angewandt werden

### Anwendungsweisen

* Strukturanalyse
* Schutzbedarfsfeststellung
* Basis Sicherheits-Check
* Ergänzende Sicherheitsanalyse
* Umsetzung von IT-Sicherheitskonzepten
* Qualifizierung / Zertifizierung nach IT-Grundschutz

### Grundregeln zur Anwendung des Grundschutzkatalogs

* Initiative für IT-Sicherheit geht vom Management aus.
* Verantwortung für IT-Sicherheit liegt beim Management.
* Management muss um IT-Sicherheit bemüht sein, damit die Aufgabe wahrgenommen wird

### IT-Sicherheitskonzeption

![](../.gitbook/assets/image%20%2817%29.png)

## IT-Strukturanalyse

### Netzplanerhebung

* Auswertung eines Netzplans
* Aktualisierung des Netzplans

### Komplexitätsreduktion

* Gleichartige Komponenten zu einer Gruppe zusammenfassen
* Eindeutige Bezeichnungen verwenden

### Erhebung der IT-Systeme

* Vorhandene und geplante IT-Systeme zusammenstellen
* Tabellarische Darstellung empfohlen
* Eindeutige Bezeichnung, Beschreibung, Plattform, Standort, Anzahl, Status, Benutzer / Admin

Bsp. Ab S. 11 BSI Schulung

### Erhebung der IT-Anwendungen

* Erfassung der wichtigsten Anwendungen
* Konzentration auf Systeme mit
  * höchsten Bedarf an Vertraulichkeit
  * höchsten Bedarf an Korrektheit \(Integrität\)
  * kürzeste tolerierbare Ausfalldauer \(Verfügbarkeit\)

Bsp. Ab S. 13 BSI Schulung

## Schutzbedarfsfeststellung

* Begründete und nachvollziehbare Einschätzung des Schutzbedarfs
* Ziel: angemessene Sicherheitsmassnahmen für die verschiedenen IT-Komponenten

### Vorgehen

* Definieren und individualisieren der Schutzbedarfskategorien \(z.B. Niedrig bis mittel, hoch, sehr hoch\)
* Schutzbedarfsfeststellung der in Strukturanalyse erfassten Anwendungen
* Ableiten Schutzbedarf der IT-Systeme
* Feststellen Schutzbedarf Kommunikationsverbindungen
* Dokumentieren und interpretieren der Ergebnisse

### Individualisierung der Schutzbedarfskategorien

* Individualisierung anhand von typischen Schadenszenarien
  * Beeinträchtigung des informationellen Selbstbestimmungsrechts
  * Beeinträchtigung der Aufgabenerfüllung
  * Negative Aussenwirkung \(Imageschäden\)
  * Finanzielle Auswirkungen

### Schutzbedarf IT-Anwendungen

Zuordnung zu den zuvor festgelegten Schutzbedarfskategorien für alle in der IT-Strukturanalyse erfassten Anwendungen, differenziert nach den drei Grundwerten Vertraulichkeit, Integrität und Verfügbarkeit \(Bsp. Ab S. 17 BSI Schulung\).

### Schutzbedarf IT-Systeme

Der Schutzbedarf eines IT-Systems hängt im Wesentlichen von dem Schutzbedarf derjenigen Anwendung ab, für deren Ausführung es benötigt wird. Der Schutzbedarf der Anwendung vererbt sich auf den Schutzbedarf des IT-Systems. Dabei lassen sich folgende Fälle unterscheiden:

* Maximumprinzip
  * Summe der Schäden der relevanten IT-Anwendungen
* Abhängigkeiten
  * Vernetzung und Schnittstellen zwischen IT-Anwendungen
* Kumulation
  * Der Schäden wenn mehrere IT-Anwendungen auf demselben System laufen
* Verteilungseffekt
  * Bei redundanter Auslegung von IT-Systemen

Bsp. Ab S. 21 BSI Schulung

### Schutzbedarf Kommunikationsverbindungen

Als kritische Verbindungen gelten:

* Verbindungen in ein öffentliches Netz
* Verbindungen mit besonders schützenswerten Informationen
* Verbindungen, über die vertrauliche Informationen überhaupt nicht übertragen werden dürfen

Bsp. Ab S. 27 BSI Schulung

### Schutzbedarf IT-Räume

Betrifft Räume

* Die zum Betrieb von IT-Systemen dienen \(z.B. Serverräume\)
* In denen IT-Systeme genutzt werden \(z.B. Büroräume\)

Bemisst sich nach dem Schutzbedarf der IT-Systeme, die sich in diesem Raum befinden. Es kann entweder das Maximumprinzip oder das Kumulationsprinzip angewendet werden.

Bsp. S. 29 BSI Schulung

### Interpretation der Ergebnisse

* Niedrig bis mittel
  * Standard-Sicherheitsmassnahmen
* Hoch
  * Standard + optionale Massnahmen
* Sehr hoch
  * Standard + optionale Massnahmen
  * Zwingend ergänzende Sicherheitsanalyse

## IT-Grundschutzanalyse

Ziel der Modellierung gemäss IT-Grundschutz ist es festzulegen, welche Bausteine des IT-Grundschutzhandbuchs auf welche Zielobjekte der IT einer Organisation anzuwenden sind \(Ergebnis: IT- Grundschutzmodell\).

![](../.gitbook/assets/image%20%281%29.png)

### Vorgehen Modellierung

* Jeden Baustein auf Anwendbarkeit prüfen und zuweisen
* Gliederung anhand Schichtenmodell
  * Schicht 1: Übergreifende Aspekte
  * Schicht 2: Infrastruktur
  * Schicht 3: IT-Systeme
  * Schicht 4: Netze
  * Schicht 5: Anwendungen
* Vollständigkeitsprüfung
  * Quervergleich mit Netzplan
  * Alles vollständig nachgebildet?
  * Technik, Organisation, Personal, Infrastruktur?

Bsp. Ab S. 30 BSI Schulung

## Basis-Sicherheitscheck

Mit einem Basis-Sicherheitscheck ermitteln wir, ob und inwieweit die Massnahmen-Empfehlungen des IT-Grundschutzhandbuchs für die einzelnen Zielobjekte des betrachteten IT-Verbunds umgesetzt sind.

![](../.gitbook/assets/image%20%2812%29.png)

### Vorgehen

* Im Grundschutz-Modell haben wir die anzuwendenden Bausteine ausgewählt, dies stellt nun eine Art Prüfplan dar.
* Nun überprüfen wir für jedes Zielobjekt und für jede Massnahme der entsprechenden Bausteine, ob sie überhaupt auf das Zielobjekt anzuwenden ist und inwieweit sie umgesetzt wurde.

Bsp. Ab S. 35 BSI Schulung

## Ergänzende Sicherheitsanalyse

Durchzuführen, wenn:

* Schutzbedarfskategorie „hoch“ oder „sehr hoch“ in mindestens einem der Grundwerte
* Zusätzlicher Analysebedarf besteht
* Für bestimmte Komponenten oder Aspekte kein geeigneter Baustein existiert

### Mögliche Vorgehensweisen

* Risikoanalyse
  * relevante Bedrohungen ermitteln
  * Eintrittswahrscheinlichkeiten schätzen
* Penetrationstest
  * Verhalten eines Angreifers simulieren
  * Blackbox- und Whitebox-Ansatz unterscheiden
* Differenz-Sicherheitsanalyse
  * höherwertige Maßnahmen identifizieren
  * Schutzklassenmodelle

### Realisieren der Massnahmen

Mit Hilfe eines Realisierungsplans

* Ergebnisse sichten
* Massnahmen konsolidieren
* Aufwand schätzen
* Umsetzungsreihenfolge festlegen
* Verantwortliche bestimmen
* Begleitende Massnahmen festlegen

Bsp. Ab S. 48 BSI Schulung

## Schwächen Grundschutz / Risikoanalyse

* Akzeptanz Grundschutz / Risikoanalyse heikel
* Mögliche Bedrohungen als Szenario
* Viele weiche Faktoren \(Schadenshöhe, Wahrscheinlichkeit, Massnahmen im Grundschutz\)
* Diskussionspotential gross
* Zu wenig eigene Vorfälle


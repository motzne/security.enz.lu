# Grundlagen Computer Security

## IT-Schutzziele aus technischer Sicht:

* **Vertraulichkeit:** Sicherstellung, dass Informationen nur von dazu autorisierten Personen \(oder allgemeiner: Subjekten\) gelesen werden können
* **Integrität:** Sicherstellung der Korrektheit und Vollständigkeit von Informationen und Verarbeitungsmethoden
* **Verfügbarkeit:** Sicherstellung, dass Benutzer \(oder allgemeiner: Subjekte\) Zugriff auf Informationen/System haben

### IT-Sicherheit kann unterteilt werden:

* Funktionssicherheit \(**Safety**\)
  * Ist-Funktionalität=Soll-Funktionalität
* Informationssicherheit \(**Security**\)
  * Funktionssicherheit + Schutz vor unautorisierter Informationsveränderung und Zugriff \(Programme + Daten\)
* Datensicherheit \(**Data Protection**\)
  * Funktionssicherheit + Schutz vor unautorisiertem Zugriff auf Daten
    * Sicherheit vor Datenverlust

## Bewertung von Sicherheit

* Orange Book
  * 7 Sicherheitsklassen \(D1, C \(C1,C2\), B \(B1, B2, B3\), A1\)
  * Probleme:
    * Beschränkung ausschliesslich auf Rechner
    * starr, nicht erweiterbar
* Common Criteria
  * Internationaler Standard \(ISO/IEC15408\) für die Bewertung der Computer Sicherheit
  * Ein Framework
  * 3 Teile 
  * EAL Levels \(7 verschiedene Levels\) =&gt; eine Art Skala
    * 1 = kann ich selber machen
    * 7 = aufwändigsten
    * Es gibt verschiedene Levels, ich kann mich als Firma/Produkt dagegen messen/prüfen lassen
  * Probleme:
    * Sehr generisch
    * Wert der Zertifizierung?

## Tests

### **Penetration Test**

* Legaler Versuch in ein Firmensystem einzudringen um seine schwächsten Punkte aufzudecken
* Tester berichtet über Erkenntnisse 

### **Security Test**

* Mehr als ein Versuch einzudringen, beinhaltet auch die Analyse von Security Policies und Prozessen
* Tester sucht nach Lösungen um das System zu schützen
* Überlappungen zwischen beiden Tests



### Open Source Security Testing Methodology Manual \(OSSTMM\)

* Handbuch für Security Tests, Weltweiten Finanzinstituten
* Opensource
* Zielsetzung: 
  * Planung, Durchführung und Dokumentation von Security Audits
  * Man kann sich als Tester Zertifizieren
* Aufbau:
  * Beschreibung der Methode für das Security Testing
    * verschiedene Tester = vergleichbare Ergebnisse erhalten
  * Beschreibung Security Testing für die fünf Kanäle \(5 Channels\)
    * Human / Auf Betriebspersonal fokussiert
    * Physical / Videoüberwachung, Wasser, Feuer, Zutritt
    * Wireless / Passiv- und Aktive Suche, Wireless-Geräte
    * Telecommunication / Mailbox, Monitoring
    * Data Networks / IP-Konzepte, Protokolle, Authentisierung
    * 

### OSSTMM vs. 27001

Zertifizierung mit ISO geht etwas länger, OSSTMM kann man einfach einer Ext. Firma geben und sie kann danach prüfen.

## Authentifizierung

### Unterschiede Authentifizierung vs. Autorisierung

* **Authentifizierung:** Bist Du der, der Du vorgibst zu sein?
  * Bestimmt generellen Zugriff
* **Autorisierung:** Darfst Du etwas?
  * Wenn Zugriff erteilt, was darfst Du tun?
  * Erzwingt Grenzen des Handelns

![](../.gitbook/assets/image%20%2840%29.png)





### Entropie von Passwörter

![](../.gitbook/assets/image%20%2824%29.png)

#### Entropie berechnen:



Ein Security-Verantwortlicher hat die Auswahl zwischen zwei Passwortrichtlinien 

A\) genau 6 Zeichen \(+äöü\), inkl. Gross-/Kleinschreibung und Ziffern 0-5 \(keine Sonderz.\)

B\) genau 7 Zeichen \(+äöü\), inkl. 3 Sonderzeichen \(ßñũ\) \(keine Gross-/Kleinschreibung, keine Ziffern, keine Sonderz.\)

```text
A) genau 6 Zeichen (+äöü), inkl. Gross-/Kleinschreibung und Ziffern 0-5
(keine Sonderz.)
29 Gross inkl. äöu
29 klein inkl ÄÖÜ
6  0-5
=> 64 Möglichkeiten pro Zeichen
log_2(64) = 6 Bit Entropie pro Zeichen (
6 * log_2(64) = 36 Bit Entropie Gesamt => 2^36 (entspricht 2^36 Möglichkeiten

B) genau 7 Zeichen (+äöü), inkl. 3 Sonderzeichen (ßñũ)
(keine Gross-/Kleinschreibung, keine Ziffern, keine Sonderz.)
29 inkl. äöu
3 Sonderzeiche
=> 32 Möglichkeiten  pro Zeichen
log_2(32) = 5 Bit Entropie pro Zeichen
7 * log_2(32) = 35 Bit Entropie Gesamt => 2^35 (entspricht 2^36 Möglichkeiten)    
```

Auf dem Mac:   
log\(X\) / log\(2\) = X   
Bsp.  log\(32\) / log\(2\) = 5

### Diceware 

* Auswahl mehrerer Wörter aus einer Wortliste mittels Würfel
* Fünf Würfelwürfe für jedes Wort. Augen werden als Ziffern einer fünfstelligen Zahl interpretiert. Anhand dieser Zahl wird das zugehörige Wort aus der Wortliste ausgewählt.
* Beispiel: 44413 nelke 53521 saeumt 33544 jeden 22562 elch 31533 hat 41512 linux →Passwort: nelkesaeumtjedenelchhatlinux
* Entropie 
  * \(Annahme: Angreifer kennt Wortliste und Verfahren\):  \(6\*6\*6\*6\*6\) = 7776 mögliche Worte pro 5 Würfe \(5x eine 6, da Wort 5 Buchstaben hat\)
  * Wie viele Bits braucht man zur Darstellung? → log\_2\(7776\) ≈ 12,9 Bit Entropie pro Wort → für 6 Worte ≈ 77,5 Bit Entropie

## Hashes

* Eine Hash-Funktion ist eine Funktion, die Zeichenketten neue Zeichenketten einer fest vorgegebenen Länge zuordnet.
* kryptrographische Hash Funktionen
* Angriffe
  * Hash-Chains \(früher\), heute Rainbow Tables
  * Time-Memory Tradeoff
    * Hauptidee = Hash- und Reduktionsfunktionen
  * Rainbow-Tables
    * Vorgerechnete Werte werden abgelegt
    * Gegenmassnahme: Salt

### Welche Angriffsstrategien auf gestohlene Passwort-Hashs hat ein Hacker zur Verfuegung? 

1. Passwort-Hashfunktion knacken   
2. Brute-Force Attacken

* Alle moeglichen Kombinationen werden systematisch durchprobiert
* Jeder Kandidat wird verschluesselt und in der Passwortdatei gesucht
* Vorteil: knackt irgendwann jedes Passwort -¿ vollstaendige Methode 

3. Woerterbuch Attacken

* Nur Woerter aus einem vorgegebenen Woerterbuch werden durchprobiert
* Beruht auf Annahme, dass sinnvolle Woerter als Passwort verwendet wurden oder dass beim Passwort ein Algorithmus hinterlegt ist \(z.B. Palindrom\)
* Knackt nur Passwoerter im Woerterbuch \(unvollstaendige Methode\) 

4. Lookup Tabellen

* Woerterbuch mit 1M Woerter verlangt 1M Hashberechnung
* Effizienter sind Woerterbuecher mit \(Wort / Hashwert\) Eintraegen
* Jetzt muss nur noch nach dem Hashwert gesucht werden
* Trade-off: man investiert mehr Memory um Rechenzeit zu sparen
* Knackt nur Passwoerter in der Tabelle \(unvollstaendige Methode\)

### Nennen Sie den Unterschied zwischen Woerterbuecher und Lookup-Tabellen. 

Lookup-Tabellen sind vorgefertigte Tabellen mit Hashwert + Klartext Passwort. Die Hashes sind alle bereits vorgerechnet. Man muss nun nur noch anhand des gewunschten Hashes das Passwort raus suchen. Ein Woerterbuch ist im ¨ Gegensatz dazu nur eine Sammlung moeglicher Passwoerter im Klartext. Zum Beispiel kann der Duden als Woerterbuch herhalten. Nachher wird beim Angriff jeder Hash zum Wort berechnet. Die Hashes sind somit beim Zeitpunkt des Angriffes nicht vorberechnet.

### Vorteile Nachteile von Rainbow Tabellen

* Hybride Version von Lookup und Brute-Force
* Kompromiss bezüglich Hashberechnungen, Speicherplatz, Vollständigkeit
* Verschiedene Tabellen für verschiedene Hash-Algorithmen
* Knackt nur Passwörter im Wörterbuch \(unvollständige Methode\)
* Auf Passwörter einer fixen Länge spezialisiert

### Passwörter salzen

* Salt ist eine zufällig generierte Zeichenkette
* Berechne den Hash von Passwort und Salz h\(pwd . salt\)
* Salz und Hashwert werden zusammen in der Passwortdatei gespeichert

#### Angriffe 

Das Salzen eines Passwort hilft gegen Lookup und Rainbow Tables. Es hilft sobald eine Angriffmethode darauf basiert, dass sie klar Hash zu einem Text mappen kann. Also wenn diese vorberechnet sind. Dies ist bei Lookup Tables sowie bei Rainbow Tables der Fall. Die Hashes um diese Tables aufzubauen wurden ohne das Salt berechnet, somit ist es fur das gegebene Passwort nicht ¨ mehr zu gebrauchen. Da das Salt bekannt ist, kann es bei Angriffen, welche die Hashes bei Laufzeit berechnen \(Brute-Force\) einfach angeh¨angt werden. Der Brute-Force Algorhitmus muss, kann dies genau so machen, wie das Betriebssystem selbst. Es fuehrt die Operation h\(pwd . salt\) vor dem Vergleich aus.  


Welche mathematischen Angriffe auf Hashfunktionen gibt es?

* Meet-in-the-Middle  Der Angreifer erzeugt Variationen der ersten Hälfte einer gefälschten Nachricht und Variationen der zweiten Hälfte. Er berechnet die Hashwerte vorwärts beim Startwert IV beginnend und ruckwärts vom Hash-Resultat aus und versucht eine Kollision am Angriffspunkt zu finden.
* Correcting Block Attack  Der Angreifer ersetzt alle Blöcke einer Nachricht bis auf einen – etwa den ersten. Anschließend legt er diese Variable so fest, dass sie im Laufe der Verkettung den gewünschten Gesamt-Hashwert liefert.
* Fixed Point Attack 
* Differenzielle Kryptoanalyse  Differenzielle Kryptoanalyse ist ein Angriff auf Blockchiffriersysteme, die auf Hashfunktionen übertragen werden kann. Hierbei werden Eingabedifferenzen und die korrespondierenden Ausgabedifferenzen untersucht. Eine Differenz von Null entspricht dann einer Kollision.
* Boomerang Attack  Der Boomerang Angriff ist eine Erweiterung der differenziellen Kryptoanalyse. Er verbindet zwei unabhängige Differentialpfade zu einem Angriff





## Autorisierung \(Zugriffsschutz\)

* Zentraler Aspekt der Rechnersicherheit
* Regelt den Zugriff von Subjekten auf Objekte
* Vergleichbare Konzepte werden auch in anderen Bereichen der Informatik verwendet
  * Datenbanken
  * Netzwerktechnik \(Firewalls\)
* Unterschiedliche Zugriffskontrollstrategien
  * DAC \(Discretionary Access Control\)
    * Benutzerbestimmbare Zugriffskontrollstrategie
    * Jedem Objekt ist ein Subjekt als Besitzer zugeordnet. Dieser ist verantwortlich für Zugriffsrechtevergabe.
    * Nachteil: Schlechte Skalierbarkeit
  * RBAC \(Role Based Access Control\)
    * Rollenbasierte Zugriffskontrollstrategie
    * Entkopplung der Benutzer von Rechten
    * Vorteil: 
      * Bessere Skalierbarkeit
      * Sehr gut geeignet für Systeme mit einer großen Anzahl von Nutzern
    * Spatical Role Based Acces Control \(SRBAC\) =&gt; Ortsabhängig
  * MAC \(Mandatory Access Control\)
    * Systembestimmte Zugriffskontrollstrategie
    * Nachteil: Vertraulichkeitsstufen sind statisch
* Bei den heutigen Betriebssystem ist das Matrix Access Modell als «Discretionary Access Control» implementiert:

  ▪ Jedes Objekt hat einen Owner

  ▪ Der Owner hat die Hoheit über die Berechtigungen!!

### Multi Layer Security

![](../.gitbook/assets/image%20%2860%29.png)

![](../.gitbook/assets/image%20%2850%29.png)

![](../.gitbook/assets/image%20%2834%29.png)



## Architektur

* Client-Server Architektur 
  * Zentraler Server, Applikationen auf den Clients
* Multitier Architektur
  * 3-Schichten Modell \(Daten, Logik, Präsentation\)
* Terminal-Server Architektur
  * Zentrale Installation Client-Applikationen
* Citrix, Microsoft Terminalserver
* Virtualisierung \(Virtualisierungsschicht über dem Betriebssystem\)
  * Server \(Konsolidierung im Rechencenter\)
  * Client \(Unterschiedliche Setups für Entwickler, macOS mit VMware\)
* Cloud Computing
  * Liefermodelle:

    • Private clouds

    • Public clouds

    • Hybrid clouds

    • Community clouds

  * Service-Modell:

    • Infrastruktur as a Service

    • Plattform as a Service

    • Software as a Service




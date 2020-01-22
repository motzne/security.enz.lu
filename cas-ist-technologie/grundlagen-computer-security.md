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

![](../.gitbook/assets/image%20%2831%29.png)





### Entropie von Passwörter

![](../.gitbook/assets/image%20%2819%29.png)

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

### Hash

* Eine Hash-Funktion ist eine Funktion, die Zeichenketten neue Zeichenketten einer fest vorgegebenen Länge zuordnet.
* kryptrographische Hash Funktionen
* Angriffe
  * Hash-Chains \(früher\), heute Rainbow Tables
  * Time-Memory Tradeoff
    * Hauptidee = Hash- und Reduktionsfunktionen
  * Rainbow-Tables
    * Vorgerechnete Werte werden abgelegt
    * Gegenmassnahme: Salt

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








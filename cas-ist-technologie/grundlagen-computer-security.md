# Grundlagen Computer Security

## IT-Schutzziele aus technischer Sicht:

  
  


### IT-Sicherheit kann unterteilt werden:

* Funktionssicherheit \(**Safety**\)
  * Ist-Funktionalität=Soll-Funktionalität
* Informationssicherheit \(**Security**\)
  * Funktionssicherheit + Schutz vor unautorisierter Informationsveränderung und Zugriff \(Programme + Daten\)
* Datensicherheit \(**Data Protection**\)
  * Funktionssicherheit + Schutz vor unautorisiertem Zugriff auf Daten
    * SicherheitvorDatenverlust



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



**Penetration Test**

* Legaler Versuch in ein Firmensystem einzudringen um seine schwächsten Punkte aufzudecken
* Tester berichtet über Erkenntnisse 

**Security Test**

* Mehr als ein Versuch einzudringen, beinhaltet auch die Analyse von Security Policies und Prozessen
* Tester sucht nach Lösungen um das System zu schützen
* Überlappungen zwischen beiden Tests







Entropie Passwort berechnen

```text
A) genau 6 Zeichen (+äöü), inkl. Gross-/Kleinschreibung und Ziffern 0-5
(keine Sonderz.)
29 Gross inkl. äöu
29 klein inkl ÄÖÜ
6 0-5
=> 64 Möglichkeiten
log_2(64) = 6 Bit Entropie pro Zeichen
6 * log_2(64) = 36 Bit Entropie Gesamt => 2^36
B) genau 7 Zeichen (+äöü), inkl. 3 Sonderzeichen (ßñũ)
(keine Gross-/Kleinschreibung, keine Ziffern, keine Sonderz.)
29 inkl. äöu
3 Sonderzeiche
=> 32
log_2(32) = 5 Bit Entropie pro Zeichen
7 * log_2(32) = 35 Bit Entropie Gesamt => 2^25    
```








# Kryptologie

## Definition 

* **Kryptographie**: Entwurf von Systemen
* **Kryptoanalyse**: Brechen von Systemen.

![](../.gitbook/assets/image%20%2878%29.png)



## Begriffe

### Symmetrische Kryptographie

* Beide Kommunikationspartner besitzen den geheimen Schlüssel.
* Grösster Nachteil :Schlüsselverteilung und Anzahl Schlüssel \(bei n Partnern braucht es ungefähr n2/2 Schlüssel, wenn jeder mit jedem mit einem anderen Schlüssel kommunizieren will.\)

### Asymmetrische Kryptographie

* Der Schlüssel ist in 2 Teile aufgeteilt, einen öffentlichen und einen geheimen.
* Der geheime Teil des Schlüsselpaares ist nur einer Stelle bekannt.
* Der obige Nachteil ist hier behoben, es braucht nur n, resp. 2n Schlüsselpaare.
* Der grösste Nachteil ist der erhöhte Rechenaufwand.



## Kryptopuzzle als Übersicht:

![](../.gitbook/assets/image%20%2842%29.png)



## Sicherheitsanforderungen:

#### Klassisch:

* C: Vertraulichkeit / Confidentiality
* I: Integrität / Integrity
* A: Verfügbarkeit / Availability  
  * Kryptologie hat hier fast keinen Einfluss 

#### Erweitert:

* Verbindlichkeit
* Authentizität
* Non Repudiation

#### Beispiel:

* Digitales öffentliches Archiv =&gt; Authenzität/Integrität
* Pay-TV =&gt; Geheimhaltung
* Elektronische Unterschrift =&gt; Authenzität/Integrität



## Angriffe im klassichen Kryptomodell

![](../.gitbook/assets/image%20%2852%29.png)

* Eve
  * Abhören der Meldung \(Confidentiality\)
  * Verändern der Meldung \(Integrity\) \(\*\)
  * Eine erfundene Meldung einspielen \(Insertion\) \(\*\)
  * Eine Meldung abfangen und später wieder einspielen \(Replay\) \(\*\)
  * Löschen von Meldungen \(Delete\) \(\*\)
  * Sich für jemanden anders \(z.B. für Alice\) ausgeben \(Masquerade\) \(\*\*\)
* Alice
  * Abstreiten die Meldung geschickt zu haben \(Non repudiation of origin\) \(\*\)
  * Eine schon einmal geschickte Meldung nochmals schicken \(Replay\) \(\*\)
  * Sich für jemanden anders ausgeben \(Masquerade\) \[In diesem Fall wäre Alice in der Rolle von Eve\] \(\*\*\)
* Bob

  * Abstreiten die Meldung erhalten zu haben \(Non repudiation of receipt\) \(\*\)

\(\*\) gehören zum Begriff der \(Daten-\)Authentizität.

\(\*\*\) gehören zum Begriff der \(Benutzer-\)Authentizität, oder anders gesagt, wenn eine Masquerade verhindert werden soll, so braucht es eine sichere Authentifizierung. Diese wird oft im Rahmen von IAM \(Identity und Access Management\) oder von AAA \(Architectures Authentication, Authorization, and Access Control\) behandelt.

**=&gt; Nur abhören ist Passiv, alles andere ist Aktiv**



![](../.gitbook/assets/image%20%2816%29.png)

![](../.gitbook/assets/image%20%2831%29.png)

## Hashfunktionen:

* Unter einer Hashfunktion verstehen wir eine Funktion, die die Elemente von einer „grossen“ Menge in eine „kleine“ abbildet.
* Wir können uns diese Funktion als Trichter mit beliebiger grossen Inputgrösse vorstellen.
* Unter einer **kryptographisch sicheren Hashfunktion** verstehen wir eine Hashfunktion, für die es „schwierig“ ist, zwei Elemente aus der „grossen“ Menge zu finden, die die gleichen Werte in der „kleinen“ haben.



![](../.gitbook/assets/image%20%2892%29.png)

### Beispiele:

* Parity-Bit: Outputgrösse ist 1 Bit.
* Meldung Byteweise zusammenzählen \(mod 256\): Outputgrösse ist 8 Bit.
* CRC: Outputgrösse ist je nach Polynom 16, 32 oder 64 Bit.
* Hashfunktion = keyless hash function z.B. MD-5, SHA-1, RIPEMD, SHA-2 & SHA-3 Familie:

  Outputgrösse ist je nach Hashfunktion 128, 160, 256, 512 Bit.

* HMAC = Keyed Hash function = Konstruktion mit Hashfunktion und zugefügtem Schlüssel:

  Outputgrösse ist je nach Hashfunktion 128, 160, 256, 512 Bit.

* MAC nach ANSI X9.9 \(= CBC-MAC\): je nach Blockalgorithmus, 64 oder 128 Bit.
* Konventionelle Prüfsummen \(z.B. Bei Barcodelesern\)

## Wichtige Eigenschaften 

![](../.gitbook/assets/image%20%2821%29.png)



### Vertraulichkeit/Geheimhaltung

* Massnahmen
  * symmetrische Verschlüsselung
    * Verfahren: Strom- und Blockchiffren
    * Algorithmen: DES\(_\); 3-DES\(\*_\), AES, IDEA usw.
    * Modi: ECB\(\*\), CBC, OFB, CFB, CTR usw.
    * \(\*\) „darf“ nicht mehr verwendet werden.
    * \(\*\*\) „sollte“ nicht mehr verwendet werden.
  * asymmetrische Verschlüsselung
    * Verfahren: diskrete Logarithmen, diskretes Wurzelziehen
    * Algorithmen: ECC \(Elliptic Curve\), RSA usw.
    * Modi: nichts Vergleichbares wie für symmetrische Verfahren.
* Verschlüsselung schützt nur vor Abhören!!

### Integrität/Authentizität 1

* Massnahmen:
  * MAC-Berechnung \(symmetrisch\)
    * Schützt vor Verfälschen und Einfügen
    * CBC-MAC \(auf Blochchiffren beruhend, cf. Kap. 8.2\)
      * Vor allem in „Zahlungswelt“ verwendet
    * HMAC \(auf Hashfunktionen beruhend\)
      * Vor allem in der „Netzwerkwelt“ verbreitet.
* Digitale Signatur \(asymmetrisch\)
  * Schützt vor Verfälschen, Einfügen und Abstreiten eine Meldung geschickt zu haben.
  * Verfahren: diskrete Logarithmen, diskretes Wurzelziehen
  * Algorithmen: ECC \(Elliptic Curve\), RSA, DSA, Schnorr usw.

### Replay und Delete

* Massnahmen:
  * Führen einer Sequenznummer und MAC-Berechnung \(symmetrisch\)
    * Schützt zusätzlich vor Replay und Delete
* Führen einer Sequenznummer und digitale Signatur \(asymmetrisch\) wird in dieser Form aber eher nicht gemacht.
  * Schützt ebenfalls zusätzlich vor Replay und Delete
* Non rep. of Receipt und Masquerade
  * Massnahmen:
    * Krypt. Mechanismus \(Verschlüsselung, MAC oder digitale Signatur\) in ein Protokoll eingebettet.








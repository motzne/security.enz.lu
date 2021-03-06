# Kryptologie

## Definition

- **Kryptographie**: Entwurf von Systemen
- **Kryptoanalyse**: Brechen von Systemen.

![](../.gitbook/assets/image%20%2892%29.png)

## Begriffe

### Symmetrische Kryptographie

- Beide Kommunikationspartner besitzen den geheimen Schlüssel.
- Grösster Nachteil :Schlüsselverteilung und Anzahl Schlüssel \(bei n Partnern braucht es ungefähr n2/2 Schlüssel, wenn jeder mit jedem mit einem anderen Schlüssel kommunizieren will.\)

![](../.gitbook/assets/image%20%2877%29.png)

Gleicher Schlüssel für Verschlüsselung und Entschlüsselung

- Schlüssel muss unbedingt geheim gehalten sein
- Grösstes Problem: Sichere Schlüsselverteilung! + Skaliert schlecht
- Grösster Vorteil: Schnell!
- Mit der symmetrischen Verschlüsselung kann nur das Abhören verhindert werden. Resp. es kann nur Geheimhaltung **nicht** aber Integrität erreicht werden!!!
- Anzahl Schlüssel bei symmetrischen Verfahren `n^2/2 [genauer n*(n-1)/2]`

### Asymmetrische Kryptographie

- Der Schlüssel ist in 2 Teile aufgeteilt, einen öffentlichen und einen geheimen.
- Der geheime Teil des Schlüsselpaares ist nur einer Stelle bekannt.
- Der obige Nachteil ist hier behoben, es braucht nur n, resp. 2n Schlüsselpaare.
- Der grösste Nachteil ist der erhöhte Rechenaufwand.

![](../.gitbook/assets/image%20%2821%29.png)

Öffentlicher Schlüssel des Empfängers: zum Verschlüsseln von Daten

- Privater Schlüssel des Empfängers: zum Entschlüsseln von Daten
- Grösstes Problem: ca. 1000-mal langsamer als sym. Alg.
- Grösster Vorteil: «Einfaches Key Management», skaliert besser \(Internet\)
- Anzahl Schlüssel bei asymmetrischen Verfahren `n Schlüsselpaare`
- Mit der asymmetrischen Verschlüsselung kann ebenfalls nur das Abhören verhindert werden. Resp. es kann nur Geheimhaltung **nicht** aber Integrität erreicht werden!!!

## Kryptopuzzle als Übersicht:

![](../.gitbook/assets/image%20%2848%29.png)

![](../.gitbook/assets/image%20%2868%29.png)

## Sicherheitsanforderungen:

#### Klassisch:

- C: Vertraulichkeit / Confidentiality
- I: Integrität / Integrity
- A: Verfügbarkeit / Availability
  - Kryptologie hat hier fast keinen Einfluss

#### Erweitert:

- Verbindlichkeit
- Authentizität
- Non Repudiation

#### Beispiel:

- Digitales öffentliches Archiv =&gt; Authenzität/Integrität
- Pay-TV =&gt; Geheimhaltung
- Elektronische Unterschrift =&gt; Authenzität/Integrität

## Angriffe im klassichen Kryptomodell

![](../.gitbook/assets/image%20%2859%29.png)

- Eve
  - Abhören der Meldung \(Confidentiality\)
  - Verändern der Meldung \(Integrity\) \(\*\)
  - Eine erfundene Meldung einspielen \(Insertion\) \(\*\)
  - Eine Meldung abfangen und später wieder einspielen \(Replay\) \(\*\)
  - Löschen von Meldungen \(Delete\) \(\*\)
  - Sich für jemanden anders \(z.B. für Alice\) ausgeben \(Masquerade\) \(\*\*\)
- Alice
  - Abstreiten die Meldung geschickt zu haben \(Non repudiation of origin\) \(\*\)
  - Eine schon einmal geschickte Meldung nochmals schicken \(Replay\) \(\*\)
  - Sich für jemanden anders ausgeben \(Masquerade\) \[In diesem Fall wäre Alice in der Rolle von Eve\] \(\*\*\)
- Bob

  - Abstreiten die Meldung erhalten zu haben \(Non repudiation of receipt\) \(\*\)

\(\*\) gehören zum Begriff der \(Daten-\)Authentizität.

\(\*\*\) gehören zum Begriff der \(Benutzer-\)Authentizität, oder anders gesagt, wenn eine Masquerade verhindert werden soll, so braucht es eine sichere Authentifizierung. Diese wird oft im Rahmen von IAM \(Identity und Access Management\) oder von AAA \(Architectures Authentication, Authorization, and Access Control\) behandelt.

**=&gt; Nur abhören ist Passiv, alles andere ist Aktiv**

## Beispiele / Anwendungen

![](../.gitbook/assets/image%20%2817%29.png)

![](../.gitbook/assets/image%20%2837%29.png)

![](../.gitbook/assets/image%20%2822%29.png)

![](../.gitbook/assets/image%20%2819%29.png)

## Hashfunktionen:

- Unter einer Hashfunktion verstehen wir eine Funktion, die die Elemente von einer „grossen“ Menge in eine „kleine“ abbildet.
- Wir können uns diese Funktion als Trichter mit beliebiger grossen Inputgrösse vorstellen.
- Unter einer **kryptographisch sicheren Hashfunktion** verstehen wir eine Hashfunktion, für die es „schwierig“ ist, zwei Elemente aus der „grossen“ Menge zu finden, die die gleichen Werte in der „kleinen“ haben.

![](../.gitbook/assets/image%20%28109%29.png)

### Beispiele:

- Parity-Bit: Outputgrösse ist 1 Bit.
- Meldung Byteweise zusammenzählen \(mod 256\): Outputgrösse ist 8 Bit.
- CRC: Outputgrösse ist je nach Polynom 16, 32 oder 64 Bit.
- Hashfunktion = keyless hash function z.B. MD-5, SHA-1, RIPEMD, SHA-2 & SHA-3 Familie:

  Outputgrösse ist je nach Hashfunktion 128, 160, 256, 512 Bit.

- HMAC = Keyed Hash function = Konstruktion mit Hashfunktion und zugefügtem Schlüssel:

  Outputgrösse ist je nach Hashfunktion 128, 160, 256, 512 Bit.

- MAC nach ANSI X9.9 \(= CBC-MAC\): je nach Blockalgorithmus, 64 oder 128 Bit.
- Konventionelle Prüfsummen \(z.B. Bei Barcodelesern\)

## Wichtige Eigenschaften

![](../.gitbook/assets/image%20%2826%29.png)

## Hybridverschlüsselung

\*\*Beispiel: TLS, PGP

Problem:\*\* Grosse Daten können nicht asymmetrisch verschlüsselt werden.

**Lösung:** Die Hypridverschlüsselung

- Erzeugung eines zufällig gewählten symmetrischen Session Key‘s \(cf. z.B. mit Randomfkt. In Kap. 8.4 im Skript\)
- Die Dokumenten- oder Meldungsverschlüsselung wird mit symmetrischen Verfahren durchgeführt.
- Der verwendete symmetrische Schlüssel wird mit einem asymmetrischen Verfahren verschlüsselt und mitgeschickt.
- Vorteile:
  - „Einfaches“ Key Management \(cf. asymmetrisches Verfahren\).
  - **Die bessere Performance der symmetrischen Verfahren wird mit der besseren Schlüsselverteilung der asymmetrischen Verfahren kombiniert.**

![](../.gitbook/assets/image%20%2883%29.png)

## MAC Berechnung

![Secret Key Kryptografie 2: MAC-Berechnung](../.gitbook/assets/image%20%28102%29.png)

## Digitale Signatur \(z.B. RSA\)

![Public Key Krypto. 3: Digitale Signatur (z.B. RSA)](../.gitbook/assets/image%20%2854%29.png)

## Funktionsprinzipien von Algorithmen

### Blockchiffre

![](../.gitbook/assets/image%20%28100%29.png)

### Stromchiffre

![](../.gitbook/assets/image%20%2833%29.png)

## Zusammenfassung

### Vertraulichkeit/Geheimhaltung

- Massnahmen
  - symmetrische Verschlüsselung
    - Verfahren: Strom- und Blockchiffren
    - Algorithmen: DES\(_\); 3-DES\(\*_\), AES, IDEA usw.
    - Modi: ECB\(\*\), CBC, OFB, CFB, CTR usw.
    - \(\*\) „darf“ nicht mehr verwendet werden.
    - \(\*\*\) „sollte“ nicht mehr verwendet werden.
  - asymmetrische Verschlüsselung
    - Verfahren: diskrete Logarithmen, diskretes Wurzelziehen
    - Algorithmen: ECC \(Elliptic Curve\), RSA usw.
    - Modi: nichts Vergleichbares wie für symmetrische Verfahren.
- Verschlüsselung schützt nur vor Abhören!!

### Integrität/Authentizität 1

- Massnahmen:
  - MAC-Berechnung \(symmetrisch\)
    - Schützt vor Verfälschen und Einfügen
    - CBC-MAC \(auf Blochchiffren beruhend, cf. Kap. 8.2\)
      - Vor allem in „Zahlungswelt“ verwendet
    - HMAC \(auf Hashfunktionen beruhend\)
      - Vor allem in der „Netzwerkwelt“ verbreitet.
- Digitale Signatur \(asymmetrisch\)
  - Schützt vor Verfälschen, Einfügen und Abstreiten eine Meldung geschickt zu haben.
  - Verfahren: diskrete Logarithmen, diskretes Wurzelziehen
  - Algorithmen: ECC \(Elliptic Curve\), RSA, DSA, Schnorr usw.

### Replay und Delete

- Massnahmen:
  - Führen einer Sequenznummer und MAC-Berechnung \(symmetrisch\)
    - Schützt zusätzlich vor Replay und Delete
- Führen einer Sequenznummer und digitale Signatur \(asymmetrisch\) wird in dieser Form aber eher nicht gemacht.
  - Schützt ebenfalls zusätzlich vor Replay und Delete
- Non rep. of Receipt und Masquerade
  - Massnahmen:
    - Krypt. Mechanismus \(Verschlüsselung, MAC oder digitale Signatur\) in ein Protokoll eingebettet.

## Kontrollfragen:

1. **Wozu wird primär symmetrische Kryptologie eingesetzt?**

   Für das effiziente Verschlüsseln von Dokumenten, Festplatten, ZIP-File etc. Ist sehr schnell, deshalb

   für grosse Datenmengen geeignet. Sender und Empfänger haben den selben Schlüssel. Der Schlüssel

   wird asymmetrisch verschlüsselt.

2. **Wozu wird primär asymmetrische Kryptologie eingesetzt?**

   Um Schlüssel zu verschlüsseln \(sehr sicher\), nicht für grössere Datenmengen geeignet, da es nicht

   sehr schnell ist. Sender und Empfänger haben unterschiedliche Schlüssel und ist daher aufwendiger.

3. **Wozu wird eine Hashfunktion in der Praxis verwendet?**

   Ist eine Abbildung, ob die Datei richtig ist oder nicht \(Integritätsprüfung\). Wenn man den Hash

   nochmals rechnet und zwei Mal das gleiche rauskommt, weiss man das es unverändert ist. Gute bzw.

   keine Kollisionseigenschaften. → Abbildung von grossen Datenmengen

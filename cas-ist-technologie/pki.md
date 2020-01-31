# PKI







## Beispielfragen:



#### Welche Informationen sind in einem X.509 v3 Zertifikat drin?

* Seriennummer
* Signartur
* Herausgeber
* Gültigkeit
* Inhaber
* Public Key
* Verwendungszweck

#### Was stellt ein Zertifikat sicher?

* Stellt sicher das die Person tatsächlich jene ist die sie ausgibt zu sein

  Ist der Private Key Bestandteil des Zertifikates

* Nein, nur der Public Key
* Mittels Private könnte es ja entschlüsselt werden 

#### Wo wird der Private Key gespeichert?

* Geschützt irgendwo abgelegt - Bsp:

  -- Chip­Karte

  -- HSM

  -- speziell geschützten Verzeichnissen

#### Welche Stellen sind bei der Erstellung eines Zertifikates beteiligt?

* Ersteller \(schützt seinen Private Key\)
* RA ­ Request Authority überprüft alle Angaben im Zertifikatrequest
* CA ­ Certifcation Authoriy, ergänzt das Zertifikat \(Nummer, CRl, Zeitpunkt\) und

  signiert das Zertifikat mit dem private Key des Root­Zertifikats

#### Wenn eine Applikation die Gültigkeit eines Zertifikates überprüfen soll, was muss sie alles machen?

* Ist die Signierung korrekt? \(mit Hilfe des Root­Zertifikates\) Traue ich dem Root­Zertifikat?
* Wurde das Zertifikat revoziert?
* Das Zertifikat enthält eine CRL \(Certificat revocation list\). Dies ist eine URL auf der

  alle zurückgezogenen Zertifikate publiziert werden

* Rechner können auch eine interne CRL haben
* Ist das Zertifikat noch gültig? \(Gültigkeitsdauer\) Wird das Zertifikat mit dem

  vorgesehenen Verwendungszweck verwendet?

* Ist der angegebene Name korrekt \(z.B. bei SSL: Stimmt der Common Name mit der

  URL überein?\)

#### Was ist der Sinn der unterschiedlichen Klassen von Zertifikaten. Sie haben sich beispielsweise ein Class 1 Zertifikat bei StartSSL beschafft.

* Unterteilung in 3 Klassen

  -- Domain

  -- Organisation

  -- Extenden \(komplett grüner Balken im Browser\)


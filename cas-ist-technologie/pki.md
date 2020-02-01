# Zertifikatsbasierende Anwendungen und PKI

## Signieren und verschlüsseln einer Email

![](../.gitbook/assets/image%20%2897%29.png)

## Entschlüsseln und Verifizieren einer Email

![](../.gitbook/assets/image%20%2875%29.png)

## Schlüsselverwendung:

![](../.gitbook/assets/image%20%2872%29.png)

![](../.gitbook/assets/image%20%2862%29.png)

## Publikation des öffentlichen Schlüssels

* Lösung: Schaffung einer vertrauenswürdigen Institution, die öffentliche Schlüssel beglaubigt und publiziert 
* Publikation des öffentlichen Schlüssels
* Durch die Beglaubigung wird der öffentliche Schlüssel zweifelsfrei einer Person zugeordnet
* Durch die Publikation wird er allen möglichen Kommunikationspartnern zugänglich gemacht
* Die digitale Beglaubigung eines öffentlichen Schlüssels wird als «Zertifikat» bezeichnet
* Hinweis: Zertifikate können nicht nur für Personen ausgestellt werden, sondern auch für Computer

![](../.gitbook/assets/image%20%288%29.png)

### Herstellen eines Zertifikats

* CA identifiziert den Antragsteller mithilfe eines Identitätsdokuments \(z.B. Pass od. ID\)
* Aus Name des Antragsstellers, dessen öffentlichem Schlüssel und weiteren Informationen wird ein Datensatz gebildet \(Zertifikatsinhalt\)
* Dieser Datensatz wird mithilfe des privaten Schlüssels der CA signiert \(=digitale Beglaubigung\) Zertifikat
* CA veröffentlicht das Zertifikat

## Zertifikatsklassen

* Zur Beurteilung der Vertrauenswürdigkeit von Zertifikaten wird in der Regel ein Klassifizierungssystem verwendet
* Dieses System macht u.a. Vorgaben für folgende Faktoren
  * Registrierungsprozess inkl. Art des geforderten Identitätsnachweises des Antragsstellers
  * Im Zertifikat verwendeter Name des Antragsstellers
  * Zu verwendender Token \(Hard-/Soft-Token\)
  * ErlaubteZertifikatsinhaber\(z.B.natürlichePersonen\)
  * Anforderungen an die CA \(Betrieb, Personal, Prozesse\)

### Class 1 Certificates \(wenig Sicherheit\)

* Keine Überprüfung der Identität des Antragsstellers
* Es wird lediglich sichergestellt, dass der im Zertifikat

  eingetragene Name einmalig ist

* DieZertifikatewerdenoftvollständigüberdasInternet beantragt und sind gratis
* Bsp. Freemail-Certificates \(Comodo\)
* Bsp. Free-TLS \(Domain- Validated-Certificates, LetsEncrypt\)

### Class 2 Certificates \(mittlere Sicherheit\)

* Überprüfung der Identität des Antragstellers mithilfe von Dokumenten und Datenbanken
* Bei Privatpersonen
  * Identitätsprüfung durch Zustellung einer Kopie von Pass
  * oder ID
* Bei Firmen
  * Zeichnungsberechtigte Person muss die Korrektheit des Inhalts des Zertifikatsantrags per Unterschrift bestätigen, ihre Zeichnungsberechtigung nachweisen \(Kopie von Handelsreg.\) und ihre Identität belegen \(Kopie von Pass oder ID\)

### Class 3 Certificates \(hohe Sicherheit\)

* Überprüfung der Identität des Antragsstellers durch persönliches Vorsprechen und Vorweisen eines amtlichen Dokuments \(Pass oder ID\)
* Weitere Prüfungen analog Klasse2

### Qualified Certificates \(höchste Sicherheit\)

* Analog Klasse 3
* Zusätzlich steht die CA unter staatlicher Kontrolle\(sog. Anerkennung und jährliche Audits\)
* Diese Zertifikate werden nur für natürliche Pers. ausgestellt
* Zertifikatszweck: Erstellung von rechtsgültigen Signaturen

### Extended Validation Certificates \(hohe/höchste Sich.\)

* TLS-Zertifikate \(grüne Adresszeile im IE\)
* Anforderungen an die Antragsstellung
  * Antragstellende Firma muss auf rechtliche und operationelle Existenz hin überprüft werden
  * Antrag muss durch eine nahestehende Drittperson der Firma mitunterzeichnet sein \(Revisionsstelle, Rechtsabteilung, VR-Mitglied\)
  * Es muss überprüft werden, ob die antragstellende Firma berechtigt ist, den gewünschten Domain-Namen zu benutzen
  * Titel der Vorlesung

    Die Zustellung des Antrags per physischer Post ist zulässig; evtl. wird die Urheberschaft des Antrags zusätzlich telefonisch noch überprüft \(wird z.B. von SwissSign so gehandhabt\)
* Anforderung an die CA: Diese muss ihre Prozesse jährlich auditieren lassen

## Revokationslisten \(CRL\)

* Zertifikate können vor Ablauf des Gültigkeitsdatums für ungültig erklärt werden
* Dieser Vorgang wird als Revokation bezeichnet
* Die Identifikation der Zertifikate erfolgt über deren Seriennummer
* Gründe für die Revokation eines Zertifikats
  * Zugehöriger privater Schlüssel wurde gebrochen
  * Zertifikatsbesitzer verlässt das Unternehmen
  * Personendaten des Zertifikatsbesitzers haben geändert, sodass ein neues Zertifikat ausgestellt werden muss
* Die Liste der für ungültig erklärten Zertifikate wird Revokationsliste genannt \(engl. Certificate Revocation List, CRL; dt. Zertifikatssperrliste\)
* Jede CA muss eine Revokationsliste authentisch führen und publizieren
* Alternativ zur Überprüfung via Revokationsliste ist auch eine Online-Prüfung via Online Certificate Status Protocol \(OCSP\) möglich
* Hinweis: Beim sog. OCSP-Stapling liefert der Webserverbetreiber anstelle der CA die Antwort zur OCSP-Anfrage

![](../.gitbook/assets/image%20%2866%29.png)

### Typen von Revokationslisten

* Vollständige Revokationsliste \(Base CRL\)
  * Enthält Verweise auf sämtliche Zertifikate, welche bis zum Ausgabezeitpunkt der Liste revoziert worden sind
* Delta Revokationsliste \(Delta CRL\)
  * Enthält Verweise auf diejenigen Zertifikate, welche seit der Ausgabe der letzten Base CRL revoziert worden sind
* Indirekte Revokationsliste \(Indirect CRL\)
  * Enthält Verweise auf Zertifikate, die von verschiedenen

CAs revoziert worden sind \(nur selten verwendet!\)



## Überblick Grundbausteine

* Certification Authority \(CA\)
* Directory Service \(Verzeichnisdienst\)
* Personal Security Environment \(PSE\)
* Sicherheitsapplikation

## Kontrollfragen

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


# Themenüberischt

## Modulinhalt

| Thema | Dozent | Art |
| :--- | :--- | :--- |
| [Standards I](themenuebersicht.md#m-standards-i-tom-schmidt) | [Tom Schmidt](themenuebersicht.md#m-standards-i-tom-schmidt) | M |
| [Grundlagen und Methoden Risikomanagement](themenuebersicht.md#m-risikomanagement-hans-peter-koenigs) | [Hans-Peter Königs](themenuebersicht.md#m-risikomanagement-hans-peter-koenigs) | M |
| Wissenschaftliches Schreiben | Sylvia Bendel | M |
| [Grundlagen Computer-Security](themenuebersicht.md#t-grundlagen-computer-security) | [Sebastian Obermeier](themenuebersicht.md#t-grundlagen-computer-security) | T |
| Web Application Security/OWASP TOP 10 | Ivan Bütler | T |
| [Business Continuity Management I](themenuebersicht.md#m-business-continuity-management-peter-e-fischer) | [Peter E. Fischer](themenuebersicht.md#m-business-continuity-management-peter-e-fischer) | M |
| [Hacking \# Cracking \# Malware](themenuebersicht.md#t-hacking-cracking-malware) | [Slavo Greminger](themenuebersicht.md#t-hacking-cracking-malware) | T |
| [Standards II](themenuebersicht.md#m-standards-ii-armand-portmann) | [Armand Portmann](themenuebersicht.md#m-standards-ii-armand-portmann) | M |
| Zertifikatsbasierende Anwendungen und PKI | Armand Portmann | T |
| [Sicherheitspolitik und Konzepte](themenuebersicht.md#m-sicherheitspolitik-und-konzepte-armand-portmann) | [Armand Portmann](themenuebersicht.md#m-sicherheitspolitik-und-konzepte-armand-portmann) | M |
| Kryptologie | Josef Schuler | T |
| Rechtsaspekte für Systemverantwortliche | Ursula Uttinger | R |
| Network Defence | Peter Infanger | T |
| [Physische Sicherheit / Grundlagen Brandschutz](cas-ist-technologie/physische-sicherheit-grundlagen-brandschutz.md) | [Markus Spinnler](cas-ist-technologie/physische-sicherheit-grundlagen-brandschutz.md) | T |
| IT-Sicherheitsarchitektur | Markus Pfister | T |
| Awareness - Theorie | Carlos Rieder | M |

## M: Standards I / Tom Schmidt

* ISO 27001
  * Beschreibung Information Security Management System \(ISMS\)
  * Kreislauf/Prozess: Establish, Implement, Maintain, Improve
  * Grundlage für ISO-Zertifizierungen
  * Kontrollen sind zu implementieren
* ISO 27002 
  * "Best Practices"-Framework
  * Hilfestellung für die Implementierung von Sicherheitskontrollen
  * 14 Domänen, 35 Kontrollziele, 114 Kontrollen
* Weitere ISO-Standards

## M: Risikomanagement / Hans-Peter Königs

* Praktisches Risikomodell
* Begriffe \(auch engl.\)
* RM-Prozess / ISO 27005
  * Kontext festlegen
  * Risiko identifizieren
  * Risiko analysieren
  * Risiko bewerten
  * Risiko behandeln
  * Kommunikation / Konsultation
  * Überwachung / Überprüfung

## M: Business Continuity Management / Peter E. Fischer

* Ziel: Weiterbetrieb, Schaden minimieren, Recovery: Möglichst schnell ins Daily Business
* Fokus: Wichtigste Geschäftsprozesse, Informationen, Applikationen, Systeme, Abhängigkeiten, Räume \(Tresor\)
* Bedrohungen
* Kritische Infrastrukturen
* Business Impact Analyse
* Organisation
* Eskalation / Alarmierung
* Notfallhandbuch / Notfallkommunikation

## M: Standards II / Armand Portmann

* Das IT-Grundschutz-Kompendium beinhaltet elementare Gefährdungen und sog. Bausteine.

  Umfang der Ausgabe 2019: 

  * 47 Gefährdungen 
  * 94 Bausteine
  * 840 Seiten.

* Absicherungsarten: 
  * Basisabsicherung \(einfach, KMU\)
  * Kernabsicherung \(elementare Geschäftsprozesse, Ressourcen\)
  * Standardabsicherung \(von BSI präferiert, vollständiger IT-Grundschutz-Vorgehensweise\)
* Aufbau IT-Grundschutz Kompendium
  * Bausteine
  * Gefährdungen
  * Massnahmen
* Erstellen eins Sicherheitskonzepts:
  * BSI-Standard 200-2: IT-Grundschutz-Methodik
    * Konkretisiert die Darstellung des ISMS nach BSI-Standard 200-1
    * Beschreibt detailliert den Aufbau und Betrieb eines ISMS in der Praxis
      * Aufgaben des Informationssicherheitsmanagements
      * Aufbau von Organisationsstrukturen für die

        Informationssicherheit
* BSI-Standards:
  * BSI 100-1: Managementsysteme für Informationssicherheit  \(entspricht ISO 27001\)
  * BSI 100-2: IT-Grundschutz-Vorgehensweise
  * BSI 100-3: Risikoanalyse auf Basis von IT-Grundschutz
  * BSI 100-4: Notfallmanagement



## T: Grundlagen Computer-Security / Sebastian Obermeier

* IT-Schutzziele aus technischer Sicht
  * Vertraulichkeit, Integrität, Verfügbarkeit
* Bewertung von Sicherheit
  * Orange Book
  * Common Criteria
* Tests
  * Pen-Tests
  * Security-Test
  * Open Source Security Testing Methodology Manual \(OSSTMM\)
    * Handbuch für Security Testing
* Authentifizierung
  * Entropie von Passwörter
  * Hashes
* Autorisierung
  * DAC, RBAC, SRBAC, MAC
  * Multi Layer
  * RBAC
* Architektur
  * Client-Server, Terminal-Server, Multitier, Cloud-Computing, Virtualisierung

## T:  Hacking\#Cracking\#Malware / Slavo Greminger

* Begriffe \(Malware, Web Based Attacks, Web Application Attacks, Phishing, ...\)
* Botnetze
  * Bot = infizierter Rechner oder Device
  * C&C / C2 = Command and Control Server
  * Gebraucht für: Spam-versand, Phishing, Sniffen, DDoS
* DoS
  * Booters
  * DDoS \(Ping / SYN-Flood\)
* Buffer-Overflows \(Überschreiben von reservierten Speicher, damit kann Schadsoftware eingefügt werden\)
* Malware
  * Begriffe: Virus, Wurm, Trojaner
  * Betrüger brauchen: 
    * Öffentliche Server  = Stehlen von Informationen, Updates/Konfigurationen zu aktivieren
    * Mechanimus für = Persistenz, Antiviren-Lösungen umgehen
  * Funktionen \(DoS, Ransomware, Spam-Enginge, Backdoor\)
  * Netzwerk \(Fastflux, Domains für Bots, Domain Generating Algorithmus \(P2P, Blockchain-Domains, TOR/I2P\)\)

## M: Sicherheitspolitik und Konzepte / Armand Portmann

*  Begriffe nicht einheitlich angewendet
* "Policy" ist pro Firma anders definiert
* Sicherheitspyramide / TopDown Approach
  * Informationssicherheitspolitik \(ISP\)  \(Warum?\)
  * Informationssicherhetitskonzepte \(ISK\) \(Was?\)
  * Regelwerk \(Wie?\)
* Ebenen

  * Strategisch \(Ziele, Generelle Ausrichtung, Organe\)
  * Taktisch \(Funktionalitäten, Betriebskonzepte, Bestimmung von Massnahmen\)
  * Operativ \(Richtlinien, Umsetzung der Massnahmen\)

## T: Physische Sicherheit / Grundlagen Brandschutz / Markus Spinnler

* Begriffe 
  * Safety
  * Security
* Sicherheitsplanung
* Gefahrenkatalog
  * 60% Mensch / 40% Technik
* Überwachungsarten \(Perimeter, Physisch, Raum, Objekt, Überfall\)
* Brandschutz



## T: Network Defence / Peter Infanger

* Einführung
  * Protokoll / Definition
  * Schichtenmodell 
  * Angriffsflächen Netzwerk
  * Schwachstellen des Internets
  * IP
    * Paket
    * Adressierung IPv4
    * Adressaufteilung
    * Spezielle Adressen \(Broadcast, Loopback\)
  * Paket-Forwarding \(Ablauf\)
* Protokollanalyse
  * Analysatoren
    * Software \(Wireshark\)
    * Hardware \(Mobile, WLAN\)
    * Probleme \(Performance, zu viele Daten\)
    * Einsatzgebiet, wo richtig messen. zum Teil nur Subnetze möglich, Analysatoren an mehrere stellen Daten sammeln und integrieren.
  * Statistiken/Performance
    * Auswertungen z.B. aus Lasttests
    * Basismetriken, abweichen erkannt
    * Wenn Daten weiter auf Gefahren analysiert werden spricht man oft auch von Intrusion Detection Systemen \(IDS\)
* Netzwerksicherheit im Internet
  * Routing
    * Autonome Systeme \(AS\), unterteilt in 3 Klassen \(einzeln, Provider, Transit\)
    * BGP
      * TCP, Port 179
      * Ohne Sicherheitsmechanismen entwickelt
      * BGP Policy Routing \(durch Netzbetreiber festgelegt\)
      * Angriffe: Announcment von falschen Routen, De-Aggregration
  * IP Hijacking
  * Serviceverfügbarkeit \(DoS\)
    * UDP Packet Storm
    * TCP Syn Flooding
    * Ping-Flooding
  * DNS
    * Abfragen
    * Angriffe
      * DNS Spoofing / Cache Poisoning:  Umleiten von Datenverkehr zum Angreifer
      * DNS Amplification Attack:  Verstärkung 
    * Abwehrmassnahmen
      * DNSsec
        * Nimmt sich 2 Problemenen an:
          * Integrität
          * Authentizität
        * DNS-Daten digital signiert
        * Problem: Letzte Meile von DNS zum Client bleibt ungesichert
      * DoT \(DNS over TLS\) + DoH \(DNS over HTTPS\)
        * [Routing im Internet](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#routing-im-internet)[Autonomes System](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#autonomes-system)[Border Gateway Protocol BGP](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#border-gateway-protocol-bgp)[BGP Policy Routing](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#bgp-policy-routing)[Auftretende Routingprobleme](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#auftretende-routingprobleme)[Angriffe auf BGP](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#angriffe-auf-bgp)[IP Hijacking](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#ip-hijacking)[Serviceverfügbarkeit \(DOS\)](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#serviceverfu-gbarkeit-dos)[Abwehrmassnahmen](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#abwehrmassnahmen)[Das Telefonbuch des Internet \(DNS\)](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#das-telefonbuch-des-internet-dns)[Abfragen](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#abfragen)[Angriffe auf DNS](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#angriffe-auf-dns)[ ](https://app.gitbook.com/@ictberufsbildungzentralschweiz/s/security/~/drafts/-LzmQ7tNb8z_FI9mIm0j/cas-ist-technologie/network-defence/netzwerksicherheit-im-internet#abwehrmassnahmen-1)




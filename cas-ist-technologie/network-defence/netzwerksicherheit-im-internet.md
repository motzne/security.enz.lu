# Netzwerksicherheit im Internet

## Routing im Internet

* Border Gateway Protocol BGP übernimmt Routing zwischen Autonomen Systemen \(AS\)
* Zwei Typen:
  * Interior Gateway Protocol \(IGP\) für Routing innerhalb z.B. RIP, OSPF \(“Open Shortest Path First”\)
  * Exterior Gateway Protocol \(EGP\) - Standard im Internet derzeit BGP \(“Border Gateway Protocol”\)

### Autonomes System

* Gruppe von IP-Netzen, welche untereinander ein bestimmtes Routing-Verfahren einsetzen \(und gemeinsam verwalten\)
* jedes AS hat eine Nummer \(früher 16 heute 32 Bit\)
* AS haben sich historisch unterschiedlich entwickelt daher oft verschiedene Routing-Strategien in verschiedenen AS

#### Unterteilt in drei Klassen von AS:

* Institutionen mit einer einzigen Verbindung zum restlichen Graph
* regionale Internet-Provider; Institutionen mit Peering-Abkommen \(Durchleiten von fremdem Datenverkehr im allgemeinen nur beschränkt\)
* "Transit AS": Internet-Backbone hoher Kapazität

![](../../.gitbook/assets/image%20%2865%29.png)

## Border Gateway Protocol BGP

* Verwendet TCP, Port 179
* wurde **ohne Berücksichtigung von Sicherheitsaspekten entwickelt**
* Routing zwischen verschiedenen AS
* Jeder BGP-Router eines AS kennt stets die beste Route als vollständigen Pfad zu jedem anderen BGP- Router
* Ein BGP-Router eines AS\(der"Speaker"\) informiert periodisch alle Peers \(seine Nachbarn\) über seine Routen
* Die Stärke des BGP-Protokolls liegt darin, verschiedene optionale Routing-Pfade in einer einzigen Routingtabelle zu vereinen.
* Metrik basiertes Routing
  * niedrigsten \(z. B. Übertragungsverzögerung\)
  * höchsten \(z. B. Bandbreite\)

![](../../.gitbook/assets/image%20%289%29.png)

### BGP Policy Routing

* BGP kann eine “Routing-Policy” berücksichtigen:
  * “Pakete von X nach Y dürfen nicht über Z laufen” \(wobei Z eine fremde Firma, das Ausland, ein teurer Provider... sein kann\)
* BDP Routing Policies werden durch den Netzbetreiber festgelegt; damit werden, anders als beim Metrik-basierten Routing, neben technische Gütekriterien auch strategische Faktoren berücksichtigt.

### Auftretende Routingprobleme

* Zyklen durch fehlerhafte Konfiguration
* Stark wachsender Datenverkehr an zentralen Routern
* Wachsende Routing-Tabellen \(Bsp. Jahr 2000:  ca. 100k / 2019: 800k+\)

### Angriffe auf BGP

* Announcement von falschen Routen
  * Massiver Eingriff ins Internetrouting möglich \(vergleichbar route flapping\)
  * Zugriff auf BGP Router wird benötigt
* De-Aggregation von Routen bzw. unterbrechender BGP-Peer Verbindungen \(TCP Reset Attack\)
  * die Routing- und Forwarding-Tabelle wird riesig
  * führt u.U. bei Ressourcenmangel zu DoS Situation
  * Neuaufbau des Peerings ist zeitaufwendig und ressourcenfressend
  * stellt bei gezielter Wiederholung DoS Angriff dar

#### Aggregation von Routen

Routenaggregation beschreibt eine Methode zur Minimierung der in einem IP- Netzwerk erforderlichen Anzahl von Routing-Tabellen.

#### Wie könnten Router angegriffen werden? Was könnten die Auswirkungen sein?

* Smurf­Angriff
  * ICMP Pakete ohne Absenden
  * Blockierend des Routers
* IPSpoofing
  * Vortäuschen einer bestimmten IP­Adresse als Absender­Adresse.
* SYN Flooding  ○ Sendet nur SYN, ACK wird ausgelassen ­ der Router wartet auf die ACK ­Meldungen ● 
* Portscan
  * Offene Ports

## IP Hijacking

* wiederrechtliche Übernahme von registrierten aber aktuell unbenutzten IP-Adressbereichen durch Dritte verstanden.
* Anfragen an die entsprechenden IP-Adressen werden somit auf die Systeme der Angreifer umgeleitet
* da unbenutzt fällt dies nicht sofort auf
* Verwendung findet dieses Verfahren u.a. im Spamversand und ist auf konzeptionelle Schwächen des Routing-Systems zurück zu führen.
* Mit BGP und Prefix Hijacking = Teile des Datenverkehrs an sich umzuleiten, Folge: Schlechte Verbindungen, ManInTheMiddle möglich 

## Serviceverfügbarkeit \(DOS\)

* Techniken wie:
  * UDP Packet Storm
  * TCP SYN Flooding
  * PING-Flooding
* Bots gehen werden von C&C gesteuert
* Amplification Attacks = Missbrauch ungeschützter UDP Services, Faktoren sind je nach Protokoll unterschiedlich =&gt; Folge: Bandbreite der Angriffe wird immer grösser
* 
### Abwehrmassnahmen

Messen um festzustellen ob

* Schwellwert für bestimmte Paket/Protokolltypen überschritten wurde
* Deutliche Abweichung gegenüber eines Baseline Wertes
* Bestimmte Herkunft \(location based\) feststellen



## Das Telefonbuch des Internet \(DNS\)

### Abfragen

1. hosts Datei
2. lokaler DNS Server 
3. iterative Abfrage des hierarchischen DNS-Systems

### Angriffe auf DNS

#### DNS Spoofing/Cache Poisoning

**DNS spoofing**, auch bekannt als **DNS cache poisoning**, ist ein Form von hacking bei der korrupte [Domain Name System](https://de.wikipedia.org/wiki/Domain_Name_System)-Einträge im Zwischenspeicher \([Cache](https://de.wikipedia.org/wiki/Cache)\) des DNS-Resolvers eingegeben werden, durch den der Name-Server eine falsche Antwort zurückgibt, z. B. eine falsche IP Adresse. Dies führt dazu, dass der [Datenverkehr](https://de.wikipedia.org/wiki/Man-in-the-Middle-Angriff) auf den Computer des Angreifers \(oder einen anderen Computer\) umgeleitet wird. Die direkte Übersetzung von DNS cache poisining bedeutet das Vergiften des DNS Zwischenspeichers. _Quelle: Wikipedia_



#### DNS Amplification Attack

![Cloudflare DNS Amplification Attack](../../.gitbook/assets/image%20%2852%29.png)

Bei der DNS Amplification Attack wird ausgenutzt, dass Nameserver in bestimmten Fällen auf kurze Anfragepakete mit sehr langen Paketen antworten. Eine 60 Bytes lange Anfrage kann in bestimmten Fällen eine mehr als 3000 Bytes lange Antwort provozieren. Es liegt also ein Verstärkungsfaktor von mehr als 50 vor. Mittels [IP-Spoofing](https://de.wikipedia.org/wiki/IP-Spoofing) wird diese Antwort auf die [IP-Adresse](https://de.wikipedia.org/wiki/IP-Adresse) des Opfers gelenkt. Sendet ein Angreifer beispielsweise einen konstanten Datenstrom von 100 Megabits pro Sekunde an verschiedene offene Nameserver im Internet, so erzeugen diese bei einem Verstärkungsfaktor von 50 eine Last von 5 Gigabits pro Sekunde beim Opfer. _Quelle: Wikipedia_



* Probleme mit Anycast
* ...

### Abwehrmassnahmen

#### DNSsec

* Nimmt sich zweier fundamentalen Sicherheitsprobleme des DNS an
  * Datenintegrität
  * Datenauthentizität.
* Es soll gesichert werden, dass die Antwort so ankommt wie sie abgeschickt wurde und dass sie von dem Server abgeschickt wurde von dem der Client seine Antwort erwartet.
* Zur Sicherung der DNS Antworten werden diese mit digitalen Signaturen versehen
* Schwächen von DNSsec
  * Bei DNSsec sind die DNS-Daten immer digital signiert, aber dennoch im Klartext einsehbar.
  * "Die letzte Meile"von Nameserver des Providers zu dessen Kunden bleibt völlig ungesichert.

![](../../.gitbook/assets/image%20%28100%29.png)

#### DoT oder DoH

![](../../.gitbook/assets/image%20%2848%29.png)






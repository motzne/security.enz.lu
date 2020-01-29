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

![](../../.gitbook/assets/image%20%2839%29.png)

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

![](../../.gitbook/assets/image%20%286%29.png)

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

## IP Hijacking

* wiederrechtliche Übernahme von registrierten aber aktuell unbenutzten IP-Adressbereichen durch Dritte verstanden.
* Anfragen an die entsprechenden IP-Adressen werden somit auf die Systeme der Angreifer umgeleitet
* da unbenutzt fällt dies nicht sofort auf
* Verwendung findet dieses Verfahren u.a. im Spamversand und ist auf konzeptionelle Schwächen des Routing-Systems zurück zu führen.
* Mit BGP und Prefix Hijacking = Teile des Datenverkehrs an sich umzuleiten, Folge: Schlechte Verbindungen, ManInTheMiddle möglich 



## Serviceverfügbarkeit \(DOS\) 







## Das Telefonbuch des Internet \(DNS\)




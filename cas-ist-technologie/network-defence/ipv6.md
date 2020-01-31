# IPv6

## Motivation für Wechsel

* Adressbereich
  * 32 Bit Adressraum ermöglicht Millionen von Netzwerken .... Aber viele sind Klasse C Netzwerke mit zu wenig Adressen für viele Unternehmungen
  * 214 Klasse B Netzwerk Adressen sind fast aufgebraucht
* Neue Servicetypen
  * verschiedene Applikationen benötigen unterschiedliche Ansprüche an Zuverlässigkeit und Geschwindigkeit
  * gegenwärtiges IP verwendet oft nicht implementierte Servicetypen
* Multicasting und Anycast
  * Bieten neue Möglichkeiten zur Verbreitung vom multimedialen Inhalten oder Anpassung an besondere Verhältnisse

![](../../.gitbook/assets/image%20%2848%29.png)

  


## Neue Features

* Adressraum: IPv6 Adressen sind **128 Bit lang**
* Headerformat: total unterschiedlich
* Headererweiterungen:
  * zusätzliche Informationen werden in optionalen Headererweiterungen, gefolgt von den Daten, gespeichert
* Unterstützung von Audio und Video:
  * Flow Labels und Quality of Service erlauben Aufbau geeigneter Audio-und Video-Verbindungen
* Erweiterungen
  * neue Features können einfach zugefügt werden

## IPv6 Paket

* Basis-Header hat feste Länge von 40 Bytes
* "unterwegs" keine Fragmentierung erlaubt
* Weniger Felder als bei IPv4
* Funktion einiger Felder gleich geblieben aber anders benannt

![](../../.gitbook/assets/image%20%2881%29.png)

### Header

* IPv6 besitzt primär nur einen Basisheader. Erweiterungsheaders möglich, siehe Grafik oben "Next Header"
* Verkettung von Erweiterungsheader \(Chaining\), Länge unbestimmt

### Adressierung

* 128-Bit Adressen
* Beinhalten Network Prefix und Host Suffix
* Keine Adressklassen
* Prefix/Suffix Grenzen können überall sein
* Spezielle Typen von Adressen:
  * unicast - single destination computer
  * multicast - multiple destinations; eventuell nicht innerhalb der gleichen Site
  * anycast/cluster - Sammlung von Computern mit demselben Prefix; Paket wird an ein Mitglied des Clusters ausgeliefert
* IPv4 Broadcast sind Subsets von Multicast
* Cluster Adressierung erlaubt Verdopplung der Dienste
* wird auch als Anycast bezeichnet!

  
p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 20.0px Helvetica; color: \#000000}  
p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Helvetica; color: \#000000}  
p.p3 {margin: 0.0px 0.0px 0.0px 0.0px; font: 10.0px Helvetica; color: \#000000}  
span.s1 {font: 11.0px Arial}  
span.s2 {color: \#fb0007}  


### IPv6 Adressnotation

* 128-Bit Adressen in dotted decimal Format;benötigt 16 Zahlen: `105.220.136.100.255.255.255.255.0.0.18.128.140.10.255.255`
* Gruppen von 16 Bit Zahlen in hexadecimal Format, unterteilt mit Doppelpunkten: `69DC:8864:FFFF:FFFF:0:1280:8C0A:FFFF`
* Zero-compression, eine Reihe von Nullen kann unterdrückt werden  `FF0C:0:0:0:0:0:0:B1`wird zu `FF0C::B1`
* IPv6 Adressen mit 96 führenden Nullen wird als IPv4 Adresse interpretiert

### Adress-Aufteilung

* Endsysteme haben immer
  * 64 Bit Net/Subnet Prefix
  * 64 Bit Interface ID

![](../../.gitbook/assets/image%20%283%29.png)

## IPv6: Adressen, die man so sieht

* Loopback: ::1 \(vgl: IPv4: 127.0.0.1\)
* RIPE: 2001:0600:... . . . 2001:09ff:...
* ARIN: 2001:04xx:...
* APNIC: 2001:02xx:..., 2001:0axx:...
* 2001:DB8::/32 für Dokumentationszwecke \(RFC3849\) - Link-Local: fe80::.... \(vgl: IPv4: RFC1918\)
* 6to4: 2002:xxx:xxx:...
* IPv4-mapped: ::FFFF: \(nur an Socket-API\)

## IPv6 Addresstypen:

![](../../.gitbook/assets/image%20%2847%29.png)



* Unicast
* Mulitcase
* Anycast

## DHCPv6

Die Leute vom IPv6 Komitee haben sich da etwas ganz schlaues ausgedacht:

### Stateless Address Autoconfiguration \(SLAAC\) 

In IPv6 brauchen wir ja eigentlich nur das Prefix und die Prefixlänge um eine Global Unicast Adresse zu generieren, der Rest der Adresse kann von unserer MAC Adresse generiert werden. Da der Router diese Informationen ja eh hat, wird ein Router Solicitation Paket an den Router geschickt \(Multicast an alle Router, IPv6 hat kein Broadcast\) und der Router antwortet. Der Client schaut nun, ob noch ein weiteres Gerät seine generierte IPv6 Adresse hat. 

### SLAAC und DHCPv6 

Der Router gibt zwar einige Informationen, diese sind aber unvollständig. Der Client soll doch bitte noch den DHCP Server kontaktieren für weitere Informationen. 

### DHCPv6 only \(Stateful\) 

Der Router sagt, verschwinde, ich will damit nichts zu tun haben, frag doch den DHCPv6 Server, der ist für das da!   
  
Stateful weil Informationen über die Clients gespeichert werden.

## IPv6 NAT 

IPv6 hat ja keinen Mangel an Adressen. Deswegen braucht es bei IPv6 eigentlich kein NAT. Es gibt aber trotzdem NAT, hat aber einen anderen Zweck als bei IPv4. Dieser Zweck ist es, zwischen einem z.B. IPv6 Only Netzwerk und einem IPv4 Netzwerk zu „vermitteln“.





## IPv6 Adress-Beispiele

![](../../.gitbook/assets/image%20%2826%29.png)



![](../../.gitbook/assets/image%20%2830%29.png)










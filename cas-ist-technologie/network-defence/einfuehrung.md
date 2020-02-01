# Einführung

## Protokolle / Definition

Protokolle in der Informatik sind Regeln

* die das Format, 
* den Inhalt, 
* die Bedeutung 
* und die Reihenfolge 

gesendeter Nachrichten zwischen verschiedenen Instanzen festlegen

## Schichtenmodell

* Protokolle arbeiten miteinander – bauen aufeinander auf
* Output einer Schicht ist Input der nächsten Schicht \(gilt in beide Richtungen!\)

![](../../.gitbook/assets/image%20%2836%29.png)



## Angriffsflächen des Netzwerkes

* **Sniffing**, abhören des Netzwerkverkehrs
* **Manipulation**, von übermittelten Informationen und Kommunikationsverhalten
* **Maskerading**, verstecken hinter falscher Identität
* **Replay**, wiedereinspielen von Informationen
* **Umleiten**, um Daten besser abhören zu können
* **Denial-of-Service,** Kommunikationssystem stören
* **Hijacking**, Kommunikationsverbindungen übernehmen

## Schwachstellen des Internet

* Routing \(Route Manipulation\)
* Addressing IP Hijacking\)
* DNS
* Service Interruption \(DoS Attacks\)



## IP Internet Protocol

* wichtigstes Internet Protokoll:RFC-791
* **verbindungsloser** Paketdienst
  * keine direkte Verbindung notwendig
  * absenden und davon ausgehen das es ankommt
* legt Adressierung fest \(Softwareadresse, virtuell\)
* \(fast\) keine Hardwareabhängigkeiten
* keine Schutzelemente \(ausser Checksumme für Header\)
* es wird auf der IP-Ebene **weder die Richtigkeit der der Daten noch die Einhaltung von Sequenz, Vollständigkeit und Eindeutigkeit der Datagramme überprüft**.

![](../../.gitbook/assets/image%20%2849%29.png)

### IP Paket

* Paketkopf \(Header\)
  * enthält Zieladresse
  * feste Feldgrösse
  * Art der Nutzlast \(Protocol\)
* Nutzlast \(DataArea, Payload\)
  * variable Grösse bis ca. 63KB
  * keine minimale Grösse – kann als auch 0 Byte sein!

### IPv4 Adressierung

* Ist eine 32-Bit grosse Zahl \(max. also 2^32 gross!\)
* Wird zum besseren «Handling» in 4 durch Punkte getrennte Dezimalzahlen dargestellt \(dotted-dezimal-notation\) Beispiel: 147.88.105.123
* Jede dieser Dezimalzahlen kann einen Wert von 0 .. 255 annehmen \(2^0 -1 .. 2^8 -1\)
* Ist eine «virtuelle Adresse» welche nach bestimmten Regeln vergeben wird

### IPv4 Adresse: Aufteilung

* Besteht aus 2 Teilen: Netzwerk- und Host-Teil
* Wie gross der Netzwerkteil \(Präfix\) bzw. der Hostteil \(Suffix\) wird durch die Netzwerkmaske bestimmt.
* Globale Autorität \(Provider, IANA\) weist eindeutigen Präfix dem Netzwerk zu
* Lokaler Administrator weist eindeutigen Suffix dem Host zu

### Spezielle Adressen

* **Netzwerkadresse** \(z.B. 147.88.0.0\) wird nicht in Paketen verwendet!→man kann kein IP Paket an ein Netzwerk schicken\), Alle Suffix-Bits sind 0
* **Broadcast** Adressen \(z.B. 147.88.255.255\) spricht alle Host in einem Netzwerk an \(das bedeutet aber nicht dass alle antworten!\),  Alle Suffix-Bits sind 1
* **Loopbackadressen** 127.x.x.x→verlassen nie den Computer sondern werden als lokale Testadresse verwendet, Beispielsweise **Localhost**
* «any address» 0.0.0.0  →verwenden Interfaces, wenn ihnen noch keine Adresse zugewiesen ist →wird auch von Routern verwendet als Synonym für «alle Adressen» z.B. bei «default routes»

## Router

* verbindet Netzwerke
* weiss anhand seiner Routingtabelle, **wohin** er ein angekommenes IP Paket **zu schicken** hat
* Routingtabelle kann von Hand \(statisches Routing\) oder aber automatisch \(dynamisches Routing\) erzeugt werden
* Routingtabelle enthält:
  * Zielnetzwerk
  * Zielmaske
  * Schnittstelle/Next Hop über welche es erreichbar ist

![ Beispiel Routingtabelle](../../.gitbook/assets/image%20%2830%29.png)

### IP Paket "Forwarding" \(Routing\) / Ablauf

* Gegeben ist ein empfangenes IP Paket
* Prüfen des TTLs \(TimeToLive\):
  * Wenn TTL =0, Paket wegschmeissen & Mitteilung an Absender
  * Wenn TTL &gt;0, Weiterfahren mit Bearbeitung
* Extrahieren der Zieladresse **D**
* Durchsuchen der Routingtabelle nach **D**
* Auslesen des nächsten Verbindungspunktes **N** \(next hop\)
* Dekrementieren des TTLs um 1
* Senden des Paket nach **N**

## Pfade durch das Internet

* Weg ist nicht immer gleich: Hin- und Rückweg kann unterschiedlich sein
* Enduser kann Pfad nicht bestimmen!
* Pfad aufzeichnen mit dem Befehl: `tracert` bzw. `traceroute`




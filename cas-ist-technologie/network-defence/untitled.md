# Protokollanalyse

## Analysatoren

* Charakteristiken
  * Schnelligkeit \(Hardwarenähe\) und Speicherkapazität
  * Promiscous Mode
  * Frame Capturing und Filtering 
  * Expert Diagnosis: automatisierte Auswertung 
  * Autolearning 
  * Protocol Decoding 
  * einfache Bedienbarkeit!
*  Software-Analyser: \(nur einige wenige Beispiele\)
  * Wireshark \(für Linux und viele andere Plattformen\)
  * Microsoft Netzwerk Monitor
  * Packetyzer \(Variante von Ethereal mit Paketgenerator\)
* Hardware-Analyser
  * Mobile 
* Es gibt auch eine Kombination aus Software und Hardware,  Bsp. für Wifi-Analyse

### Probleme beim Einsatz von Sniffern

* Windows-basierende Systeme sind sehr geschwätzig
* Dieser Traffic fliesst in die Messung mit ein   
   →es ist mühsam diesen aus Messung rauszufiltern

  Abhilfe: IPv4/IPv6 auf Messadapter abschalten!

### Einsatz der Analysatoren im Netzwerk

* Erfassen der Verkehrsdaten
* Führen von Statistiken  – welche Protokolle und wie häufig treten sie auf – feststellen von Fehlern  – Paketgrössen erfassen
* Analyse von einzelnen und zusammenhängenden Paketen
  * –  Erkennen von Fehlern und Missbrauch von Protokollen
  * –  Missbrauch ist aber nicht so einfach zu erkennen! Genaue Kenntnisse der Protokolle notwendig!
* Geräte welche eine weitergehende Interpretation der Daten im Hinblick auf einen möglichen Angriff vornehmen werden als „**Intrusion Detection System, IDS“** bezeichnet.

## Performancetests

* Z.B. RFC 2544, RFC 3432, RFC 4737, RFC5644, ...
* Messen verschiedene Parameter \(Durchsatz, Latency etc. \) auf verschiedenen Layern
* Macht man typischerweise bei der Inbetriebnahme oder in den Randzeiten der Nutzung des Netzwerkes
* Finden auf verschiedenen Layern statt, z.B. Ethernet, IP, TCP/UDP,

  
  



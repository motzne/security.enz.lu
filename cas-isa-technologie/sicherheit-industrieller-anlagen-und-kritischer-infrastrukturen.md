# Sicherheit industrieller Anlagen und kritischer Infrastrukturen

## IT Aspekte von kritischen Infrastrukturen

* Angriffe
  * Physische Angriffe
    * Bombe, Explosion, Sabotage
  * IT Security 
    * Stuxnet = Atomkrafwerk in Iran
    * Maroochy Waste Water, Hacker
    * Davis Besse Nuclear Power Plan, Slammer
    * Maersk
* **Kein Versicherungsschutz** auf Grund mangelhaften Schutzes vor Angriffen

### Begriffe

<table>
  <thead>
    <tr>
      <th style="text-align:left">Abk.</th>
      <th style="text-align:left">Begriff</th>
      <th style="text-align:left">Beschreibung</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left">Industrial Control System</td>
      <td style="text-align:left">Leitsystem</td>
    </tr>
    <tr>
      <td style="text-align:left">SCADA</td>
      <td style="text-align:left">Supervisory Control and Data Acquisition</td>
      <td style="text-align:left">Bezeichnet meist Leitsysteme mit Wide-Area Aspekten</td>
    </tr>
    <tr>
      <td style="text-align:left">DCS</td>
      <td style="text-align:left">Distributed Control System</td>
      <td style="text-align:left">Eher lokaler Natur</td>
    </tr>
    <tr>
      <td style="text-align:left">PLC</td>
      <td style="text-align:left">
        <p>Controller</p>
        <p>Programmable Logic Controller</p>
        <p>= SPS (Speicherprogrammierbare Steuerung)</p>
      </td>
      <td style="text-align:left">
        <p></p>
        <p>Besitzt Inputs und Outputs, erlaubt Programmierung der Outputs</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left">Substation</td>
      <td style="text-align:left">Unterstation = Umspannwerk</td>
    </tr>
    <tr>
      <td style="text-align:left">IED</td>
      <td style="text-align:left">Intelligent Electronic Device</td>
      <td style="text-align:left">
        <p>Controller f&#xFC;r Energietechnik</p>
        <p>Vorprogrammiert, nur gewisse Parameter einstellen</p>
      </td>
    </tr>
  </tbody>
</table>

![](../.gitbook/assets/image%20%28282%29.png)

Architektur

![Purdue Enterprise Reference Architecture \(PERA\)](../.gitbook/assets/image%20%28279%29.png)

![Purduemodell / Schichten-Modell](../.gitbook/assets/image%20%28285%29.png)

![](../.gitbook/assets/image%20%28281%29.png)

![Controller in der Prozessautomatisierung](../.gitbook/assets/image%20%28296%29.png)



![](../.gitbook/assets/image%20%28276%29.png)



## Office IT vs. Prozessleittechnik

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left">Office IT</th>
      <th style="text-align:left">Prozessleittechnik</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Prim&#xE4;res, zu sch&#xFC;tzende Objekt</td>
      <td style="text-align:left">Information</td>
      <td style="text-align:left">Physischer Produktionsprozess</td>
    </tr>
    <tr>
      <td style="text-align:left">Prim&#xE4;re Konsequenz einer Verletzung</td>
      <td style="text-align:left">Verlust vertraulicher Infor- mationen, monet&#xE4;rer Verlust</td>
      <td
      style="text-align:left">Bedrohung von Leib und Leben, Umweltsch&#xE4;den, monet&#xE4;rer Verlust</td>
    </tr>
    <tr>
      <td style="text-align:left">Fokus der Sicherheit</td>
      <td style="text-align:left">Sicherheit zentraler Server</td>
      <td style="text-align:left">Stabilit&#xE4;t dezentraler Feldger&#xE4;te</td>
    </tr>
    <tr>
      <td style="text-align:left">Verf&#xFC;gbarkeit</td>
      <td style="text-align:left">
        <p>95 &#x2013; 99%</p>
        <p>(zul. Downtime/Jahr: 18.25 - 3.65 Tage)</p>
      </td>
      <td style="text-align:left">
        <p>99.9 &#x2013; 99.999%</p>
        <p>(zul. Downtime/Jahr: 8.76 hrs &#x2013; 5.25 Minuten)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Determinismus</td>
      <td style="text-align:left">Stunden bis Monate</td>
      <td style="text-align:left">Millisekunden bis Sekunden</td>
    </tr>
    <tr>
      <td style="text-align:left">Anwendungsszenarien</td>
      <td style="text-align:left">Interaktiv, Transaktional</td>
      <td style="text-align:left">Echtzeit, Interaktiv</td>
    </tr>
    <tr>
      <td style="text-align:left">Reaktion auf Probleme</td>
      <td style="text-align:left">Reboot, Patching/Upgrade</td>
      <td style="text-align:left">Fehlertoleranz, Repair On-line</td>
    </tr>
    <tr>
      <td style="text-align:left">Virenschutz</td>
      <td style="text-align:left">Weit verbreitet</td>
      <td style="text-align:left">Kompliziert, oft unm&#xF6;glich</td>
    </tr>
    <tr>
      <td style="text-align:left">Lebensdauer</td>
      <td style="text-align:left">3-5 Jahre</td>
      <td style="text-align:left">5-20 Jahre</td>
    </tr>
    <tr>
      <td style="text-align:left">Outsourcing</td>
      <td style="text-align:left">Weit verbreitet</td>
      <td style="text-align:left">Selten</td>
    </tr>
    <tr>
      <td style="text-align:left">Patchmanagement</td>
      <td style="text-align:left">Oft, t&#xE4;glich</td>
      <td style="text-align:left">Selten, ben&#xF6;tigt Herstellerfreigabe</td>
    </tr>
    <tr>
      <td style="text-align:left">&#xC4;nderungen</td>
      <td style="text-align:left">H&#xE4;ufig</td>
      <td style="text-align:left">Selten</td>
    </tr>
    <tr>
      <td style="text-align:left">Zeitabh&#xE4;ngigkeit</td>
      <td style="text-align:left">Verz&#xF6;gerungen akzeptiert</td>
      <td style="text-align:left">Kritisch</td>
    </tr>
    <tr>
      <td style="text-align:left">Verf&#xFC;gbarkeit</td>
      <td style="text-align:left">Ausf&#xE4;lle akzeptiert</td>
      <td style="text-align:left">24x7</td>
    </tr>
    <tr>
      <td style="text-align:left">Awareness</td>
      <td style="text-align:left">Gut</td>
      <td style="text-align:left">Schlecht</td>
    </tr>
    <tr>
      <td style="text-align:left">Sicherheitstests</td>
      <td style="text-align:left">Weit verbreitet</td>
      <td style="text-align:left">Selten und problematisch</td>
    </tr>
    <tr>
      <td style="text-align:left">Physische Sicherheit</td>
      <td style="text-align:left">Abgesichert, bemannt</td>
      <td style="text-align:left">Gro&#xDF;fl&#xE4;chig, unbemannt</td>
    </tr>
  </tbody>
</table>

![Unterschiede Priorit&#xE4;ten](../.gitbook/assets/image%20%28295%29.png)

![Target Security Level bestimmt verbleibendes Risiko](../.gitbook/assets/image%20%28292%29.png)

## Cyber Security in kritischen Infrastrukturen

### Puzzle-Teile

![](../.gitbook/assets/image%20%28290%29.png)

<table>
  <thead>
    <tr>
      <th style="text-align:left">Puzzle-Teil</th>
      <th style="text-align:left">Zusammenfassung</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Bewusstsein &amp; Verst&#xE4;ndnis</td>
      <td style="text-align:left">
        <ul>
          <li>Es fehlt ein umfassendes, gemeinsames Verst&#xE4;ndnis des Risikos</li>
          <li>Die Realit&#xE4;t zwischen Abwehr (Denial) und Panik (Panic) steckt meist
            in der Mitte</li>
          <li><b>Verst&#xE4;ndnis</b> muss die Grundlage f&#xFC;r Entscheidungen sein</li>
          <li>Wie viele kleine Angriffe gibt es, welche nie in den Medien kommen?</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Menschen</td>
      <td style="text-align:left">
        <ul>
          <li>Gap zwischen Prozessbediener und IT Fachleuten
            <ul>
              <li>wenig Kontakt</li>
              <li>unterschiedliche Ziele (Run vs. Change)</li>
              <li>unterschiedliche Terminilogien</li>
            </ul>
          </li>
          <li>Menschliche Fehler
            <ul>
              <li>Fehlkonfiguration der Systemkomponenten</li>
              <li>Fehlbedienung in Stresssitutationen</li>
            </ul>
          </li>
          <li>Physischer Einmalzugriff ausreichend um getarnte Backdoor-Ger&#xE4;te
            zu installieren
            <ul>
              <li>Kommerziell verf&#xFC;gbar, g&#xFC;nstig</li>
              <li>Getarnt als Raumerfrischer, Steckdose, etc.</li>
              <li>=&gt; Isolation bietet keine aus- reichende Sicherheit (mehr)</li>
              <li>=&gt; Bewusstsein daf&#xFC;r noch nicht &#xFC;berall vorhanden</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Betriebskonzept</td>
      <td style="text-align:left">
        <ul>
          <li>Prozesse</li>
          <li>Angriffsmuster und Gegenmassnahmen unterliegen st&#xE4;ndigem Wandel</li>
          <li>Anwender m&#xFC;ssen (den meisten) <b>Aufwand in Betrieb und Wartung</b> der
            Sicherheitsarchitektur <b>stecken</b>, nicht in einmalige Investitionen</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Technologie</td>
      <td style="text-align:left">
        <ul>
          <li>Netzwerkzonen
            <ul>
              <li>Separierung des Control Systems von externen Netzwerken</li>
            </ul>
          </li>
          <li>Remote Access
            <ul>
              <li>Keine direkten Verbindungen zum Control System</li>
              <li>Benutzung von Terminal Servern</li>
            </ul>
          </li>
          <li>Die Technologie muss ..
            <ul>
              <li>Korrekt installiert und konfiguriert werden</li>
              <li>Durchgehend &#xFC;berwacht werden</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Standards &amp; Richtlinien</td>
      <td style="text-align:left">
        <ul>
          <li>Derzeit <b>kein &quot;Marktf&#xFC;hrer&quot;</b> erkennbar</li>
          <li>Industrie braucht einen f&#xFC;hrenden Standard!
            <ul>
              <li>=&gt; Wahrscheinlicher Kandidat: ISA 99/IEC 62443</li>
            </ul>
          </li>
          <li>
            <p>Verschiede Ans&#xE4;tze (siehe unten)</p>
            <ul>
              <li>Regulationen</li>
              <li>Interoperabilit&#xE4;ts-Standard</li>
              <li>Baseline-Standard</li>
              <li>Unternehmenstandard</li>
            </ul>
            <p></p>
          </li>
          <li>ISO/IEC 62443</li>
          <li>Energiewirtschaftsgesetz (EnWG) &#xA7;11</li>
          <li>ISO/IEC 27019
            <ul>
              <li>Sektor-spezifische Adaptation des IT Sicherheitsstandards</li>
              <li>Konzeptionell identisch mit IEC 62443-2-1</li>
              <li>Definiert Anforderungen f&#xFC;r Anlagenbetreiber, z.B.:
                <ul>
                  <li>Organisation</li>
                  <li>Asset Management</li>
                  <li>Betriebs- und Kommunikationsmanagement</li>
                  <li>Incident Management</li>
                  <li>Business Continuity Management</li>
                  <li>Compliance</li>
                </ul>
              </li>
              <li>ISO 27002:2013</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Anlagebetreiber</td>
      <td style="text-align:left">
        <ul>
          <li>Assessment der Systeme</li>
          <li>Betrieb und Wartung der Sicherheitsarchitektur
            <ul>
              <li>Kontinuierliches Monitoring der Infrastruktur</li>
              <li>Periodische Analyse von Logs</li>
              <li>Revision</li>
            </ul>
          </li>
          <li>Schulung der Mitarbeiter (auf allen Ebenen)</li>
          <li>Evaluation und Budgetierung zus&#xE4;tzlicher Kosten</li>
          <li>=&gt; <b>Adressierung</b> der IT Security bedarf einer Anstrengung</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Qualit&#xE4;t</td>
      <td style="text-align:left">
        <ul>
          <li>Security Testing</li>
          <li>System Tests
            <ul>
              <li>SCADA Testzentrum des Idaho National Labs (gutes Training &quot;Advanced&quot;)</li>
            </ul>
          </li>
          <li>Ger&#xE4;tetests</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Hersteller</td>
      <td style="text-align:left">
        <ul>
          <li>Unterschiedliche, teils widerspr&#xFC;chliche Anforderungen von
            <ul>
              <li>Kunden</li>
              <li>Aufsichtsbeh&#xF6;rden</li>
              <li>Verschiedenen Fachaussch&#xFC;ssen und Standardisierungsgremien</li>
            </ul>
          </li>
          <li>Sicherheit im Produktentwicklungsprozess
            <ul>
              <li>Microsoft SDL: Security Development Lifecycle</li>
              <li>IEC 62443-4-1</li>
            </ul>
          </li>
          <li>Kooperation mit Anlagenbetreibern</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Kontinuierliche Forschung</td>
      <td style="text-align:left">
        <ul>
          <li>Forschungsgebiete
            <ul>
              <li>ABB Corporate Research
                <ul>
                  <li>&#x25AA; Automatische Netzwerksicherheit</li>
                </ul>
              </li>
            </ul>
          </li>
          <li>Offline Device Access Protocol
            <ul>
              <li>Motivation
                <ul>
                  <li>Effizienter Widerruf von Zugriffsrechten</li>
                  <li>Zentrales Management</li>
                  <li>Individuelle Zurechenbarkeit</li>
                  <li>Offline Funktionalit&#xE4;t</li>
                  <li>Schutz gegen Replay und Tampering</li>
                  <li>Schutz von Sessions</li>
                  <li>Robust gegen Kompromittierung individueller Server</li>
                  <li>Einfaches Key Management f&#xFC;r</li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>



### Standards & Richtlinien

![](../.gitbook/assets/image%20%28275%29.png)

![](../.gitbook/assets/image%20%28280%29.png)

![ISO/IEC 62443](../.gitbook/assets/image%20%28288%29.png)

![ISO/IEC 62443 &#x2013; 7 Hauptrichtlinien](../.gitbook/assets/image%20%28294%29.png)

#### Umsetzung von ISO/IEC 62443 

* FR 1: Identification and authentication control, FR 2: Use Control

  Role Based User Access Control

* FR 2: Use Control  / Audit logging \(Logs für Geräte auswerten\)
* FR 3: System Integrity

  Application Whitelisting \(Verriegelt ein eigentlich offenes System \(vergleichbar mit Kindersicherung\)

* FR 3: System Integrity, FR4: Data confidentiality

  Communication and Host protection

* FR 5: Restricted data flow

  Security zoning with redundancy

* FR 6: Timely Response to Events

  Collecting and analyzing security logs

* FR 7: Resource availability \(DoS protection\)

  Communication and Host protection \(Filter über Protokolle, die nicht bekannt sind\)



### Forschungsgebiete

![](../.gitbook/assets/image%20%28283%29.png)

![](../.gitbook/assets/image%20%28273%29.png)





### Herausforderungen

### Möglichkeiten

### Standards

\(IEC 62443, ISO27019, etc.\)

## Fallstudie 

### SDH Kommunikationsnnetzwerke

![](../.gitbook/assets/image%20%28287%29.png)

#### Mögliche Angriffstechniken auf SDH Glasfaser

![](../.gitbook/assets/image%20%28274%29.png)

<table>
  <thead>
    <tr>
      <th style="text-align:left">Angriff</th>
      <th style="text-align:left">Details</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Active Tamper Device Insertion</td>
      <td style="text-align:left">
        <ul>
          <li>Kommerziell verf&#xFC;gbare, optische TAPs</li>
          <li>durchgeschnitten und das TAP eingesetzt</li>
        </ul>
        <p></p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Passive Sniffing / Eavesdropping</td>
      <td style="text-align:left">
        <ul>
          <li>Licht im Glasfaserkabel wir bei Brechung abgefangen</li>
          <li>Unbemerkte Installation (kein Spleissen) m&#xF6;glich</li>
          <li>Physischer Zugriff ben&#xF6;tigt</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Denial-of-Service</td>
      <td style="text-align:left">
        <ul>
          <li>Licht im Glasfaserkabel wird gest&#xF6;rt</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

### Stuxnet – Angriff auf eine industrielle Anlage

![](../.gitbook/assets/image%20%28277%29.png)

![Stuxnet Hintergrund](../.gitbook/assets/image%20%28272%29.png)

### Angriffszenario

* **Erkundung**
  * Jeder PLC wird individuell konfiguriert/programmiert
  * Schema des Zielsystems für Angriff erforderlich
* **Entwicklung**
  * Gespiegelte Enwicklungsumgebung benötigt
    * Hardware des Leitsystemes
    * PLCs
  * Treiber
* **Infektion**
  * In die Zielumgebung einführen
    * Insider
    * Bewusster Dritter
    * Unbewusster Dritter, z.B. Lieferant
  * Methode
    * USB-Stick, Windows Service Laptop
* **Post exploitation**
  * Suche nach speziellem PLC
  * Verstecken der Änderungen
*  **Angriff auf PLCs**
  * Turbine-Drehzahl im PLC verändert hochfahren und wieder runter
  * DLL umgeschrieben

## Geräte Assessments \(Beispiel/Gruppenarbeit\)

![](../.gitbook/assets/image%20%28291%29.png)

## Data Privacy als neue Herausforderung im industriellen Umfeld - Wohin geht der Trend?

* FHE = Fully Homomorphic Encryption
  * Form der Verschlüsselung, die Berechnungen auf verschlüsselten Daten ermöglicht.
  * Das Ergebnis ist auch verschlüsselt
*  \(Fully\) Homomorphic Encryption ist aktueller Forschungsgegenstand
  * Momentan noch extrem langsam und platzraubend
  * Hat grosses Potenzial
* **Immense Verbesserungen in den letzten Jahren**
* Weitere, verbesserte Implementierungen sind verfügbar
  * Z.B. BGV Schema: https://github.com/shaih/HElib
* Viele interessante Ansätze um Vertraulichkeit ohne FHE zu garantieren
  * CryptDB, Monomi...

![](../.gitbook/assets/image%20%28286%29.png)

## Block Chains in der Industrie

* Bitcoin
* Smart-Contract
* Microgrid 
  * Energy Trading
* =&gt; siehe Unterlagen


# 🔴 Security Intelligence

## Security Intelligence

* **Grund** für Security Intelligence
  * Advanced Threats
  * Sophisticated Attacks
* **Hauptmerkmal** = Beschaffen von Informationen von **internen** Systemen einerseits, sowie von **externen Quellen** und das **analytische Zusammenführen dieser beiden Sichten** 
* **Tätigkeiten**
  * Gefahren zu erkennen \(Detect\),
  * zu Bearbeiten \(Analyse\)
  * entsprechend Abzuwehren \(Response\)
  * ebenfalls oft Design von SOC/SIEM Use Cases

![](../.gitbook/assets/image%20%28242%29.png)

* **Active Defense**
  * Nicht der aktive Gegenschlagen
  * Angreifer in die Irre leiten oder deren Aktivitäten verzögern
  * 5D Modell of Defense
    * Deny
    * Disrupt
    * Degrade
    * Deceive
    * Destroy
* **Implementierung** in der Praxis ist ein **komplexes Unterfangen, mehr organisatorisches Projekt.**
* Drei Bereiche die Massgeblich zur **Funktion** beitragen:
  * Security Operation Center \(SOC \), 
  * die Cyber Threat Intelligence \(CTI\)
  * sowie das Security Information und Event Management \(SIEM \).

## Begriffe

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
      <td style="text-align:left">Follow-the-Sun</td>
      <td style="text-align:left">Modell, bei dem &#xFC;ber verschiedene Zeitzonen hinweg ein 7/24 Betrieb
        sichergestellt wird (z.B. Callcenter oder auch ein Security Operation Center)</td>
    </tr>
    <tr>
      <td style="text-align:left">EOI</td>
      <td style="text-align:left">Event of Interest</td>
      <td style="text-align:left">Ein m&#xF6;glicherweise sicherheitsrelevanter Vorgang</td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left">Security Incident</td>
      <td style="text-align:left">Ein als sicherheitsrelevant identifizierter Vorfall</td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left">Log Management</td>
      <td style="text-align:left">Prozess zur Analyse von Systemlogs zur Identifikation bestimmter Vorkommnisse</td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left">Security Incident Response Team</td>
      <td style="text-align:left">Eine Gruppe von Experten, die f&#xFC;r die Bearbeitung von kritischen
        Security Incidents beigezogen wird.</td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left">Security Controls</td>
      <td style="text-align:left">Vorgaben die erf&#xFC;llt sein m&#xFC;ssen um einen definierten Security
        Standard zu gew&#xE4;hrleisten (z.B. Compliance)</td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left">Security Metric</td>
      <td style="text-align:left">Messgr&#xF6;sse zur Beurteilung der Leistungsf&#xE4;higkeit eines (Security-)
        Prozesses (z.B. Anzahl bestehender Vulnerabilities, Zahl von False positives,
        usw.)</td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left">Remediation</td>
      <td style="text-align:left">Prozess zur Behebung eines identifizierten, sicherheitskritischen Zustandes
        (Risk Remediation)</td>
    </tr>
    <tr>
      <td style="text-align:left"></td>
      <td style="text-align:left">
        <p></p>
        <p>Intelligence</p>
      </td>
      <td style="text-align:left">urspr&#xFC;nglich aus dem milit&#xE4;rische, T&#xE4;tigkeit der Gewinnung
        von Entscheidungs-relevanten Informationen (Analyse) aus Daten von unterschiedlichen
        Quellen</td>
    </tr>
    <tr>
      <td style="text-align:left">SOC</td>
      <td style="text-align:left">Security Operations Center</td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">SIEM</td>
      <td style="text-align:left">Security Information and Event Management</td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">CTI</td>
      <td style="text-align:left">Cyber Threat Intelligence</td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">CSIRT</td>
      <td style="text-align:left">Cyber Security Incident Response Team</td>
      <td style="text-align:left"></td>
    </tr>
  </tbody>
</table>

## **SOC \(**Security Operations Center\)

* keine einheitliche Definition
* besteht aus:
  * Menschen
  * Prozessen
  * Technologie
* Gibt Empfehlung z.H. von Betrieb / Operation / GL ab
* Klare Abgrenzungen und Kompetenzen in "Playbooks" festzuhalten
* **Ziel** hat, sicherheitsrelevante Vorgänge zu  erkennen und durch geeignete Massnahmen zu verhindern

### Aufgaben

* In der Praxis sind die Grenzen oft fliessend, Ausgestaltung und Benennung kann stark unterscheiden

![](../.gitbook/assets/image%20%28234%29.png)

#### 4 Hauptaufgaben

<table>
  <thead>
    <tr>
      <th style="text-align:left">Name</th>
      <th style="text-align:left">Beschreibung</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Security Monitoring</td>
      <td style="text-align:left">
        <p>manuelle oder automatisierte Auswertung von Log Informationen werden</p>
        <p>relevante Vorga&#x308;nge (Incidents) identifiziert</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Incident Response</td>
      <td style="text-align:left">In kritischen F&#xE4;llen, z.B. bei laufenden Angriffen, Bedrohungslage
        kurzfristig zu entsch&#xE4;rfen. Incident Response Team (CSIRT) = Oberstes
        Ziel eines CISRT ist es, die Business Continuity zu gew&#xE4;hrleisten</td>
    </tr>
    <tr>
      <td style="text-align:left">Pr&#xE4;vention</td>
      <td style="text-align:left">Pr&#xE4;ventionsauftrag, Interne und Externe Informationen zu Nutzen,
        um Risiken weitestgehend zu minimieren.</td>
    </tr>
    <tr>
      <td style="text-align:left">Analysen und Reporting</td>
      <td style="text-align:left">Ein laufendes Reporting f&#xFC;r das Risk- und Compliance Mangement</td>
    </tr>
  </tbody>
</table>

### SOC Referenzmodelle

* Es gibt kein allgemein gültiges SOC Modell.
* Wichtig ist die Adoption
  * Modell an die realen Bedürfnisse der Organisation adaptieren
  * gemeinsames Verständnis schaffen

#### SOC Core Prozesse am Beispiel des IBM SOC Reference Models

![](../.gitbook/assets/image%20%28239%29.png)

Rollen unterscheiden sich nicht durch den Namen, sondern durch dessen Zielsetzung:

<table>
  <thead>
    <tr>
      <th style="text-align:left">Level</th>
      <th style="text-align:left">B</th>
      <th style="text-align:left">Beschreibung</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">L1</td>
      <td style="text-align:left">Threat <b>Monitoring</b> 
      </td>
      <td style="text-align:left">Monitoring s&#xE4;mtlicher Event of Interest (EoI) und Identifikation
        m&#xF6;glicher IoC (Indicators of Compromise). (Ziel: Kurze Durchlaufzeit)</td>
    </tr>
    <tr>
      <td style="text-align:left">L2</td>
      <td style="text-align:left">Threat <b>Triage</b>
      </td>
      <td style="text-align:left">Verifizieren der IoC, Identifikation m&#xF6;glicher Incidents und deren
        Kritikalit&#xE4;t. (Ziel: Genaue Analyse)</td>
    </tr>
    <tr>
      <td style="text-align:left">L3</td>
      <td style="text-align:left">Threat <b>Response</b>
      </td>
      <td style="text-align:left">Weiterbearbeitung der Incidents durch Matter Experts (Ziel: Ergreifen
        der angemessenen Massnahme basierend auf der Kritikalit&#xE4;t)</td>
    </tr>
    <tr>
      <td style="text-align:left">CSIRT Management</td>
      <td style="text-align:left">Cyber Security Incident Response Team</td>
      <td style="text-align:left">
        <p>Bearbeitung von kritischen Cyber Incidents, welche eine priorit&#xE4;re
          Zusammenarbeit mit anderen Business Funktionen erfordern (z.B. Legal, Compliance,
          Management). Enge Zusammenarbeit mit dem Krisenstab (Emergency Response
          Team) der Organisation. In den meisten Organisationen besteht das CSIRT
          aus einem virtuellen Team.</p>
        <p></p>
        <p>=&gt; erweiterte Befugnisse, um in kritischen F&#xE4;llen rasch reagieren
          zu</p>
        <p>k&#xF6;nnen.</p>
        <p>=&gt; Konzeptionell nicht Teil des SOC</p>
      </td>
    </tr>
  </tbody>
</table>

#### Warum diese Aufteilung in Levels?

* Grund für diese Aufteilung liegt in den Unterschiedlichen Zielsetzungen und Volumen. 
  * L1 = grössten Arbeitsvolumen, kurze Durchlaufzeit 
  * L2 = Enrichment, umfassenderes Bild = höhere Durchlaufzeiten 
  * L3 = Behebung, der aufwändigste Teil 



### SOC Rollen

![](../.gitbook/assets/image%20%28245%29.png)

![SOC Rollen \(Beispiel\) IBM Security](../.gitbook/assets/image%20%28246%29.png)

### SOC Betriebsmoddelle

![](../.gitbook/assets/image%20%28241%29.png)

## Security Analytics

* Während sich das Security Monitoring mit Realtime Daten beschäftigt, nutzt die Security Analytics **Vergangenheitsdaten**
* **Wichtige Bedeutung in**
  * forensische Untersuchung
  * Sicherung von Beweisen \(Chain of Evidence\) 
* Security Analytics unterstützt Incident Response Team oder auch die Security Intelligence





## **SIEM \(**Security Information and Event Management\)







* Echtzeitanalyse von Sicherheitsalarmen aus den Quellen Anwendungen und Netzwerkkomponenten
* Alarme erstellen



* Zentrum, das Dienstleistungen für die EDV-Sicherheit bietet: ein Verfahren zur Vorbeugung und Behandlung von unvorhergesehenen Schwierigkeiten
* Teil von CERT
* Gibt Empfehlung z.H. von Betrieb / Operation / GL ab
* Klare Abgrenzungen und Kompetenzen in "Playbooks" festzuhalten
* * Was sind **Advanced Threats**?
  * Schnelle Anpassungen von Threats \(Bsp. Pandemie, wird direkt ausgenutzt\)
  * Fürher: Angriffe von Aussen - mit Firewall/WAF geschützt, heute Angriffe nach innen geholt, z.B. durch Phishing
* * Was ist eine **risk-centric** \(Riskorientierte\) Security Strategie?
  * Security war lange ein reines formales Thema
  * Mann muss wissen auf was mal schauen soll. WAF / Firewall / Proxy / Logs.. sind sehr viele Quellen
  * Verstehen: Was sind die Cyber-Risiken in unserem Unternehmen? =&gt; Die Risiken sind das Zentrum





* Security Intelligence in den Regulatorien und Information Security Standard
  * Verschiedene Frameworks
    * ISO
    * NIST
    * BSI-Standard
    * SANS
    * IBM Security
    * EU Bestimmungen
    * Minimum ICT Standard



**NIST Cyber Security Framework \(CSF\)** 

* **N**ational **I**nstitute for **S**tandard and **T**echnology ist eine Regierungsbehörde der US Behörde • 2014 **Erste Version des Cyber Security Frameworks\(CSF\)** zum Schutz vor kritischen

  Infrastrukturen

  • Das CSF besteht aus 3 Teilen, dem **Framework Core**, dem **Framework Profile** und den

  **Implementation Tiers**

  • Wird sowohl von öffentlichen , wie auch privaten Organisationen angewendet

![](../.gitbook/assets/image%20%28238%29.png)

## SOC \(Security Operations Center\) 

* Definition:
  * Gibts verschiedene
  * **Gemeinsam** haben Sie aber: **Prozesse, Menschen, Technologien erwähnen alle** 

### **Aufgaben eines SOC im Security Control Kontext**

![](../.gitbook/assets/image%20%28233%29.png)

* Directive = Anhaltspunkte das man etwas nicht darf, welche Privilegien darf der Benutzer haben.
* Preventive = Massnahmen um dies umzusetzen 
* Detective = Entdecken . 



![](../.gitbook/assets/image%20%28237%29.png)



### Referenzmodelle

#### Anforderungen SOC 

![](../.gitbook/assets/image%20%28236%29.png)

* **3 wichtige Kriterien**
  * Berücksichtigt die Ebenen Governance, Prozesse und Technologie \(doer auch: people, Processes, Technology\) 
  * Bildet die Abhängigkeiten zu externen, relevanten Bereichen ab
  * Prozess nach Prinzip Regelkreis 





Slide Security Intelligence einfügen






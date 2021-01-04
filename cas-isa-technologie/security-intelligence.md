# 🔴 Security Intelligence

SOC  = Security Operations Center  
SIEM = Security Information and Event Management  
CTI = Threat Intelligence

## Begriffe

| Begriff | Beschreibung |
| :--- | :--- |
| Follow-the-Sun | Modell, bei dem über verschiedene Zeitzonen hinweg ein 7/24 Betrieb sichergestellt wird \(z.B. Callcenter oder auch ein Security Operation Center\) |
| Event of Interest | Ein möglicherweise sicherheitsrelevanter Vorgang |
| Security Incident | Ein als sicherheitsrelevant identifizierter Vorfall |
| Log Management | Prozess zur Analyse von Systemlogs zur Identifikation bestimmter Vorkommnisse |
| Security Incident Response Team | Eine Gruppe von Experten, die für die Bearbeitung von kritischen Security Incidents beigezogen wird. |
| Security Controls | Vorgaben die erfüllt sein müssen um einen definierten Security Standard zu gewährleisten \(z.B. Compliance\) |
| Security Metric | Messgrösse zur Beurteilung der Leistungsfähigkeit eines \(Security-\) Prozesses \(z.B. Anzahl bestehender Vulnerabilities, Zahl von False positives, usw.\) |
| Remediation | Prozess zur Behebung eines identifizierten, sicherheitskritischen Zustandes \(Risk Remediation\) |







* **SIEM**
  * Echtzeitanalyse von Sicherheitsalarmen aus den Quellen Anwendungen und Netzwerkkomponenten
  * Alarme erstellen
* **SOC**
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

### Aufgaben eines SOC

![](../.gitbook/assets/image%20%28234%29.png)



### SOC Core Prozesse am Beispiel des IBM SOC Reference Models

![](../.gitbook/assets/image%20%28239%29.png)

Rollen unterscheiden sich nicht durch den Namen, sondern durch dessen Zielsetzung:

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Threat <b>Monitoring</b> (auch <b>L1</b>)</td>
      <td style="text-align:left">Monitoring s&#xE4;mtlicher Event of Interest (EoI) und Identifikation
        m&#xF6;glicher IoC (Indicators of Compromise). (Ziel: Kurze Durchlaufzeit)</td>
    </tr>
    <tr>
      <td style="text-align:left">Threat <b>Triage</b> (auch <b>L2</b>)</td>
      <td style="text-align:left">Verifizieren der IoC, Identifikation m&#xF6;glicher Incidents und deren
        Kritikalit&#xE4;t. (Ziel: Genaue Analyse)</td>
    </tr>
    <tr>
      <td style="text-align:left">Threat <b>Response</b> (auch <b>L3</b>)</td>
      <td style="text-align:left">Weiterbearbeitung der Incidents durch Matter Experts (Ziel: Ergreifen
        der angemessenen Massnahme basierend auf der Kritikalit&#xE4;t)</td>
    </tr>
    <tr>
      <td style="text-align:left">CSIRT Management (Cyber Security Incident Response Team)</td>
      <td style="text-align:left">
        <p>Bearbeitung von kritischen Cyber Incidents, welche eine priorit&#xE4;re
          Zusammenarbeit mit anderen Business Funktionen erfordern (z.B. Legal, Compliance,
          Management). Enge Zusammenarbeit mit dem Krisenstab (Emergency Response
          Team) der Organisation. In den meisten Organisationen besteht das CSIRT
          aus einem virtuellen Team.</p>
        <p></p>
        <p>=&gt; Konzeptionell nicht Teil des SOC</p>
      </td>
    </tr>
  </tbody>
</table>



Slide Security Intelligence einfügen






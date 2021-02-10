# Cyber Security Framework \(NIST\)

## Standards

- NIST
  - siehe unten
- IKT Minimalstandard \(Bund Schweiz BWL\)
  - Kein eigenständiger Standard, sondern basiert auf dem NIST Cyber Security Framework Core in reduziertem Umfang
  - Wo sinnvoll, wurde er mit weiteren anerkannten Standards ergänzt
  - Er soll einen einfachen Einstieg in die Thematik Cyber Security ermöglichen und trotzdem ein hohes Schutzniveau gewährleisten
- ISO 2700x

  - Einer der bekanntesten Sicherheitsstandards
  - Ausgereiftes Framework, das sich auf die Informationssicherheit

    konzentriert

  - Sehr umfassend und breit angelegt

- BSI IT Grundschutz Kataloge
- COBIT 5
- ISA / IEC 62443
- Cloud Security Alliance Controls Matrix
- Cloud Standard
- Spezifische Standards

  - Datenschutz
    - DSG
    - EU-DSGVO
    - ISO 27701
  - Eidgenössisches Bundesgesetz über den Datenschutz \[www.edoeb.admin.ch\] Europäische Datenschutz Grundverordnung \[ec.europa.eu\]

    Erweiterung zu ISO/IEC 27001 / 27002 für das Datenschutzmanagement

    Finanzbranche

    - PCI DSS
    - SWIFT
    - FINMA RS

  - Umgang mit Kreditkarteninformationen \[www.pcisecuritystandards.org\] Sicherer Datenaustausch von Bankdaten \[www.swift.com\]

    Richtlinien für den Schweizer Finanzmarkt \[www.finma.ch/de/dokumente\]

    Gesundheitsbranche

    - HIPAA US-Gesetzgebung zum Schutz von Gesundheit und medizinischen Informationen \[www.hhs.gov/hipaa\]

### NIST vs. 27002

![](../.gitbook/assets/image%20%28366%29.png)

## NIST Cyber Security Framework \(CSF\)

- **N**ational **I**nstitute for **S**tandard and **T**echnology ist eine Regierungsbehörde der US Behörde • 2014 **Erste Version des Cyber Security Frameworks\(CSF\)** zum Schutz vor kritischen

  Infrastrukturen

- Das CSF besteht aus 3 Teilen, dem **Framework Core**, dem **Framework Profile** und den

  **Implementation Tiers**

- Wird sowohl von öffentlichen , wie auch privaten Organisationen angewendet
- Insgesamt ist das **Dokument allgemein gehalten** und geht nicht allzu sehr in die Tiefe. So will das NIST sicherstellen, dass möglichst viele Einrichtungen mit verschiedenen Anforderungen von den Richtlinien profitieren.
- «Tiers» im NIST CSF entspricht dem «Schutzniveau» im IKT Minimalstandard
- Cyber ist ein Prefix. Alles, was mit dem «Internet» zu tun hat, fällt ebenfalls unter die Kategorie Cyber.
- **Anwendbarkeit**: Das CSF eignet sich für Unternehmen aller...
  - Grössen
  - Branchen
  - Reifegrade \(Maturity\)
  - Es ist nicht nur für kritische Infrastrukturen!

![](../.gitbook/assets/image%20%28238%29.png)

{% embed url="https://www.nist.gov/cyberframework" %}

![](../.gitbook/assets/image%20%28382%29.png)

## Aufbau NIST CSF

### Core

Eine Reihe von Aktivitäten, Ergebnissen und informativen Hinweisen. Enthält detaillierte Anleitungen für die Entwicklung von individuellen organisatorischen Profilen.

![](../.gitbook/assets/image%20%28385%29.png)

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Identify</td>
      <td style="text-align:left">
        <p>Entwicklung des organisatorischen Verst&#xE4;ndnisses f&#xFC;r das Managen
          von Cyber- Risiken f&#xFC;r Systeme, Anwendungen, Verm&#xF6;gens- werten
          und F&#xE4;higkeiten.</p>
        <p></p>
        <p>Beispiele von Kategorien innerhalb der Funktion:</p>
        <p>- Asset Management</p>
        <p>- Unternehmensumfeld</p>
        <p>- Governance</p>
        <p>- Risikobewertung</p>
        <p>- Risiko-Management-Strategie</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Protect</td>
      <td style="text-align:left">
        <p>Entwicklung und Einf&#xFC;hrung geeigneter Schutz- und Kontrollmassnahmen,
          um die Bereitstellung kritischer Dienste zu gew&#xE4;hrleisten.</p>
        <p></p>
        <p>Beispiele von Kategorien innerhalb der Funktion:</p>
        <p>- Access Control</p>
        <p>- Sensibilisierung und Schulung</p>
        <p>- Datensicherheit</p>
        <p>- Informationsprozesse bzgl. Schutz und Verfahren - Wartung</p>
        <p>- Sch&#xFC;tzende Technologien</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Detect</td>
      <td style="text-align:left">
        <p>Entwicklung und Implementierung entsprechender Aktivit&#xE4;ten und Kontrollen,
          zur Identifikation eines Cybervorfalls.</p>
        <p></p>
        <p>Beispiele von Kategorien innerhalb der Funktion</p>
        <p>- Anomalien und Events</p>
        <p>- Kontinuierliche Sicherheits&#xFC;berwachung - Erkennungsprozesse</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Respond</td>
      <td style="text-align:left">
        <p>Entwicklung und Umsetzung von geeigneten Aktivit&#xE4;ten und Kontrollen,
          um Massnahmen in Bezug auf einen erkannten Cybervorfall zu ergreifen.</p>
        <p></p>
        <p>Beispiele von Kategorien innerhalb der Funktion</p>
        <p>- Reaktionsplanung</p>
        <p>- Kommunikation</p>
        <p>- Analyse</p>
        <p>- Schadensbegrenzung</p>
        <p>- Verbesserungen (&#xAB;Lessons learnt&#xBB;)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Recover</td>
      <td style="text-align:left">
        <p>Entwicklung und Umsetzung von Business Continuity Management Pl&#xE4;nen
          bei einem Cybervorfall und Verbesserung der Resilienz gegen Cyberangriffe.</p>
        <p>Entwicklung und Umsetzung von geeigneten Aktivit&#xE4;ten und Kontrollen,
          um Massnahmen in Bezug auf einen erkannten Cybervorfall zu ergreifen.</p>
        <p></p>
        <p>Beispiele von Kategorien innerhalb der Funktion</p>
        <p>- Recovery-Planung</p>
        <p>- Failover Testing</p>
        <p>- Verbesserungen (&#xAB;Lessons learnt&#xBB;) - Kommunikation</p>
      </td>
    </tr>
  </tbody>
</table>

### Profile

**Legt fest, welche Industriestandards benötigt werden und welche Vorgehensweisen von ebendiesen vorgeschrieben werden. Dies soll einfach ermöglichen, weitere Verbesserungspunkt in den eigenen Prozessen festzustellen, um sich fortlaufend zu verbessern.**

Beschreibt die Angleichung der Normen, Richtlinien und Praktiken zum Framework Core in einem bestimmten Implementierungsszenario. Profile können verwendet werden, um Möglichkeiten zur Verbesserung der Cybersicherheit durch den Soll- / Ist- Vergleich aufzuzeigen.

- Massnahmen zur Verbesserung der Widerstandsfähigkeit im Bezug auf Cybersicherheit
- **Gaps zwischen dem "Aktuellen Profil» \("Ist-Zustand"\) und dem "Zielprofil" \("Soll-Zustand"\)**
- Profile verfolgen Ergebnisse sowie Verpflichtungen und Anforderungen an die Widerstandsfähigkeit des Unternehmens. Somit benötigt ein Unternehmen ein solides Verständnis der Sachverhalte, bevor es seine Cybersicherheitsziele umsetzen und erreichen kann.
- Im Wesentlichen sind die Profile eine Möglichkeit um festzustellen, wo sich aktuell die Widerstandsfähigkeit im Bezug auf Cybersicherheit befindet und wo sie sein sollte.
- Profile sind ein Hilfsmittel, um eine Roadmap sowie ein Budget zum Management der Resilienz bezüglich Cyberrisiken zu erstellen.
- Ist ein Unternehmen besonders gross oder komplex, kann es mehrere Profile entwickeln, die bspw. jeweils auf ein Business Prozess oder ein Geschäftsfeld abgestimmt sind.

#### Einflussfaktoren auf ein Profil

![](../.gitbook/assets/image%20%28378%29.png)

### Implementation Tiers:

Beschreiben, inwieweit eine Organisation ihr Cyber-Sicherheit Risiko- Management auf die Merkmale, welche im Profile definiert wurden, ausgerichtet hat. Sie wiederspiegeln den Fortschritt einer Organisation innerhalb der definierten Bereiche.

Die vier Framework-Implementierungsebenen \(«Tiers»\) beschreiben den unterschiedlichen Grad an Komplexität, den die Cybersicherheitsmassnahmen eines Unternehmens haben könnten - insbesondere auf der Grundlage seines Risikomanagementprozesses, des integrierten Risikomanagementprogramms und der externen Beteiligung. Sie sind somit Ausdruck der Maturität.

**Der Erfüllungsgrad wird in vier «Tiers» gemessen und reicht von partiell \(Tier 1\) bis adaptiv \(Tier 4\).**

![](../.gitbook/assets/image%20%28381%29.png)

### Implementierung und Weiterentwicklung

![](../.gitbook/assets/image%20%28374%29.png)

##

## Cyber Kill Chain

![](../.gitbook/assets/image%20%28387%29.png)

Bedienung NIST CSF

NIST CSF / IKT Minimalstandard Selbsteinschätzung

Umsetzungsziele \(Implementierungs-Tiers\) formulieren

Umsetzungspläne bewirtschaften

NIST CSF / IKT Minimalstandard Selbsteinschätzung kommunizieren

# Endpoint-Security

Zusammengefasst was es braucht in der Endpoint Security

![Summary](../.gitbook/assets/image%20%28204%29.png)



## Cyber Kill Chain

![](../.gitbook/assets/image%20%28205%29.png)



### Aktuell 2020

* „Erzwungene“ Digitalisierung
* IoT Attacken
* Im speziellen OT \(Operational Technology\) und Hausautomation
* Ransomware
* CyberSecurity Fachkräfte
* Phishing
* Third-Party Risks \(Supply Chain Security\)
* DDos - Distributed Denial of Service attacks
* Cryptojacking
* Application Security
* Cloud Security and Incidents



## Data Security \(e.g.AV, AntiMalware, DLP, Encryption\)

* **Malware = malicious software**
  * Viren, Würmer, Trojaner, Rootkits, Backdoors, Spyware, Ransomware / Cryptolocker, usw.
  * **Payload** kann:

    - Carry out a denial of service attack - Crash the machine

    - Randomly destroy data

    - Install a trojan horse program

    - Perform password cracking

    - ... vieles mehr

  * **Virenarten** gibt es:   
    - Bootviren

    - Dateiviren

    - Makroviren

    - Scriptviren

    - Mischformen   
    - Registry viren

  * **Schutzmechanismen** verwenden Viren:   
    - Stealth

    - Encryption

    - Polymorph

    - Metamorph

    - Retro
* **Ransomware**

  - Encryption Ransomware \(Verschlüsselung\)

  - Non-Encryption Ransomware \(Erpessrung bspw. Pornographie\)

* **Rootkits**

  - User-Mode \(Ring 3\)

  - Kernel-Mode \(Ring 0\)

  - Bootkits \(Ring 0\)

  - Hypervisor level \(Ring -1\)

  - Firmware and hardware \(Ring -1\)

* **Fileless Malware** 
  * Malware wird nur im Speicher \(RAM\) ausgeführt
  * Es gibt keine direkten Spuren auf dem Filesystem
  * Vorgehen \(Beispiel\):

    - Phishing/SPAM E-Mail

    - Link zu Website welche Verletzbarkeit vom Flashplayer

    ausnützt

    - PowerShell/WMI Script wird nachgeladen und nur im

    Speicher ausgeführt

![Rootkits \(Ringe\)](../.gitbook/assets/image%20%28206%29.png)

  


### Anti Malware Programm

*  **Details** eines Anti Malware Programm
  * Echtzeitscan Engine
  * Manual Scan Engine
  * Online Scanner
  * Inline Scanner \(z.B. Proxies\)
* **Funktionsweise** eines Anti Malware Scanners:
  * Signaturen
    * Pattern-matching mit allen bekannten Signaturen \(Reaktiv\)
  * Heuristik
    * Analyse der vorhandenen Merkmale \(Proaktiv\)
    * z.B. Erstellung von Alternate Data Streams
  * Sandbox
    * Ausführung vom Code in einem „sicheren“ Umfeld inkl. der Analyse des Verhaltens.
  * Verhaltensanalyse
    * Der Code wird auf dem Live System ausgeführt und

      anhand des Verhaltens und statistischer Werte analysiert \(-&gt; HIDS/HIPS\)
* Weitere existierende Schutzmechanismen: 
  * SecureBoot \(UEFI\)
  * Nur signierte Bootloader werden ausgeführt 
  * Thunderstrike, HD Firmware attacks etc.

![](../.gitbook/assets/image%20%28207%29.png)

![](../.gitbook/assets/image%20%28202%29.png)



<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><b>Threat detection</b>
      </td>
      <td style="text-align:left">
        <p>&#x2022; IoC (Indicators of Compromise) U&#x308;berpru&#x308;fung</p>
        <p>&#x2022; Erkennung von Anomalien</p>
        <p>&#x2022; Verhaltenserkennung</p>
        <p>&#x2022; Konfigurationspru&#x308;fung (z.B. Hardening, Systema&#x308;nderungen,
          Software etc.)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><b>Respond</b>
      </td>
      <td style="text-align:left">
        <p>&#x2022; Stoppen von Prozessen</p>
        <p>&#x2022; Stoppen von Netzwerkverbindungen</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><b>Investigate</b>
      </td>
      <td style="text-align:left">
        <p>&#x2022; Analyse der vorgefundenen A&#x308;nderungen</p>
        <p>&#x2022; Analyse der verda&#x308;chtigen Prozesse (inkl. deren Verhalten)</p>
        <p>&#x2022; Analyse anderer Aktivita&#x308;ten auf dem System (z.B. Filezugriffe
          etc.)</p>
        <p>&#x2022; Abgleich mit Threat Intelligence Daten</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><b>Remediate</b>
      </td>
      <td style="text-align:left">
        <p>&#x2022; Aktuell gu&#x308;ltige Konfiguration wiederherstellen &#x2022;
          Wiederherstellung bescha&#x308;digter Daten</p>
        <p>&#x2022; Lo&#x308;schen von scha&#x308;dlichen Daten</p>
        <p>&#x2022; Blockieren von weiterer Ausfu&#x308;hrung</p>
      </td>
    </tr>
  </tbody>
</table>



### APT - Advanced Persistent Threat

* Targeted and organized attack

  - STUXNET, Swiss Company etc.

* **Empfehlungen für den APT „Schutz“   
  -** Application-Whitelisting

  - Keine Admin-rechte für Standard-User Accounts

  - Monitoring \(Endpoint, AD, DNS, Proxy, Netflow etc.\) -&gt;

  min. 2 Jahre

  - Two-Factor Authentication \(Intern & Extern\)

  - Externe Audits \(z.B. AD RAP’s\)

  - Interne Netzwerk-Segmentierung

  - Signature based IDS/IPS

  - Out-of-band Management

  - Zentraler Internet-Proxy \(mit Server Whitelisting\)



### DLP 

* Data && \(Loss \|\| Leakage\) && \(Prevention \|\| Protection\)
* **Funktionalität** eines DLP Systems sind:
  * Logging der Zugriffe auf Dateien usw.
  * Awareness schaffen, z. B. durch ein Popup - Möglichkeiten zum Blocken von Aktionen
  * Durchsetzung des 4-Augen Prinzips
  * Alerting
* **Techniken**
  * Pattern-Matching
  * Access Control
  * Daten Klassifizierung
  * Blocken von Schnittstellen und Funktionen \(z.B. USB, PrintScreen\)
* **Architekturen**
  * Agent-Based
  * Gateway
  * Identity Access Management
    * Ein striktes und funktionierendes IAM unterstützt DLP Lösungen.
    * Cloud-based directories vereinfachen Anbindung Drittpersonen
  * Information Rights Management
    * Den Zugriff zu den Daten wird mittels IRM klar geregelt und kontrolliert, egal wo die Daten sich befinden.

### Data Encryption

Zum Schutz der Daten auf den mobilen Endpoints \(vorallem bei Laptops\) können folgende Massnahmen ergriffen werden:

* **Full Disk Encryption**
  * Authentifizierung bei der Disk Encryption
    * Username / Password
    * Smartcard mit PIN
    * Biometric authentication \(z.B. Fingerprint\)
    * Dongle
    * TPM \(Trusted Platform Module\) - inkl. Sealing
* **File System Encryption**
  * Nur teile von der Harddisk werden verschlüsselt
  * Sperrung der Daten auch im laufenden Betrieb
* Weisungen für die Benutzung von Laptops und Firmen- Daten
* **Attacken**
  * Cold Boot
    * RAM auf -50 Grad
    * Fast keine Lösung dafür
  * FireWire DMA
    * hat Direktzugriff



## Network Security \(e.g. Personal FW/NAC\)

* **Personal FW**
  * Schutz der Endpoints gegen unerlaubte Verbindungen \(Intern und Extern\)
  * Grund-Funktionalität: Stealth Modus, Traffic Filtering \(Inbound und Outbound\), Zentrales \(Rule\) Management

### **NAC**

* Network Access Control \(NAC\)
  * Technologie welche die Authentifizierung/Autorisierung der Clients an einem Netzwerk sicherstellt und durchführt
* Network Admission Control \(NAC\)
  * Nebst der Authentifizierung/Autorisierung der Clients werden diese auch auf deren Richtlinienkonformität geprüft. Um die Clients wiederherzustellen existiert eine Quarantäne Funktion \(meist VLAN\)
* **Aufgaben**
  * **Discovery** \(Wer und welche Geräte greifen auf das Netzwerk zu\)
  * **Authentication** \(Nur berechtigte Personen sollen Zugriff aufs Netzwerk

    kriegen\)

  * **Compliance** \(Alle Geräte sollen die geforderten

    Sicherheitsanforderungen erfüllen\) 

  * **Enforcement** \(Nicht erwünschte Geräte soll der Zugriff verweigert

    werden\) 

  * **Traceability** \(Alle Aktionen sollen protokolliert werden\)

Stärken

<table>
  <thead>
    <tr>
      <th style="text-align:left">Typ</th>
      <th style="text-align:left">St&#xE4;rken</th>
      <th style="text-align:left">Schw&#xE4;chen</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">NAC <b>Agent</b>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Kann viele Informationen u&#x308;ber den Client liefern</li>
          <li>Funktioniert auch bei einer installierten Personal Firewall</li>
          <li>User-Notifications mo&#x308;glich</li>
        </ul>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Betriebssystem und Hardware Abha&#x308;ngigkeiten</li>
          <li>Meist werden fu&#x308;r den Client Admin Rechte beno&#x308;tigt</li>
          <li>Den Informationen von Client kann nicht vertraut werden</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">NAC <b>Scanner</b>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Es ko&#x308;nnen alle Endgera&#x308;te abgedeckt werden</li>
          <li>Der Einsatz eines Scanners (VA, IDS) erho&#x308;ht auch die Unternehmenssicherheit
            im Allgemeinen</li>
        </ul>
      </td>
      <td style="text-align:left">
        <ul>
          <li>False positive Alarms</li>
          <li>False negative Alarms</li>
          <li>Personal Firewalls verhindern einen kompletten Scan</li>
          <li>Performance-Einbussen auf Endsystemen</li>
        </ul>
        <p></p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">NAC <b>Firewall</b>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Es ko&#x308;nnen alle Endgera&#x308;te abgedeckt werden</li>
          <li>Als Inline Device ko&#x308;nnen auch weitere Angriffe, Anomalien entdeckt
            und verhindert werden</li>
        </ul>
        <p></p>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Hohe Investitionskosten</li>
          <li>Zugriff aufs Netzwerksegment kann nicht eingeschra&#x308;nkt werden</li>
          <li>Single-Point of Failure</li>
          <li>Kann zum Flaschenhals werden</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">NAC
        <br /><b>DHCP Control</b>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Universeller Mechanismus</li>
        </ul>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Sehr einfach umgehbar (mittels statischer IP Adresse)</li>
          <li>Layer-2 Zugriff wird nicht u&#x308;berwacht (Data Link)</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">NAC<b> <br />Switch Port Control</b>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Deckt alle Endgera&#x308;te ab</li>
          <li>Dynamische VLAN Zuteilung ermo&#x308;glicht granulare Steuerung des Zugriffs</li>
          <li>Schutz der Gera&#x308;te am selben Switch</li>
        </ul>
      </td>
      <td style="text-align:left">
        <ul>
          <li>VLAN&#x2019;s mu&#x308;ssen definiert und konfiguriert werden</li>
          <li>
            <p>Inventar sollte aktuell sein, bzw. MAC Adressen bekannt</p>
            <p></p>
          </li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>



## Mobile EndPoint Security

* Angriffe
  * Sämtliche Mobile Clients sind „Freiwild“
  * Vielfach werden/können die mobilen Geräte nicht komplett von der Security erfasst und gesichert werden
    * z.B. Patching, AV Clients usw.
  * Weisungen betreffend dem Speichern der Daten auf mobilen Geräten werden vielfach ignoriert
  * Anstieg von Ransomware auf Mobile Devices

### Mobile Phones Angriffe

<table>
  <thead>
    <tr>
      <th style="text-align:left">iOS</th>
      <th style="text-align:left">Android</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">
        <p>- (mac)OS-Vulnerabilities (alle Versionen)</p>
        <p>- Passwort: PIN und Passwort Abfragen konnten umgangen werden (alle Jahre
          wieder) -&gt; iOS 12</p>
        <p>- SMS Attacke: CommCenter Prozess (root)</p>
        <p>- Jailbreak (z.B. Root Passwort &#x201E;alpine&#x201C;)</p>
        <p>- iMessage &#x201E;immun&#x201C; gegen Wipe/Lo&#x308;schung</p>
        <p>- Touch ID</p>
        <p>- AppStores (nicht offizielle)</p>
        <p>- iMessage bug erlaubt lesen von iOS Daten (07/2019)</p>
        <p>- Probleme mit VPN Verbindungen</p>
      </td>
      <td style="text-align:left">
        <p>- SMS Attacke: Endless crash (java)</p>
        <p>- Multimedia-Player Bug</p>
        <p>- SMS Versand Problem</p>
        <p>- Play Store (Malware teilweise sehr lange unentdeckt)</p>
        <p>- CarrierIQ (Provider Rootkit in den USA)</p>
        <p>- Monitoring von Android Gera&#x308;ten</p>
        <p>- Keylogger, SMS Reader, Google-Requests, HTTPS Seiten als Plaintext abgespeichert...</p>
        <p>- Android Debug Bridge (adb) -&gt; app backup problem</p>
        <p>- 0-day (local privilege escalation, 10/2019)</p>
        <p>- Outdated Android Versions</p>
        <p></p>
        <p> <b>Android AppStore ist die &#x201E;Achillesferse&#x201C; - Manuelle Reputationspru&#x308;fung notwendig</b>
        </p>
      </td>
    </tr>
  </tbody>
</table>



### „BYOD“ - Bring your own Device

#### Herausforderungen:

* Strategie muss definiert werden \(vom Management\)
* Trennung von privaten und geschäftlichen Daten
* Unkontrollierte Devices und Services \(e.g. Cloud services\)
* Rechtliche Herausforderungen \(z.B. bei Kündigung\)
* Enterprise und Private Apps

#### Grundfunktionalität einer BYOD Lösung

* Überprüfung der Compliance
* Remote Wipe
* Policy Enforcement:
  * Verbindungsprofilen
  * VPN Profilen
  * Settings
  * Applikationsverteilung

<table>
  <thead>
    <tr>
      <th style="text-align:left">Was</th>
      <th style="text-align:left">Beschreibung</th>
      <th style="text-align:left">Vorteile</th>
      <th style="text-align:left">Nachteile</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Mobile Device Management (MDM)</td>
      <td style="text-align:left">- Kontrolle des Devices durch einen Agent (analog PC)</td>
      <td style="text-align:left">Verwaltung des gesamten Devices (e.g. Policies, Apps, Konfigurationen)</td>
      <td
      style="text-align:left">
        <p>- Administrativer Aufwand</p>
        <p>- Keine Kontrolle u&#x308;ber den Content</p>
        <p>- Einschra&#x308;nkungen bei der Benutzung</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">Mobile Content Management (Container)</td>
      <td style="text-align:left">- Kontrolle der Firmendaten in einer Applikation</td>
      <td style="text-align:left">
        <p>- Kontrolle der Daten und nicht vom Device</p>
        <p>- Trennung von gescha&#x308;ftlichen und privaten Daten - Selektive Lo&#x308;schung
          mo&#x308;glich</p>
      </td>
      <td style="text-align:left">
        <p>Keine Kontrolle/Verwaltung der Devices (e.g. Konfiguration, Apps etc.)</p>
        <p>- Alles in einer &#x201E;nicht-Standard&#x201C; App</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Mobile App Management</td>
      <td style="text-align:left">- Kontrolle der App&#x2018;s und deren Content</td>
      <td style="text-align:left">
        <p>Kontrolle der Daten und App&#x2018;s und nicht vom Device - Trennung von
          gescha&#x308;ftlichen und privaten Daten</p>
        <p>- Selektive Lo&#x308;schung mo&#x308;glich</p>
        <p></p>
      </td>
      <td style="text-align:left">
        <p>- Keine Kontrolle/Verwaltung der Devices (e.g. Konfiguration, Apps etc.)</p>
        <p>- Je nach Implementierung viele verschiedene App&#x2018;s</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Remote Lo&#x308;sung</td>
      <td style="text-align:left">Verbindung in die Firma nur via einer Terminal Server Lo&#x308;sung</td>
      <td
      style="text-align:left">
        <p>- Keine Daten auf dem Device</p>
        <p>- Keine OS Abha&#x308;ngigkeiten</p>
        <p>- Kontrolle der Daten und Zugriffe</p>
        </td>
        <td style="text-align:left">
          <p>- Kein Offline-Modus - Bedienung</p>
          <p></p>
        </td>
    </tr>
  </tbody>
</table>



## Wireless LAN Security

* Angriffsvektoren
  * RF Jamming
    * Ausstrahlen von Funksignalen auf derselben Frequenz \(z.B. 2.4GHz\) mit einer höheren Leistung
  * Denial-of-Service
    * -Deauthentication Denial-of- Service

      -Angreifer fälscht „deauth“ Pakete

      -Client wird sich vom WLAN trennen

      -Client versucht sich mit dem WLAN neu zu verbinden
  * Man-in-the-Middle
  * Evil-Twin
  * Rouge Devices
  * Authentifikation
  * **Verschlüsselung**
    * WPA3

      -Mitte 2018 publiziert -Rückwärtskompatibel zu WPA2 Geräten

      -192bit Verschlüsselung

      -CNSA \(Commercial National Security Algorithm\) -48bit Initialisierungsvektor

      -Simultaneous Authentication of Equals \(SAE\) mittels Dragonfly Protokoll

      -Verhinderung von Bruteforce/Dictionary Attacken

      -Opportunistic Wireless Encryption \(OWE\) -Verschlüsselung von HotSpot Traffic



## Bluetooth Security

* Funktionsweise
  * **2 Modelle** unterteilt werden:
    * **No Security:** Keine Sicherheit wird verwendet
    * **Service/Device Level Security:** Authentication, Authorization und die optionale Verschlüsselung werden initiiert sobald eine L2CAP \(Logical Link Control and Adaptation Protocol\) Verbindungsanfrage gemacht wurde.
* **Angriffe**
  * Datenversand
  * Datenklau \(Telefonbuch auslesen, SMS/MMS lesen, Telefonate führen und SMS schreiben\)
  * KNOB \(Key Negotiation of Bluetooth\) Angriff
  * Sweyntooth holes

## NFC / RFID Security

- RFID = Radio Frequency Identification

NFC = Near Field Communication

* - NFC ist ein Subset von RFID
* 
### Risiken

*  Kontaktlose Bezahlung
* Verlust der Privatsphäre
* Skimming \(Kopieren des Tags\)
* Industrie-Spionage \(Wie viel Produziert der Mitbewerber\)
* Fehlende Authentifizierung
* Side-Channel Attacken

### Schutz

* Zerstörung vom RFID Tag nach dem Kauf
* Faradayscher Käfig
* Aktives jamming
* NFC sicher konfigurieren oder jeweils ausschalten
* - Verwendung von 2-Faktor Technologien




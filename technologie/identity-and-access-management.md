# Identity and Access Management

## Allgemeine 

### Was ist der Nutzen/Gewinn 

* _Kostenreduktion durch Automatisierung_
* _Entlastung von Administratoren_
* _Bereinigte Zielsysteme \(Verweiste Identiäten\)_
* _Mehr Sicherheit \(Compliance, Nachvollziehbarkeit, Transparenz\)_
* _Zentrale Policy_
* Zentrale Benutzerverwaltung, nicht jede Applikation einzeln 
* SSO - Single Sign on 
* Endpoint Security Kontrolle von Client möglich 
* identity based firewalling    joiner mover leaver Prozess 
* Zentrale 2FA Faktoren Verwaltung; Migration / Update / etc. 
* Schnell und flexibel anpassbar 
* Step-up Möglichkeiten \(Flows\) 
* Federation von verschiedenen Quellen \(AD, Facebook\)

### Welches Aufgaben erfüllt eine IAM Lösung?

* Verwaltung von User
* Berechtigungsmanagement
* Zugriffssteuerung
* Organisationsstrukturen
* Segregation of Duties \(SoD\)

### Welche Quellen und Ziele nutzt eine IAM Lösung?

* HR Daten
* Active Directory
* Physische Zutrittssysteme
* Applikationen
* DB
* Identity Provider
* technische User \(z.b. root, lokaler Account\), 
* APIs
* IoT
* BYOD

## Worum geht es?

* **Verschiedene Identitäten**
  * Interne Mitarbeiter
  * Externe Mitarbeiter
  * Technische Accounts
  * Geschäftspartner und Kunden
* **Prozesse**
  * IT-Prozesse
  * Geschäftsprozesse
  * IAM-Prozesse
  * Governance-Prozesse
* **Technologien**
  * Risk- und Step up Authentisierung, ABAC, RBAC, Federation Services, CIAM, XACML, Identity Provider, TAN Mechanismen, SSO, OpenID Connect, SIEM, etc.

![](../.gitbook/assets/image%20%28178%29.png)

### Wichtige IAM Funktionen

* **Verwalten** \(zentral\) von Benutzer-Identitäten und Zugriffsberechtigungen basierend auf Prozessen und Technologien.
* **Provisionieren** und Deprovisionieren von Benutzer- Identitäten und Zugriffsberechtigungen auf diverse Umsysteme basierend auf Regeln, Rollen und Abläufen \(Workflows\).
* **Automatisieren** der diversen Prozesse und Abläufe basierend auf Informationen von Personal-, Organisations- und MetaDirectory-Daten.
* **Überwachen** der gesamten IAM Umgebung basierend auf Log-, Analyse-, Audit-, und Report-Daten.

## Abläufe im IAM Umfeld

![](../.gitbook/assets/image%20%28169%29.png)

![](../.gitbook/assets/image%20%28168%29.png)

![](../.gitbook/assets/image%20%28181%29.png)

![](../.gitbook/assets/image%20%28202%29.png)

![](../.gitbook/assets/image%20%28212%29.png)

## Problemfelder des Identity and Access Managements

* Durchlaufzeiten
* Komplexität
* Transparenz
* Zentralisierung
* Automatisierung
* Revisionsfähigkeit
* Kosten
* Manuelle Administration

### Beispiele:

*  Zu viele Zugriffsberechtigungen
  * „Sammler und Jäger“ 
  * Lehrlinge
* Verwaiste Benutzer-Identitäten
  * niemand kümmert sich darum, missbräuchliche Verwendung
* Verteile Benutzerdaten
  * Applikatonsspezifische Benutzerverwaltung

## IAM Service Framework

![](../.gitbook/assets/image%20%28174%29.png)

### Authentisierung

* **FIDO2** \(Fast IDentity Online\)
  * **Kryptochip** / TPM1 als Schlüsselspeicher
  * Dabei wird ein **Schlüsselpaar** generiert und z.B. bei Windows Hello im TPM-Chip gespeichert 
  * Biometrische Anmeldung erlaubt
  * bleibt auf **lokalem Gerät**
  * Benutzer-ID und PIN funktionieren nur auf diesem PC, der Angreifer müsste auch den PC in seinen Besitz bekommen 
* **Basis & Starke Authentisierung**
  * Basic Auth
    * Benutzer-ID und Passwort \(od. Zertifikat\)
  * Multifaktor \(MFA\) oder 2FA
    * weitere Sicherheitsstufe dazu
* **Single Sign On \(SSO\)**
  * ohne erneute Passworteingabe
  * Interne Wiederverwendung der Authentisierung
    * ohne erneute Passworteingabe
    * z.b. Kerberos
  * Externe/Federierte Verwendung der Authentisierung
    * Wenn intern erfolgreich authentifiziert, für externe Applikationen weiter verwendet werden \(Federierte Authentisierung\)
* **Identity Federation**
  * Identity Federation ist eine Technologie, die es ermöglicht, Authentisierungs-, Autorisierungs- und Identity-Informationen gesichert von einer Security Infrastruktur **zu einer anderen zu übertragen**
  * Benutzer werden in der eigenen Firma authentifiziert und alle relevanten Benutzerinformationen werden an den Partner übergeben
  * Voraussetzung dafür ist ein **Vertrauensverhältnis** zwischen den Federation-Partnern, sowohl **organisatorisch** als auch **technisch**
  * **Vorteile:**
    * Der Benutzer muss sich **nur ein Account/Passwort merken**
    * Es gibt **nur eine digitale Identität**, die verwaltet werden muss
    * Firmen- und Technologie**übergreifendes SSO**\(SingleSign-On\) ist möglich
    * Weniger Aufwand für die Verwaltung externer Identitäten \(Lifecycle-Management, Prozesse, weniger Helpdesk Kosten\)
    * Möglichkeit zur Anbindung extern betriebener Cloud Applikationen
    * Integration bestehender Systeme wie ServiceProvider,Portale, IaaS/PaaS/SaaS \(Infrastructure- / Platform- / Software as a Service\)
    * **Weniger verwaiste Benutzer**-Identitäten \(ungenützte Accounts\) ****

![](../.gitbook/assets/image%20%28191%29.png)

![](../.gitbook/assets/image%20%28173%29.png)



### Authorisierung

* Einzel / Gruppen Autorisierung
  * Einzeln: Benutzer die Berechtigung direkt auf die Ressource \(File, Applikation, Programm\) zugewiesen; Sehr hoher Verwaltungsaufwand
  * Gruppen: Gruppen bilden, mehrere Benutzer pro Gruppe, Berechtigungen nur pro Plattform, Verwaltungsaufwand noch immer gross
* Rollen Autorisierung
* **Mehrstufige Architektur**
  * Basisrollen \(Entwickler, Interner MA, Externer MA\)
  * Globale Rollen \(Dev-Tools, Kassierer, Buchhalter\)
  * Anwender Rollen \(MA Projekt 1, Windows Admin\)
* Rollenbildung in diversen Ausprägungen
  * **Top Down** Ansatz:
    * Funktionen auf Geschäftsprozess Ebene 
    * -&gt;ergeben Rollen
  * **Bottom Up** Ansatz:
    * Was auf den Zielsystemen vorhanden ist
    * -&gt; wird in Rollen umgewandelt
  * Top Down / Bottom Up Ansatz zusammen: **Mix z**wischen Funktionen und „Status Quo“
  *  Diverse Architektur Ansätze:

    - Eine Rolle pro Benutzer

    - Verschachtelung \(und Vererbung\) der Rollen  
    - Mehrstufige Architektur \(Aufbauende Rollen\)
* **Federierte Autorisierung** 
  * Interne Verwendung der Autorisierung
    * Wurde der Benutzer intern erfolgreich authentifiziert, kann diese Information zur Autorisierungsweitergabe genutzt werden
    * Die Autorisierung \(Rolle, Recht\) wird anhand von vorher vereinbarten Regeln aus Quellsystemen \(z.B. Active Directory\) ausgelesen und zum Zielsystem weitergegeben \(federiert\)
    * Die interne Applikation akzeptiert diese Autorisierungs-Information und erlaubt den Zugang
  * Externe Nutzung der Autorisierung
    * Wurde der Benutzer intern erfolgreich authentifiziert, kann diese Information für eine externe federierte Applikation verwendet werden
    * Die Applikation beim externen Provider eruiert anhand der federierten Authentisierungsinformation die Zugriffsrechte des Benutzers und erlaubt \(oder verbietet\) den Zugang zur Applikation
* **Zugriffskontrolle**
  * **Worum geht es?**
    * Steuerung und Überwachung auf geschützte Ressourcen \(File, Applikation, Programm\)
    * Zugriffskontrolle ist Vertraulichkeit, Integrität und Verfügbarkeit \(Confidentiality Integrity Availability\)
  * Wie
    * Wenn ein Benutzer auf eine **geschützte Ressource** zugreifen möchte wird dazu als erstes seine Authentisierungsinformation benötigt
    * Basierend auf der **Authentisierungsinformation** wird geprüft, ob der Benutzer über eine Access Control Liste \(ACL\) auf die geschützte Ressource berechtigt ist
    * **Je nach Resultat** wird dann der Zugriff auf die angefragte Ressource erlaubt oder abgelehnt

    

#### RBAC

* Role-based Access Control
* steht für rollenbasierte Zugriffskontrolle
* Hier werden Rechte in ITSystemen nicht direkt an Benutzer vergeben, sondern atomare Rechte als ein Bündel von Rechten zu einer Rolle zusammengefasst. 



* Beispiel:

  Der Mitarbeiter \(User\)

  - hat als Kundenbetreuer der Privatkunden \(Rolle A mit diversen Gruppen\) - die Berechtigung \(Erlaubnis\)

  - die Kundendaten \(Objekt\) zu ändern \(Operation\)



![](../.gitbook/assets/image%20%28198%29.png)

![](../.gitbook/assets/image%20%28196%29.png)

![](../.gitbook/assets/image%20%28199%29.png)

#### ABAC

* ABAC steht für Attribute-based Access Control
* Der ABAC Ansatz verwendet die Attribute: **Benutzer + Aktion + Ressource + Umgebung**
* Bei einer attributbasierten Zugriffskontrolle wird ein Zugriff für einen Benutzer gewährt, nachdem eine Kombination aus Attributen, die mit ihm assoziiert sind, überprüft wurden. 
* ABAC Ablauf im Systemumfeld

![](../.gitbook/assets/image%20%28195%29.png)



![](../.gitbook/assets/image%20%28180%29.png)

## Services, Quellen, Ziele

* Verzeichnisdienste \(Directories\)
  * HR Daten / Personalverzeichn
* **Identity Federation**
  * Einmalige Authentisierung \(SSO\)
  * Sicherer Transport des authentisierten Benutzers über diverse Plattformen und Systeme
  * Vergleiche Pass und Identity Federation
    * Bsp. Wenn die Pässe wie Internet Identitäten ausgestellt werden müssten, bräuchte eine Person für jedes Land einen anderen Pass! Warum benötigen wir nur einen Pass?
    * Wenn ein US Bürger als User in die Schweiz reist, wird sein Pass geprüft.

      Die **Schweizer Passkontrolle** agiert wie ein **Service Provider** und vertraut dem **Aussteller** des Passes, welcher die Rolle als **Identity Provider** wahrnimmt.

### SAML \(Security Assertion Markup Language\)

* SAML ermöglicht den **sicheren Transport von Informationen** zur:
  * Authentisierung \(wer bin ich\)
  * Autorisierung \(was darf ich\)
* über Organisations- und Firmengrenzen hinweg
* 
![](../.gitbook/assets/image%20%28184%29.png)

![](../.gitbook/assets/image%20%28177%29.png)



## Audit & Compliance

*  **Monitoring** Services
  * **Überwachen** der verschiedenen IAM Services
    * Prozess und Abläufe
    * Logdaten
  * **Alarmierung** anhand des Monitorings
    * Schwellwert überschritten \(Massverarbeitung Eintritt,Austritt\)
    * Je Dringlichkeit per SMS usw.
* **Reporting** Services
  * IAM Aktivitäten Report
    * Wann fand das Ereignis statt
    * Welcher Benutzer hat es ausgelöst
    * Um welche Zugriffsart oder Ressource ging es
  * IAM Security Report
    * Bei den Security Reports werden Sicherheitseinstellungen Benutzerdaten und Zugriffsberechtigungen 
  * Rezertifizierungen
* Anpassungen und Projekte im IAM Umfeld
  * **Überprüfung des IAM Umfeldes**
    * IST Aufnahme
    * SOLL Planung
    * Verbesserungsmassnahmen
      * Was soll erreicht werden?
      * Wie soll es erreicht werden?
  * **Vorgehensweise zur IAM Implementierung**

    Der organisatorische Aufwand ist in der Regel grösser als die eigentliche technische Implementierung

    • AnalysederIst-Situation,AufräumenderZielsysteme\(Benutzer- Identitäten, Gruppen, ...\)

    • DanachphasenweiseImplementierung:

    1. Basis Installation, Password Management, Übernahme HR Daten

    2. AutomatischeProvisionierungvonBenutzer-Identitätenandie

    wichtigsten Zielsysteme \(Windows, Mainframe, SAP\)

    3. RollenbasierteZugriffsberechtigungenaktiviereninklusive

    Genehmigungsverfahren

    4. ErweiterungenfürdiebestehendenangebundenenZielsysteme

    vornehmen \(spezielle Benutzer-Identitäten und Gruppen\)

    5. Anbindung weiterer Zielsysteme und Applikationen

    Nach jeder Phase sollte ein Review gemacht werden \(Zielvorgabe erreicht?\)
* Anforderungen an ein IAM Tool
  * Anforderungskatalog
    * Funktionale Anforderung
    * Betriebs / Business Kriterien \(Lizenzen, Marktpoisition, Ausbildung\)

### IAM Pyramide der Implementierungsphasen

![](../.gitbook/assets/image%20%28201%29.png)














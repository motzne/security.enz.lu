# 🔴 Cloud Security

* Cloud bedeutet
  * geteilten Pool
  * Ressourcen-pooling
  * **automatisiert und orchestriert** das Management der Pool Ressourcen
  * Self Service
  * geringere Serviceprovider-Interaktion
* Unterschied zur traditionellen Virtualisierung =  Self Service
* CSA = Cloud Security Alliance

## Vorteile der Cloud 

* **Agilität** \(agility\)
  * Geschwindigkeit\(z.B.Deployment\)
  * Migrationen zu neuen Versionen
* **Elastizität** \(resiliency\)
  * Skalierung\(z.B.Applikationen\)
  * Ressourcen allokation/ verwendung
* **Ökonomie** \(economics\)
  * CAPEX vs. OPEX\(public cloud–no capital expenditure\)
  * Pay-per-use Modelle

## Unterschied zu Outsourcing 

Die Nutzung von Cloud Services gleicht in vielem dem klassischen Outsourcing, aber es kommen noch einige Unterschiede hinzu, die zu berücksichtigen sind:

* Aus wirtschaftlichen Gründen teilen sich in einer Cloud **mehrere Nutzer** eine gemeinsame Infrastruktur.
* Cloud Services sind **dynamisch** und dadurch innerhalb viel nach oben und unten **skalierbar**.So können Cloud-basierte Angebote **rascher an den täglichen Bedarf** des Kunden angepasst werden.
* Die Steuerung der in Anspruch genommenen Cloud-Dienste erfolgt in der Regel mittels einer **Webschnittstelle \(Management Plane\)** durch den Cloud-Nutzer selbst. So kann der Nutzer automatisiert die genutzten Dienste auf seine Bedürfnisse zuschneiden.
* Durch die beim Cloud Computing genutzten Techniken ist es möglich, die IT-Leistung **dynamisch über mehrere Standorte zu verteilen**, die geographisch weit verstreut sein können \(Inland ebenso wie Ausland\).
* Der Kunde kann die genutzten Dienste und seine **Ressourcen einfach  über Web-Oberflächen oder passende Schnittstellen administrieren**, wobei **wenig Interaktion mit dem Provider** erforderlich ist.

 

![](../.gitbook/assets/image%20%28476%29.png)

## Top Threats 

![](../.gitbook/assets/image%20%28432%29.png)

## NIST Modell

![](../.gitbook/assets/image%20%28429%29.png)

### Essentails Characteristics

<table>
  <thead>
    <tr>
      <th style="text-align:left">Begriff</th>
      <th style="text-align:left">Beschreibung</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">On-demand Self Service:</td>
      <td style="text-align:left">
        <p></p>
        <p>Die Provisionierung der Ressourcen (z. B. Rechenleistung, Storage) l&#xE4;uft
          automatisch ohne Interaktion mit dem Service Provider ab.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Broad Network Access:</td>
      <td style="text-align:left">Die Services sind mit Standard-Mechanismen &#xFC;ber das Netz verf&#xFC;gbar
        und nicht an einen bestimmten Client gebunden.</td>
    </tr>
    <tr>
      <td style="text-align:left">Resource Pooling</td>
      <td style="text-align:left">Die Ressourcen des Anbieters liegen in einem Pool vor, aus dem sich viele
        Anwender bedienen k&#xF6;nnen (Multi-Tenant Modell). Dabei wissen die Anwender
        nicht, wo die Ressourcen sich befinden, sie k&#xF6;nnen aber vertraglich
        den Speicherort, also z. B. Region, Land oder Rechenzentrum, festlegen.</td>
    </tr>
    <tr>
      <td style="text-align:left">Rapid Elasticity</td>
      <td style="text-align:left">Die Services k&#xF6;nnen schnell und elastisch zur Verf&#xFC;gung gestellt
        werden, in manchen F&#xE4;llen auch automatisch. Aus Anwendersicht scheinen
        die Ressourcen daher unendlich zu sein.</td>
    </tr>
    <tr>
      <td style="text-align:left">Measured Services:</td>
      <td style="text-align:left">Die Ressourcennutzung kann gemessen und &#xFC;berwacht werden und entsprechend
        bemessen auch den Cloud- Anwendern zur Verf&#xFC;gung gestellt werden.</td>
    </tr>
  </tbody>
</table>

### Service Models

<table>
  <thead>
    <tr>
      <th style="text-align:left">Begriffe</th>
      <th style="text-align:left">Beschreibung</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Infrastructure as a Service (IaaS)</td>
      <td style="text-align:left">
        <ul>
          <li>IT-Ressourcen wie z.B. Rechenleistung, Datenspeicher oder Netze als Dienst
            angeboten</li>
          <li>z. B. Rechenleistung, Arbeitsspeicher und Datenspeicher anmieten un darauf
            eine Anwendung seiner Wahl laufen lassen</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Platform as a Service (PaaS)</td>
      <td style="text-align:left">
        <ul>
          <li>und bietet dem Kunden auf der Plattform standardisierte Schnittstellen
            an, die von Diensten des Kunden genutzt werden</li>
          <li>
            <p>Der Kunde hat keinen Zugriff auf die darunterlegenden Schichten (Betriebssystem,
              Hardware)</p>
            <p></p>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p>Software as a Service (SaaS)</p>
        <p></p>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Der Verbraucher nutzt die Anwendungen des Anbieters</li>
          <li>Keine Verwaltung der darunterlegenden Cloud-Infrastruktur</li>
          <li>
            <p>Kann Fragen aufwerfen</p>
            <p>wie z.B. Log Management, Verschl&#xFC;sselung der Daten etc</p>
          </li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

![Service Modelle: Beispiele aus der Praxis](../.gitbook/assets/image%20%28440%29.png)





![Beispiel: Pizza as a Service](../.gitbook/assets/image%20%28494%29.png)



### Development Models

NIST unterscheidet in 4 Bereitstellungsmodelle

<table>
  <thead>
    <tr>
      <th style="text-align:left">Begriffe</th>
      <th style="text-align:left">Beschreibung</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Private Cloud</td>
      <td style="text-align:left">
        <ul>
          <li>Cloud-Infrastruktur <b>nur f&#xFC;r eine Institution </b>betrieben</li>
          <li>selbst oder einem Dritten</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Public Cloud</td>
      <td style="text-align:left">
        <ul>
          <li>Services von der <b>Allgemeinheit</b> oder einer <b>gro&#xDF;en Gruppe</b>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Community Cloud</td>
      <td style="text-align:left">
        <ul>
          <li>Infrastruktur von <b>mehreren Institutionen </b>geteilt, die &#xE4;hnliche
            Interessen haben</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Hybrid Cloud</td>
      <td style="text-align:left">
        <ul>
          <li>Private-Cloud mit Public-Cloud.</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

![](../.gitbook/assets/image%20%28481%29.png)



## Preismodelle \(CapEx vs. OpEx\)

Capital expenditures \(CapEx\) vs. Operating expenses \(OpEx\) 



![](../.gitbook/assets/image%20%28449%29.png)



## Shared responsibilites

![](../.gitbook/assets/image%20%28424%29.png)



## Risk und Governance

![Risk und Governance - Best Practise von CSA](../.gitbook/assets/image%20%28489%29.png)

![Vertr&#xE4;ge &amp; gemeinsame Verantwortlichen](../.gitbook/assets/image%20%28459%29.png)

![](../.gitbook/assets/image%20%28421%29.png)



Standards die zum empfehlen sind:

* The **CSA Cloud Controls Matrix**
* The **NIST** General Access Control Guidance for Cloud Systems \(NIST Special Publication 800-210\), which includes conceptual models, reference architectures, and a controls framework
* ISO/IECFDIS27017Informationtechnology– Security techniques – Code of practice for information security controls based on ISO/IEC 27002 for cloud services.

### Cloud Control Matrix

* von CSA = Cloud Security Alliance
* **Ziel**
  * **Bewertung interner Projekte als auch von Anbietern verwendet werden**
  * **Liste der Cloud-Sicherheitsanforderungen** 
* 133 Cloud Security Controls
* Aligniert zu verschiedenen frameworks/regulatory requirements
* 14 verschiedene Domänen
*  CCM = **WAS**? Guidance = **WIE** \(CCM sagt Ihnen «was» Sie tun müssen, während die Guidance Ihnen sagt, «wie» Sie es tun müssen\)



  \*\*\*\*

## Compliance und Audit

* Definition **Compliance** \(für hier und jetzt ☺\):
  * Compliance-management ist ein Werkzeug der Governance - das

    heisst:

    * Es zeigt auf wie eine Organisation Ihre externe \(aber auch interne\) Gesetzes-Anforderungen misst, verbessert und beweist.
* Definition **Audit** \(für hier und jetzt ☺\):
  * Audits und Assessments sind ein Werkzeug der Compliance - das

    heisst:

    * Es sind Mechanismen um die Compliance mit internen und externen Anforderungen zu dokumentieren.
    * Diese beinhalten \(nebst der Bestätigung was alles ‘compliant’ ist\) i.d.R. eine Liste mit identifizierten Risiken, Probleme und Empfehlungen.

![](../.gitbook/assets/image%20%28488%29.png)

![Best practice: Securing the Management Plane](../.gitbook/assets/image%20%28464%29.png)

## Data Security

![](../.gitbook/assets/image%20%28414%29.png)

![](../.gitbook/assets/image%20%28493%29.png)



![](../.gitbook/assets/image%20%28465%29.png)

![](../.gitbook/assets/image%20%28437%29.png)

## DevOps

![](../.gitbook/assets/image%20%28433%29.png)

![DevOps = Tools, Prozesse and People](../.gitbook/assets/image%20%28435%29.png)

![DevOps is not... ](../.gitbook/assets/image%20%28423%29.png)

### DevSecOps

![DevSecOps](../.gitbook/assets/image%20%28420%29.png)

![](../.gitbook/assets/image%20%28470%29.png)

### Application Security

![SAST, DAST; IAST, RASP](../.gitbook/assets/image%20%28438%29.png)

![SAST vs. DAST](../.gitbook/assets/image%20%28452%29.png)

![SAST; DAST, IAST, RASP](../.gitbook/assets/image%20%28475%29.png)

## IAM

![](../.gitbook/assets/image%20%28419%29.png)



## Zusammenfassung

![](../.gitbook/assets/image%20%28491%29.png)

![](../.gitbook/assets/image%20%28416%29.png)

![](../.gitbook/assets/image%20%28471%29.png)

![](../.gitbook/assets/image%20%28467%29.png)

![](../.gitbook/assets/image%20%28454%29.png)

![](../.gitbook/assets/image%20%28413%29.png)




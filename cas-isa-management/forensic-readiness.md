# Forensic Readiness

![](../.gitbook/assets/image%20%28353%29.png)

## **Motivation**

* Forensische Untersuchungen werden üblicherweise infolge kritischer Sicherheitsvorfälle \(mit potentiell kriminellem Hintergrund\) oder klar kriminellen Handlungen initiiert
* Dazu werden meist auch digitale Informationen benötigt, welche üblicherweise im Rahmen einer Hausdurchsuchung erhoben werden

## **Zielsetzung**

* Forensic Readiness nutzt die **Ruhe vor dem Sturm** um
  * vorausschauend die **Qualität der digitalen Spurenlage zu optimieren**
  * die **Ermittlungsprozesse organisatorisch** und **technisch** zu **planen**

## **Begriffe**

<table>
  <thead>
    <tr>
      <th style="text-align:left">Begriffe</th>
      <th style="text-align:left">Details</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Forensic Readiness <b>Definition</b>
      </td>
      <td style="text-align:left">
        <p>&#xAB;<b>Das Erreichen eines angemessenen F&#xE4;higkeitsniveaus</b> durch
          eine Organisation, damit sie in der Lage ist, digitales Beweismaterial
          zu sammeln, zu bewahren, zu sch&#xFC;tzen und zu analysieren, so dass dieses
          Beweismaterial in allen Rechtsangelegenheiten, in Disziplinarangelegenheiten,
          vor einem Arbeitsgericht oder Gerichtshof effektiv genutzt werden kann.&#xBB;
          (&#xDC;bersetzung mit Deepl am 14.08.2020)</p>
        <p></p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><b>F</b>orensic Readiness <b>Policy</b>
      </td>
      <td style="text-align:left">&#xAB;Die Forensic Readiness Policy ist eine <b>formelle Verpflichtung einer Organisation</b>,
        die Grunds&#xE4;tze der Forensic Readiness zu &#xFC;bernehmen und umzusetzen,
        die so angepasst sind, dass sie im Gesch&#xE4;ftskontext der Organisation
        relevant sind.&#xBB; (&#xDC;bersetzung mit Deepl am 14.08.2020)</td>
    </tr>
    <tr>
      <td style="text-align:left">Forensic Readiness <b>Planning</b>
      </td>
      <td style="text-align:left">&#xAB;Forensic Readiness Planung ist die <b>Notfallplanung</b> und die Aktivit&#xE4;ten
        zum Aufbau von F&#xE4;higkeiten im Zusammenhang mit der Umsetzung der forensischen
        Bereitschaftspolitik.&#xBB; (&#xDC;bersetzung mit Deepl am 14.08.2020)</td>
    </tr>
    <tr>
      <td style="text-align:left">Forensic Readiness <b>Capability</b>
      </td>
      <td style="text-align:left">&#xAB;Die <b>F&#xE4;higkeit zur forensischen Bereitschaft</b> ist ein Zustand
        der Forensic Readiness, der sich durch das interne F&#xE4;higkeitsniveau
        einer Organisation ausdr&#xFC;ckt. Dies bestimmt auch, inwieweit eine Organisation
        bei der Durchf&#xFC;hrung von digital-forensischen Untersuchungen auf externe
        F&#xE4;higkeiten angewiesen ist (z.B. von Anbietern digital- forensischer
        Dienste).&#xBB; (&#xDC;bersetzung mit Deepl am 14.08.2020)</td>
    </tr>
  </tbody>
</table>

## 10 Schritte zur to Forensic Readiness 

engl. 10 Steps to Forensic Readiness

![](../.gitbook/assets/image%20%28354%29.png)

<table>
  <thead>
    <tr>
      <th style="text-align:left">#</th>
      <th style="text-align:left">Step</th>
      <th style="text-align:left">Details</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1</td>
      <td style="text-align:left"><b>Identifikation der Szenarien</b>, die digitale Beweismittel erfordern</td>
      <td
      style="text-align:left">
        <ul>
          <li>Was gef&#xE4;hrdet die Gesch&#xE4;ftst&#xE4;tigkeit und was ist gef&#xE4;hrdet?</li>
          <li><b>Extrinsische</b> Szenarien (auferlegte Interessen)
            <ul>
              <li>Mitwirkungspflicht bei der Strafverfolgung, Zwangsmassnahmen</li>
              <li>Erf&#xFC;llung der Offenlegungspflichten in zivilrechtlichen Anspr&#xFC;chen</li>
            </ul>
          </li>
          <li><b>Intrinsische</b> Szenarien (eigenes Interesse)
            <ul>
              <li>Erf&#xFC;llung gesetzlicher und beh&#xF6;rdlicher Auflagen</li>
              <li>Vermeidung von Fahrl&#xE4;ssigkeit und Verletzung von Vertr&#xE4;gen</li>
              <li>
                <p>Unterst&#xFC;tzung von Versicherungsanspr&#xFC;chen bei einem Schaden
                  - Streitigkeiten</p>
                <p>- u.v.m.</p>
              </li>
            </ul>
          </li>
        </ul>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">2</td>
      <td style="text-align:left"><b>Identifikation</b> der verf&#xFC;gbaren <b>Quellen</b> und der unterschiedlichen <b>Arten potenzieller Beweismittel</b>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Ziel ist es herauszufinden, welche Daten &#xFC;ber das gesamte Systemumfeld
            hinweg &#xFC;berhaupt verf&#xFC;gbar sind</li>
          <li>Zwei verschiedene Datentypen k&#xF6;nnen dabei unterschieden werden
            <ul>
              <li>
                <p><b>Background</b> =&gt; Daten, die im Normalbetrieb vorhanden sind</p>
                <ul>
                  <li>Equipment (z.B. Router, Firewalls, Servers, Clients, ...)</li>
                  <li>Software (z.B. ERP-System, Identity Management, ...)</li>
                  <li>Logging (z.B. Syslogs, Windows Eventlogs, Messages, ...)</li>
                  <li>Backups</li>
                </ul>
                <p></p>
              </li>
              <li><b>Foreground</b> =&gt; Daten, die nur im Ereignisfall entstehen und speziell
                gesichert werden m&#xFC;ssen
                <ul>
                  <li>Intrusion Detection Software, Network Sniffers, Keyboard Loggers</li>
                  <li>Video&#xFC;berwachung, Zutrittssysteme, Telefonie</li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
        <p></p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">3</td>
      <td style="text-align:left"><b>Festlegung der Anforderungen</b> an die Erhebung digitaler Beweismittel</td>
      <td
      style="text-align:left">
        <ul>
          <li>Das Ziel ist die Erarbeitung der detaillierten Beweismittel-Anforderungen
            zur Sicherstellung der Forensic Readiness</li>
          <li>Im Zentrum steht eine Aufwand/Kosten - Analyse, die im Dialog zwischen
            Business (Sichtweise: Risiko) und den IT-Spezialisten (Sichtweise: Aufwand)
            gel&#xF6;st werden muss</li>
        </ul>
        <p></p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">4</td>
      <td style="text-align:left">Bereitstellung der <b>F&#xE4;higkeit</b> und der notwendigen <b>Infrastruktur</b> zur
        bedarfsgerechten Sammlung rechtlich zul&#xE4;ssiger digitaler Beweismittel</td>
      <td
      style="text-align:left">
        <ul>
          <li>Zwei Checks sind wesentlich
            <ul>
              <li>Daten k&#xF6;nnen <b>ohne Unterbruch / Beeinflussung</b> des Normalbetriebs
                bereitgestellt werden</li>
              <li>Daten k&#xF6;nnen entsprechend g<b>eltendem Recht</b> bereitgestellt werden</li>
            </ul>
          </li>
        </ul>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">5</td>
      <td style="text-align:left">Festlegung einer <b>Richtlinie f&#xFC;r die sichere Aufbewahrung und Handhabung</b> von
        potentiellen digitalen Beweismittel</td>
      <td style="text-align:left">
        <ul>
          <li>Ziel dieses Schrittes ist die Sicherstellung der anforderungsgerechten,
            langfristigen Aufbewahrung der Daten nach deren Entstehung/Erhebung</li>
          <li>- Nebst der Aufbewahrung der Daten muss auch deren Wiederherstellung gew&#xE4;hrleistet
            sein</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">6</td>
      <td style="text-align:left"><b>Etablierung einer &#xDC;berwachung</b> zur Erkennung und Abwendung von
        kritischen Sicherheitsvorf&#xE4;llen</td>
      <td style="text-align:left"></td>
    </tr>
    <tr>
      <td style="text-align:left">7</td>
      <td style="text-align:left">Festlegung von <b>Kriterien f&#xFC;r die Initiierung und Eskalation</b> zu
        einer vollst&#xE4;ndigen, formellen (forensischen) Untersuchung</td>
      <td
      style="text-align:left">
        <ul>
          <li>Untersuchung soll nur initiiert werden, wenn dies juristisch gerechtfertigt
            erscheint</li>
          <li>Unn&#xF6;tige Aufw&#xE4;nde sollen vermieden werden</li>
        </ul>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">8</td>
      <td style="text-align:left"><b>Schulung der Mitarbeitenden</b> hinsichtlich ihrer Rolle im digitalen
        Beweisverfahren und der rechtlichen Sensibilit&#xE4;t von Beweismitteln</td>
      <td
      style="text-align:left">
        <ul>
          <li>Ziel dieses Schrittes ist sicherzustellen, dass die Mitarbeitenden f&#xFC;r
            die Wahrnehmung ihrer Funktion vor, w&#xE4;hrend und nach einem Vorfall
            optimal ger&#xFC;stet sind</li>
          <li>Wesentliche Aspekte die zu beachten sind (nicht vollst&#xE4;ndig)
            <ul>
              <li>Notizen mit Datum, Zeit und Unterschrift versehen</li>
              <li>&#xAB;Need to know&#xBB;-Prinzip in der Kommunikation ber&#xFC;cksichtigen</li>
              <li>Keine Verwendung potentiell kompromittierter Systeme (z.B. E-Mail) - Wesentliche
                Vorschriften und Gesetze sind bekannt</li>
              <li>Der korrekte Umgang mit Beweismitteln ist sichergestellt</li>
            </ul>
          </li>
        </ul>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">9</td>
      <td style="text-align:left"><b>Evidenzbasierte Dokumentation</b> von Vorf&#xE4;llen und deren Auswirkung</td>
      <td
      style="text-align:left">
        <ul>
          <li>Die Untersuchung eines Vorfalles richtet sich nach den zentralen Aspekten
            WER, WAS, WIESO, WOMIT, WANN, WO und WIE</li>
        </ul>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">10</td>
      <td style="text-align:left">Durchf&#xFC;hrung eines <b>Reviews durch die Rechtsabteilung</b>, um eine
        bedarfsgerechte Abwicklung einer forensischen Untersuchung sicherzustellen</td>
      <td
      style="text-align:left">
        <ul>
          <li>
            <p>Spezialisten, die &#xFC;ber das notwendige, rechtliche Fachwissen verf&#xFC;gen
              (z.B. f&#xFC;r grenz&#xFC;berschreitende Cyber Crime Vorf&#xE4;lle) sollten
              die Angemessenheit der Forensic Readiness Massnahmen im Rahmen eines Reviews
              feststellen</p>
            <p></p>
          </li>
        </ul>
        </td>
    </tr>
  </tbody>
</table>




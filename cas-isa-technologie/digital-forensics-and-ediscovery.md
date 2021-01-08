# Digital Forensics & eDiscovery

## Überblick – Chronologischer Ablauf

![](../.gitbook/assets/image%20%28361%29.png)

* **Cybercrime** \(Delikte, Phänomene\)
  * Akteure \(digitale Identitäten, reale Personen\)
  * Handlungen \(technische Abläufe, reale Absichten\)
* **Investigation** \(Ermittlung\)
  * Delikte \(Verständnis der Phänomene, Zuordnung zu Akteuren\)
  * Zusammenführen Information aus Examination
* **Examination** \(Untersuchung\)
  * Analysis & Reporting \(Bereitstellen Information für Investigation\)
  * Collection & Examination \(Spurensicherung\)
* **Evidence** \(Spuren\)
  * Logische Spuren der Handlungen \(Daten, Inhalte\)
  * Physikalische Fundorte der Daten \(Datenträger\)

## Digital Forensics

### Motivation

* Bedrohungen im **modernen Cyberspace**
  *  Alle können mitmachen, solange er/sie/es IP spricht!
  * Fast vollständig fehlende Regulierung!
  * Aktionsraum digitaler Identitäten!
  * Explodierende Datenmengen
    * Abhängigkeit und Wert von Daten nehmen stetig zu
* **Cybercrime**
  * Keine allgemein gültige Definition des Begriffs
  * Cybercrime im **engeren** Sinn: Straftaten oder Vergehen, welche nur im Kontext von ICT möglich

    sind \(Computerkriminalität, Internetkriminalität\)

    - Cybercrime im **weiteren** Sinn: Straftaten oder Vergehen, welche durch ICT unterstützt werden

    \(digitalisierte Kriminalität\)
* **Computertatbestände \(CT\)**
  * StGB: _Strafbare Handlungen gegen das Vermögen_
    *  _Art. 143 Unbefugte Datenbeschaffung_
    * _Art. 143bis1 Unbefugtes Eindringen in ein Datenverarbeitungssystem_
    * _Art. 144bis Datenbeschädigung_
    * _Art. 147 Betrügerischer Missbrauch einer Datenverarbeitungsanlage_
    * _Art. 150 Erschleichen einer Leistung_
    * _Art. 150bis1 Herstellen und Inverkehrbringen von Materialien zur unbefugten Entschlüsselung codierter Angebote_
  * =&gt; Es muss ein Schaden geben
* **Computer Aided Crime** = Digitalisierte Kriminalität
  * Jede Form von ‘klassischer’ Kriminalität, welche mit Unterstützung oder unter Beteiligung digitaler Systeme ausgeführt wird
  * Cybercrime im **weiteren Sinne** bezieht sich hier also auf Tatort resp. Tatmittel

### Zielsetzungen der forensischen Arbeit

#### Locard’sches Austauschprinzip

* Jeder Kontakt zwischen zwei Objekten hinterlässt wechselseitige Spuren
  * Opfer und Täter verändern Tatort 
    * Hinterlassene Spur am Tatort
  * Tatort und Täter verändern Opfer
    * Hinterlassene Spur am Opfer
  * Opfer und Tatort verändern Täter
    * Hinterlassene Spur am Täter

![](../.gitbook/assets/image%20%28360%29.png)



### Begriffe

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Kriminalistik</td>
      <td style="text-align:left">
        <ul>
          <li>Lehre von den Mitteln und Methoden zur <b>Bek&#xE4;mpfung</b> einzelner
            Straftaten resp. des Verbrechertums (<b>Kriminalit&#xE4;t</b>) durch vorbeugende
            (pr&#xE4;ventive) und strafverfolgende (repressive) Massnahmen.</li>
          <li>Zielsetzung ist das Ermitteln und <b>forensische</b> (gerichtsfeste) Beweisen
            von Straftaten</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Kriminaltechnik</td>
      <td style="text-align:left">
        <ul>
          <li>3 Arten von Spurten
            <ul>
              <li><b>Materielle</b> Spuren
                <ul>
                  <li>Formspuren (Schuhabdruck, Reifenspur)</li>
                  <li>Biometrische Spuren (z.B. Fingerabdruck auf Werkzeug, Gliederteile, Speichel)</li>
                  <li>Biologische Spuren (z.B. Blut an Kleidern, Gliederteile, Speichel)</li>
                  <li>Chemische Spuren (z.B. Gift in Getr&#xE4;nk</li>
                </ul>
              </li>
              <li><b>Immaterielle</b> Spuren
                <ul>
                  <li>Beruht auf eine zeitnahe Beobachtungen, Erinnerungen (z.B. Zeugenaussagen
                    = Interpretationssache)</li>
                </ul>
              </li>
              <li>Digitale Spuren
                <ul>
                  <li>010 11000 100 10 01 00</li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Forensik</td>
      <td style="text-align:left">
        <ul>
          <li>Lat. forensis = zum Forum (Marktplatz resp. Gericht)</li>
          <li>forensisch bedeutet <b>&#xAB;f&#xFC;r den Gebrauch vor Gericht&#xBB;</b>
          </li>
          <li>Ziel der Forensik ist die systematische, gerichtstaugliche Aufarbeitung
            von (kriminellen) Handlungen</li>
          <li>In zahlreiche Teilgebiete (nach Spurenart) gegliedert
            <ul>
              <li>Rechtsmedizin: Autopsie (Leichenschau)</li>
              <li>Forensische Psychiatrie: Beurteilung der Schuldf&#xE4;higkeit und Einsch&#xE4;tzung
                des Gef&#xE4;hrlichkeitsgrads von Straft&#xE4;tern</li>
              <li>IT-Forensik: Untersuchung von digitalen Spurenlagen</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Indiz</td>
      <td style="text-align:left">
        <ul>
          <li>aus dem lateinischen indicare = anzeigen</li>
          <li><b>Hinweis</b> (Zeugnis), der f&#xFC;r sich allein oder in einer Gesamtheit
            mit anderen Indizien den R&#xFC;ckschluss auf das Vorliegen einer Tatsache
            zul&#xE4;sst (Wikipedia)</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Beweis (Rechtswesen)</td>
      <td style="text-align:left">
        <ul>
          <li>
            <p>Bezeichnet die Feststellung eines Sachverhalts als Tatsache in einem Gerichtsverfahren
              aufgrund</p>
            <p>richterlicher &#xDC;berzeugung (Wikipedia)</p>
          </li>
          <li>Abstufung im allgemeinen Sprachgebrauch
            <ul>
              <li><b>Behauptung</b>: nicht gesichert, nicht belegbar</li>
              <li><b>Indiz</b>: unsicher, aber m&#xF6;glich</li>
              <li><b>Beweis</b>: unwiderlegbar, absolut wahr</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">
        <p>Stringenz</p>
        <p>(Rechtswesen)</p>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Bezeichnet die <b>Schl&#xFC;ssigkeit des Arguments </b>oder einer Argumentation</li>
          <li>Konklusion folgt logisch aus (wahren) Pr&#xE4;missen (formale Korrektheit)</li>
        </ul>
        <p></p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Spur</td>
      <td style="text-align:left">
        <ul>
          <li>Englisch: evidence (aber nicht <em>offensichtlich</em>, wie es im Deutschen
            oft gebraucht wird)</li>
          <li><b>Eine Spur im kriminalistischen Sinne bezeichnet ein Indiz </b>(Hinweis,
            Zeugnis, Gegenstand, Zustand), welches in einem Ermittlungsverfahren eine
            Theorie &#xFC;ber einen <b>Tathergang best&#xE4;tigen oder widerlegen</b> kann</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Digitale Spur</td>
      <td style="text-align:left">
        <ul>
          <li>Bsp. Verschl&#xFC;sselte Datei
            <ul>
              <li>ist beides Materielle und Immaterielle Spur</li>
              <li>Grunds&#xE4;tzliche Materielle Spure (die Datei + Logs)</li>
              <li>Information = Immaterieller Charakter (Interpretationsspielraum bspw.
                bei der Entschl&#xFC;sselung mit falschem Algorithmus)</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">IT-Forensik</td>
      <td style="text-align:left">
        <ul>
          <li><b>Spezialdisziplin</b> der klassichen Forensik und nicht umgekehrt</li>
          <li>&#xAB;IT-Forensik ist begrifflich und inhaltlich mit der klassischen kriminalistischen
            Forensik <b>verwandt</b>.&#xBB; [1]</li>
          <li>&#xAB;<b>Ziel</b> der IT-Forensik ist es, Daten aus IT-Systemen zu gewinnen,
            mit denen sich Beweis f&#xFC;hren l&#xE4;sst.&#xBB; [1]</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Digitale Forensik</td>
      <td style="text-align:left">
        <ul>
          <li>Definition = sehr juristisch formuliert</li>
          <li><em>Die im Rahmen einer &#xFC;bergeordneten (gerichtlichen) Ermittlung angewandten wissenschaftlichen Methoden zur Identifikation, Sicherstellung, Bewahrung, Aufbereitung, Analyse und Interpretation von Daten in digitaler Form mit dem Ziel, gerichtsfeste, fallrelevante Informationen (Indizien) zu liefern.</em>
          </li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

### Vorgehen wenn Vorfall ereignet

1. Prio: Sicherung der Spurenlage
2. Prio: Wiederherstllung des Normalzustands
3. Prio: Aufarbeitung des Geschehens anhan der gesicherten Spuren

  
  
Ist die Reihenfolge anders, werden entweder die Spuren zerstört \( \)  oder der Zeitverlust ist zu hoch, es entsteht wirtschaftlicher Schaden

![Prioliste](../.gitbook/assets/image%20%28351%29.png)

#### 

### Grundlagen der forensischen Arbeit

#### Aufgabenteilung im betrieblichen Umfeld

* **Wiederherstellung** des Normalzustand
  * Lead: CSO, CIO, COO
  *  Ausführung: Technische Informatik
* **Sicherung der Spurenlage** und Aufarbeitung des Geschehens?
  * **Interner Gebrauch** der Ergebnisse
    * Lead: CSO, CIO, COO
    * Ausführung: Technische Informatik, Forensic Readiness, Analysten
  * **Rechtlicher Gebrauch** der Ergebnisse
    * Lead: Justiziar, Legal, Behörde
    * Ausführung: IT-Forensik

#### Anwendungsbereiche IT-Forensik

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Allgemein</td>
      <td style="text-align:left">Wahrheitsfindung &#xFC;ber vergangene Geschehnisse im informationstechnischen
        Umfeld anhand von digitalen Spuren</td>
    </tr>
    <tr>
      <td style="text-align:left">Klassisch</td>
      <td style="text-align:left">
        <p>Bezug zu Kriminalistik</p>
        <p>- Strafverfolgung von kriminellen Taten</p>
        <p>- Belegen von Sachverhalten (auch nicht kriminelle)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Erweitert</td>
      <td style="text-align:left">
        <p>Private Ermittlungen</p>
        <p>- Betriebsinterne Ermittlungen</p>
        <p>- Compliance / Rechtskonformit&#xE4;t</p>
        <p>- Bereitstellung von Daten f&#xFC;r zivilrechtliche Verfahren (eDiscovery)
          - Pr&#xE4;ventive IT-Forensik (Forensic Readiness)</p>
      </td>
    </tr>
  </tbody>
</table>

####   Eigenschaften digitaler Daten \(Vor & Nachteile\)

<table>
  <thead>
    <tr>
      <th style="text-align:left">Vorteile</th>
      <th style="text-align:left">Nachteile</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">
        <ul>
          <li>Daten lassen sich ohne Informationsverlust kopieren (Original und Kopie
            sind gleichwertig)</li>
          <li>Daten unterliegen grunds&#xE4;tzlich keinem Verfall, sind unbegrenzt haltbar
            <ul>
              <li>Ausnahme = Datentr&#xE4;ger</li>
            </ul>
          </li>
          <li>Nachweis der Unverf&#xE4;lschtheit mit technischen Mitteln jederzeit m&#xF6;glich
            <ul>
              <li>Hashwerte</li>
            </ul>
          </li>
          <li>Vorliegen von Metadaten (Daten, welche Eigenschaften von Daten beschreiben)</li>
        </ul>
        <p>=&gt; In Referenz zur Prioliste sehr wichtigen, dass <b>digitale Daten kopiert werden k&#xF6;nnen</b>
        </p>
      </td>
      <td style="text-align:left">
        <ul>
          <li>Daten haben keine Geschichte (Entstehungsprozess)</li>
          <li>Fehlende Unterscheidbarkeit von Original und Kopie</li>
          <li>Fehlende R&#xFC;ckschl&#xFC;sse auf Herkunft oder Urheberschaft</li>
          <li>Manipulationen oder unbeabsichtigte Ver&#xE4;nderungen bleiben spurlos</li>
        </ul>
        <p>=&gt; Einwand = Metadaten (aber auch Metadaten lassen sich ver&#xE4;ndern)</p>
      </td>
    </tr>
  </tbody>
</table>

#### Erzeuger und logische Spuren: Wer oder was hinterlässt welche Spuren?

![](../.gitbook/assets/image%20%28359%29.png)

### 7 Grundsätze der IT-Forensik \(Spielregeln\)

1. **Rechtmässigkeit** bei Erhebung der Spur einhalten
2. **Verhältnismässigkeit** der Massnahmen wahren
3. **Authentizität** der Spur gewährleisten
4. **Integrität** der Spurenlage bewahren
5. **Vier-Augen-Prinzip** anwenden \(kritische Phasen\)
6. **Nachvollziehbarkeit** des Vorgehens sicherstellen
7. **Bedeutung** der Befunde belegen und begründen

=&gt; Nicht alle gleiches Gewicht, resp. gleiche Auswirkung



#### Arten von digitalen Spuren

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left"><b>Fl&#xFC;chtige</b> Spuren &#x2013; Volatile Speicher</td>
      <td style="text-align:left">
        <p>- Arbeitsspeicher (RAM-Inhalte)</p>
        <p>- Caches (Controller, Pagefile, ...)</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left"><b>Nicht fl&#xFC;chtige</b> Spuren &#x2013; Permanente Speicher</td>
      <td
      style="text-align:left">
        <p>- Datei- und Datenbank-Inhalte (Dokumente, E-Mails, ...) - Metadaten (Zeitstempel,
          Speicherort, Attribute, ...)</p>
        <p>- Artefakte (Unallocated, Slack, Browsercache, ...)</p>
        <p>- Archivierte Daten, Datensicherungen (Backups)</p>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">Daten <b>in</b>  <b>Bewegung</b> &#x2013; &#xDC;bertragungsmedium</td>
      <td
      style="text-align:left">
        <p>- Kommunikationsinhalte</p>
        <p>- Verbindungsdaten</p>
        </td>
    </tr>
  </tbody>
</table>





### 4 Hautphasen Forensik-Prozess 

* Es gibt Zahlreiche Prozessmodelle in der Literatur, z.B.
  * Investigative Process Model, in 11 Phasen, Casey 2004
  * Grundsätze und Prozess für die Untersuchung von Vorfällen, ISO/IEC 27043:2015
  * Guide to Integrating Forensic Techniques into Incident Response, Kent et al., NIST Special Publication 800-86, 2006

#### Vereinfachtes Modell - vier Hauptphasen \(NIST\)

![](../.gitbook/assets/image%20%28358%29.png)



<table>
  <thead>
    <tr>
      <th style="text-align:left">Phase</th>
      <th style="text-align:left">Details</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">
        <ol>
          <li>Collection &#x2013; <b>Spurensicherung</b>
          </li>
        </ol>
      </td>
      <td style="text-align:left">
        <ul>
          <li><b>Ziel</b>: Erkennen und sicherstellen der digitalen Spurenlage in bestm&#xF6;glicher
            Qualit&#xE4;t
            <ul>
              <li>Fokus auf <b>materielle</b> Spuren (Daten)</li>
              <li><b>Vollst&#xE4;ndigkeit</b> der Daten anstreben</li>
              <li><b>Authentizit&#xE4;t</b> der Daten belegen</li>
              <li><b>Integrit&#xE4;t</b> der Daten gew&#xE4;hrleisten</li>
            </ul>
          </li>
          <li><b>Erfolgsfaktoren</b>
            <ul>
              <li>Hohes Mass an technischem Wissen</li>
              <li>Aktualit&#xE4;t bez&#xFC;glich technischen M&#xF6;glichkeiten und deren
                Nutzung</li>
              <li>Leistungsf&#xE4;hige technische Infrastruktur</li>
              <li><b>Zeitn&#xE4;he</b> zum untersuchten Vorgang!</li>
            </ul>
          </li>
          <li><b>Vollst&#xE4;ndigkeit</b>
            <ul>
              <li>Was nehme ich hier mit? (Arbeitsplatz im B&#xFC;ro mit 1000 Post-IT vs.
                Serverraum mit Racks)</li>
            </ul>
          </li>
          <li><b>Arten</b>
            <ul>
              <li><b>Post-Mortem</b>-Sicherung (Datensicherung in statischem (inaktivem)
                Betriebszustand)</li>
              <li><b>Live</b>-Sicherung (Datensicherung in aktivem Betriebszustand)</li>
              <li><b>Netzwerk</b>-Sicherung (Spezielle Form der Live-Sicherung)</li>
              <li>Cloud-Inhalten</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">2. Examination &#x2013; <b>Aufbereitung</b>
      </td>
      <td style="text-align:left">
        <ul>
          <li><b>Ziel</b>: Erschliessen der digitalen Spurenlage
            <ul>
              <li>Fokus auf immaterielle Spuren (Informationen)</li>
              <li>Vollst&#xE4;ndigkeit der Informationen anstreben</li>
              <li>Authentizit&#xE4;t der Informationen belegen</li>
              <li>Integrit&#xE4;t der Daten gew&#xE4;hrleisten</li>
            </ul>
          </li>
          <li>Erschliessen und Aufbereiten von Inhalten</li>
          <li><b>Spuren</b> in modernen Betriebssystemen
            <ul>
              <li>
                <p>Unvollst&#xE4;ndig gel&#xF6;schte Daten</p>
                <p>- Papierkorb, verwaiste Datenbl&#xF6;cke, Slack</p>
              </li>
              <li>
                <p>Metadaten zu Objekten</p>
                <p>- Name, Typ, Zeitstempel, Gr&#xF6;sse, Sicherheit</p>
              </li>
              <li>
                <p>Daten-Caches</p>
                <p>- Betriebssystem (Credentials, Searches, Aktivit&#xE4;ten) - Applikationen
                  (Verl&#xE4;ufe, Formulare, Passw&#xF6;rter, ...)</p>
              </li>
              <li>
                <p>Protokollierungen</p>
                <p>- Dienste, Installationen, Ereignisanzeige, ...</p>
              </li>
              <li>
                <p>Einstellungen und Konfigurationen</p>
                <p>- Registry,Zwischenspeicher,Preferences,...</p>
              </li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">3. Analysis &#x2013; <b>Interpretation</b>
      </td>
      <td style="text-align:left">
        <ul>
          <li><b>Ziel</b>: Deuten und erkl&#xE4;ren der digitalen Spurenlage
            <ul>
              <li>Fokus auf Gesamtheit der immateriellen Spuren (Verlinkung von Information)</li>
              <li>Entwickeln von Hypothesen</li>
              <li>
                <p>Plausibilisierung resp. Falsifizierung</p>
                <p>von Hypothesen</p>
              </li>
              <li>
                <p>Authentizit&#xE4;t der Informationen</p>
                <p>belegen</p>
              </li>
              <li>
                <p><b>Dokumentation</b> als Basis f&#xFC;r die</p>
                <p>Pr&#xE4;sentation</p>
              </li>
            </ul>
          </li>
          <li>Informationssuche in Datenbest&#xE4;nden
            <ul>
              <li>Aufbereitung des Datenbestands (Examination)</li>
              <li>- Suche nach Datenstr&#xF6;men (Dateien)</li>
              <li>Suche nach Begriffen oder Muster</li>
              <li>Index Case (Indexierung)</li>
              <li>Hash-Funktionen
                <ul>
                  <li>
                    <p>Eindeutige Bezeichnung eines Objekts (stellt eine Art</p>
                    <p>digitaler &#x201E;Fingerabdruck&#x201C; dar)</p>
                  </li>
                  <li>
                    <p>Sicherstellen der Beweiskraft einer Datensicherung</p>
                    <p>(Datentr&#xE4;ger, Partition, Datei, ...)</p>
                  </li>
                  <li>Effizientes Suchen nach bekannten Dateien (Hashsets)</li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">4. Reporting &#x2013; <b>Pr&#xE4;sentation</b>
      </td>
      <td style="text-align:left">
        <ul>
          <li><b>Ziel</b>: Objektive Erkl&#xE4;rung der Entstehung der Spurenlage
            <ul>
              <li>Fokus auf das Verstehen des (Tat-)Hergangs</li>
              <li>Belegbare Deutung der Spurenlage</li>
              <li>
                <p>&#xDC;bertragung technischer Befunde in juristisch</p>
                <p>verwendbare Aussagen</p>
              </li>
              <li>
                <p>Nachvollziehbare Vorgehensweise des ganzen</p>
                <p>Prozesses</p>
              </li>
              <li>Ende der Chain of Custody</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>



## eDiscovery

* = angeordnete Herausgabe von Information
* Die **Discovery** \(englische Rechtssprache = Voruntersuchung, gerichtlich angeordnete Vorlage von Beweismitteln\) ist ein förmliches **Beweisverfahren** im US-amerikanischen Prozessrecht
* **Situation in CH**
  * Weniger ausgeprägt als in USA
  *  Strafprozessordnung
    * Herausgabepflicht \(Art. 265 StPO\)
    * Verweigerungsrecht
  * Schweizerische Zivilprozessordnung
    * Mitwirkungspflicht \(Art. 160 ZPO\)
    * Ausnahmen
  * Datenschutzgesetze
    * Auskunftsrecht \(Art. 8 DSG\)
    * Einschränkungen \(Art. 9 DSG\)
* Teilweise **widersprüchliche Anforderungen**
  * **Rechtliche** Anforderung
    * Aktualität und Vollständigkeit \(bezogen auf Untersuchungszeitraum\)
    * Authentizität \(Fallrelevanz\)
    * Integrität
  * **Regulatorische** Auflagen
    * Dokumentationspflicht
    * Aufbewahrungs-/Löschungsfristen
    * Datenschutz
  * **Unternehmerische** Anforderung
    * Geheimhaltung und Vertraulichkeit
    * Selbstbelastung
    * Reputationswahrung
    * Konkurrenz
* **Begriffe**
  * ESI \(Electronically Stored Information\)
    * Gesamtheit der in einem Unternehmen elektronisch gespeicherten, strukturierten und

      unstrukturierten Daten

    * Lässt sich in den 3 Dimensionen Ort – Zeit – Custodian

      aufspannen



![](../.gitbook/assets/image%20%28356%29.png)

*  * e-Evidence \(Electronic Evidence\)
    * Teil der ESI, welche in rechtlichen Verfahren zur Beweisführung verwendet wird
  * Information Governance
    * Steuert die gesamte Lebensspanne der Daten von der Erzeugung bis zur endgültigen Löschung
    * Wesentliche Voraussetzung für eDiscovery Prozess

### EDRM \(Electronic Discovery Reference Model\)

Phasen des eDiscovery-Prozess anhand des EDRM Modells

![](../.gitbook/assets/image%20%28357%29.png)

<table>
  <thead>
    <tr>
      <th style="text-align:left">Phase</th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Identification</td>
      <td style="text-align:left">
        <ul>
          <li>Identification dient dazu, <b>potenzielle Quellen f&#xFC;r relevante Informationen zu identifizieren</b>
            <ul>
              <li>Diese Quellen k&#xF6;nnen Gesch&#xE4;ftseinheiten, Personen (Custodians),
                IT-Systeme und Papierakten umfassen</li>
              <li><b>Custodians</b> bezeichnen Personen, die Daten verwalten bzw. kontrollieren,
                z. B. der Besitzer eines E-Mail-Postfaches</li>
              <li>Die Lokalisierung potenziell relevanter Daten ist Voraussetzung daf&#xFC;r,
                um einen wirksamen <b>rechtlichen Zugriff</b> zu erhalten</li>
              <li>Die Identifizierung sollte so gr&#xFC;ndlich und umfassend wie m&#xF6;glich
                erfolgen</li>
              <li>Der Datenumfang kann hier durch <b>Selektionskriterien</b> (Filter) &#x2013;
                z. B. Eingrenzung auf Untersuchungszeitraum, Dokumenttypen, Custodians
                &#x2013; reduziert werden</li>
              <li>
                <p>H&#xE4;ufig werden erst im Rahmen einer eDiscovery weitere potentielle
                  Quellen (Daten &amp; Custodians)</p>
                <p>identifiziert</p>
              </li>
              <li>Augenmerk liegt bei diesem Schritt auf der <b>Authentizit&#xE4;t</b> der
                e-Evidence</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Collection</td>
      <td style="text-align:left">
        <ul>
          <li>In diesem Schritt werden die identifizierten Daten (Identification) und
            deren Metadaten <b>gerichtsfest eingesammelt</b>
          </li>
          <li>Augenmerk liegt bei diesem Schritt auf der <b>Integrit&#xE4;t</b> der e-Evidence</li>
          <li><b>Start Chain-of-Custody</b>
          </li>
          <li>Vorgehen nach Grunds&#xE4;tzen der digitalen Forensik</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Preservation</td>
      <td style="text-align:left">
        <ul>
          <li>Im Rahmen der Konservierung sollen die erhobenen Daten <b>vor</b> versehentlicher
            oder vors&#xE4;tzlicher <b>Ver&#xE4;nderung gesch&#xFC;tzt </b>werden</li>
          <li>Erhobene Daten werden als Universum den nachfolgenden Schritten zur Verf&#xFC;gung
            gestellt</li>
          <li>Augenmerk liegt bei diesem Schritt auf der <b>Integrit&#xE4;t</b> der e-Evidence</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Processing</td>
      <td style="text-align:left">
        <ul>
          <li>Im Rahmen der <b>Aufbereitung</b> wird erfasst, welche Daten genau in dem
            eingereichten Universum enthalten sind</li>
          <li>Die Daten werden gem&#xE4;ss den Anforderungen <b>normalisiert</b> und deren <b>Metadaten</b> aufbereitet</li>
          <li>Die Datenmenge kann durch <b>Deduplizierung</b> und Auswahl (Filterkriterien)
            reduziert werden</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Review</td>
      <td style="text-align:left">
        <ul>
          <li>Hier werden die einzelnen Dateien bez&#xFC;glich <b>Sachverhaltsrelevanz</b> (responsiveness)
            und Vertraulichkeit bewertet</li>
          <li>Hierzu k&#xF6;nnen erneut Filterkriterien zur <b>Vorselektion</b> potentiell
            relevanter Dateien genutzt werden</li>
          <li>Evtl. k&#xF6;nnen Bestandteile bereits geschw&#xE4;rzt oder zur <b>Schw&#xE4;rzung</b> vorgeschlagen
            werden</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Analysis</td>
      <td style="text-align:left">
        <ul>
          <li>Bezeichnet eigentliche <b>Faktengewinnung</b> durch inhaltliche Sichtung
            und Pr&#xFC;fung der e-Evidence</li>
          <li>Bewertung nach <b>inhaltlichen Kriterien </b>und <b>Kontextanalysen</b>
          </li>
          <li>Als Unter- oder Nebentask in allen Schritten angewendet, z. B. bei Collection
            oder Processing (Vollst&#xE4;ndigkeit, Richtigkeit)</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Production</td>
      <td style="text-align:left">
        <ul>
          <li>In diesem Schritt werden die relevanten Daten f&#xFC;r die <b>Weiterverarbeitung</b> oder <b>Weitergabe</b> bereitgestellt</li>
          <li>Dies kann z. B. durch <b>Umwandlung</b> ins Portable Document Format oder
            ins Tagged Image File Format geschehen</li>
          <li>Gegebenenfalls sind irrelevante oder personenbeziehbaren Dateibestandteile
            zu <b>schw&#xE4;rzen</b>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Presentation</td>
      <td style="text-align:left">
        <ul>
          <li>Die Pr&#xE4;sentation soll die Ergebnisse (Production) und/oder die gew&#xE4;hlten
            Methoden adressatengerecht zusammenfassen</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>


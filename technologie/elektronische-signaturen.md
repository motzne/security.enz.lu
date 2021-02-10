# Elektronische Signaturen

![](../.gitbook/assets/image%20%28157%29.png)

1. Im ersten Schritt wird über die zu signierenden Daten ein Hashwert berechnet. \(Eine Hashfunktion ist eine kryptographische Operation, die eine Zeichenfolge beliebiger Länge auf eine Zeichenfolge fester Länge abbildet.\)
2. Der Hashwert wird danach mit dem privaten Schlüssel des Unterzeichners verschlüsselt. Das Ergebnis ist die elektronische Signatur.
3. Die elektronische Signatur wird entsprechend des verwendeten Signaturstandards an die zu signierenden Informationen angehängt. Dabei können zusätzliche Informationen wie Zertifikate und Zertifikatsgültigkeitsinformationen mit integriert werden.

![](../.gitbook/assets/image%20%28161%29.png)

1. Die Signatur wird aus dem Dokument extrahiert.
2. Die Signatur wird mit dem öffentlichen Schlüssel des Unterzeichners entschlüsselt \(der öffentliche Schlüssel wird mit dem Zertifikat des Unterzeichners mitgeliefert\).
3. Daraus resultiert der wiederhergestellte Hashwert.
4. Der wiederhergestellte Hashwert wird mit dem aus dem Dokument berechneten Hashwert verglichen.
5. Die elektronische Signatur ist nur dann gültig, falls die beiden Hashwerte gleich sind und ...
6. ... das Zertifikat des Unterzeichners zum Zeitpunkt der Signatur gültig war.
7. Ist dies der Fall, so konnte die Signatur als gültig validiert werden. Ansonsten ist die Signatur ungültig.

**=&gt; Zentraler Punkt ist dabei nicht nur ob die Signatur stimmt, sondern auch "WER hat diese Signatur erstellt?"**

## Gesetze, Verordnungen und technische Vorschriften

- **Bundesgesetz** über Zertifizierungsdienste im Bereich der elektronischen Signatur und anderer Anwendungen digitaler Zertifikate **\(ZertES\)**
  - Art. 6 Anforderungen an die Signaturherstellungseinheiten
  - Art. 7 Anforderungen an alle geregelten Zertifikate
  - Art. 8 Zusätzliche Anforderungen an qualifizierte Zertifikate
  - Art. 9 Anforderungen an die Aussteller geregelter Zertifikaten
  - Art. 17 & Art. 18 - Haftung der Anbieterin von Zertifizierungsdiensten
- **Verordnung** über Zertifizierungsdienste im Bereich der elektronischen Signatur und anderer Anwendungen digitaler Zertifikate **\(VZertES\)**
  - Art. 5 Ausstellung geregelter Zertifikate
  - Art. 7 Befreiung von der Pflicht des persönlichen Erscheinens --&gt; Online
- Technische und administrative Vorschriften über Zertifizierungsdienste im Bereich der elektronischen Signatur und anderer Anwendungen digitaler Zertifikate **\(TAV\)**
- **OR \(Art. 14 Abs. 2bis\)**
  - OR Art. 14 Abs. 2bis Unterschrift - Der eigenhändigen Unterschrift gleichgestellt … mit elektronische Signatur
  - OR Art. 11 Formfreiheit - Form der Verträge grundsätzlich frei \(ausser wo Gesetzt vorgibt\)
  - OR Art. 59a28 - Haftung für kryptografische Schlüssel

### Formvorschriften

<table>
  <thead>
    <tr>
      <th style="text-align:left">Begriff</th>
      <th style="text-align:left">Details</th>
      <th style="text-align:left">Beispiel</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Einfache Schriftlichkeit</td>
      <td style="text-align:left">
        <p><b>eigenh&#xE4;ndig Unterschrieben</b>
        </p>
        <p>&#x2022; zur Dokumentation der Willenserkl&#xE4;rung und &#x2022; zur
          Identifikation der handelnden Person</p>
      </td>
      <td style="text-align:left">
        <p>Art. 344a</p>
        <p>Der Lehrvertrag bedarf zu seiner G&#xFC;ltigkeit</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Qualifizierte Schriftlichkeit</td>
      <td style="text-align:left">
        <p>Analog zur einfachen Schriftlichkeit aber mit <b>zus&#xE4;tzlichen Anforderungen,</b> z.B.</p>
        <p>&#x2022; Ganzes Dokument muss von Handgeschrieben sein (sog. Eigenschriftlichkeit,
          z.B. bei B&#xFC;rgschaft oder Testament) oder</p>
        <p>&#x2022; Aufnahme bestimmter inhaltlicher Elemente in das Dokument ist
          vorgeschrieben (z.B. bestimmte W&#xF6;rter)</p>
      </td>
      <td style="text-align:left">Testament, letzter Wille</td>
    </tr>
    <tr>
      <td style="text-align:left">&#xD6;ffentliche Beurkundung</td>
      <td style="text-align:left">
        <p>&#x2022; <b>Strengste Formvorschrift</b>
        </p>
        <p>&#x2022; Aufzeichnung rechtserheblicher Tatsachen durch eine vom Staat
          mit dieser Aufgabe betrauten Person (Urkundsperson, Notar), in der geforderten
          Form und in dem daf&#xFC;r vorgesehenen Verfahren</p>
        <p>&#x2022; Die Urkundsperson erkl&#xE4;rt den Parteien die</p>
        <p>rechtlichen Folgen des Gesch&#xE4;ftes und unterschreibt</p>
        <p>das Dokument zusammen mit den Parteien</p>
        <p>eigenh&#xE4;ndig</p>
      </td>
      <td style="text-align:left">Grundst&#xFC;cksgesch&#xE4;fte (Eigentum, Stockwerk)</td>
    </tr>
  </tbody>
</table>

### Gleichstellung mit der eigenhändigen Unterschrift \(OR Art. 14 Abs. 2bis\)

Schlussfolgerung:

- **!!! Nur qualifizierte elektronische Signaturen, die mit einem qualifizierten Zeitstempel verbunden sind, sind der eigenhändigen Unterschrift gleichgestellt \(Art. 14 Abs. 2bis OR\).**
- Insbesondere muss diese von einer **anerkannten Anbieterin von Zertifizierungsdiensten ausgestellt** worden sein.
- In den übrigen Fällen können sich die Vertragsparteien auf das zu verwendende Zertifikat einigen \(«fortgeschrittenes Zertifikat»1\) oder sonst ein Zertifikat\).
- In der Regel werden «fortgeschrittene Zertifikate» verwendet, wenn keine qualifizierten Zertifikate notwendig sind \(sie sind je nach Herausgeber günstiger, bieten auch ein hohes Mass an Sicherheit und können in den verschiedensten Bereichen angewendet werden\)

## Haftung

<table>
  <thead>
    <tr>
      <th style="text-align:left">Art</th>
      <th style="text-align:left">Notizen Vorlesungen</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">OR</td>
      <td style="text-align:left">
        <p>Art.59a</p>
        <p>Beweislast-Umkehr die praktiziert wirdA</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">ZertES</td>
      <td style="text-align:left">
        <p>Art. 17: Anbieter: Swisscom, Bund</p>
        <p>Art. 18: KPMG: Anerkennt Anbieter (oben)</p>
      </td>
    </tr>
  </tbody>
</table>

Warum Beweislast-Umkehrung? Erhöht den Druck auf die gesamten Stakeholder:

![](../.gitbook/assets/image%20%28144%29.png)

## Kaskade von elektronischen Signaturen / Zertifikate

![](../.gitbook/assets/image%20%28143%29.png)

<table>
  <thead>
    <tr>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Fortgeschrittene elektronische Signatur</td>
      <td style="text-align:left">Art. 2, <b>lit. b,</b> ZertES</td>
      <td style="text-align:left">
        <ul>
          <li>Ist ausschliesslich dem Inhaber zugeordnet</li>
          <li>Erm&#xF6;glicht die Identifizierung des Inhabers</li>
          <li>Wird mit Mitteln erzeugt, welche der Inhaber unter seiner alleinigen Kontrolle
            halten kann</li>
          <li>ist mit den Daten, auf die sie sich bezieht, so verkn&#xFC;pft, dass eine
            nachtr&#xE4;gliche Ver&#xE4;nderung der Daten erkannt werden kann</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Geregelte elektronische Signatur</td>
      <td style="text-align:left">Gem&#xE4;ss Art. 2, <b>lit. c,</b> ZertES</td>
      <td style="text-align:left">Ist eine fortgeschrittene elektronische Signatur, die unter Verwendung
        einer <b>sicheren Signaturerstellungseinheit</b> nach Artikel 6 erstellt
        wurde und auf einem <b>geregelten</b>, auf eine <b>nat&#xFC;rliche Person</b> ausgestellten
        und zum Zeitpunkt der Erzeugung der elektronischen Signatur g&#xFC;ltigen <b>Zertifikat</b> beruht.</td>
    </tr>
    <tr>
      <td style="text-align:left">Geregeltes elektronisches Siegel</td>
      <td style="text-align:left">Gem&#xE4;ss Art. 2, <b>lit. d,</b> ZertES</td>
      <td style="text-align:left">Ist eine fortgeschrittene elektronische Signatur, die unter Verwendung
        einer <b>sicheren Siegelerstellungseinheit</b> nach Artikel 6 erstellt wurde
        und auf einem <b>geregelten</b>, auf eine <b>UID-Einheit1)</b> ausgestellten
        und zum Zeitpunkt der Erzeugung des elektronischen Siegels g&#xFC;ltigen <b>Zertifikat</b> beruht.</td>
    </tr>
    <tr>
      <td style="text-align:left">Qualifizierte elektronische Signatur</td>
      <td style="text-align:left">Gem&#xE4;ss Art. 2, <b>lit. e,</b> ZertES</td>
      <td style="text-align:left">
        <p>Ist eine geregelte elektronische Signatur, die auf einem</p>
        <p><b>qualifizierten Zertifikat</b> beruht.</p>
      </td>
    </tr>
  </tbody>
</table>

![](../.gitbook/assets/image%20%28153%29.png)

|                           |                             |                                                                                                                                                                |
| :------------------------ | :-------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| digitales Zertifikat      | Art. 2, **lit. f.,** ZertES | digitale Bescheinigung, die den **öffentlichen Schlüssel seinem Inhaber zuordnet**                                                                             |
| geregeltes Zertifikat     | Art. 2, **lit. g.,** ZertES | digitales Zertifikat, das die **Anforderungen nach Art. 7** erfüllt und **von einer anerkannten Anbieterin** von Zertifizierungsdiensten **ausgestellt** wurde |
| qualifiziertes Zertifikat | Art. 2, **lit. h,** ZertES  | geregeltes Zertifikat das die **Anforderungen nach Art. 8** erfüllt                                                                                            |

## Anforderungen Signaturerstellungseinheit

- Private Schlüssel bleibt immer auf den Token
- Öffentliche Schlüssel wird weiterverwendet und geteilt
- Sign\(HASHWERT\) wird dem Token gesendet, die Berechnung mit privaten Schlüssel passiert auf dem TOKEN selber -&gt; Gibt Signatur zurück.

## UID-Einheiten

![](../.gitbook/assets/image%20%28206%29.png)

## Anforderungen an die Aussteller von Zertifikaten \(ab Folie 38\)

- Vorgaben gem. ZertES Art. 9
  - "kann persönliche Erscheinen ersetzen" --&gt; Kamera mit ID \(analog E-Banking onboarding\)
- Wer kann dann die Identität "prüfen";
  - Gemeinden - sind gem. Quovadis für die Beglaubigung zuständig
  - Post \(von Swisssign\)
  - Zertifizierungsstelle selber - falls sie ein Office habe

### Anerkennung von Zertifizierungsstellen \(CSPs\):

- KPNG ist in der CH die einzige Anerkennungsstelle
  - Machen initiale Audits und jährliche Re-Certs bei welchen die Audits durchlaufen werden müssen

## Ausblick: Markt

- QuoVadis; inkl. Service \(Signing Service\)
- SwissSign; bietet aktuell kein qualifiziertes Zertifikat mehr an
  - SuisseID; für Authentification und als Qualified Signature
- SwissID
  - Target: B2C \(nicht B2B\)

## Erstellung von qualifizierten Signaturen \(ab Folie 57\)

- Verschiedenste Tools - Grundsatz: "what you see is what you sign"
- In der CH gibt es keine Vorschriften / Vorgaben für die SWs \(im Gegensatz zur Deutschland\)
- Zeitstempel ist gem. OR Art. 14 Abs. 2bis festgelegt:

![](../.gitbook/assets/image%20%28207%29.png)

- Dies führt dazu, dass das Dokument zwei Signaturen besitzt:
  - **Signatur**; Das Dokument wurde von Person X signiert/unterzeichent
  - **Zeitstempel**; Das Dokument wurde zu diesem Zeitpunkt signiert \(beglaubigter Zeitstempel\)

### Signing Services

- Signaturerstellung in der Cloud
- Seit August 2011 mit einer Änderung in VZertES möglich
- Frage auf Folie 70: Nur der Hash-Wert wird in die Cloud geschickt zur Signierung \(Vertraulichkeit des Dokumentes ist damit sichergestellt\)
- Schlüsselmaterial \(Private Key\) wird einmalig verwendet - danach weggeworfen \(Public Cert ist dem Dokument assigned\)

![](../.gitbook/assets/image%20%28203%29.png)

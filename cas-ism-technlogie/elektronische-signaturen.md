# Elektronische Signaturen



![](../.gitbook/assets/image%20%28154%29.png)

1. Im ersten Schritt wird über die zu signierenden Daten ein Hashwert berechnet. \(Eine Hashfunktion ist eine kryptographische Operation, die eine Zeichenfolge beliebiger Länge auf eine Zeichenfolge fester Länge abbildet.\)
2. Der Hashwert wird danach mit dem privaten Schlüssel des Unterzeichners verschlüsselt. Das Ergebnis ist die elektronische Signatur.
3. Die elektronische Signatur wird entsprechend des verwendeten Signaturstandards an die zu signierenden Informationen angehängt. Dabei können zusätzliche Informationen wie Zertifikate und Zertifikatsgültigkeitsinformationen mit integriert werden.

![](../.gitbook/assets/image%20%28158%29.png)

1. Die Signatur wird aus dem Dokument extrahiert.
2. Die Signatur wird mit dem öffentlichen Schlüssel des Unterzeichners entschlüsselt \(der öffentliche Schlüssel wird mit dem Zertifikat des Unterzeichners mitgeliefert\).
3. Daraus resultiert der wiederhergestellte Hashwert.
4. Der wiederhergestellte Hashwert wird mit dem aus dem Dokument berechneten Hashwert verglichen.
5. Die elektronische Signatur ist nur dann gültig, falls die beiden Hashwerte gleich sind und ...
6. ... das Zertifikat des Unterzeichners zum Zeitpunkt der Signatur gültig war.
7. Ist dies der Fall, so konnte die Signatur als gültig validiert werden. Ansonsten ist die Signatur ungültig.

**=&gt; Zentraler Punkt ist dabei nicht nur ob die Signatur stimmt, sondern auch  "WER hat diese Signatur erstellt?"**



## **Gesetze, Verordnungen und technische Vorschriften**

* Bundesgesetz über Zertifizierungsdienste im Bereich der elektronischen Signatur und anderer Anwendungen digitaler Zertifikate **\(ZertES\)**
* Verordnung über Zertifizierungsdienste im Bereich der elektronischen Signatur und anderer Anwendungen digitaler Zertifikate **\(VZertES\)**
* Technische und administrative Vorschriften über Zertifizierungsdienste im Bereich der elektronischen Signatur und anderer Anwendungen digitaler Zertifikate **\(TAV\)**
* **OR \(Art. 14 Abs. 2bis\)**

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
        <p>&#x2022; zur DokumentationderWillenserkl&#xE4;rungund &#x2022; zurIdentifikationderhandelndenPerson</p>
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

### **Gleichstellung mit der eigenhändigen Unterschrift \(OR Art. 14 Abs. 2bis\)**

Schlussfolgerung:

* Dort wo die eigenhändige Unterschrift gefordert wird, muss eine qualifizierte elektronische Signatur auf der Basis eines qualifizierten Zertifikats einer anerkannten Anbieterin von Zertifizierungsdiensten gesetzt werden.
* In den übrigen Fällen können sich die Vertragsparteien auf das zu verwendende Zertifikat einigen \(«fortgeschrittenes Zertifikat»1\) oder sonst ein Zertifikat\).
* In der Regel werden «fortgeschrittene Zertifikate» verwendet, wenn keine qualifizierten Zertifikate notwendig sind \(sie sind je nach Herausgeber günstiger, bieten auch ein hohes Mass an Sicherheit und können in den verschiedensten Bereichen angewendet werden\)



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
        <p></p>
        <p>Art. 18: KPMG: Anerkennt Anbieter (oben)</p>
      </td>
    </tr>
  </tbody>
</table>

Warum Beweislast-Umkehrung?  Erhöht den Druck auf die gesamten Stakeholder:

![](../.gitbook/assets/image%20%28144%29.png)

## Kaskade von elektronischen Signaturen / Zertifikate

![](../.gitbook/assets/image%20%28143%29.png)

==&gt; Unterschiede siehe Folien

  


![](../.gitbook/assets/image%20%28150%29.png)

## **Anforderungen Signaturerstellungseinheit**

* Private Schlüssel bleibt immer auf den Token
* Öffentliche Schlüssel wird weiterverwendet und geteilt
* Sign\(HASHWERT\) wird dem Token gesendet, die Berechnung mit privaten Schlüssel passiert auf dem TOKEN selber -&gt; Gibt Signatur zurück.






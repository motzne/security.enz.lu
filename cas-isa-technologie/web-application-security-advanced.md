# 🔴 Web Application Security Advanced

![](../.gitbook/assets/image%20%28283%29.png)

## OWASP Top 10

![](../.gitbook/assets/image%20%28293%29.png)

<table>
  <thead>
    <tr>
      <th style="text-align:left">Thema</th>
      <th style="text-align:left">Schwachstelle</th>
      <th style="text-align:left">Gegenmassnahme</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">A1 Injection</td>
      <td style="text-align:left">Indem SQL Code eingeschleust wird, kann die DB beliebig manipuliert werden</td>
      <td
      style="text-align:left">
        <ul>
          <li>Stored Procedures verwenden statt SQL Statements zusammenzubasteln</li>
          <li>&#xAB;b&#xF6;se&#xBB; Zeichen escapen</li>
          <li>WAF</li>
        </ul>
        </td>
    </tr>
    <tr>
      <td style="text-align:left">A2 Broken Auth and Session Mgmt.</td>
      <td style="text-align:left">Passw&#xF6;rter im Klartext &#xFC;bertragen, Username enumeration anhand
        von Fehlermeldungen</td>
      <td style="text-align:left">
        <ul>
          <li>TLS, Kerberos, Client Certs</li>
          <li>Fehlermeldungen &#xAB;anonymisieren&#xBB;</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">A3 Sensitive Data</td>
      <td style="text-align:left">z.B. &#xFC;ber SQLi im Klartext gespeicherte Passw&#xF6;rter oder Kreditkartendaten
        auslesen</td>
      <td style="text-align:left">
        <ul>
          <li>Passw&#xF6;rter nicht im Klartext speichern (salted hashes)
            <ul>
              <li>sensitive Daten gar nicht bzw. verschl&#xFC;sselt speichern</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">A4 XML XXE</td>
      <td style="text-align:left">In XML k&#xF6;nnen mit dem ENTITY Tag externe Ressourcen geladen werden.
        Normalerweise werden eigene Entities geladen, der Mechanismus kann aber
        auch verwendet werden um z.b. /etc/passwd o.&#xE4;. zu stehlen.</td>
      <td
      style="text-align:left">Das Laden von external entities verbieten indem die XML Parser entsprechend
        konfiguriert werden.</td>
    </tr>
    <tr>
      <td style="text-align:left">A5 Broken Access</td>
      <td style="text-align:left">Es kann auf Daten von anderen Benutzer zugegriffen werden indem z.B. die
        UserID in der URL oder im Cookie ge&#xE4;ndert wird.</td>
      <td style="text-align:left">Korrekte Autorisierung implementieren. Bei jedem Zugriff muss gepr&#xFC;ft
        werden ob der Benutzer autorisiert ist die Aktion durchzuf&#xFC;hren. So
        kann z.B. verhindert werden dass User 1 auf Daten von User 42 zugreifft.</td>
    </tr>
    <tr>
      <td style="text-align:left">A6 Security Misconfiguration</td>
      <td style="text-align:left">Fehlende Patches, Default Configs, unsichere Konfigurationen</td>
      <td style="text-align:left">
        <ul>
          <li>Patches ASAP einspielen</li>
          <li>Default Passw&#xF6;rter &#xE4;ndern</li>
          <li>Konfiguration absichern</li>
          <li>h&#xE4;rten nach Best Practices / Guides</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">A7 Cross Site Scripting
        <br />(XSS)</td>
      <td style="text-align:left">&#xDC;ber Usereingaben kann Code eingeschleust werden, der dann auf der
        Website ausgef&#xFC;hrt wird. z.B. kann in einem Kommentarfeld Javascript
        Code eingegeben werden, der dann gespeichert und auf der Webseite angezeigt
        und ausgef&#xFC;hrt wird und z.B. Cookies stehlen kann.</td>
      <td style="text-align:left">
        <ul>
          <li>&#xAB;B&#xF6;se&#xBB; Zeichen escapen</li>
          <li>CSP</li>
          <li>http Headers</li>
          <li>HttpOnly cookies
            <ul>
              <li>WAF</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">A8 Insecure Deserialisation</td>
      <td style="text-align:left">Beim laden von Bin&#xE4;rdaten wird Code vom Angreifer ausgef&#xFC;hrt,
        z.B. indem Java Bytecode eingeschleust wird oder Buffer Overflows ausgenutzt
        werden</td>
      <td style="text-align:left">
        <ul>
          <li>Bin&#xE4;rdaten signieren (und pr&#xFC;fen)</li>
          <li>Type und Range Checks</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">A9 Vulnerabilities Components</td>
      <td style="text-align:left">Es werden Komponenten / Bibliotheken mit bekannten Schwachstellen eingesetzt
        (z.B. uralte Struts Versionen)</td>
      <td style="text-align:left">
        <ul>
          <li>Patchen</li>
          <li>Abh&#xE4;nigkeiten reduzieren</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">A10 Insufficient Logging</td>
      <td style="text-align:left">Mit Bruteforce/W&#xF6;rterbuch Attacken k&#xF6;nnen triviale Passw&#xF6;rter
        schnell gefunden werden. Ohne Logging f&#xE4;llt so ein Angriff nicht auf.</td>
      <td
      style="text-align:left">
        <ul>
          <li>Immer alle fehlgeschlagene Logins</li>
          <li>Fehler auf Serverseite (DB, Applikation usw). loggen und monitoren</li>
        </ul>
        </td>
    </tr>
  </tbody>
</table>

{% embed url="https://wiki.owasp.org/images/9/90/OWASP\_Top\_10-2017\_de\_V1.0.pdf" %}







## SOP \(Same Origin Policy\)

![](../.gitbook/assets/image%20%28304%29.png)

* Essentielles Sicherheitsfeature vom Browser
* Separiert Ressourcen von verschiedenen Origins
* Exceptions:
  * Cookies \(Port + Schema ignoriert\)
    * =&gt;  Lösung: Secure cookie flag!
  * Web Sockets

### **3 Kriterien \(Origin Determination Rule\)**

* HOST \(www.hslu.ch\)
* PROTOCOL \(http / https\)
* PORT \(443\)

![](../.gitbook/assets/image%20%28284%29.png)

### **Best Practices / Lösung**

* To load 3rd party data don‘t use the &lt;script src="..."&gt; tag
* **Host** third-party scripts by **yourself** or **trust the source**
* **Separate** critical / non-critical applications **into different subdomains**
  *  E.g. http://app1.mybank.com / http://app2.mybank.com
* Use mechanisms like **CORS to bypass** the Same Origin Policy in a controlled way



![](../.gitbook/assets/image%20%28309%29.png)

![](../.gitbook/assets/image%20%28292%29.png)

## CORS \(Cross Origin Resource Sharing\)

![](../.gitbook/assets/image%20%28310%29.png)

![](../.gitbook/assets/image%20%28308%29.png)



* CORS ist ein Mechanismus um die SOP zu “bypassen” 
* Websockets sind nicht CORS unterstellt!! 
* -ACAO HTTP Response Header = `Access-Control-Allow-Origin`
* **Mitigation** = Das sicherste ist nicht setzen, daher auf der WAF bie Response Actions nicht drin. Access Control Allow Origin Policy
* OPTIONS-Request = Policy mit Preflight-Request holen
* Cookies = `Access-Control-Allow-Credentials`: true \(Policy on Top um Cookies auszulesen\)
* Es gibt die Server die Access Control Allow Origin reflektieren
* **CORS Attack Scenarios \(mit &lt;reflected origin&gt;\)**
  * Stealing Data
  * CSRF the easy way

### HTTP Response Header Möglichkeiten

```bash
Access-Control-Allow-Origin: *
Access-Control-Allow-Origin: https://www.bar.com

# CORS directives that confirm all requested violations
Access-Control-Allow-Methods: POST, GET, OPTIONS 
Access-Control-Allow-Headers: X-COMPASS, content-type 

# How long the preflight request may be cached in seconds (here 24 hours)
Access-Control-Max-Age: 86400

# The server allows access to this resource with credentials, so the browser will make the response available to the calling script
Access-Control-Allow-Credentials: true
```

### Flowchart Simple vs. Preflight Request

![](https://upload.wikimedia.org/wikipedia/commons/c/ca/Flowchart_showing_Simple_and_Preflight_XHR.svg)



### CORS einschalten

{% embed url="https://enable-cors.org/server.html" %}

## CSP \(Content Security Policy\)

![](../.gitbook/assets/image%20%28276%29.png)

![](../.gitbook/assets/image%20%28274%29.png)

* = Browser Firewall
* HTTP Response Header = `Content-Security-Policy`
* Einstellungen:
  * Default
  * Script
  * Style
  * Image
  * Font
  * Connect
  * Media
  * Object
  * Frame
  * Report

```bash
Content-Security-Policy: default-src 'self'; img-src *; object-src media1.example.com media2.example.com *.cdn.example.com; script-src trustedscripts.example.com

# Beispiel www.lukb.ch
default-src 'none'; object-src 'self'; media-src 'self' https://unblu.cloud; connect-src 'self' https://unblu.cloud wss://unblu.cloud https://hlg.tokbox.com https://anvil.opentok.com https://config.opentok.com https://api-enterprise.opentok.com wss://*.tokbox.com; script-src 'self' 'unsafe-inline' 'unsafe-eval' https://www.googleadservices.com https://googleads.g.doubleclick.net https://www.google.com https://maps.googleapis.com https://www.google-analytics.com https://tagmanager.google.com https://www.googletagmanager.com https://optimize.google.com https://connect.facebook.net/en_US/fbevents.js https://unblu.cloud https://static.opentok.com; frame-src 'self' https://bid.g.doubleclick.net https://www.wuestpartner.com https://nubes.simplex.tv https://mw.weaver.ch https://optimize.google.com; style-src 'self' 'unsafe-inline' blob: https://fonts.googleapis.com https://tagmanager.google.com https://www.googletagmanager.com https://optimize.google.com https://unblu.cloud; img-src 'self' data: https://www.google.com https://www.google.com/ads/ga-audiences https://www.google.ch/ads/ga-audiences https://stats.g.doubleclick.net https://www.google-analytics.com https://khms0.googleapis.com https://khms1.googleapis.com https://www.yourmoney.ch https://tagmanager.google.com https://www.googletagmanager.com https://maps.googleapis.com https://maps.gstatic.com https://optimize.google.com https://googleads.g.doubleclick.net https://unblu.cloud; font-src 'self' data: https://fonts.googleapis.com https://fonts.gstatic.com https://unblu.cloud;
```



### CSP Generator

![](../.gitbook/assets/image%20%28282%29.png)

{% embed url="https://www.cspisawesome.com/" %}



## SameSite

![](../.gitbook/assets/image%20%28306%29.png)

* = Schutz vor Request Forgery
* verhindert das Browser Cookie mitsendet, wenn Request von Drittseite initiert wird
* 
## Cyber Chef \(CORS\)

## Reverse Shell 



## JSON Hijacking

![](../.gitbook/assets/image%20%28298%29.png)




# Web Application Security Advanced

![](../.gitbook/assets/image%20%28287%29.png)

## OWASP Top 10

![](../.gitbook/assets/image%20%28299%29.png)

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

![](../.gitbook/assets/image%20%28311%29.png)

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

![](../.gitbook/assets/image%20%28288%29.png)

### **Best Practices / Lösung**

* To load 3rd party data don‘t use the &lt;script src="..."&gt; tag
* **Host** third-party scripts by **yourself** or **trust the source**
* **Separate** critical / non-critical applications **into different subdomains**
  *  E.g. http://app1.mybank.com / http://app2.mybank.com
* Use mechanisms like **CORS to bypass** the Same Origin Policy in a controlled way



![](../.gitbook/assets/image%20%28315%29.png)

![](../.gitbook/assets/image%20%28298%29.png)

## CORS \(Cross Origin Resource Sharing\)

![](../.gitbook/assets/image%20%28317%29.png)

![](../.gitbook/assets/image%20%28316%29.png)



* CORS ist ein Mechanismus um die SOP zu “bypassen” 
* Websockets sind nicht CORS unterstellt!! 
* -ACAO HTTP Response Header = `Access-Control-Allow-Origin`
* **Mitigation** = Das sicherste ist nicht setzen, daher auf der WAF bei Response Actions nicht drin. Access Control Allow Origin Policy
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

![](../.gitbook/assets/image%20%28278%29.png)

![](../.gitbook/assets/image%20%28275%29.png)

* = **Browser Firewall**
* Allows granular control over which resources can or can’t be included from which origin
* **Security Advantages of CSP**
  * **Prevents XSS** and “Clickjacking” by **controlling** the domains **from which Javascript can be loaded**, blocking the ability for exploits to force the loading of malicious Javascript
  * **Prevents link injection**
  * **Prevents** XSS by controlling domains from which the browser is allowed to **load images, CSS and more ...**
* 2 Varianten um den Browser zu informieren:
  * HTTP Response Header = `Content-Security-Policy`
  * HTML Tag = `<meta http-equiv="Content-Security-Policy">`
  * asda

### CSP setzen

#### Einstellungsmöglichkeiten:

* Default \(default-src\) 
* Script \(JavaScript inclusion\)
* Style
* Image
* Font
* Connect \(XMLHttpRequests \(AJAX\) requests, Web Sockets and EventSources\)
* Media \(sources of audio and video \(e.g. &lt;audio&gt; or &lt;video&gt;\)
* Object
* Frame
* Report

#### Format:

```bash
script-src <source> <source> <source> ...;
```

Possible &lt;source&gt; values are:

|  |  |
| :--- | :--- |
| Host / IP | ~~`http://*.example.com, mail.example.com:443, https://80.133.7.2`~~ |
| Schema | `http:, https:, data:, mediastream:, blob:, filesystem:` |
| 'self': | Allows inclusion from the website’s own origin \(according to SOP\) |
| 'unsafe-inline': | Allows inline resources, such as inline `<script>` elements |
| 'unsafe-eval' | Allows the use of `eval()` and similar "text-to-Javascript" methods |
| 'none' | 'none': |
| Nonce: | Cryptographic nonce \(number used once\) associated with a specific script |
| Hash | Hash computed over the content of a specific script |

{% code title="Beispiele" %}
```bash
Content-Security-Policy: default-src 'self'; img-src *; object-src media1.example.com media2.example.com *.cdn.example.com; script-src trustedscripts.example.com

# Beispiel www.lukb.ch
default-src 'none'; object-src 'self'; media-src 'self' https://unblu.cloud; connect-src 'self' https://unblu.cloud wss://unblu.cloud https://hlg.tokbox.com https://anvil.opentok.com https://config.opentok.com https://api-enterprise.opentok.com wss://*.tokbox.com; script-src 'self' 'unsafe-inline' 'unsafe-eval' https://www.googleadservices.com https://googleads.g.doubleclick.net https://www.google.com https://maps.googleapis.com https://www.google-analytics.com https://tagmanager.google.com https://www.googletagmanager.com https://optimize.google.com https://connect.facebook.net/en_US/fbevents.js https://unblu.cloud https://static.opentok.com; frame-src 'self' https://bid.g.doubleclick.net https://www.wuestpartner.com https://nubes.simplex.tv https://mw.weaver.ch https://optimize.google.com; style-src 'self' 'unsafe-inline' blob: https://fonts.googleapis.com https://tagmanager.google.com https://www.googletagmanager.com https://optimize.google.com https://unblu.cloud; img-src 'self' data: https://www.google.com https://www.google.com/ads/ga-audiences https://www.google.ch/ads/ga-audiences https://stats.g.doubleclick.net https://www.google-analytics.com https://khms0.googleapis.com https://khms1.googleapis.com https://www.yourmoney.ch https://tagmanager.google.com https://www.googletagmanager.com https://maps.googleapis.com https://maps.gstatic.com https://optimize.google.com https://googleads.g.doubleclick.net https://unblu.cloud; font-src 'self' data: https://fonts.googleapis.com https://fonts.gstatic.com https://unblu.cloud;
```
{% endcode %}

### CSP Reporting

* CSP supports a reporting directive for debugging and monitoring

![](../.gitbook/assets/image%20%28293%29.png)

![](../.gitbook/assets/image%20%28282%29.png)



### CSP Generator

![](../.gitbook/assets/image%20%28286%29.png)

{% embed url="https://www.cspisawesome.com/" %}

### CSP Evaluator

{% embed url="https://csp-evaluator.withgoogle.com/" %}



## SameSite

![](../.gitbook/assets/image%20%28313%29.png)

* = Schutz vor Request Forgery
* verhindert das Browser Cookie mitsendet, wenn Request von Drittseite initiert wird
* The main goal is mitigate the risk of cross-origin information leakage.
* Mögliche Werte:
  * Strict
  * LAX

```bash
Set-Cookie: jsessionid=asdiifiwiaifiai; secure; HttpOnly, SameSite=Strict
Set-Cookie: jsessionid=asdiifiwiaifiai; secure; HttpOnly, SameSite=Lax
```

### Strict vs. LAX

<table>
  <thead>
    <tr>
      <th style="text-align:left">Value</th>
      <th style="text-align:left">Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">Strict</td>
      <td style="text-align:left">
        <p>The strict value will prevent the cookie from being sent by the browser
          to the target site in all cross-site browsing context, even when following
          a regular link. For example, for a GitHub-like website this would mean
          that if a logged-in user follows a link to a private GitHub project posted
          on a corporate discussion forum or email, GitHub will not receive the session
          cookie and the user will not be able to access the project.</p>
        <p>A bank website however most likely doesn&apos;t want to allow any transactional
          pages to be linked from external sites so the strict flag would be most
          appropriate here.</p>
      </td>
    </tr>
    <tr>
      <td style="text-align:left">Lax</td>
      <td style="text-align:left">The default lax value provides a reasonable balance between security and
        usability for websites that want to maintain user&apos;s logged-in session
        after the user arrives from an external link. In the above GitHub scenario,
        the session cookie would be allowed when following a regular link from
        an external website while blocking it in CSRF-prone request methods (e.g.
        POST).</td>
    </tr>
  </tbody>
</table>

![](../.gitbook/assets/image%20%28273%29.png)

## 

## Reverse Shell  / Remote Code Execution

* RCE = Remote Code Execution
* Ability to trigger arbitrary code execution over a network.
* **How to get RCE?**
  * Command Injection
  * File Upload \(Upload a PHP file to a webserver\)
  * SQL Injections can sometimes be used to get RCE
  * Buffer Overflow \(write own instructions into the process memory and execute it\)

Types of shells

![Web Shell](../.gitbook/assets/image%20%28295%29.png)

![Bind Shell](../.gitbook/assets/image%20%28279%29.png)

![Reverse Shell](../.gitbook/assets/image%20%28320%29.png)

## JSON Hijacking \(JSONP\)

![](../.gitbook/assets/image%20%28304%29.png)

![](../.gitbook/assets/image%20%28309%29.png)

* **JSONP** = JavaScript Object Notation with **Padding**

  * Technique used to circumvent the Same-Origin Policy when transferring data with AJAX across

    different domains

  * Browsers do not enforce SOP on the HTML &lt;script&gt; tag
  * Padding refers to characters around the JSON payload, e.g.
    * `callback({employees: [{“firstName”: “John”, “lastName”: “Doe”}, ...]})`

  \`\`

* **Mitigation**
  * Use Anti XSRF-Tokens
  * Begin the JSON-Response with an infinite loop:
  * DO NOT USE JSONP!

## Cyber Chef 

{% embed url="https://gchq.github.io/CyberChef/" %}




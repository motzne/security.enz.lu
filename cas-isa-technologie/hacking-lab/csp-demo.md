# CSP Demo

## Challenge

CSP Demo

## Answer

### Explain the security problem 

* Content Security Policy \(CSP\) = **Browser Firewall**
* Allows granular control over which resources can or can’t be included from which origin
* **Security Advantages of CSP**
  * **Prevents XSS** and “Clickjacking” by **controlling** the domains **from which Javascript can be loaded**, blocking the ability for exploits to force the loading of malicious Javascript
  * **Prevents link injection**
  * **Prevents** XSS by controlling domains from which the browser is allowed to **load images, CSS and more ...** 

### Explain your attack. \(exploit, screenshot, hacking journal\) 

Step 1\)  Test a XSS example without CSP

```text
<script>alert("XSS  / Hello Ivan 😎")</script>
```

![](../../.gitbook/assets/image%20%28374%29.png)

Step 2\) Add  default-src 'self' to the CSP-Ruleset

![](../../.gitbook/assets/image%20%28364%29.png)

Step 3\) Play around with the CSP-Rulesets

```text
Case 1
CSP: default-src 'self'; object-src 'none'; script-src 'sha256-viF+6wZx7vZ5tZgGsvCU8CW64H3F1gurSR6TV1tHQKI='
Exploit: <script>alert("HASH")</script>

Case 2
CSP: default-src 'self'; object-src 'none'; script-src 'sha256-C9ZxDoa3LLkT/hxPGaouSSPynzeBlFIF6iEhfROFDwo='
Exploit: <script>alert("HASH2")</script>

Case 3
CSP: default-src 'self'; object-src 'none'; script-src 'nonce-{NONCE}'
Exploit: <script nonce="{NONCE}">alert("NONCE")</script>

Case 4
CSP: default-src 'self'; object-src 'none'; script-src 'nonce-r4nd0m'
Exploit: <script nonce="r4nd0m" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.0/angular.min.js"></script>

Case 5
CSP: default-src 'self'; object-src 'none'; script-src: data:
Exploit: <object data="data:text/html;base64,..."></object>

Case 6
Copied to clipboard
echo -n 'alert("xss")' |base64
YWxlcnQoInhzcyIp
echo -n 'alert("xss")' |base64
YWxlcnQoInhzcyIp
CSP: <script src="data:;base64,YWxlcnQoInhzcyIp"></script>
Exploit: <script src="data:;base64,YWxlcnQoInhzcyIp"></script>
```

![](../../.gitbook/assets/image%20%28363%29.png)

Step 4\)



### Explain mitigation \(remedy\)

* Best Practice is to engineer the CSP Policy, use it than and set a report URL before setting it "HOT" into production

  A good tool the generate CSPs is [https://www.cspisawesome.com/](https://www.cspisawesome.com/)

## Solution

Reference: [https://content-security-policy.com/](https://content-security-policy.com/)

Please respond to the following questions

1\) what is the meaning of `data` in `<script src="data:;base64,YWxlcnQoZG9jdW1lbnQuZG9tYWluKQ=="></script>`

The content of the base64 encoded string is:  
`alert(document.domain)`

2\) what is the difference between `hash` and `nonce`

* `<script nonce="ABC">alert(document.cookie)</script>`
* `<img onerror=alert("HASH") src=x>`

The difference is:

* `nonce` = Allows an inline script or CSS to execute if the script \(eg: `<script nonce="ABC">`\) tag contains a nonce attribute matching the nonce specifed in the CSP header. The nonce should be a secure random string \(in this case only: "ABC"\), and should not be reused.
* `unsafe-hashes:` Allows you to enable scripts in event handlers \(eg `onclick`\). Does not apply to `javascript:` or inline `<script>` CSP Level 3

3\) explain the following csp `script-src 'unsafe-hashes' 'self' 'sha256-bnQkgwAfjTxnZSlFxZe1ogJadBHLnRuuL54WC+v+tMY='`

* `script-src`   The script-src directive restricts which scripts the protected resource can execute. The directive also controls other resources, such as XSLT style sheets \[XSLT\], which can cause the user agent to execute script
  * `'unsafe-hashes'` This will allow the javascript to run in our button, but it could also run in an element injected by an attacker.
  * `'self'`    URI must have the same scheme, host, and port as the protected resource's URI
  * `'sha256-bnQkgwAfjTxnZSlFxZe1ogJadBHLnRuuL54WC+v+tMY='`   asdasd  


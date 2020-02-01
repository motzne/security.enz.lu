# Web Application Security / OWASP Top 10

## Empfehlung:

* [ ] falls vertrauenswürdige Daten vom C -&gt; S übermittelt werden, dann immer POST
* [ ] falls der Browser die Daten \(PW\) aus dem Memory löschen soll, dann muss ein redirect erfolgen
* [ ] Session Handling via Cookies secure, HttpOnly, ~~expire, domain~~, path=/app \(restriktiv\), SameSite=strict
* [ ] Nach erfolgreichem Login -&gt; neue Session

## Attack Pyramide

| Angriff | Mitigation |
| :--- | :--- |
| Lauschen | SSL |
| Session Raten | Session == Random |
| Log fischen | Post / Cookie |
| Cross-Site Scripting | Userinput -&gt; htmlentities |
| XSRF | RandomToken \(X-XSRF-TOKEN\) |

## Cookies

Es gibt 6 wichtige Attribue in einem Cookie zu setzen

| Attribut | Name | Beschreibung |
| :--- | :--- | :--- |
| 1 | secure | Browser sendet Cookie nur bei SSL mit \(bei HTTP wird Cookie nicht mitgeschickt\)Default: Browser sendet Cookie sowohl über HTTP als auch HTTPS  |
| 2 | HttpOnly | Ob Javascript das  Cookie auslesen darfDefault: JS darf Cookie auslesen |
| 3 | path | Browser sendet Cookie nur als URL mit /app beginntDefault: URL des Requests \(siehe Ivans Notizen 13\) |
| 4 | domain | Browser sendet Cookie an alle diese gleichen DomainsDefault: nur zum Host wo er es her hat  |
| 5 | expire | Wenn man es setzt, wenn es Default: Wenn expire leer gelassen wird = sessionCookie, nur im Memory |
| 6 | sameSite | Bewirkt, dass der Browser einer fremden Seiten initiierte  Request nicht gesendet wirdMögliche Varianten: strict oder lax  lax = mitschicken möglich, aber nur wenn der Mensch von Hand klickt |

## OWASP TOP 10 

### A1: Injection

#### SQL-Injection

Angriff auf SQL Datenbanken mit speziell präparierten Benutzereingaben. Der Angriff wird durch mangelnde Überprüfung \(Programmierfehler\) der Benutzereingaben ermöglicht.

![](../.gitbook/assets/image%20%2811%29.png)

### A2: Fehler in der Authentifizierung

### A3: Verlust der Vertraulichkeit sensibler Daten

### A4: XML External Entities \(XXE\)

### A5: Fehler in der Zugriffskontrolle

### A6: Sicherheitsrelevante :2017 Fehlkonfiguration

### A7: Cross-Site-Scripting \(XSS\) 

Bei Cross-Site-Scripting wird versucht, einer Seite ein eigenes Skript unterzuschieben. Es gibt mehrere Möglichkeiten wie man das anstellen kann. 

#### Persistentes XSS: 

Angenommen es existiert ein Gästebuch das keinen Content-Filter verwendet. Wenn man einen neuen Beitrag erstellt, hängt man zusätzlich noch ein bisschen HTML-Code an. Um XSS-Lücken zu testen, verwendet man meistens das bekannte Script

```text
<script>alert("XSS");</script>
```

Das ganze wird danach in einer DB oder in einem File gespeichert und immer wenn ein User die Seite aufruft erscheint die Meldung „XSS“. Das macht natürlich noch nicht viel Sinn. Eine Sinnvollere Anwendung wäre jetzt das Cookie des Users auszulesen und an eine externe Seite zu schicken. Der Angreifer kann danach die Session übernehmen und sich als die bestohlene Person ausgeben. 

#### Nicht-Persistentes XSS: 

Nicht-Persistente oder Reflexive XSS Lücken haben eine begrenzte Gültigkeit und werden nicht abgespeichert. Nehmen wir an eine Seite gibt den Inhalt eines Parameters auf einer Seite aus und Filtert diese Eingabe nicht. Die XSS Anwendung würde dann folgendermassen aussehen: 

```text
http://www.web.com/index.php?show=<script>alert(„XSS“)</script>
```

Das alleine macht auch noch nicht viel Sinn. Es besteht jetzt aber die Möglichkeit diesen Link einer Person zu schicken. Beim Aufruf der Seite werden dann die Cookies der Person an den Angreifer verschickt. 

### A8: Unsichere Deserialisierung

### A9: Nutzung von Komponenten mit bekannten Schwachstellen

### A10: Unzureichendes Logging & Monitoring



## Cross Site Requet Forgery \(CSRF\) 

Angenommen ein Auktionshaus verwendet folgende URL für das abgeben eines Gebotes: [`http://www.auktion.com/bieten.php?aucid=777&gebot=150`](http://www.auktion.com/bieten.php?aucid=777&gebot=150)  
Das Problem hierbei ist, dass der Angreifer diesen Link in einem Image-Tag unterbringen kann \(  
`<img src="`[`http://www.auktion.com/bieten.php?aucid=777&gebot=3000">`](http://www.auktion.com/bieten.php?aucid=777&gebot=3000>)\). Der Image-Tag platziert er z.B. auf bei seinem Aktions-Angebot. Wenn nun ein potentieller Käufer sein Angebot besucht, wird automatisch der Link im Hintergrund geladen und der Besucher gibt unfreiwillig ein Gebot ab. XSS kann in Verbindung mit CSRF eine sehr mächtige Waffe sein. 








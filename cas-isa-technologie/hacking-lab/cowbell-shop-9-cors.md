# Cowbell Shop 9 - CORS

## Challenge

Cross Origin Requests \(CORS\) vs. Same-Origin-Policy \(SOP\).

## Answer

### Explain the security problem  

* CORS is a mechanism to bypass the Same Origin Policy  
* Websockets are not subordinated to CORS 
* CORS Attack Scenarios
  * Stealing Data
  * CSRF the easy way



### Explain your attack. \(exploit, screenshot, hacking journal\) 

Step 1\) Open Cowbell Web Shop and Theia WEB IDE

Step 2\) Change `change_me.html ,` add the URL and open the URL `https://7bc7e2f3-df76-477a-ac25-72b285312f0e.idocker.vuln.land/change_me.html`

{% code title="" %}
```markup
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Glocken Emil's Product API</title>
</head>

<body>
	<div id="root">
		<h1>Glocken Emil's Product API</h1>
	</div>
    Execute Script
	<script>
		const app = document.getElementById('root'); 
        const container = document.createElement('div'); 
        app.appendChild(container); 
        var request = new XMLHttpRequest(); 
        request.open('GET', 'https://6522250e-5430-4dd6-a964-d0cf675baf91.idocker.vuln.land/api/product', true); 
        request.onload = function () { var data = JSON.parse(this.response); 
            data = data.data.products; 
            if (request.status >= 200 && request.status < 400) 
            { 
                data.forEach(product => { const card = document.createElement('div'); 
                    const h3 = document.createElement('h3'); 
                    const p1 = document.createElement('p'); 
                    const p2 = document.createElement('p'); 
                    const p3 = document.createElement('p'); 
                    h3.textContent = product.name; 
                    p1.textContent = "Category: " + product.category.name; 
                    p2.textContent = "Price: " + product.price; 
                    p3.textContent = "Size: " + product.size; 
                    container.appendChild(card); 
                    card.appendChild(h3); 
                    card.appendChild(p1); 
                    card.appendChild(p2); 
                    card.appendChild(p3); 
                }); 
            } 
    }
    request.send(); 
	</script>
    End Script
</body>

</html>
```
{% endcode %}

![](../../.gitbook/assets/image%20%28369%29.png)

Step 3\) See in the DevTools that the HTTP Response header from `/api/product` has the following:

`Access-Control-Allow-Origin: *` 

![](../../.gitbook/assets/image%20%28371%29.png)



### Explain mitigation \(remedy\)

* The most secure is not to set any  `Access-Control-Allow-Origin`

  on the server at all

* Second set the value never to `*` , instead specify a for you trusted host
* =&gt; In this challenge remove or adjust the HTTP Response header 

  * `Access-Control-Allow-Origin`

  from the `/api/product` API 



## Solution

### Was a preflight request required? why yes or no?

No, there was no preflight \(`OPTIONS`\) request since it was a `GET`-Request  \(see `change_me.html`\) and a `GET`-Request qualifies as a "Simple Request". See [https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS\#simple\_requests](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS#simple_requests)

#### Did the server set a proper Access-Control-Allow-Origin response header?

No, the servers HTTP Response header was set to `Access-Control-Allow-Origin: *` 

=&gt; See mitigation above


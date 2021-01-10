# Cowbell Shop 8 - SSRF

## Challenge

Trick the server in doing something you cannot do from your network location with Server Side Request Forgery \(SSRF\).

## Answer

### Explain the security problem 

* Web security vulnerability that allows an attacker to induce the server-side application to make HTTP requests to an arbitrary domain of the attacker's choosing.

https://portswigger.net/web-security/ssrf    
  


### Explain your attack. \(exploit, screenshot, hacking journal\)  

Step 1\) Inspect the not correct loaded image

![](../../.gitbook/assets/image%20%28365%29.png)

Step 2\) Added a post in the community with `title`, `text` and `url` = `http://localhost:8765/file001.jpg`

![](../../.gitbook/assets/image%20%28367%29.png)

Step 3\) Add another post with different file url

![](../../.gitbook/assets/image%20%28381%29.png)

Step 4 \) Explore EXIF Data of "Top Secret" image

![](../../.gitbook/assets/image%20%28372%29.png)

### Explain mitigation \(remedy\)

* Validate / Sanitize user input with secure programming \(urls\)
  * Blacklist certain urls
  * Whitelist the own, allowed urls
* Secure your webserver





## Lösung HL

Always check the user input on the server side and sanitize it as much as possible, which is typically very hard to achieve for every possible scenario imaginable. \(Just think of encoded IP’s and stuff like that\) A better advice is to not make requests on behalf of the user at all. Let the application use the user’s browser to retrieve data. Another possibility is to use a white list of allowed domains and protocols from where the web server can fetch remote information.




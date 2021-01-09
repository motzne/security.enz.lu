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

![](../../.gitbook/assets/image%20%28366%29.png)

Step 3\) Add another post with different file url

![](../../.gitbook/assets/image%20%28377%29.png)

Step 4 \) Explore EXIF Data of "Top Secret" image

![](../../.gitbook/assets/image%20%28371%29.png)

### Explain mitigation \(remedy\)

* Validate / Sanitize user input with secure programming \(urls\)
  * Blacklist certain urls
  * Whitelist the own, allowed urls
* Secure your webserver








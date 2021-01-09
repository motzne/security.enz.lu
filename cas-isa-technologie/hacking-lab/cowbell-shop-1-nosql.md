# Cowbell Shop 1 - NOSQL

## Challenge

NoSQL Injection Vulnerability in the new Cowbell Shop.

## Answer

### Explain the security problem 

* The loginform input on the Cowbell Shop is not validated properly
* Therefore malicious code for a NOSQL-Injection can be sent to the server and is passed directly to database, which returns values or in this case logs the user in

### Explain your attack. \(exploit, screenshot, hacking journal\) 

* NoSQL Injection / Exploit in the login form

```text
username: {"$ne": null}
password: {"$ne": null}

```

![](../../.gitbook/assets/image%20%28362%29.png)

### Explain mitigation \(remedy\)


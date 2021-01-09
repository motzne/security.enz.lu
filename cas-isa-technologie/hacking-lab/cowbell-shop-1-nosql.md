# Cowbell Shop 1 - NOSQL

## Challenge

NoSQL Injection Vulnerability in the new Cowbell Shop.

## Answers

### Explain the security problem 

* The loginform input on the Cowbell Shop is not validated properly
* Therefore malicious code for a NOSQL-Injection can be sent to the server and is passed directly to database, which returns values or in this case logs the user in

### Explain your attack. \(exploit, screenshot, hacking journal\) 

* Step 1\) Input the NoSQL Injection / Exploit in the login form

```javascript
// Exploit
username: {"$ne": null}
password: {"$ne": null}

```

![](../../.gitbook/assets/image%20%28375%29.png)

* Step 2\) Click "Login" Button
* Step 3\) The `POST`-Request is sent and the server returns a JSON with the users token. 

![](../../.gitbook/assets/image%20%28368%29.png)

### Explain mitigation \(remedy\)

* Sanitized user inputs in  code, especially when building database queries
  * Example Express/MongoDB: [https://www.npmjs.com/package/express-mongo-sanitize](https://www.npmjs.com/package/express-mongo-sanitize) 
* Execute the db query with least privileges as possible

#### Optional Task: Fix the code

Use `escape()` method  in Line 11 and Line 17

```javascript
let userInput = "{$ne: null}"
console.log(userInput)
// {$ne: null}
console.log(escape(userInput))
// %7B%24ne%3Anull%7D
```

{% code title="auth.js" %}
```javascript
function login(username, password, callback) {
    if (!(username && password)) {
        return callback(null, ResponseUtil.createNotFoundResponse('Username or Password incorrect'));
    }

    // Injection Code Start - NoSQL Injection, Login bypass
    let hashedPassword = null;
    let usernameObj = null;

    try {
        hashedPassword = JSON.parse(escape(password));
    } catch (exception) {
        hashedPassword = CryptoUtil.hashPwd(password);
    }

    try {
        usernameObj = JSON.parse(escape(username));
    } catch (exception) {
        usernameObj = username;
    }
    // Injection Code End

    // Find one user with username and password
    // Without password and timestamps
    Account.findOne({
            username: usernameObj,
            password: hashedPassword,
            isRetailer: false,
        }, {
            password: false,
            createdAt: false,
            updatedAt: false,
            __v: false
        }).then((account) => {
            if (!account) {
                return callback(null, ResponseUtil.createNotFoundResponse('Username or Password incorrect.'));
            } else {
                // Create Token
                CryptoUtil.createToken(account.toObject(), GlobalConfig.jwt.secret, GlobalConfig.auth.signOptions, (error, token)=> {
                    if (error) return callback(ResponseUtil.createErrorResponse(error, 'Something went wrong.'));
                    const data = {'user': account, 'token': token};
                    return callback(null, ResponseUtil.createSuccessResponse(data, 'Login successfully.'));
                });
            }
        }).catch((error) => {
            return callback(ResponseUtil.createErrorResponse(error, 'Something went wrong.'));
        });
}
```
{% endcode %}


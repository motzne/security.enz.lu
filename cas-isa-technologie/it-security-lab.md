# IT-Security Lab

## Verwendete Tools

* * AutoSpy  4.14.0  / Windows \(Bilder-Analyse, Forensic\)
* Online QR-Code reader / Web
* Hydra / Kali \(Brute Force\)
* john the Ripper / Kali \(Passwort Cracking mit Wordlist\)

### 

## Immersive Lab Übungen

### Banner Grabbing

```text
# Grab the FTP banner using netcat
nc -v 192.168.0.5 21

3.0.3

# Grab the SSH banner using telnet
telnet 192.168.0.5 22

SSH-2.0-OpenSSH_7.6p1

# Banner grabbing with Curl
curl -I 192.168.0.5 | grep -e "Server: "

Server: Apache/2.4.29 (Ubuntu)

# Banner grabbing with Nmap

nmap -sV --script=banner 192.168.0.5
```



### Cross Site Scripting \(XSS\)

![](../.gitbook/assets/image%20%28334%29.png)

```text
# URL / Question 4

http://10.102.10.178/purchase?id=%3Cscript%3Econsole.log(%22R3fLect3d!%22);%3C/script%3E
```

### Open Source Intelligence \(OSINT\): Boarding Pass

* Globi hat Foto mit Boarding-Pass Code auf Instagram gestellt
* Analysieren

![](../.gitbook/assets/image%20%28329%29.png)

![](../.gitbook/assets/image%20%28326%29.png)

```text
M1MURPHY/DADE         REF NCRH2A LDNNYCIML6060 117Y034C2650 100
MURPHY/DADEFENTON     07982211004
SSI LDN-NYC VEGETARIAN    OSI 30KG, ECONOMY
```



### Windows Forensics

* Dateien / Bilder auf Metadaten und Inhalt untersuchen

![](../.gitbook/assets/image%20%28333%29.png)

### Timestomp

Attackers need to hide their tracks and any prints that they may leave during an attack. In this lab we discuss one such technique called Timestomping and how to detect such files.

* MACE =  MACE is an acronym that stands for the file attributes: 
  * Modified
  * Accessed
  * Created
  * Entry modified



![](../.gitbook/assets/image%20%28324%29.png)

![](../.gitbook/assets/image%20%28328%29.png)

### Hydra Brute Force

* Quick Summary
  * Many web-based services require a simple username and password to authenticate users. One way to overcome this method of authentication is to use a brute force attack, which involves repeatedly guessing the user’s credentials until the correct information is identified.
  * Hydra is one of many tools used to perform this type of attack, and can be executed against a wide range of protocols. In this lab we will introduce Hydra and its uses.

![](../.gitbook/assets/image%20%28322%29.png)

Tasks 1-4

```text
root@iml-kali:~# hydra -h
Hydra v9.0 (c) 2019 by van Hauser/THC - Please do not use in military or secret service organizations, or for illegal purposes.

Syntax: hydra [[[-l LOGIN|-L FILE] [-p PASS|-P FILE]] | [-C FILE]] [-e nsr] [-o FILE] [-t TASKS] [-M FILE [-T TASKS]] [-w TIME] [-W TIME] [-f] [-s PORT] [-x MIN:MAX:CHARSET] [-c TIME] [-ISOuvVd46] [service://server[:PORT][/OPT]]

Options:
  -R        restore a previous aborted/crashed session
  -I        ignore an existing restore file (don't wait 10 seconds)
  -S        perform an SSL connect
  -s PORT   if the service is on a different default port, define it here
  -l LOGIN or -L FILE  login with LOGIN name, or load several logins from FILE
  -p PASS  or -P FILE  try password PASS, or load several passwords from FILE
  -x MIN:MAX:CHARSET  password bruteforce generation, type "-x -h" to get help
  -y        disable use of symbols in bruteforce, see above
  -e nsr    try "n" null password, "s" login as pass and/or "r" reversed login
  -u        loop around users, not passwords (effective! implied with -x)
  -C FILE   colon separated "login:pass" format, instead of -L/-P options
  -M FILE   list of servers to attack, one entry per line, ':' to specify port
  -o FILE   write found login/password pairs to FILE instead of stdout
  -b FORMAT specify the format for the -o FILE: text(default), json, jsonv1
  -f / -F   exit when a login/pass pair is found (-M: -f per host, -F global)
  -t TASKS  run TASKS number of connects in parallel per target (default: 16)
  -T TASKS  run TASKS connects in parallel overall (for -M, default: 64)
  -w / -W TIME  wait time for a response (32) / between connects per thread (0)
  -c TIME   wait time per login attempt over all threads (enforces -t 1)
  -4 / -6   use IPv4 (default) / IPv6 addresses (put always in [] also in -M)
  -v / -V / -d  verbose mode / show login+pass for each attempt / debug mode 
  -O        use old SSL v2 and v3
  -q        do not print messages about connection errors
  -U        service module usage details
  -h        more command line options (COMPLETE HELP)
  server    the target: DNS, IP or 192.168.0.0/24 (this OR the -M option)
  service   the service to crack (see below for supported protocols)
  OPT       some service modules support additional input (-U for module help)

Supported services: adam6500 asterisk cisco cisco-enable cvs firebird ftp[s] http[s]-{head|get|post} http[s]-{get|post}-form http-proxy http-proxy-urlenum icq imap[s] irc ldap2[s] ldap3[-{cram|digest}md5][s] memcached mongodb mssql mysql nntp oracle-listener oracle-sid pcanywhere pcnfs pop3[s] postgres radmin2 rdp redis rexec rlogin rpcap rsh rtsp s7-300 sip smb smtp[s] smtp-enum snmp socks5 ssh sshkey svn teamspeak telnet[s] vmauthd vnc xmpp

Hydra is a tool to guess/crack valid login/password pairs. Licensed under AGPL
v3.0. The newest version is always available at https://github.com/vanhauser-thc/thc-hydra
Don't use in military or secret service organizations, or for illegal purposes.
These services were not compiled in: afp ncp oracle sapr3.

Use HYDRA_PROXY_HTTP or HYDRA_PROXY environment variables for a proxy setup.
E.g. % export HYDRA_PROXY=socks5://l:p@127.0.0.1:9150 (or: socks4:// connect://)
     % export HYDRA_PROXY=connect_and_socks_proxylist.txt  (up to 64 entries)
     % export HYDRA_PROXY_HTTP=http://login:pass@proxy:8080
     % export HYDRA_PROXY_HTTP=proxylist.txt  (up to 64 entries)

Examples:
  hydra -l user -P passlist.txt ftp://192.168.0.1
  hydra -L userlist.txt -p defaultpw imap://192.168.0.1/PLAIN
  hydra -C defaults.txt -6 pop3s://[2001:db8::1]:143/TLS:DIGEST-MD5
  hydra -l admin -p password ftp://[192.168.0.0/24]/
  hydra -L logins.txt -P pws.txt -M targets.txt ssh

```

Task 5

```text
hydra -l [user] -P [wordlist_file] [protocol]://[host IP]

hydra -l jimmy -P /usr/share/wordlists/metasploit/password.lst ftp://10.102.6.9
```



### John the Ripper

* Quick Summary:
  * In this lab you will get to grips with password-cracking tool John the Ripper.

```text
root@john:~# john --wordlist=/usr/share/wordlists/rockyou.txt --format=Raw-SHA256 ./Desktop/Hashes/sha256.txt 
Using default input encoding: UTF-8
Loaded 1 password hash (Raw-SHA256 [SHA256 512/512 AVX512BW 16x])
No password hashes left to crack (see FAQ)
root@john:~# john --show  ./Desktop/Hashes/sha256.txt
0 password hashes cracked, 1 left
root@john:~# john --wordlist=/usr/share/wordlists/rockyou.txt --format=Raw-SHA512 ./Desktop/Hashes/sha512.txt 
Using default input encoding: UTF-8
Loaded 1 password hash (Raw-SHA512 [SHA512 512/512 AVX512BW 8x])
No password hashes left to crack (see FAQ)
root@john:~# john --show --format=Raw-SHA256
Password files required, but none specified
root@john:~# john --show --format=Raw-SHA256 ./Desktop/Hashes/sha256.txt
?:myHash

1 password hash cracked, 0 left
root@john:~# john --show --format=Raw-SHA512 ./Desktop/Hashes/sha512.txt
?:pa55w0rd!

1 password hash cracked, 0 left
root@john:~# 

```

Lösung der Task 1-4

```text
# MD5
iMm3RsiV3l4b$

# SHA1
mY5ecr3t

# SHA256
myHash

# SHA512
pa55w0rd!

```

![](../.gitbook/assets/image%20%28336%29.png)

```text
root@john:~# john -help
John the Ripper 1.9.0-jumbo-1 OMP [linux-gnu 64-bit x86_64 AVX512BW AC]
Copyright (c) 1996-2019 by Solar Designer and others
Homepage: http://www.openwall.com/john/

Usage: john [OPTIONS] [PASSWORD-FILES]
--single[=SECTION[,..]]    "single crack" mode, using default or named rules
--single=:rule[,..]        same, using "immediate" rule(s)
--wordlist[=FILE] --stdin  wordlist mode, read words from FILE or stdin
                  --pipe   like --stdin, but bulk reads, and allows rules
--loopback[=FILE]          like --wordlist, but extract words from a .pot file
--dupe-suppression         suppress all dupes in wordlist (and force preload)
--prince[=FILE]            PRINCE mode, read words from FILE
--encoding=NAME            input encoding (eg. UTF-8, ISO-8859-1). See also
                           doc/ENCODINGS and --list=hidden-options.
--rules[=SECTION[,..]]     enable word mangling rules (for wordlist or PRINCE
                           modes), using default or named rules
--rules=:rule[;..]]        same, using "immediate" rule(s)
--rules-stack=SECTION[,..] stacked rules, applied after regular rules or to
                           modes that otherwise don't support rules
--rules-stack=:rule[;..]   same, using "immediate" rule(s)
--incremental[=MODE]       "incremental" mode [using section MODE]
--mask[=MASK]              mask mode using MASK (or default from john.conf)
--markov[=OPTIONS]         "Markov" mode (see doc/MARKOV)
--external=MODE            external mode or word filter
--subsets[=CHARSET]        "subsets" mode (see doc/SUBSETS)
--stdout[=LENGTH]          just output candidate passwords [cut at LENGTH]
--restore[=NAME]           restore an interrupted session [called NAME]
--session=NAME             give a new session the NAME
--status[=NAME]            print status of a session [called NAME]
--make-charset=FILE        make a charset file. It will be overwritten
--show[=left]              show cracked passwords [if =left, then uncracked]
--test[=TIME]              run tests and benchmarks for TIME seconds each
--users=[-]LOGIN|UID[,..]  [do not] load this (these) user(s) only
--groups=[-]GID[,..]       load users [not] of this (these) group(s) only
--shells=[-]SHELL[,..]     load users with[out] this (these) shell(s) only
--salts=[-]COUNT[:MAX]     load salts with[out] COUNT [to MAX] hashes
--costs=[-]C[:M][,...]     load salts with[out] cost value Cn [to Mn]. For
                           tunable cost parameters, see doc/OPTIONS
--save-memory=LEVEL        enable memory saving, at LEVEL 1..3
--node=MIN[-MAX]/TOTAL     this node's number range out of TOTAL count
--fork=N                   fork N processes
--pot=NAME                 pot file to use
--list=WHAT                list capabilities, see --list=help or doc/OPTIONS
--format=NAME              force hash of type NAME. The supported formats can
                           be seen with --list=formats and --list=subformats

root@john:~# john --list=formats
descrypt, bsdicrypt, md5crypt, md5crypt-long, bcrypt, scrypt, LM, AFS, 
tripcode, AndroidBackup, adxcrypt, agilekeychain, aix-ssha1, aix-ssha256, 
aix-ssha512, andOTP, ansible, argon2, as400-des, as400-ssha1, asa-md5, 
AxCrypt, AzureAD, BestCrypt, bfegg, Bitcoin, BitLocker, bitshares, Bitwarden, 
BKS, Blackberry-ES10, WoWSRP, Blockchain, chap, Clipperz, cloudkeychain, 
dynamic_n, cq, CRC32, sha1crypt, sha256crypt, sha512crypt, Citrix_NS10, 
dahua, dashlane, diskcryptor, Django, django-scrypt, dmd5, dmg, dominosec, 
dominosec8, DPAPImk, dragonfly3-32, dragonfly3-64, dragonfly4-32, 
dragonfly4-64, Drupal7, eCryptfs, eigrp, electrum, EncFS, enpass, EPI, 
EPiServer, ethereum, fde, Fortigate256, Fortigate, FormSpring, FVDE, geli, 
gost, gpg, HAVAL-128-4, HAVAL-256-3, hdaa, hMailServer, hsrp, IKE, ipb2, 
itunes-backup, iwork, KeePass, keychain, keyring, keystore, known_hosts, 
krb4, krb5, krb5asrep, krb5pa-sha1, krb5tgs, krb5-17, krb5-18, krb5-3, 
kwallet, lp, lpcli, leet, lotus5, lotus85, LUKS, MD2, mdc2, MediaWiki, 
monero, money, MongoDB, scram, Mozilla, mscash, mscash2, MSCHAPv2, 
mschapv2-naive, krb5pa-md5, mssql, mssql05, mssql12, multibit, mysqlna, 
mysql-sha1, mysql, net-ah, nethalflm, netlm, netlmv2, net-md5, netntlmv2, 
netntlm, netntlm-naive, net-sha1, nk, notes, md5ns, nsec3, NT, o10glogon, 
o3logon, o5logon, ODF, Office, oldoffice, OpenBSD-SoftRAID, openssl-enc, 
oracle, oracle11, Oracle12C, osc, ospf, Padlock, Palshop, Panama, 
PBKDF2-HMAC-MD4, PBKDF2-HMAC-MD5, PBKDF2-HMAC-SHA1, PBKDF2-HMAC-SHA256, 
PBKDF2-HMAC-SHA512, PDF, PEM, pfx, pgpdisk, pgpsda, pgpwde, phpass, PHPS, 
PHPS2, pix-md5, PKZIP, po, postgres, PST, PuTTY, pwsafe, qnx, RACF, 
RACF-KDFAES, radius, RAdmin, RAKP, rar, RAR5, Raw-SHA512, Raw-Blake2, 
Raw-Keccak, Raw-Keccak-256, Raw-MD4, Raw-MD5, Raw-MD5u, Raw-SHA1, 
Raw-SHA1-AxCrypt, Raw-SHA1-Linkedin, Raw-SHA224, Raw-SHA256, Raw-SHA3, 
Raw-SHA384, ripemd-128, ripemd-160, rsvp, Siemens-S7, Salted-SHA1, SSHA512, 
sapb, sapg, saph, sappse, securezip, 7z, Signal, SIP, skein-256, skein-512, 
skey, SL3, Snefru-128, Snefru-256, LastPass, SNMP, solarwinds, SSH, sspr, 
Stribog-256, Stribog-512, STRIP, SunMD5, SybaseASE, Sybase-PROP, tacacs-plus, 
tcp-md5, telegram, tezos, Tiger, tc_aes_xts, tc_ripemd160, tc_ripemd160boot, 
tc_sha512, tc_whirlpool, vdi, OpenVMS, vmx, VNC, vtp, wbb3, whirlpool, 
whirlpool0, whirlpool1, wpapsk, wpapsk-pmk, xmpp-scram, xsha, xsha512, ZIP, 
ZipMonster, plaintext, has-160, HMAC-MD5, HMAC-SHA1, HMAC-SHA224, 
HMAC-SHA256, HMAC-SHA384, HMAC-SHA512, dummy, crypt

```

### Nmap: Ep.1 – Basic Scanning

* Quick Summary

  Nmap is an extremely powerful tool for network admins, pen testers, and everyone in between. This is the first episode of a three-part series, which covers the basics of scanning, OS detection, and using custom scripts in Nmap.

```text
# Scanning TCP SYN scan

nmap -sS [IP Address]

# Port scanning cheat sheet
nmap [IP Address] --top-ports [Number] # To scan the highest ranges of ports -
nmap -p [Port Number] [IP Address] # To scan a specific port - 
nmap -p- [IP Address] # To scan all 65535 ports - 
nmap -sU [IP Address] # To scan UDP ports - 
nmap -sT [IP Address] # To scan TCP ports - 

# Banner grabbing
nmap -sV -v -p- [IP Address]


```

#### Question 1-2

![](../.gitbook/assets/image%20%28330%29.png)

```text
root@iml-kali:~# nmap 10.102.3.47 --top-ports 1000
Starting Nmap 7.80 ( https://nmap.org ) at 2021-01-08 09:45 UTC
Nmap scan report for ip-10-102-3-47.eu-west-1.compute.internal (10.102.3.47)
Host is up (0.00032s latency).
Not shown: 995 closed ports
PORT    STATE SERVICE
21/tcp  open  ftp
25/tcp  open  smtp
80/tcp  open  http
110/tcp open  pop3
443/tcp open  https

Nmap done: 1 IP address (1 host up) scanned in 0.28 seconds

```

#### Question 3 

* Run a banner grab scan. What is the token shown under the FTP service? 
* =&gt; TOKEN =  d363

```bash
root@iml-kali:~# nmap -sV -v -p 21 --script=banner 10.102.3.47
Starting Nmap 7.80 ( https://nmap.org ) at 2021-01-08 09:52 UTC
NSE: Loaded 46 scripts for scanning.
NSE: Script Pre-scanning.
Initiating NSE at 09:52
Completed NSE at 09:52, 0.00s elapsed
Initiating NSE at 09:52
Completed NSE at 09:52, 0.00s elapsed
Initiating Ping Scan at 09:52
Scanning 10.102.3.47 [4 ports]
Completed Ping Scan at 09:52, 0.07s elapsed (1 total hosts)
Initiating Parallel DNS resolution of 1 host. at 09:52
Completed Parallel DNS resolution of 1 host. at 09:52, 0.00s elapsed
Initiating SYN Stealth Scan at 09:52
Scanning ip-10-102-3-47.eu-west-1.compute.internal (10.102.3.47) [1 port]
Discovered open port 21/tcp on 10.102.3.47
Completed SYN Stealth Scan at 09:52, 0.04s elapsed (1 total ports)
Initiating Service scan at 09:52
Scanning 1 service on ip-10-102-3-47.eu-west-1.compute.internal (10.102.3.47)
Completed Service scan at 09:54, 156.14s elapsed (1 service on 1 host)
NSE: Script scanning 10.102.3.47.
Initiating NSE at 09:54
Completed NSE at 09:54, 0.00s elapsed
Initiating NSE at 09:54
Completed NSE at 09:54, 1.01s elapsed
Nmap scan report for ip-10-102-3-47.eu-west-1.compute.internal (10.102.3.47)
Host is up (0.00041s latency).

PORT   STATE SERVICE VERSION
21/tcp open  ftp?
|_banner: 220 Come find your token! d363
| fingerprint-strings: 
|   DNSStatusRequestTCP, DNSVersionBindReqTCP, NULL, RPCCheck, SMBProgNeg, X11Probe: 
|     220 Come find your token! d363
|   FourOhFourRequest, GenericLines, GetRequest, HTTPOptions, LDAPSearchReq, RTSPRequest: 
|     220 Come find your token! d363
|     Unknown command.
|     Unknown command.
|   Help: 
|     220 Come find your token! d363
|     214-The following commands are recognized.
|     ABOR CDUP CWD DELE HELP LIST MKD MODE
|     NLST NOOP PASS PORT PWD QUIT RETR RMD
|     STAT STOR STRU SYST TYPE USER
|     Help OK.
|   Kerberos, LPDString, SSLSessionReq, TLSSessionReq, TerminalServerCookie: 
|     220 Come find your token! d363
|_    Unknown command.
1 service unrecognized despite returning data. If you know the service/version, please submit the following fingerprint at https://nmap.org/cgi-bin/submit.cgi?new-service :
SF-Port21-TCP:V=7.80%I=7%D=1/8%Time=5FF82B52%P=x86_64-pc-linux-gnu%r(NULL,
SF:20,"220\x20Come\x20find\x20your\x20token!\x20d363\r\n")%r(GenericLines,
SF:4C,"220\x20Come\x20find\x20your\x20token!\x20d363\r\n500\x20Unknown\x20
SF:command\.\r\n500\x20Unknown\x20command\.\r\n")%r(Help,CD,"220\x20Come\x
SF:20find\x20your\x20token!\x20d363\r\n214-The\x20following\x20commands\x2
SF:0are\x20recognized\.\r\n\x20ABOR\x20CDUP\x20CWD\x20\x20DELE\x20HELP\x20
SF:LIST\x20MKD\x20\x20MODE\r\n\x20NLST\x20NOOP\x20PASS\x20PORT\x20PWD\x20\
SF:x20QUIT\x20RETR\x20RMD\r\n\x20STAT\x20STOR\x20STRU\x20SYST\x20TYPE\x20U
SF:SER\r\n214\x20Help\x20OK\.\r\n")%r(GetRequest,4C,"220\x20Come\x20find\x
SF:20your\x20token!\x20d363\r\n500\x20Unknown\x20command\.\r\n500\x20Unkno
SF:wn\x20command\.\r\n")%r(HTTPOptions,4C,"220\x20Come\x20find\x20your\x20
SF:token!\x20d363\r\n500\x20Unknown\x20command\.\r\n500\x20Unknown\x20comm
SF:and\.\r\n")%r(RTSPRequest,4C,"220\x20Come\x20find\x20your\x20token!\x20
SF:d363\r\n500\x20Unknown\x20command\.\r\n500\x20Unknown\x20command\.\r\n"
SF:)%r(RPCCheck,20,"220\x20Come\x20find\x20your\x20token!\x20d363\r\n")%r(
SF:DNSVersionBindReqTCP,20,"220\x20Come\x20find\x20your\x20token!\x20d363\
SF:r\n")%r(DNSStatusRequestTCP,20,"220\x20Come\x20find\x20your\x20token!\x
SF:20d363\r\n")%r(SSLSessionReq,36,"220\x20Come\x20find\x20your\x20token!\
SF:x20d363\r\n500\x20Unknown\x20command\.\r\n")%r(TerminalServerCookie,36,
SF:"220\x20Come\x20find\x20your\x20token!\x20d363\r\n500\x20Unknown\x20com
SF:mand\.\r\n")%r(TLSSessionReq,36,"220\x20Come\x20find\x20your\x20token!\
SF:x20d363\r\n500\x20Unknown\x20command\.\r\n")%r(Kerberos,36,"220\x20Come
SF:\x20find\x20your\x20token!\x20d363\r\n500\x20Unknown\x20command\.\r\n")
SF:%r(SMBProgNeg,20,"220\x20Come\x20find\x20your\x20token!\x20d363\r\n")%r
SF:(X11Probe,20,"220\x20Come\x20find\x20your\x20token!\x20d363\r\n")%r(Fou
SF:rOhFourRequest,4C,"220\x20Come\x20find\x20your\x20token!\x20d363\r\n500
SF:\x20Unknown\x20command\.\r\n500\x20Unknown\x20command\.\r\n")%r(LPDStri
SF:ng,36,"220\x20Come\x20find\x20your\x20token!\x20d363\r\n500\x20Unknown\
SF:x20command\.\r\n")%r(LDAPSearchReq,4C,"220\x20Come\x20find\x20your\x20t
SF:oken!\x20d363\r\n500\x20Unknown\x20command\.\r\n500\x20Unknown\x20comma
SF:nd\.\r\n");

NSE: Script Post-scanning.
Initiating NSE at 09:54
Completed NSE at 09:54, 0.00s elapsed
Initiating NSE at 09:54
Completed NSE at 09:54, 0.00s elapsed
Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 157.72 seconds
           Raw packets sent: 5 (196B) | Rcvd: 2 (88B)
```

#### Question 4-5

![](../.gitbook/assets/image%20%28331%29.png)

```bash
root@iml-kali:~# nmap -help
Nmap 7.80 ( https://nmap.org )
Usage: nmap [Scan Type(s)] [Options] {target specification}
TARGET SPECIFICATION:
  Can pass hostnames, IP addresses, networks, etc.
  Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254
  -iL <inputfilename>: Input from list of hosts/networks
  -iR <num hosts>: Choose random targets
  --exclude <host1[,host2][,host3],...>: Exclude hosts/networks
  --excludefile <exclude_file>: Exclude list from file
HOST DISCOVERY:
  -sL: List Scan - simply list targets to scan
  -sn: Ping Scan - disable port scan
  -Pn: Treat all hosts as online -- skip host discovery
  -PS/PA/PU/PY[portlist]: TCP SYN/ACK, UDP or SCTP discovery to given ports
  -PE/PP/PM: ICMP echo, timestamp, and netmask request discovery probes
  -PO[protocol list]: IP Protocol Ping
  -n/-R: Never do DNS resolution/Always resolve [default: sometimes]
  --dns-servers <serv1[,serv2],...>: Specify custom DNS servers
  --system-dns: Use OS's DNS resolver
  --traceroute: Trace hop path to each host
SCAN TECHNIQUES:
  -sS/sT/sA/sW/sM: TCP SYN/Connect()/ACK/Window/Maimon scans
  -sU: UDP Scan
  -sN/sF/sX: TCP Null, FIN, and Xmas scans
  --scanflags <flags>: Customize TCP scan flags
  -sI <zombie host[:probeport]>: Idle scan
  -sY/sZ: SCTP INIT/COOKIE-ECHO scans
  -sO: IP protocol scan
  -b <FTP relay host>: FTP bounce scan
PORT SPECIFICATION AND SCAN ORDER:
  -p <port ranges>: Only scan specified ports
    Ex: -p22; -p1-65535; -p U:53,111,137,T:21-25,80,139,8080,S:9
  --exclude-ports <port ranges>: Exclude the specified ports from scanning
  -F: Fast mode - Scan fewer ports than the default scan
  -r: Scan ports consecutively - don't randomize
  --top-ports <number>: Scan <number> most common ports
  --port-ratio <ratio>: Scan ports more common than <ratio>
SERVICE/VERSION DETECTION:
  -sV: Probe open ports to determine service/version info
  --version-intensity <level>: Set from 0 (light) to 9 (try all probes)
  --version-light: Limit to most likely probes (intensity 2)
  --version-all: Try every single probe (intensity 9)
  --version-trace: Show detailed version scan activity (for debugging)
SCRIPT SCAN:
  -sC: equivalent to --script=default
  --script=<Lua scripts>: <Lua scripts> is a comma separated list of
           directories, script-files or script-categories
  --script-args=<n1=v1,[n2=v2,...]>: provide arguments to scripts
  --script-args-file=filename: provide NSE script args in a file
  --script-trace: Show all data sent and received
  --script-updatedb: Update the script database.
  --script-help=<Lua scripts>: Show help about scripts.
           <Lua scripts> is a comma-separated list of script-files or
           script-categories.
OS DETECTION:
  -O: Enable OS detection
  --osscan-limit: Limit OS detection to promising targets
  --osscan-guess: Guess OS more aggressively
TIMING AND PERFORMANCE:
  Options which take <time> are in seconds, or append 'ms' (milliseconds),
  's' (seconds), 'm' (minutes), or 'h' (hours) to the value (e.g. 30m).
  -T<0-5>: Set timing template (higher is faster)
  --min-hostgroup/max-hostgroup <size>: Parallel host scan group sizes
  --min-parallelism/max-parallelism <numprobes>: Probe parallelization
  --min-rtt-timeout/max-rtt-timeout/initial-rtt-timeout <time>: Specifies
      probe round trip time.
  --max-retries <tries>: Caps number of port scan probe retransmissions.
  --host-timeout <time>: Give up on target after this long
  --scan-delay/--max-scan-delay <time>: Adjust delay between probes
  --min-rate <number>: Send packets no slower than <number> per second
  --max-rate <number>: Send packets no faster than <number> per second
FIREWALL/IDS EVASION AND SPOOFING:
  -f; --mtu <val>: fragment packets (optionally w/given MTU)
  -D <decoy1,decoy2[,ME],...>: Cloak a scan with decoys
  -S <IP_Address>: Spoof source address
  -e <iface>: Use specified interface
  -g/--source-port <portnum>: Use given port number
  --proxies <url1,[url2],...>: Relay connections through HTTP/SOCKS4 proxies
  --data <hex string>: Append a custom payload to sent packets
  --data-string <string>: Append a custom ASCII string to sent packets
  --data-length <num>: Append random data to sent packets
  --ip-options <options>: Send packets with specified ip options
  --ttl <val>: Set IP time-to-live field
  --spoof-mac <mac address/prefix/vendor name>: Spoof your MAC address
  --badsum: Send packets with a bogus TCP/UDP/SCTP checksum
OUTPUT:
  -oN/-oX/-oS/-oG <file>: Output scan in normal, XML, s|<rIpt kIddi3,
     and Grepable format, respectively, to the given filename.
  -oA <basename>: Output in the three major formats at once
  -v: Increase verbosity level (use -vv or more for greater effect)
  -d: Increase debugging level (use -dd or more for greater effect)
  --reason: Display the reason a port is in a particular state
  --open: Only show open (or possibly open) ports
  --packet-trace: Show all packets sent and received
  --iflist: Print host interfaces and routes (for debugging)
  --append-output: Append to rather than clobber specified output files
  --resume <filename>: Resume an aborted scan
  --stylesheet <path/URL>: XSL stylesheet to transform XML output to HTML
  --webxml: Reference stylesheet from Nmap.Org for more portable XML
  --no-stylesheet: Prevent associating of XSL stylesheet w/XML output
MISC:
  -6: Enable IPv6 scanning
  -A: Enable OS detection, version detection, script scanning, and traceroute
  --datadir <dirname>: Specify custom Nmap data file location
  --send-eth/--send-ip: Send using raw ethernet frames or IP packets
  --privileged: Assume that the user is fully privileged
  --unprivileged: Assume the user lacks raw socket privileges
  -V: Print version number
  -h: Print this help summary page.
EXAMPLES:
  nmap -v -A scanme.nmap.org
  nmap -v -sn 192.168.0.0/16 10.0.0.0/8
  nmap -v -iR 10000 -Pn -p 80
SEE THE MAN PAGE (https://nmap.org/book/man.html) FOR MORE OPTIONS AND EXAMPLES

```

#### Question 6-8

![](../.gitbook/assets/image%20%28327%29.png)

```bash
root@iml-kali:~# nmap -sV -v -p 103 --script=banner 10.102.3.47
Starting Nmap 7.80 ( https://nmap.org ) at 2021-01-08 10:00 UTC
NSE: Loaded 46 scripts for scanning.
NSE: Script Pre-scanning.
Initiating NSE at 10:00
Completed NSE at 10:00, 0.00s elapsed
Initiating NSE at 10:00
Completed NSE at 10:00, 0.00s elapsed
Initiating Ping Scan at 10:00
Scanning 10.102.3.47 [4 ports]
Completed Ping Scan at 10:00, 0.04s elapsed (1 total hosts)
Initiating Parallel DNS resolution of 1 host. at 10:00
Completed Parallel DNS resolution of 1 host. at 10:00, 0.00s elapsed
Initiating SYN Stealth Scan at 10:00
Scanning ip-10-102-3-47.eu-west-1.compute.internal (10.102.3.47) [1 port]
Completed SYN Stealth Scan at 10:00, 0.04s elapsed (1 total ports)
Initiating Service scan at 10:00
NSE: Script scanning 10.102.3.47.
Initiating NSE at 10:00
Completed NSE at 10:00, 0.00s elapsed
Initiating NSE at 10:00
Completed NSE at 10:00, 0.00s elapsed
Nmap scan report for ip-10-102-3-47.eu-west-1.compute.internal (10.102.3.47)
Host is up (0.00047s latency).

PORT    STATE  SERVICE VERSION
103/tcp closed gppitnp

NSE: Script Post-scanning.
Initiating NSE at 10:00
Completed NSE at 10:00, 0.00s elapsed
Initiating NSE at 10:00
Completed NSE at 10:00, 0.00s elapsed
Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 0.50 seconds
           Raw packets sent: 5 (196B) | Rcvd: 2 (84B)
           
           
           
root@iml-kali:~# nmap --script=banner -p110 10.102.7.181
Starting Nmap 7.80 ( https://nmap.org ) at 2021-01-08 11:27 UTC
Nmap scan report for ip-10-102-7-181.eu-west-1.compute.internal (10.102.7.181)
Host is up (0.00054s latency).

PORT    STATE SERVICE
110/tcp open  pop3
| banner: +OK INetSim POP3 Server ready <28.1610105246@snailmailreadyfora
|_ction>

Nmap done: 1 IP address (1 host up) scanned in 0.35 seconds

```


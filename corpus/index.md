This page contains examples of Memory Hole-compliant e-mails. You can
check your favourite mail user agent's compliance with the Memory Hole
standard by checking the screenshots associated with each e-mail.
### Contents
<ul>
  
<li>
    
  <a href="#A">A: alternative text/html message with embedded header, signed   </a>
  </li>
<li>
    
  <a href="#B">B: alternative text/html message with embedded header, unsigned   </a>
  </li>
<li>
    
  <a href="#C">C: alternative text/html message with embedded header, signed, with Subject tampered   </a>
  </li>
<li>
    
  <a href="#D">D: alternative text/html message with embedded header, encrypted+unsigned   </a>
  </li>
<li>
    
  <a href="#E">E: alternative text/html message with embedded header, encrypted+signed   </a>
  </li>
<li>
    
  <a href="#F">F: headers in top-level MIME object: signed plaintext email   </a>
  </li>
<li>
    
  <a href="#G">G: headers in top-level MIME object: signed multipart email   </a>
  </li>
<li>
    
  <a href="#H">H: headers in top-level MIME: tampered subject and from   </a>
  </li>

</ul>
### Examples
<h3 id="A" class="mail-example">
Email A: 
</h3>
alternative text/html message with embedded header, signed 
<pre>
└┬╴multipart/signed 1819 bytes
 ├┬╴multipart/mixed 917 bytes
 │├─╴text/rfc822-headers attachment 205 bytes
 │└┬╴multipart/alternative 504 bytes
 │ ├─╴text/plain 86 bytes
 │ └─╴text/html 202 bytes
 └─╴application/pgp-signature 455 bytes</pre>
<div class="code-block"><span style="color:#dc322f;">Subject:</span> alternative text/html message with embedded header, signed
<span style="color:#268bd2;">Message-ID:</span> A@memoryhole.example
<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/signed; micalg="pgp-sha256";
 protocol="application/pgp-signature"; boundary="cccccccccccc"

<span style="color:#2aa198;">--cccccccccccc</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/mixed; boundary="bbbbbbbbbbbb"

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/rfc822-headers
<span style="color:#268bd2;">Content-Disposition:</span> attachment

<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#dc322f;">Subject:</span> alternative text/html message with embedded header, signed
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#268bd2;">Message-ID:</span> A@memoryhole.example

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/alternative; boundary="aaaaaaaaaaaa"

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/plain

This is a test
message on multiple lines

with a silly bit more.
-- 
and a .sig here.

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/html

<html>
<head>
<title>titles are usually unrendered</title>
</head>
<body>
<p>This is a test<br/>message on multiple lines</p>
<p>with a silly bit more.</p>
<hr/>
<p>and a .sig here.</p>
</body>
</html>

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>

<span style="color:#2aa198;">--cccccccccccc</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAABCAAGBQJVugJLAAoJEBX7TryOLWy32P8IAJumB/j4U4cg7R+NDS75cMkP
t9d4NPqWSHniUrFNGHmySfKBKz6lOwaQ1MqzLX33KNmsVvCTK6EaSwinuoplrTxm
1P71twkDN8xnqMpXqZKq10xXSFkShKEfwYHtKE46Az/HhF1uVjf9kqbYc6dqntnz
fKT1AVWtKfbTiIxbZkVIuvK3ocHqWxoT7U9a6lggmc9anfhIluVz8TCt4KSmF9bj
otDDyo2T6OZKkS28EV2AmpCQH2PxHY7RZH7d8D31bu/PZNFM/4D6JGNl4yxXJMui
BL4iD3aNV/yqE10ADFMYiP1EY6bOXWjroAwvTEvcA0rBJ6jxhFKQ3QNTsIL42Ds=
=NuSs
-----END PGP SIGNATURE-----

<span style="color:#2aa198;">--cccccccccccc</span>
</div>
<h3 id="B" class="mail-example">
Email B: 
</h3>
alternative text/html message with embedded header, unsigned 
<pre>
└┬╴multipart/mixed 1126 bytes
 ├─╴text/rfc822-headers attachment 207 bytes
 └┬╴multipart/alternative 504 bytes
  ├─╴text/plain 86 bytes
  └─╴text/html 202 bytes</pre>
<div class="code-block"><span style="color:#dc322f;">Subject:</span> alternative text/html message with embedded header, unsigned
<span style="color:#268bd2;">Message-ID:</span> B@memoryhole.example
<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/mixed; boundary="bbbbbbbbbbbb"

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/rfc822-headers
<span style="color:#268bd2;">Content-Disposition:</span> attachment

<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#dc322f;">Subject:</span> alternative text/html message with embedded header, unsigned
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#268bd2;">Message-ID:</span> B@memoryhole.example

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/alternative; boundary="aaaaaaaaaaaa"

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/plain

This is a test
message on multiple lines

with a silly bit more.
-- 
and a .sig here.

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/html

<html>
<head>
<title>titles are usually unrendered</title>
</head>
<body>
<p>This is a test<br/>message on multiple lines</p>
<p>with a silly bit more.</p>
<hr/>
<p>and a .sig here.</p>
</body>
</html>

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
</div>
<h3 id="C" class="mail-example">
Email C: 
</h3>
alternative text/html message with embedded header, signed, with Subject tampered 
<pre>
└┬╴multipart/signed 1814 bytes
 ├┬╴multipart/mixed 940 bytes
 │├─╴text/rfc822-headers attachment 228 bytes
 │└┬╴multipart/alternative 504 bytes
 │ ├─╴text/plain 86 bytes
 │ └─╴text/html 202 bytes
 └─╴application/pgp-signature 455 bytes</pre>
<div class="code-block"><span style="color:#dc322f;">Subject:</span> the subject has been tampered!
<span style="color:#268bd2;">Message-ID:</span> C@memoryhole.example
<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/signed; micalg="pgp-sha256";
 protocol="application/pgp-signature"; boundary="cccccccccccc"

<span style="color:#2aa198;">--cccccccccccc</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/mixed; boundary="bbbbbbbbbbbb"

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/rfc822-headers
<span style="color:#268bd2;">Content-Disposition:</span> attachment

<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#dc322f;">Subject:</span> alternative text/html message with embedded header, signed, with Subject tampered
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#268bd2;">Message-ID:</span> C@memoryhole.example

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/alternative; boundary="aaaaaaaaaaaa"

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/plain

This is a test
message on multiple lines

with a silly bit more.
-- 
and a .sig here.

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/html

<html>
<head>
<title>titles are usually unrendered</title>
</head>
<body>
<p>This is a test<br/>message on multiple lines</p>
<p>with a silly bit more.</p>
<hr/>
<p>and a .sig here.</p>
</body>
</html>

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>

<span style="color:#2aa198;">--cccccccccccc</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAABCAAGBQJVugJLAAoJEBX7TryOLWy3e7QH/RJvsIYbtJtbkIcCaTV/015R
QO0KYhPudnnv7RC3NoBCLQ71ncLnvjPnkIsZRUfaNiztydMnm4i53LRdHSTuhVNG
PQy37LGzjZ0x0u/LFpqy+x4MSXTWCOz3r4vgZ7KIPvdkUnBuP8NF7u4hKrfUe8c9
CfANwNEWaWprNORsPboPlLopGlnjrwkoa5h6paJA6SWfzjIY8inMeWlVgJ7iyIUY
J2HBnonhmjOaRgYiznr6S0cq461mxX9b1hhS/WcHIU86kTsGceL9T+ekzAxXmlxq
EqlwEkJlr9QIM+Y8tKbuTPv1McLZdt8oRIs6lwNt5n2G1KllhndryskT3M664/Y=
=/p+i
-----END PGP SIGNATURE-----

<span style="color:#2aa198;">--cccccccccccc</span>
</div>
<h3 id="D" class="mail-example">
Email D: 
</h3>
alternative text/html message with embedded header, encrypted+unsigned 
<pre>
└┬╴multipart/encrypted 1939 bytes
 ├─╴application/pgp-encrypted 10 bytes
 └─╴application/octet-stream 1471 bytes</pre>
<div class="code-block"><span style="color:#dc322f;">Subject:</span> Memory Hole Encrypted Message
<span style="color:#268bd2;">Message-ID:</span> D@memoryhole.example
<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/encrypted; protocol="application/pgp-encrypted";
 boundary="cccccccccccc"

<span style="color:#2aa198;">--cccccccccccc</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> application/pgp-encrypted

<span style="color:#268bd2;">Version:</span> 1
<span style="color:#2aa198;">--cccccccccccc</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> application/octet-stream

-----BEGIN PGP MESSAGE-----

hQEMA5I+4kg3RI5lAQgAmoxforShbskK0XgtiWLf2I3dCRYdsNdSbKYHQXoSBRhi
qd6P9cPH8yhbx8c+WRGDAlPTTkEdGP2CwtywuJCiQK3kk6yS+v8xZipiD8Ej3na1
4KMug2HhRW79Dv0X6DBNl82MRPvI3GLlBf/p+lwXjdNyGmG4/XJEH4+CFTvQaSMl
c320YELcPe9LXLiEBl3PAvvkTPVSJJlYvCmvagVcWRvGy1wT0pknVyIrd+TIuOsR
3KmNVkT87nxZBt9t9d00ELPUWgysd9beNheBW0oBQpkdS1bHUtRcoRFoCvxs1bxm
tlGKNRAv1FI9pAs1KyumYQEqTUmnAE44nSMPZYfPFYUBDANLbJvEVDbKBwEIAJO8
f573jlmL6k4W+IqBizuUjJemmeECaWdheXQL5+DvOeVrpdDCXOqRhNe77RvwAji/
VJ8+SFX/LacXQsWa0hWU29G8G6WplEq+XPiBjBhmW4/vnWUxDJriA+ges9l57aDm
MFrI74cSBdQmo335WiFiiJCutey90oBJLy5Deyj6JlnudVcz61atIkEy/ijPRqG6
hFOpKoExUBJMEMgKKDZPic4urbqipWxWcQhDcHIn8NQrCPCJFXhNNjjfiuRcewu0
yLRWtyfPI9l5svCKYqJbJg1t3cFEyMO8eSTH2oOiRVnt+MyaI477YlFfS0Zocp4a
fT+uNOTRuMLJjxSCBYLSwTABHZxysKHGy1gK/5ld2V7fB3vW367Wsov2t2RFHUP3
RagP/UrnuxgzVUBKyyzAcmb74TvKp7PNKa2QiRsTJwEEYbggmUG+HGK6oDI5uTxK
fw5BV0/n46nGXqsHiEBuBMOKLMYDDlM8fme+rGQVv7vJDtolfVHH7iX6TR21YaNe
mLegt9TP0NxiCXuGYcy6MyXO+8ZpYr4TXbDXgMXk+eybch/o5dx54GAEkVMgWgrp
2jMclfJtnR6GZg+8SPD2lBBIztRNN3733LXKcqg1fOQ1fUYpKO5Tm3EGCJK70EWK
kwzCnuXXLlmWCMAXrrspjklelIbZx3hmaZ7ghD1aWL+nr0Hpa68sZR1dtSje2Nke
3KhYj6ukF6G47DA/btfAATElS/4FKZpjN1TbjHLODEIM9nkKczajgZ2rutqZ0B5o
01rHyMpxEVzHxRF8z5tJwvUXB8IA9VRe8elhnr4vXYYJ7SHAhc/pOCU7SYIow/mn
zOB79RAqx+dscfw3X0azavQbeCTIAnMEXIRRT7K0TiO4YOOn4Nzg7V+x0eZg2wQE
kG6XA7nX/sA00E+DMZBdhsRx5U8z9kWiErkQCmzoNBxe9rw8Z3tsn2g8b7kQjhqj
9K1lcsLRTTxbcg/sdyR+c7dQOLh1Kivbdv2XBp/C/kzD
=kKLs
-----END PGP MESSAGE-----

<span style="color:#2aa198;">--cccccccccccc</span>
</div>
<h3 id="E" class="mail-example">
Email E: 
</h3>
alternative text/html message with embedded header, encrypted+signed 
<pre>
└┬╴multipart/encrypted 2435 bytes
 ├─╴application/pgp-encrypted 10 bytes
 └─╴application/octet-stream 1967 bytes</pre>
<div class="code-block"><span style="color:#dc322f;">Subject:</span> Memory Hole Encrypted Message
<span style="color:#268bd2;">Message-ID:</span> E@memoryhole.example
<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/encrypted; protocol="application/pgp-encrypted";
 boundary="cccccccccccc"

<span style="color:#2aa198;">--cccccccccccc</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> application/pgp-encrypted

<span style="color:#268bd2;">Version:</span> 1
<span style="color:#2aa198;">--cccccccccccc</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> application/octet-stream

-----BEGIN PGP MESSAGE-----

hQEMA5I+4kg3RI5lAQf+LnrIMGPIsII6HlWpzMXJkuK2QPXJXk7GqWEQKPJ84w8q
+uY6zcKaatXzohea2qGQ5vXRiyVRHfwoxIb2E6Bsr7OWVhjNmAgfdDSllvzRfhKl
BWRJykhlmdb6Q8kEya2P6DUqGQu0YV+76ETajZwCgB0XCnXmx8kvXvwsNYe4SVY4
KNk/5zhjoUbPQhhZiqtOBdKOUVnGiNnUePqsd0MKMEkHRM/Dpr5tDMRGDrlPZlJn
PlKiI4M/pvFxfjF815YB3e1NYwpOSMwbPa/L2QNqgnVGkdtB3qUGLRspL4cf/UHU
rhqSdm7rxOkTGtLs++GJdC7/DQXJDNsoRtDjfyFfp4UBDANLbJvEVDbKBwEIAIHk
2ZKv7X+JCrlwJ181LzxP+lZIuULI0Ph7jPc2PdxiBRI7ECzaBYn603FB6B1gC4p4
vLXkU7BQbXi7lhju+BKhWX8Krn0Diupx0VxV47v9Ws0GyGRUyan0UMY+Pem8MP8I
8nWaMV1l8y09dweFwww4wC9YzeKT6RhmPp2Llb963adqfIsfGltJKM+KSl/8v+Dl
/oOlThaiTYvLm7vrzQsDcLtBIz1pWjvymF+M2x7ffG3pspSLb4265tiG45TLwy1J
Gb9SJOGhsRl2tzjRCftFEx3eoGnhjkMYEvPd/ZtakpmTwP0E3vtpKRuHdbkNDtbb
4YiVETAxF80ynf0hZYPS6QHXVk4zwrWKAhHNAnSIpSP3q9o4bqXtZ+rcM/HMVGob
yIzUC6qRJQan0t+/ib9RgSz3gxMsMCjR1ft8BL+rIsnVfpK8harx/gde4KrYweb8
Hnw7U7RuP9/uF2jpDpoauk/MkMYehhnqJhtSEKYn3vTyDkkRzbaCZE69wUNe6Cql
2OtGYjUDwzjykZLCyoBSUPybhyewGW2aR0oDz5CB4n7tOgrCh/uGpHiMtkFgnD5u
bBMF9o0DPLokngqMslj5TBmIPmaghcgqezBRoYOUaRS7WvAyuO7eywuaP9wZqR8C
DDf6eOgnQOdGAxJTAEw8PbmvabeboqcKBFTZXh4dQ9WGYtBBqmeZQj64adUoTBYt
hv1ELwdnfxrDX2piP6cJUnB861HAqxMDoE/UA9Zebj2CrM5mnJGshP2pgWnM+3T+
ZW+OsLZlehBN9ncjdZ0nDbUBu54GI79zuqyx8cwAjbo98HuxKjoFLNZs3men0uWu
MLMSfn02oJRrpFSwDtANmz5LtheOW645K8pctJnIRZFASK+aE99mt9aZ3hKCK3gM
k36Fh7fI5accPXRsKgoLLCQpTmXAZih7eNsSpO7LX5c6U6JlYGssZyPCMDWfg/jz
/PWvAhlimQztifaO313pl0rB35DoHjQFx02RV858uWAA3Ke5pGhmzADx39uXEGuH
wJzcb7FCrSA8/Vxn5BC1zycktRRZ1QRjMt7AC8hz5NTgTIx8YcY23D/AEYpvHv1X
Y72TKq8c7qoQPGkGVjTFn8iaPZbsY+AdRA5Kd9mDV6P3rYcGzzHrr9e8DNfDR398
Yc38gSjkcpPnTXnpMUc1/Ir/VaQeFwciqk8DqNGvWCiSiaDlUVZelxMQQNZZ11kZ
rOSrWs1QQonrexP5jstnDXUS5hRx6wORb+zgtAxZ8G1uzo2MdwtX+i0Gn82dEULm
dadEHHfxCFcQ+PrrN3vw9M9ehpqrXUMHr0ZJxnRpi22DZkNbNH1THgjQLnjwxHEq
ffC/r6K0ZcNpRic82ROqDpaZVv653GoXJDcnTMUTJlkEFUjmaIA8mGBBmPUJqT1u
pex834UgiyY6DBNKIErXFr928SmNJtyap7Si07ZJYh26ShS2l1Z2pgEGhGvud/Nv
q+g8GsnBqatYRbfXnw8=
=0GtG
-----END PGP MESSAGE-----

<span style="color:#2aa198;">--cccccccccccc</span>
</div>
<h3 id="F" class="mail-example">
Email F: 
</h3>
headers in top-level MIME object: signed plaintext email 
<pre>
This message demonstrates including the memoryhole headers inside the
top-level MIME object. The signed Subject and From are headers of the
text/plain part, rather than having their own rfc822-headers part.

└┬╴multipart/signed 1278 bytes
 ├─╴text/plain 207 bytes
 └─╴application/pgp-signature 455 bytes</pre>
<div class="code-block"><span style="color:#dc322f;">Subject:</span> headers in top-level MIME object: signed plaintext email
<span style="color:#268bd2;">Message-ID:</span> F@memoryhole.example
<span style="color:#268bd2;">Date:</span> Wed, 29 Jul 2015 09:31:44 +0100
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/signed; micalg="pgp-sha256";
 protocol="application/pgp-signature"; boundary="bbbbbbbbbbbb"

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/plain; boundary="aaaaaaaaaaaa"
<span style="color:#dc322f;">Subject:</span> headers in top-level MIME object: signed plaintext email
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>

This message demonstrates including the memoryhole headers inside the
top-level MIME object. The signed Subject and From are headers of the
text/plain part, rather than having their own rfc822-headers part.

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAABCAAGBQJVugJLAAoJEBX7TryOLWy3GkYH/0lhwThqZhq+NaX83gTMpptA
OacmH9KDKjmejmjDIxDHtW5EEQd2EFd3VDCEqaCBCB7EGnX6MveaOvFhtu1eOoD9
+4WIoKt8K7JKo46TYotnWVB5A6DH67Ic/UIEyoGXz9cZSHfza7olT9KoYUbTqUjf
QGfU9y9w/LsG4Z9yEskfPg2nRlMmWsLlDJTGX7pZPy/kluVJA7vpKsSbvQurVW0m
0rGCv1jUbEyS6TwIuwSfHYG2uaOwGB8xdHlox5iA6nWOuQvk4IrgIn+mDbAVYEVr
aXoCV7MGFGIXBSMGR5QDvTnfHyvh12lUpadplV/xMLfmAoYah8ARbOLguVawwcM=
=amCm
-----END PGP SIGNATURE-----

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
</div>
<h3 id="G" class="mail-example">
Email G: 
</h3>
headers in top-level MIME object: signed multipart email 
<pre>
This message demonstrates including the memoryhole headers inside the
top-level MIME object. The signed Subject and From are headers of the
multipart/alternative part, rather than having their own
rfc822-headers part.

└┬╴multipart/signed 1638 bytes
 ├┬╴multipart/alternative 738 bytes
 │├─╴text/plain 218 bytes
 │└─╴text/html 202 bytes
 └─╴application/pgp-signature 455 bytes</pre>
<div class="code-block"><span style="color:#dc322f;">Subject:</span> headers in top-level MIME object: signed multipart email
<span style="color:#268bd2;">Message-ID:</span> G@memoryhole.example
<span style="color:#268bd2;">Date:</span> Wed, 29 Jul 2015 09:31:44 +0100
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/signed; micalg="pgp-sha256";
 protocol="application/pgp-signature"; boundary="bbbbbbbbbbbb"

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/alternative; boundary="aaaaaaaaaaaa"
<span style="color:#dc322f;">Subject:</span> headers in top-level MIME object: signed multipart email
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/plain

This message demonstrates including the memoryhole headers inside the
top-level MIME object. The signed Subject and From are headers of the
multipart/alternative part, rather than having their own
rfc822-headers part.

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/html

<html>
<head>
<title>titles are usually unrendered</title>
</head>
<body>
<p>This is a test<br/>message on multiple lines</p>
<p>with a silly bit more.</p>
<hr/>
<p>and a .sig here.</p>
</body>
</html>

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAABCAAGBQJVugJLAAoJEBX7TryOLWy378cIAJcM+V2SWEUItmYKQ26NzIuA
QHZWfmdHYiGC6NB4JT6L4G9qQvcjMhfbDOF6kDD3kKyfkLJ8eb8kzo89U6BSAS7c
6UGW0YdZn0r2STSZA86TgHnlWVIHX9wff6jZWoc40EVMfY4b96Lm5q3VVYR7cNcO
rvDt1FOFQtu+3yjnIYxCLKDD/3qHfrr39lq+kJe9Uz0vMwIxc7HgQRlfFi9W23aB
vetrktPHhvoAvVo0VFGLcOzfWDH3CK5tPkxO4UjW2XsGcv6lmQRm0f1CVVlHUCjm
94dYZer+szkrtB5sTSbhj7Is9xenjppkCNUQz48BZNg6tVTXi+a1Rc7SsQdP5B0=
=m6Y4
-----END PGP SIGNATURE-----

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
</div>
<h3 id="H" class="mail-example">
Email H: 
</h3>
headers in top-level MIME: tampered subject and from 
<pre>
This email demonstrates including the memoryhole headers inside the
top-level MIME object. The signed Subject and From are headers of the
text/plain part, rather than having their own rfc822-headers part.

This email has been tampered with. It was originally sent by Winston,
who signed the body (including the memoryhole headers). Eve has
fiddled with the From and Subject headers in-flight.

└┬╴multipart/signed 1452 bytes
 ├─╴text/plain 393 bytes
 └─╴application/pgp-signature 455 bytes</pre>
<div class="code-block"><span style="color:#dc322f;">Subject:</span> headers in top-level MIME: tampered subject and from
<span style="color:#268bd2;">Message-ID:</span> H@memoryhole.example
<span style="color:#268bd2;">Date:</span> Wed, 29 Jul 2015 09:31:44 +0100
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#cb4b16;">From:</span> Eve <eve@evilcorp.com>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/signed; micalg="pgp-sha256";
 protocol="application/pgp-signature"; boundary="bbbbbbbbbbbb"

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> text/plain; boundary="aaaaaaaaaaaa"
<span style="color:#dc322f;">Subject:</span> headers in top-level MIME: subject restored to original
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>

This email demonstrates including the memoryhole headers inside the
top-level MIME object. The signed Subject and From are headers of the
text/plain part, rather than having their own rfc822-headers part.

This email has been tampered with. It was originally sent by Winston,
who signed the body (including the memoryhole headers). Eve has
fiddled with the From and Subject headers in-flight.

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAABCAAGBQJVugJLAAoJEBX7TryOLWy38eMIAJINOV/MW44j3d0CVnNjAeRS
AjLun5K0sPt3z8DqYISmU77ShZGPW3bhkOib6nOA7nQrJ6TzO4/Yz6ylW23ekjbZ
MZpBcHwpLvyaMYzwy3KYWMGPPQaegBp0sW0Z5auwudc/h1PqgCGLucw2WQkv1rbU
/nS9FRkWV6mz6yWCgWkpkW3ln9JzFhcx2w5Ut6bbs0SVASqVzDLDoGhJidq6q6TL
MhCsqABuz8OyNNlkEXl8lvnhelhpyBFh2MeTgMt/ShJTiR5ofyUoP+IsO43Z7fDL
Z9D0BuTRaLNG2jSatbYDNZ8TZWJp2lxvFdooVzQmCpPjvwtJN+kiHMWdJgPF3XU=
=ADYv
-----END PGP SIGNATURE-----

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
</div>

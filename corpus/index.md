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

iQEcBAABCAAGBQJVugDCAAoJEBX7TryOLWy3vWAH/RbzLnGAeawSICX4ThKBnfqk
8sTAdEIxGdbOXExQuPRlt6R6wqcc7PJSYa1P7RGTodHTztNA64LbdEqPITUpY7mQ
x2waUaDVKfpuB9xl+eOVExoRmj4u653dZIwba2ozEiHBZ96wQBcOImHMN1w1yLPO
PTxqILLwh8sj3XLDWUH7UWqvA7tqzuV2/hCI6t733tJR1kxhuz3Z7i5w1O7g6xGN
Z7RvZIW70QS8fDJJ+AgSeykSNDZSzoKzo00ynA2Kac7YJjdCi2bhWXrN+fPRAKax
YTHsPTGJwDPxFQBUyEEMJpY03uMbep1lvgBCfKqiabOwucx2/B2u1kwTYVSNfrU=
=54br
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

iQEcBAABCAAGBQJVugDCAAoJEBX7TryOLWy3BIIH/3tt5rmZYHgqnCpnbe9PbaKk
NUU4zsTi1DNM9ZCqumd8gn6oQXkLP4Qk7H2yJYUiEF3+lYya5y5wIpXVewkmzoFr
APhGyCSUupeK2vLpbJttXybZrVB1AhUyWdEdiTsjHwJJ4l97IoJ5uo2tnR4lloEj
zvVgNfv4KrrThmSNNeKvz4qA6pDmqjz09AIRjx/OmNhpEyAgKxAn5mc4qsKwOoE2
51OW6nJFsu6yscDve5/NNDaDZpsoCTzU0Lu/Mw97G3oUVwYECLmy2rH6fL/kJNhB
/u6anGVqvXYQjrsZmDXyfaZrlVtaX1cVOEreCOE+k0joXzn1Tig8la2YzDjdtZk=
=Vqt6
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

hQEMA5I+4kg3RI5lAQf/b3vrTkQSI7dExuNeasTWpk4Mi8wXdiW9OD6mKe9n05Dq
Y/7Cnp4dZ098UTpvZapVEmmDOtCsU54fgJutv21FP0kAmgyKYxjvg7RhSfNYChNM
dt5bbjrZqVh6OrhJMDWNhor/4JwK9r+4aA+x1Ew89kXpvyMS0x6e+ienhCqEM7ge
mcc2OwPnEEz/CZQsFcQWHVhSO2RLpZOyPAjMljF1AfDTaXUpp/bciL9yxWobFc7b
N1Jfrt4u/+jVy78Li5AdSGirqny9/4DWoVoTmGg1NoMLoXEiVefcwM0Cn5DKNuee
Bk5DqCFJchZOe1qDkWDh7oz64qdS5sMHvgneRRJDSIUBDANLbJvEVDbKBwEIAIxo
OH8x6F630ZnVfvcKmpu5RlnsFoldjW+DzrSFZXR6V57KcvfMnPFBsHzWMk+cwCdy
XLqUD9DtCMfuQcjNZn9pOOIysXzOFJKrlZ1757Dv+J53qlksWdZfNdd+Td+RSQ7x
vIHdLpfh5lOHYfRW9SBiD33Wa+ee8hlJSWqUz0iZ3IzgFwLlfiswTWzWs9jY7mRN
5tbSOF8ocMZL7cflSti7BrHdf/q3kxrTxv8cZIPqgcf1Mg78cJL9WnNthB7nj9vR
ylm21RgARqmcQWPawTuWsQ9yGd551oTC2NwTBjyKW/YVtnEJl3+ydEwc7VxWo8Yv
2s14FaJQeh73CbpQ2DjSwTABNqUrfM7VhhiVRqhegG0bvWsVxMYNbkJA8+0j8UUL
8PVHh6Ka9n6XpA/lp1mZjNUuMa63vdR/gYFXdkeq32bmi7KzpNRUTogzddx55dQT
YY52PdX+k1kqnCjP5veASyqVJI9lf34qHb6V3UJqeui3Gm+N955vVFYGwvkXYi8H
FGn4a9eRxbIA0VnJo2VoGwkORIfgnjw+s8d1c4cVM+w5VjzKQjyAp9fsXnVMqRU/
jfiwF8C477rSG1E8YQ03/PThlXol/T6FYIYo4gztwQ44YXbeiFDgZnK8ymqCWSfd
l8plVlKd3KKY0lUr2uZycRwy3PSZhu2MMFaj5xnWSO4u5/rcfJhZDJORFCbfn7JJ
SPwNO46BVyHUmAfuSxDgMYwmTkWHWzl7oFFOYFmXtIge5JL7SNHUK3reXt2NYyzb
NVVlq84JPcJKMjpagA1wSHYS5fNK60tW8B2jepUeBYaqjIzMcOP5UX5ENyBfv6Ro
qEm5l5dlZLGim5QRjSgrAOFMphnwRgBYzSS57y8SCepmFzh4sv4Z0eIhQt80q5zi
jS38yGbEQpSMOSP6NA4q5e0uTEcrij9bxTB1IwyKnWL1KKT5Kl5jDKClcrdSkAs0
ha7oFaWvJqbscXB6duib38Ov1aaWhQaQeR5XKNAfxJCX
=7jWc
-----END PGP MESSAGE-----

<span style="color:#2aa198;">--cccccccccccc</span>
</div>
<h3 id="E" class="mail-example">
Email E: 
</h3>
alternative text/html message with embedded header, encrypted+signed 
<pre>
└┬╴multipart/encrypted 2439 bytes
 ├─╴application/pgp-encrypted 10 bytes
 └─╴application/octet-stream 1971 bytes</pre>
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

hQEMA5I+4kg3RI5lAQf9ESdE3t5bQt8Rm7DGqI/cFiydFD3N/qAkEGLHeDpW/nuK
j4G8jYacwBM649zstUaISTN0XbjP3wzUkBhqgh0m0GESVKkhBJG98tch1KyGyV/Z
LsmF2dhCAAalwHXDFirAvu9vKzHHWL8EgPJ5Byhiffx2Y+x7yZ/OfaQgOKHXJyrU
iDrpajdqKyb9tiPeTTvvsweECOYXqYK9Y0dlUlB+szOYabsWooj+vGfTnfzD+3AF
34BwUa2PLNnw46MJ3lvlX4RRr+4YX+O1DrRnKRs+Uv3CM7hGwqI+n+gdP7xjsqvI
w0D2QbgmZ7+jvQg50bwmp622No9NoInn/v0o4OlejoUBDANLbJvEVDbKBwEH/R0f
8/YpLyUX9qaELu3LCxyjOsIps9mwu5C/2khhtQyP+ksXTHgmAIjBcETG8xnbQmvC
1bcmRsteqS1oBN9bm1c2VXFT2qdkVSlz7DBJKXgGCXZVdA+cYouEXNBs26d5WTdm
FAyq0eQN4ngCEh8ckS4g+2hNyv2nWObmNrIQlJH+3+DwGCLQdWvw5NEbOFAyB5G7
iQzZIZv0LmIsjDnj1eZ/FunKZQEEVflIFmE/ZrEjkyddKvm3LEeDzWnrQIZrunN+
olJUpe26ArnuojDs6FXPpMw0bs5yPHya8TmMdQGQobLK1aTVrPIYiiOjEArLb0iN
7chrJAqDCXk30Duv+2PS6QFkstzIJJE4StHHt6WoUAVgJgqUQWjFtjcxv82Davqg
Qqr9Ib1gFaDWRec0Ol++X6pqQqJFPedKXjOgfU/Vb5i98M6T/X9+3SezHaAHMyme
PNCrtWlF+a3iN9ZrdnWoPqSZXV5Kmp7QfzAdp50QdWX5u4Vi/QD8vfjA5jQObISo
s5g7ab+ii36F7wdc/cYvwrWoj+6o0ckk0w9/hDbuJ9xBtVANmSXJiccIzJGXCSuN
WwjiBbpMglZJDYnQyTW/vimltkRzZqXAjI6PPZ/zyVxNFfaHHm1v0w6J6Cp0sevN
ISxENCfDehxG6KxyUbRUf0hzrisLkmoV7Tsu2wDiZE31upYd80rw6xHDac1ieP+J
H1da9padtN6l4NZMWsI/rmzy49SoYx0lFSN1AVrV4uF6wtOZBa9E0sU+/JLRO++B
oGutl9/dp9A8tnTs5jAyVXbmKWpyZDJv314tK461UwGAe3x307Mfj/6mIcbGPIbr
ZxCG/94VWKlSBpftTZwKAmk1ZPL1Df+1WFf7YMQN69iAIn9UnvI0ZCu5lnum3SS4
nIA09yniaq8426oNWa9yJWCacenc/4tyiP1EUIdCcoYbHnoSeclunYEDkuJ45EzF
aik5OGizKgvrIhjT5CoIYJb3b4GeL5h+KfTZYt+RfkdP2yklx2kiIfu311bcNQdU
wJ4woX+019w6dHQ9lnyhYqg9MLEr4ytKnt50C5QmyW+Ir/dF2Nf1LkZhlZxmtysA
j3oJsNd7ZS5WImjGNaSdChflqodL40AhWaNQrGGfbwn/zL/wHt/rSokCRl0HxuKT
lYRnCt7CnCvkolnd8DbovhRmjRCdKd2bs7GcRQbCzwue1zTxVOWVon55wTVl356A
j0tx5J5XMjgwL0t0YtjeRSOrZo0XBJUoCFRrI9cPMOI/1WLcCYFBb3ToRE7LSXTr
P1aLfjTMS42BnGgqvREc4nuDvWM56Ys+8Tkpvf1P3MVa+Gvu55+NQqN4icIiGD2R
olQa4lbOyM3fGFi1nRfJLi1N84RbWpGLv1YBFeQ7PTtaL5wIAX4oOZqkHhlZ6q+Q
gZmYEJsrje9FXDkoBwBtJfamM9Z778kzp01fkxJv7AIuIoQMGAmbEwcpy797GGFJ
oiNBd9rcQjBH+A13pGC2pg==
=qJ3C
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

iQEcBAABCAAGBQJVugDCAAoJEBX7TryOLWy3EEwIAIxNO1LOPDv+JE6oidpMOIPS
E40GxjOFuzNNxTHFHrm9zE1tQGW9SMveGJeNIMW8U3SDscwAmi0DgcIrMsi2sxVA
yWAmJZx41aFF7MskyD4pBIGLwbJMCDL4+Dr7vm9C/lfLFdg/8OltKrQMs3BU2Em5
opBlpweZYv4szfyLTFjiir9PCcNl14lwsOkNy5kZuJFRJF5jLg4fakpFBLuepP8c
ycL8v9+GG6Z1WGWFLe6wDLa6XGAcRYIMQ9zhW2oUtBW4ZA+jI6c3DRD/ZenrqUQW
Ko7TJlkJcar/1GOaeq88b+rKEIy8p2vxIqXE/l+AHyEkr7fsFuqqiu5lJ2wg7JM=
=tN0m
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

iQEcBAABCAAGBQJVugDCAAoJEBX7TryOLWy3IS4IAJiN6007UHOJH1RBRJp+S2ce
aHFRwZX8nB/nQpMJw9WGanyhk9JWPBGM/Hcx5Hsnl0VPz+9GEgBACddcOvVsr6pe
JNOTN/cKncb95kslQWu6mlwoynz+aQFqAgeK1F/JGwKqr2VJ9ve6S+xA+39pDpOf
z5CRJLOteRNs1cgCssOxnBGFTEY9X8va3RJ6QQxld6WVnRyrDQY6jEhc6VNYUtZX
ufSG6sEef9v90UfJHHfTSKZLztYd1zfphgu0/4zMIaXsPdpPCS63V1PJYC1rxNMZ
sXur2mi64l9JCLmn3XGI85ER8W32JpzMksGTpqCEVkpzFYI1QPbzJQOxV29IONI=
=aG/b
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

iQEcBAABCAAGBQJVugDCAAoJEBX7TryOLWy3mzcIAIdtPMfQzPywAD7JeuuFDntW
u34SBqmDK17jR6QZepZDMxLjmLK2q9qZ+rnj6p6zkDQoe6LYbFJ2H8/mjq9rGrEN
X6+xl0hctpxzq0LYJ0Wz9RSv5dsuMGKdYbEsTkLreXHfwThUxiQOFTz1ZJJEOJot
jOw32UsBHSVIs0uiC0MsS5qRxU7OcmS0gUXiwFEf/EXhxBy54aWrpUDsdxTG+VTi
AVQWj9O9RQ8Z0Ll8Sh6IKJwdV/PsYPcynV/guz5h9v+Su22J6wroCSv8TRjU0tUI
F6p0z/TrcmUzrAclmmEEkC6YHmo3Arsb6j/ytAiNTnK6YcSd9tauBsFGM/A0WGw=
=P7Mu
-----END PGP SIGNATURE-----

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
</div>

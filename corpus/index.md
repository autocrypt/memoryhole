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
└┬╴multipart/signed 1711 bytes (Subject: alternative text/html message with embedded header, signed)
 ├┬╴multipart/mixed 827 bytes
 │├─╴text/rfc822-headers attachment 205 bytes
 │└┬╴multipart/alternative 450 bytes
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
<span style="color:#268bd2;">Content-Type:</span> multipart/mixed; boundary="bbbbbbbbbbbb"

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">Content-Type:</span> text/rfc822-headers
<span style="color:#268bd2;">Content-Disposition:</span> attachment

<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#dc322f;">Subject:</span> alternative text/html message with embedded header, signed
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#268bd2;">Message-ID:</span> A@memoryhole.example

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">Content-Type:</span> multipart/alternative; boundary="aaaaaaaaaaaa"

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
<span style="color:#268bd2;">Content-Type:</span> text/plain

This is a test
message on multiple lines

with a silly bit more.
-- 
and a .sig here.

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
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
<span style="color:#268bd2;">Content-Type:</span> application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAABCAAGBQJVv1AkAAoJEBX7TryOLWy3G2UH/jj8HCYfzjf7g/+Xzl7pcTtW
fLh0wbdfeoxg8+hKa7AA+IhYXupQ9tNWVws9ECKunKMy8MGIPnTRjfDv9qiz4Gmz
XI/U3K51NP4vTyv2oAf9gig27Y4glsw/krKvDCshSaf9N3Lk04JQ6vVUBRZ2kIrN
RKfToHcUfxaZiZvbEy0MsT5CNmvMLdGEmukWUoFmOmOxQqBp5+omxNcugnwFpGyK
SlyJxaH0fniMDiIv983cLpXsp2WVmbYddDxZDAqr4HpTIXbQ/dPNEOp1QTi+86Dd
SO7nYkDUNIR2JrcexOUCZnV0FryG2dsGRAgL9Wp6T6CPP3Q8uSnOI22P2mtaD/M=
=3Bmv
-----END PGP SIGNATURE-----

<span style="color:#2aa198;">--cccccccccccc</span>
</div>
<h3 id="B" class="mail-example">
Email B: 
</h3>
alternative text/html message with embedded header, unsigned 
<pre>
└┬╴multipart/mixed 1036 bytes (Subject: alternative text/html message with embedded header, unsigned)
 ├─╴text/rfc822-headers attachment 207 bytes
 └┬╴multipart/alternative 450 bytes
  ├─╴text/plain 86 bytes
  └─╴text/html 202 bytes</pre>
<div class="code-block"><span style="color:#dc322f;">Subject:</span> alternative text/html message with embedded header, unsigned
<span style="color:#268bd2;">Message-ID:</span> B@memoryhole.example
<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#268bd2;">Content-Type:</span> multipart/mixed; boundary="bbbbbbbbbbbb"

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">Content-Type:</span> text/rfc822-headers
<span style="color:#268bd2;">Content-Disposition:</span> attachment

<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#dc322f;">Subject:</span> alternative text/html message with embedded header, unsigned
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#268bd2;">Message-ID:</span> B@memoryhole.example

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">Content-Type:</span> multipart/alternative; boundary="aaaaaaaaaaaa"

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
<span style="color:#268bd2;">Content-Type:</span> text/plain

This is a test
message on multiple lines

with a silly bit more.
-- 
and a .sig here.

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
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
└┬╴multipart/signed 1706 bytes (Subject: the subject has been tampered!)
 ├┬╴multipart/mixed 850 bytes
 │├─╴text/rfc822-headers attachment 228 bytes
 │└┬╴multipart/alternative 450 bytes
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
<span style="color:#268bd2;">Content-Type:</span> multipart/mixed; boundary="bbbbbbbbbbbb"

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">Content-Type:</span> text/rfc822-headers
<span style="color:#268bd2;">Content-Disposition:</span> attachment

<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#dc322f;">Subject:</span> alternative text/html message with embedded header, signed, with Subject tampered
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#268bd2;">Message-ID:</span> C@memoryhole.example

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">Content-Type:</span> multipart/alternative; boundary="aaaaaaaaaaaa"

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
<span style="color:#268bd2;">Content-Type:</span> text/plain

This is a test
message on multiple lines

with a silly bit more.
-- 
and a .sig here.

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
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
<span style="color:#268bd2;">Content-Type:</span> application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAABCAAGBQJVv1AlAAoJEBX7TryOLWy3KDEH/2AZoqbni9ITq0klVnWPtMfE
u9ZG2ynGIGYEhgbn/vqaDTdyx8NDqucDfVupWtbmjVUOfbmI9kvMwXuLyCJ4Ng14
9gTtC1XngUXH2MNwrxa0blTnIPX1YDQwmTmE59V0v3tcI9QKDzM95HRX1RciWSMk
gIvOU/W2yUXkvV6BjkOFnhY5X0QP+uBa8Dtf5saEOHRsxNzD2r68fg7TjteF7FFv
K3hegtj6hVx3cRDgxbZPc48zQkpejksDmBB83jPlDrVX4y1kj4btqfg52M77TROG
gadJ16Q4FMgvlXfuB80RgK7bGCIUDnQlGc/wxBifDrGyIGQXUpePD3uPgzinTM8=
=X2AM
-----END PGP SIGNATURE-----

<span style="color:#2aa198;">--cccccccccccc</span>
</div>
<h3 id="D" class="mail-example">
Email D: 
</h3>
alternative text/html message with embedded header, encrypted+unsigned 
<pre>
└┬╴multipart/encrypted 2496 bytes (Subject: Memory Hole Encrypted Message)
 ├─╴application/pgp-encrypted 10 bytes
 └─╴application/octet-stream 2064 bytes</pre>
<div class="code-block"><span style="color:#dc322f;">Subject:</span> Memory Hole Encrypted Message
<span style="color:#268bd2;">Message-ID:</span> D@memoryhole.example
<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/encrypted; protocol="application/pgp-encrypted";
 boundary="cccccccccccc"

<span style="color:#2aa198;">--cccccccccccc</span>
<span style="color:#268bd2;">Content-Type:</span> application/pgp-encrypted

<span style="color:#268bd2;">Version:</span> 1
<span style="color:#2aa198;">--cccccccccccc</span>
<span style="color:#268bd2;">Content-Type:</span> application/octet-stream

-----BEGIN PGP MESSAGE-----

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
=zFDo
-----END PGP MESSAGE-----

<span style="color:#2aa198;">--cccccccccccc</span>
</div>
<h3 id="E" class="mail-example">
Email E: 
</h3>
alternative text/html message with embedded header, encrypted+signed 
<pre>
└┬╴multipart/encrypted 2903 bytes (Subject: Memory Hole Encrypted Message)
 ├─╴application/pgp-encrypted 10 bytes
 └─╴application/octet-stream 2471 bytes</pre>
<div class="code-block"><span style="color:#dc322f;">Subject:</span> Memory Hole Encrypted Message
<span style="color:#268bd2;">Message-ID:</span> E@memoryhole.example
<span style="color:#268bd2;">Date:</span> Thu, 16 Jul 2015 11:44:44 +0200
<span style="color:#859900;">To:</span> Julia <julia@example.org>
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>
<span style="color:#268bd2;">MIME-Version:</span> 1.0
<span style="color:#268bd2;">Content-Type:</span> multipart/encrypted; protocol="application/pgp-encrypted";
 boundary="cccccccccccc"

<span style="color:#2aa198;">--cccccccccccc</span>
<span style="color:#268bd2;">Content-Type:</span> application/pgp-encrypted

<span style="color:#268bd2;">Version:</span> 1
<span style="color:#2aa198;">--cccccccccccc</span>
<span style="color:#268bd2;">Content-Type:</span> application/octet-stream

-----BEGIN PGP MESSAGE-----

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
WEm4
=8kjs
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

└┬╴multipart/signed 1242 bytes (Subject: headers in top-level MIME object: signed plaintext email)
 ├─╴text/plain 207 bytes (Subject: headers in top-level MIME object: signed plaintext email)
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
<span style="color:#268bd2;">Content-Type:</span> text/plain; boundary="aaaaaaaaaaaa"
<span style="color:#dc322f;">Subject:</span> headers in top-level MIME object: signed plaintext email
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>

This message demonstrates including the memoryhole headers inside the
top-level MIME object. The signed Subject and From are headers of the
text/plain part, rather than having their own rfc822-headers part.

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
<span style="color:#268bd2;">Content-Type:</span> application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAABCAAGBQJVv1AlAAoJEBX7TryOLWy3VvIIAIcw8p+Nsv0YGORvuz+wubBb
/7vy9DNw+RN9pL63dDHz3NKP5yc8LIL0rPkOn9wh05GU4jrSGn6iGCOa6ubhY0sF
GAYpvT810hwN/qPMoTDxEetv/pZbkuOI1uiK3AF9lE0dj0oNAecERZqlh8zLJbvs
rRXS9FwXxBvu8XXYSq5+V18SZ0YoZO/BdI9/NT/LTgZ6PZ6qy3YcvJ433NIeUBeK
jkCVyUQFrVxlSrUPDryF5LqirAYdf3EjWarIGxvwXNkKfzTUUKD7r4zLvbPe81hm
ZVn/i/r38TUB8JR8GMxWz5/B0MOZBW1shAksErAvy4XXrXNRaahLHmRXg1otLEU=
=vLOX
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

└┬╴multipart/signed 1566 bytes (Subject: headers in top-level MIME object: signed multipart email)
 ├┬╴multipart/alternative 684 bytes (Subject: headers in top-level MIME object: signed multipart email)
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
<span style="color:#268bd2;">Content-Type:</span> multipart/alternative; boundary="aaaaaaaaaaaa"
<span style="color:#dc322f;">Subject:</span> headers in top-level MIME object: signed multipart email
<span style="color:#cb4b16;">From:</span> Winston <winston@example.net>

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
<span style="color:#268bd2;">Content-Type:</span> text/plain

This message demonstrates including the memoryhole headers inside the
top-level MIME object. The signed Subject and From are headers of the
multipart/alternative part, rather than having their own
rfc822-headers part.

<span style="color:#2aa198;">--aaaaaaaaaaaa</span>
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
<span style="color:#268bd2;">Content-Type:</span> application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAABCAAGBQJVv1AlAAoJEBX7TryOLWy3uIMIAINYRcblN4PXmoLmO8JZfXzB
afKGkrxAkyFgRb2hs65OJgRb2UZrDqWtiiGxIcW6/JO/g/A3so3dlQFx0lSTxWMe
YCcFqoPtWphdTuenKZIE3KqQmKgVq7sJz9cNpr6JAMvG0g8S/OdO+mFjPe+UUJJd
i4z0kJkatnzfzY9R88R+PONxLNLv4gAP1omPFmLAwaZ9gP6x6nCKm4VXGQp3PYQL
FlDrBnaIotjp4Fr55gZcT1wSxWO1/jh+yNm8uGEQABSnXezXX6c98YO372QGgVlQ
7iqjEO7YAPqQEoAupeHZgFl2Ddh4eQtuiw+BEItphtC+uRNPniS/BeBB+dppUd0=
=IFof
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

└┬╴multipart/signed 1416 bytes (Subject: headers in top-level MIME: tampered subject and from)
 ├─╴text/plain 393 bytes (Subject: headers in top-level MIME: subject restored to original)
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
<span style="color:#268bd2;">Content-Type:</span> application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAABCAAGBQJVv1AmAAoJEBX7TryOLWy3KI8H/3kcjcx1Oc7nL8YIk9U+NLer
gkvwLSTJIgAeN0hFLexkaZw/b2yVyD4SrAua10nO+88vWuP2LLn0BZ+7+ZSioslk
HwijVHijjBqlImkzWfmO5CwEDiVSTup3836x0zgwCXXvhRnVMtb0pah2QI0+4wuQ
m62oHI+eBz2FfPtdg7v8KT59l5dnn5oxX4nBZEL01YcBT791/mFZiORrOBGhtLU/
4/qlOy17MoEqMmdur1UTb9LvZsv8+N1HtTLOLb4PLRNzbKof2/Jlf7drCiojn9nK
lCF1cd/vLG7M/GBr4p+czePjEdy4YHIiNWhM1DMGR2bkZsFFq/K51/SZYIUi5Xs=
=/qbi
-----END PGP SIGNATURE-----

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
</div>

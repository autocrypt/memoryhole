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

iQEcBAABCAAGBQJVuhhvAAoJEBX7TryOLWy3ADcH/RsLkPLgIYInYLjd81Mulze9
oqxYsk/VrZi6Ru1ci6PMZHjzLb0XFIyRSdElZOtMqXdDsxH/akuopJrOeDTL1k5L
tTjuD3yBeKmIDiushft3Ra1qd8/c/Rmc1pAtUHSYB4et2GjN6mJWi5PAvoJGh7C4
vlxkIsB3lyDqEa8mzjtGcEf5aTQoY67nJL7XglrLbsHkmxh1vc1+pJTVJ3KFIqNb
ZUnAxvGlUhn73+XgoKQ4Ko2UmcC7C2Gc72LdBp2dH17+CtEiBeosSodGd5OoA130
+Lj9QvnZD5MY4OhZ5VkyGoxxXUfbhdkZZdp0np56ovSvby6EYFJHPnRB708sQYg=
=ived
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

iQEcBAABCAAGBQJVuhhvAAoJEBX7TryOLWy3tG4H/j/OXZ3pK2c0jbunfoAb4ILb
ennBXAB5UlI/j7CIEAZirQX9verX3GaAPoQTHUfH1fNJhxTNjKF0Zj6EMU2bbIai
Kw4RsNqkXC7ilgZ0m7Zb3ht1w822lADRgwzPx9X5q6AWcZvjeqJajjhI3omG+Ipe
Ve0lBuTrDEMCy+t1m1Ef1PymuuqZ0EawDkInUtcPSNHqyjZeL/v/asKQI5siBzZQ
bQIkyQxfCNjqjyKsvJKhcekZgJ+l8yznTS2uKEciUuJ5U5qjlO4+HXfxDv4bObWJ
QSBxhgz8ViD7b7yXspEWUfqmABW/SyzZq7Nd5EgDvKo24nK17MOoZE1mbUhnUFw=
=GgUN
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

hQEMA5I+4kg3RI5lAQf+MywovDuRb4hZM1S4DBTySJYXGbpWENmsJrX3wkA0a9GX
t7CFXKqZDWYSXIpMBRzHm+DkQdEmeFFx5DxMfdiPv2FZmeoW9WgV4eAELIMJS1mo
qBChGRXnjBMl/O8gx0LGGd4vElia1zxFRsW2WlISRz979ia1V4e5iZgywbGv1kjR
tmnn2XPFMfwptVTu4o2BRWEBhZb1eX/reMMyYcnLIezeP5JU1Im7sL/MEqZVcJcD
3TRCiU7C223MJP51JbVd4Y8prk+oH+fbVJV1E1cSWGKQ5VYnBaLjTJ2HIb+X/I+7
QfV0W+lvM3UgW9UZYL1L8PEKNS3f3Js1EZHETyArAoUBDANLbJvEVDbKBwEH/1Wx
iwrbRk35fB4pnilSvLNxywlSjKTxAxs3X7+onKZ8BJPWqroGhjtUZbnMtW/tEjyv
/fTvaODHbTCSCdLCEhCx6PWb51dZYpksIfibktiEbWSIR8tS8yf7BgsirXD3Ywba
Epf3RUSpNH51WkbnDEL+W5hHh3Hp1taokNzDxNhCnhVsi3QWmva6xsrS1ghmyBwA
w6jiWC8/4jRyU7OI82wLLtAFu4v7A4Amcdv+czuduME4SIxO9r08mUDul+iMWOtG
2I1mk9PbYeNX+6ywlbaqjVIEAOXef3BzMCgtul4Z5NQY3Ytj+140MgGkqdB0A4Tx
VCNTJqIxZF9taCMRiwTSwS8BkpcWvQY6fI7VUWWx8c7YrINFXcTYkg1/vq8Qn7If
/pXyadtFWdrQ7vQc0Hhdb0O1EGNYB2TPvQpZPxsWc5+vFETT3Jm0ovKzOuXf7meJ
94W44vXOV0iJ2epg8HVBKSsdZPQfL1t1cR+8kPGepq6gNvzPsDRRvcWTCuQaR/bl
eh+vse8f70cMY0/yFwSbtD/Ya3kSliddAckjpfHS+YTZ67SMMCRx8925B+gpvSUd
ofeOdSgWJsH0MGbBuqb6oWs1BloarI8RZJwmWPL+bAkmOknPcYl8r9Ls5x9LSDCt
Z4rwKuTGW+YJWbTAoX6SSZ0SHJDQ0BfMU+BJARrIf+zECplvKn0vNdtOVxBO++ty
QrPM2FjOBY5uUxPTXg46NNNkIhObgEfb5+q0uqD4kjC6AI7/tIdQ5dAUyKdlQi/r
399Gvcg4eT/qTPZ25XQ94c7lbjaL/3n+2Cyzg/9Pqi7blw6UsWEba9VcA/32ocux
H4EpeBUZSJq0k7nNgxYmOnN7F6xZ/vElGOU1JaAuIaA757IqMl7gfO5GKpPENReA
fZ3jQj7bZCRyyu6F5gv2pzfAhCN0Es6fhUH6CYn0pl4HMKCrwpr5wweGCCmLBipV
toCq4EmoJwoZj74ARSq1BMKUwkoh0EkiSie3x/i3EIQ=
=h1oO
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

hQEMA5I+4kg3RI5lAQgAjehHFVs6EIvZ9fC5+0a9KkmgJA4OjiHaK1u94TcDOedj
70RIcg77oQFL1NhQBZj3Mt4xrDJKcpy/sKFbocqyUBe1MtizblXFxdamXXuJxGw3
AOLYA5qdXPAnvlD5cOjDaj8Pwh6OmobIYgtgdzT6jiu2+23KZWlJLbp7Mp+3BdiX
/d1E90h7Zjh3rW8yfsko9bUJL8GAf5DRFTGUor8yWJLAurcnvMBeQMNRPppXV3iy
Iq9SlNaPCFmiE8pDgqS/q/8uWfpneVZz1U72AXjVmb5TEFVHCFb5lpU3bdaqokl8
5Nce72YJeB1b+dXfb8LweK125oBeFb73OqDZVM8LRoUBDANLbJvEVDbKBwEH/1S0
h+McSDMGFqSfmBIiOuIY/TlRDbONnewm6IW4HAufohbUIdxAuzxpAKaTp5a9Fx+5
kADu+CnJJ9PUYGWacjSIYYS4CXBLkVIgn4Z8UMM1mfKOlvqSppkS1n+PLaR785aM
mzl4hTeKMkv7+kivMr8I84J4C7WpYkU+gpir/4tl3KXv+e6bBz/Z3l2Xnrda2aQh
FJbMYPxNmrZNTosUpr9wWGLPT9v7pbLeJcEm2goiWbEXzMoClTzpa+e1vFEhCqaW
twucUAJv2HTaY0R8aYeC0tb8/vSxdVCP4iV585roAt1TxMXnc+UrWOgQkj2DEVyO
/03cUFOIyM9QDpF246rS6QH0QuL7/BqGRvj3Fhh3NqGwjl6Tu6f+mCjSPK0HxL6e
+3/KePYDH8jdr3Mds0uaxBio/XrV/1ZtKoMVnGPAxHhXtGZDwlkxfH79VKsc46jA
tJlEOgU3PtKiWTVHTn2j169M/q1n5vd2+/oF48Yd63H5rTHu6zftjUstguCe7TUo
9/aDMBVMh2Gi6HOUwF+dEXcCseImlzgJE+TPrmqKNcoDEb+T46e36eJkrvNm7Z3P
q9Pso7mnu2b09Bb4sH918vu8NCsnirGeOF6Eyg4LAPweuVupVBtwv6Jj9ugyvMVI
f5a+fIPnIrsJqyi8Y/iYzkusw0tJ0DiFtv7OqEWV4JkXkYMnKpc1b9rcUoNMEm32
greaQHz5497bDFzPrSvEpicZWJAxhB/3t3HpvR8Ttz35Duo3QH2ETxrwf4ESFs/Q
fkPeQWvRGVxt+s+uoE1Wsfb24Q0nQb3Wf6p6xKiJgL67Byt+IMAcj03UzFp25q4d
+d+s+aFRA9JahZjlk4RYBgQORNfRW6eh2xA1Rb6chmyiZ8kyr1g+XdYnUXDGR+RR
0fdXRra7ZjLIx+1T4X6Eo3Dev5/duSH+635mcq0mxvzGBCLz+hnG5azpXDY2oBk1
b3eUdzzZfNPCRnSwLxkm9H4Hx0E4c9WZo+6ZpW81dmmPTyd2akpeThWk2D48vmx2
wJ46kKokdO8T7KvLIMB/F/B7+uvGXgmuiDTORjtdgEB28G3JcGgo9tHGiIX7W+5R
Dlc7jOk2WftEReo5f48LB2rLkeUZJExuzi/vXgTMphDX8gXP7Fltpdd9egYqnM+x
OQGCxeMdlypW37ZAmZXFGVyEyhy4WXbvFLjLDLoXZ/1d9Q59txxHz0C9OX8DQLtN
gGz1i6mHbyHpf/nLj7Bdp9K1bnddOwYCy5uec44lYudgm9Pylez4oOKgpC1GKeXB
0+UdlZJTVUZxZ9g87AsDw/1JBN5dH21C5XTv5Tpn1oAjtF6uRhk3jpOAQGSXZ5xv
IzVJzT16KFZvpGP31L87Q2TZKxJjmWkl5kdcHNxSuGWyHTwlsLJFazelELCixLDT
dMH5ROY4MQCDYP61LA9ZLlElD2mRGCJWjTO2ULn1vM8cwlKSC1r62vmKGyAwKfeP
NACYyHdW4/mbo8tpvnBXIw==
=mFIZ
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

iQEcBAABCAAGBQJVuhhvAAoJEBX7TryOLWy3zjsIAI2pgCPVp5jDXDgPAsUbaekn
yInmzwR3JakRaHgpEtjuZ7ART9siU+hPUsu5va3RGfmKBQPLXtP2OHOsBTE1Cfm5
LprUMwJg3en88Iwflv92wqKesI9kFoRE3mDknYJ2J8CcVBMD3soIFSRaxGcGPJ6o
/8+L+QcOu5Kob1no/to2i+7IPAyTzUJhz2if2N1EukJhIFFrwHVLWUCcBy39LOqK
cpC8H9lSP7idP9B897ajhlNsmuLtzsyQTgRRRD1jJcgnBWsV6qdDJGI6wCYGlkxR
2lVzudd8NbUtEFKg3/lbaf8/BWVlj7/+zcpeRVbGy2IDaHsJieU+qm4HVbW1fC0=
=7Cpv
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

iQEcBAABCAAGBQJVuhhvAAoJEBX7TryOLWy3oRYH/Ai44e9t0rRamrmAZNRUk5XI
1tgaqOvQ+PscPhQNWPG0zY/OpIhPqAGgBLlhk1dmox4GLOCEs4wyj3Q5W19Xs8Zd
UNXB/aEJBHj+GpXdbEl8rRfBJYAH/oembRWOCzLGFUsjsXA/qyPViRqKpmUYuPMA
aH6zxN+eiFeXGcLJVPvk3zML1Gqn0Op7PY4x1Lj2Xm9rKp6/W/OQhUTqoCrESF63
lGsNXCPpzgjeNCWF1Bqbqu/XmhHUcjpYYbgh8GgbVzTFmD2RH08icz1gU+CJhs/H
ij1zp1Vfw7LWy5ASonrMelFvpo8Z4QVxlfk1ehp1ftf41ro2pFBAHOOG8w6dwag=
=xmeD
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

iQEcBAABCAAGBQJVuhhvAAoJEBX7TryOLWy3vH8H/1K/MMYK2ndWwYYssnrLdY26
LERBPx/zycKsD1Eon4neNb7a1MPXeKWk8LfX6u96aZOyqWvKuzAOGV0cx58Ym0GE
thnoKHUGDh9PnAuddZRwER3s5j+Nq4sQRa4I662nPDAvWDLjghSEozEo9k24vKBt
Jr0gbhAe/9IsE1tPEKkLr3XvGvhBdfI7I2VC6ck/wmPHUES7wwBuZtV+hEb8cEYh
CtyxLvkwtRfwRi6Oga5nxz3jmc94QuRcsjEzWdmixokegJXDaaCEdP2NU+Qd9jze
zBZ4Nd//TCMoCW1wiVQJm3+mOGR15MF/RjIID0z8iffvUPjvx3YNjLqsG16AUtU=
=89d3
-----END PGP SIGNATURE-----

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
</div>

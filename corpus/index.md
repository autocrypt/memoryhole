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

iQEcBAABCAAGBQJVugHLAAoJEBX7TryOLWy3L2cH/2wK5OjFfSYUOEwGBNSMA8TZ
ouMcTDFWYqj1GfXCFflTFyv5uW7tOVhdZGIH+a52IXZEcw+W2Zj+O6NUETyhvW0i
R3sWpWme+fFX6Ef12IlsQUcF1ScHHwppxYA6qGo3BXcBNymWJERzpko/DaEGJMk8
ojLGeTryRJ/KNtTUb3OEdfH76Wka6T6RKEFyeErW3OXjUxGi5o2w4jJI9U/O1tRu
IIDK9tBfUmhHwQEgn62QLePEQ2e8Z06Uwm38b79WYu8lH1FLEZQ8iOffRaAr+TQr
AI/eUvPWUaZX1devcO+AJcfyA3WjALkZBWU3Zbx8s6GqyUa6j6Vftum/0JMEShA=
=2lSm
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

iQEcBAABCAAGBQJVugHLAAoJEBX7TryOLWy3H10IAIlXkaGZnS3pPWeW9AdALe/w
XKI7LZXeIZPaLPfiCZwIk8hn2HCQkUPFC2+jlwrLOeVskW/Um2ptkbGIYmAFdEGz
JTFU3BvDReXjTZO/oRvQFs+qMb2mKLfe0HjZDa7Vov+c1Y1+ykOsY1rwbTvcrlaN
ieMMoi4XISg7QbkxssWV2Lbbr8sgKFCVAY/s6CIVPnuxK1OfEynhsngeLlSIX8+n
nwiVycVOHyyB9LmTdjiNbX07FbmiuUyhXC2d2wa1Y7PzNR+ZB/sVA5oC9IIj755m
TtFAmk2DyaPtrTab+TB9p/+JzP71QHtNoWOz8huQl4RhIH/CZPC39ZRhA60ffvA=
=ORLr
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

hQEMA5I+4kg3RI5lAQf/e+9uKdRoq6eExLg/mr6GhAa/ROQGCps/foAQgh1Q6ZLI
sAH62Yto5p96Wjs55PpZNXHkLZNDFfe5FMNCPpHcb/Odpda36UEihp0uOQKPpOJF
jRTsVp+P6lLEcpMaf4kuOYTHP1ykIN5lOLklpV4sj7qfCEdYG2TwCn0QH2FmjbIC
8X7r3CZH4zbp3A4C1YDVy8ZqgLIzvc8EyHikFBrjyeC7hX3t0TpeT+s4Ux38ym1n
L5Q7cJu6stpzBaCo3XoOEiDPgav5IZsVYV+F/sKl/6QzUitLXtsEGmGzyptnVcnn
yUbUjaeebJ15ZKnLPpv0IqNs1gmah/BfDpUJlQcUCYUBDANLbJvEVDbKBwEH/jQl
dfnq7MmVn9dUqiLwaL7ml6NDOInjXCV43AB04pxPhfMNuoZxRRM/BsSMo0IoZgYm
YDWbmAsS3kw8DLpPMAkzyWR43FkFbQYTPN3OG3TOdJUuQupXlu5+S8TgZoT2sbBZ
//viUlpNajTIKz4qgekWi2ZqICqBx14ZtIaJ/IQJ0ZM60862rYxNrnSoa7gXIdJR
XFTH3RKBjuFr6MKPvv0sZ9xCpoR/Zs4Zxkbe6zZ7JINRSEY84GW7dHhoIlCUdMEq
OJLlLY2EyGUjRvgWglC/OQwHCPMR25yVaZ/4yF2MGL7LVjgxqnlICGVi8Kw8vdvJ
DTpf6y0Ic5bovG1l2BvSwTABaA1CFRI/hlwbQJOGZ69U2qNfE+hLTrH022vNK52h
OmfJqARnvg4h0JKYp14nglpLcwKQbI5s3Lrv6oSFy4DmczC1d9n3B+4tZZLppTF1
4ZXgUFGehRwt/vjtZHi1AQtEX6EF54qQvz6jDh6xd2qATxM/HfQw7jBe/a9R/v0P
JSEwfyKFTX976/39/nxJgfAvAlgpoVio2KBg2rI94SDDhJI5RfHYTcWdKwtF1uiO
Cw1QNOXdIZrVWerTE4265UDubo3Tw3RyWpssvheWmd4FqIMhsBtUNWJEkfTcxMet
GG4lUcblPEcqyfwi+SfRbPH46Obccl2QNatWyqmMCzckDSAi4MT7SfgLiSjJ+y16
j1kjP0kvoIY/5hiJ/R8mpSvOopbHMm+cIk2yBWdMehCH43GKC+rOkcXGUYxuKzYo
q2eTumbeNd7ebiixXzhCfD3ZtJOl4fM1Y0hTP19I49hl27chd0ye7zOnmuUEXNLY
6l1UGKJl2SvduWp0XGB7XwwxMWb9fz/+YyVpniBlxUn+QKD8W5ivCE0GfhS3i3cZ
guZkJ7a7kzqqSfOxWXAld5Kyldtn9n0DfWPNS6gXP+CkhL8kijhHn4u4Db1hPtmR
q5E1wlYEQ/kTNM8Fcrc/BXl8QP6zLpwHVEjYfXh/8c8H
=QsPM
-----END PGP MESSAGE-----

<span style="color:#2aa198;">--cccccccccccc</span>
</div>
<h3 id="E" class="mail-example">
Email E: 
</h3>
alternative text/html message with embedded header, encrypted+signed 
<pre>
└┬╴multipart/encrypted 2443 bytes
 ├─╴application/pgp-encrypted 10 bytes
 └─╴application/octet-stream 1975 bytes</pre>
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

hQEMA5I+4kg3RI5lAQf/bTX3eT4B/gIJ5W/1/HOE/SmdgzyX1FhS62GlLKH0KJoe
sSB3z0OVBOglA9gLrTzJUic0cPUyrSqTH549f3svPE+Qy4/Bh8VctkcXOLpGcZlc
871+5n8ocUo0TmaB2kOnzriggQT0dadw5eMBNOb+xmg2TV+paESLegVaXyIK8cRj
SzKPWEGiT7EgPy/ICAn4VySFXfpuWouYt2YtO0CSTJzRJj9hOHWOhNcjNpzk09W3
cMeONqjQALlVYZLt+7wXv1uL7LVNZpbul3ARDjXEsoQ6SlCPGRbY8uLOonz7Dvr8
OAH1XztyTIOwann1bsZzgvkflUq2+LNOvXXUW+wxfYUBDANLbJvEVDbKBwEH/2yx
+6A1+8z/FIoWho+fVnV9J5bVAEk+6vbWLzu81oXm6Pri2PsmKEVOqiprzLNJKeRp
ze6v4JxxeT0j2BbTV7Kz1k9mixJUtM2uhzSOSnk4mABGj9d/lecRlqmQR+avut5O
yj5cCy0spTqN0psRoE85AAOvPoyx/q+3H6Igy0i6iV/dxWfWiATbzILsEpGL/gMG
Lac9AFSDhE66aKDlUReuFYJAW0DhIoniDH9zLuRJVhGonF3tYnbyBJ4vWUnULc0q
G3kQn3H+TqyLs4z6nT8GB/GWVZl2T/dVCXP4JURW+jq/RgZJ0Z/Ttqlsh2LfV0K5
SbELEuPqjsxjvSOWfObS6QHtTDaou8sCgKT5zUEFRYCOL2pVQaroNNI7U65OSwRW
6sCXl1ojgEGbcRpIsZ+ro5KdXJLZmtzAtRVL8ydcuG+zQZotb9LCSLMgsEsawbLN
HtTran8qFtsyUREVLGGU/zKi52p7OJLfZljwxq27Ak5iWH1WeTdtvivbBd7DD0Ci
eAfgLjy6Rh0hCa8mPHIV/K2IqGPzUOKT7C7CVsuw8MkJM9H/zCcJjjdH4rFR4NUC
QDQVznfSk3OCzJcsPvvGJ8UVIg1xzmqo5ilHWRf0FbCGoNs0k4PNL0b2iGQ6sPY2
J4XsfIArlvSGdrh6BhAmAxpmIy9kRBEMbjzHQTugw83H4AjyRWwVBWdzxNEh67An
4VXD10JGIG4/ONqnpC0V5hw+5+nq8TaUjZCFqsI7kwkvujUxxvQUBBPxNzh18rK+
5dJBE9B/9UFdAjjq33GqKtrYIpu6+jZ4GR300YXc35UZNStagUJYuVaRSV/W/RGK
LR27eIKjCNyEao3XV7wyuGVJytuI7lOI9xSBTZ6aBo86jLwkh+Ak4wL/n/RWXbX+
kvnuzJjbEDe+LqJurk6kwTF5zObMDUvlLo2NCLGGSNZtqbeBnNAKxVO7LDr7Yskn
K+tuuZUCVqP9fcpGVc3BpU7Lvj9/BXbNLtoN2KNuu2oCBxzYEWOII4PLAx0Dirfs
wKItXER1kcWZTB1/x1I0pF3LJ5PWYbz3spFclgXvHOf8Y/bSEDLzEa0i6Z0rThTJ
7v9pndA1qMemJmBW+8831ehuSPh3/w+TSkrG/8Uds507KqjA6iLcsQLe5hfei9tv
J91dggPTsC9Q+r5QJefEUt7C2FHiAPzIjbRFM49uwDP9RdvJLNoZfaNY/7/nX1Uy
RiSIrI11RJdj0ERGBHrbFB6FYav6hjANdjFELLS6gyjJsh+ub73zf+PvtW5DioDP
TOVwACzHCHwOXD3JVrpV7iMfov9PeYRsCr+N4RSKj4zF0uYsHU6f7TtX+x8YyxYr
AgLjqJ1G92k8DzLOv5gRlN/B5HO09z/CVHy2qK9wn4EyG5WN99gg02tE5rJt79kB
XQBhv7psLWxL8SKBqCG0uUSkL7oLUke1f2m5lODR81E9/wTt3mToa+bHFLwgN4Ci
3YgL24du06SzSKK5vfWvlTuCTec=
=WHWO
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

iQEcBAABCAAGBQJVugHLAAoJEBX7TryOLWy3rUYIAJlQI7CclsUEcs+TzHUjm0SH
BQhedHK1mLD2Me5WISQcASWOwmuPhT9JIKftDZzNbkCsDxCejjn3Lq9dr41CbZH0
7IvvQRVjuRAoY1b+NzkKT1O0/4MiAWyAb5WTkQmXB4BOf779jCkZf4jMEH5WTuit
Zp5nS/pcF3smp+bIyFgu97KBhQDPElgB1kxES7W8nyiXpoSDEKa0B7kTfV0tDt0U
OF+31RizPzWqw9vHDDXuyzgU3rPw+ji0uJtaQ/TmY4gaEB85BVCuOLq46l3V3RIG
8tbjEVtMHpSP/8FzQS0htA7lI69OWL0OIfX5SFeTsizzg5lIdC0bzEO654BGjU4=
=Nr86
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

iQEcBAABCAAGBQJVugHLAAoJEBX7TryOLWy3GIMH/RqQA9k7r52mGthNXi+skEVv
y2VtONwNboFgyciGMeHWspLAINsLtLgi86FnexU5jmzZrpZ0hCZvQfQb5BrhIjZJ
asYBFgzCPkOqrUh8cPqIvmQsrrR0ORhPqOVfMKilBIwVSTHME4OmCHQ+Fa3P1O3n
EirswCvBKHDA84XDHEwP5nINSsHg1lQtFjO4vJvba5ZC9Yvw6kgtWMBAv/czrShi
wuZKKar5rGpe54y+arWoIywyqaUBghpr+vZFI4iVXPi8vqpzMxYTCME+zkQy+xZk
5pxF3i/OkQ47RW+vpmAcJsdQtOfaxDAAQ1AtR+RLz4F4ab/ea/OIkwLhUR8PGNY=
=FtPN
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

iQEcBAABCAAGBQJVugHMAAoJEBX7TryOLWy3tcYH/2t1mxGbC740/4RGs3LOUm5t
KGfxuAWKHgutlkmaU0hJ3vQBAXWUnvqn2A57gXpMaWNEKvobb/496OqsRCl0mgsD
DtMJWEjiD8DgtTamXUinGiWpmMPPuJ9P7fDpaKywj45GS1GFYW5G+Q4grn8ELESm
hqoL4KSeTG/XQB042M+xME/oSC8jq4m/OqDUEE5xQsfrvU5klv6sa7yYti4nmEAB
Db1lDh2gkUq/YDXHIFwZSxg/haERWEEyooF3WDdvNYewbxNMYMVPxqvIzvhZBAxv
1MVs7ilXe/SWW++n1RCYzVieLj4bpysCTnWyzPtyRtuheW1mixymE9UJkk+afsU=
=Qe2s
-----END PGP SIGNATURE-----

<span style="color:#2aa198;">--bbbbbbbbbbbb</span>
</div>

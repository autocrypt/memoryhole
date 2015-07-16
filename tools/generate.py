#!/usr/bin/python3

import email.message
import sys

m = email.message.Message()

m.add_header('Subject', 'Test')
m.add_header('Date', 'Thu, 16 Jul 2015 11:44:44 +0200')
m.add_header('Message-ID', 'A@memoryhole.example')
m.add_header('To', 'Julia <julia@example.org>')
m.add_header('From', 'Winston <winston@example.net>')
m.set_type('multipart/signed')
m.set_boundary('xxxxxxxxxxxx')

txt = '''This is a test
message on multiple lines

with a silly bit more.
-- 
and a .sig here.
'''

html = '''<html>
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
'''

signature = '''-----BEGIN PGP SIGNATURE-----
Version: OpenPGP

XXXXXX
-----END PGP SIGNATURE-----
'''

s = email.message.Message()
s.set_type('multipart/alternative')
s.set_boundary('yyyyyyyyyyyyy')

sig = email.message.Message()
sig.set_type('application/pgp-signature')
sig.set_payload(signature)



t = email.message.Message()
t.set_type('text/plain')
t.set_payload(txt)

h = email.message.Message()
h.set_type('text/html')
h.set_payload(html)

s.set_payload([t,h])

m.set_payload([s,sig])

sys.stdout.buffer.write(m.as_bytes())


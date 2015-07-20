#!/usr/bin/python3

description = (
'alternative text/html message with embedded header, signed'
)

import email.message
import sys
import subprocess

if(len(sys.argv) == 2):
    print(description)
    exit(0)

m = email.message.Message()

m.add_header('Subject', 'A silly message')
m.add_header('Date', 'Thu, 16 Jul 2015 11:44:44 +0200')
m.add_header('Message-ID', 'A@memoryhole.example')
m.add_header('To', 'Julia <julia@example.org>')
m.add_header('From', 'Winston <winston@example.net>')
m.set_type('multipart/signed')
m.set_param('micalg', 'pgp-sha256')
m.set_param('protocol', 'application/pgp-signature')
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

embedded_header = ''
for x in ['Date', 'Subject', 'From', 'To', 'Message-ID']:
    embedded_header += x + ': ' + m.get(x) + '\n'

wrapper = email.message.Message()
wrapper.set_type('multipart/mixed')
wrapper.set_boundary('zzzzzzzzzzzz')

emh = email.message.Message()
emh.set_type('text/rfc822-header')
emh.add_header('Content-Disposition', 'attachment')
emh.set_payload(embedded_header)

s = email.message.Message()
s.set_type('multipart/alternative')
s.set_boundary('yyyyyyyyyyyyy')



t = email.message.Message()
t.set_type('text/plain')
t.set_payload(txt)

h = email.message.Message()
h.set_type('text/html')
h.set_payload(html)

s.set_payload([t,h])

wrapper.set_payload([emh,s])

sig = email.message.Message()
sig.set_type('application/pgp-signature')

g = subprocess.Popen(['gpg2', '--batch',
                      '--homedir=../corpus/OpenPGP/GNUPGHOME',
                      '--pinentry-mode=loopback',
                      '--passphrase=_winston_',
                      '--armor', '--detach-sign',
                      '--digest-algo=sha256',
                      '-u', 'winston@example.net'],
                     stdin=subprocess.PIPE,
                     stdout=subprocess.PIPE,
                     stderr=subprocess.PIPE)


# FIXME: this is a sloppy conversion, because it would convert any thing already crlf
# FIXME: it's also possible that this should do a conversion to string
# form or something, instead of using raw bytes
(sout, serr) = g.communicate(wrapper.as_bytes().replace(b'\n', b'\r\n'))

sig.set_payload(sout)
if serr is not None:
    sys.stderr.buffer.write(serr)

m.set_payload([wrapper,sig])

sys.stdout.buffer.write(m.as_bytes())


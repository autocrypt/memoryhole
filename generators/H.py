#!/usr/bin/python3

from generator import Generator, gen_text_plain, gen_boundary
import email.message

good_sub = 'headers in top-level MIME: subject restored to original'
bad_sub  = "headers in top-level MIME: tampered subject and from"

m = Generator(bad_sub, __file__, '''\
This email demonstrates including the memoryhole headers inside the
top-level MIME object. The signed Subject and From are headers of the
text/plain part, rather than having their own rfc822-headers part.

This email has been tampered with. It was originally sent by Winston,
who signed the body (including the memoryhole headers). Eve has
fiddled with the From and Subject headers in-flight.
''')

m.add_header('Date',    'Wed, 29 Jul 2015 09:31:44 +0100')
m.add_header('To',      'Julia <julia@example.org>')
m.add_header('From',    'Eve <eve@evilcorp.com>')

s = gen_text_plain(m)
s.add_header('Subject', good_sub)
s.add_header('From',    'Winston <winston@example.net>')
s.set_boundary(gen_boundary())

m.sign(s, 'Winston <winston@example.net>')

m.main()

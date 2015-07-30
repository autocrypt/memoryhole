#!/usr/bin/python3

from generator import Generator, gen_multipart_alternative
import email.message

subject = 'headers in top-level MIME object: signed multipart email'

m = Generator(subject, __file__, '''\
This message demonstrates including the memoryhole headers inside the
top-level MIME object. The signed Subject and From are headers of the
multipart/alternative part, rather than having their own
rfc822-headers part.
''')

m.add_header('Date',    'Wed, 29 Jul 2015 09:31:44 +0100')
m.add_header('To',      'Julia <julia@example.org>')
m.add_header('From',    'Winston <winston@example.net>')

s = gen_multipart_alternative(m)
s.add_header('Subject', subject)
s.add_header('From',    'Winston <winston@example.net>')

m.sign(s)

m.main()

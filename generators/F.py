#!/usr/bin/python3

from generator import Generator, gen_text_plain, gen_boundary
import email.message

subject = 'headers in top-level MIME object: plaintext email'

m = Generator(subject, __file__, '''\
This message demonstrates including the memoryhole headers inside the
top-level MIME object. The signed Subject and From are headers of the
text/plain part, rather than having their own rfc822-headers part.
''')

m.add_header('Date',    'Wed, 29 Jul 2015 09:31:44 +0100')
m.add_header('To',      'Julia <julia@example.org>')
m.add_header('From',    'Winston <winston@example.net>')

s = gen_text_plain(m)
s.add_header('Subject', subject)
s.add_header('From',    'Winston <winston@example.net>')
s.set_boundary(gen_boundary())

m.sign(s)

m.main()

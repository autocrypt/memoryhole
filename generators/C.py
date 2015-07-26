#!/usr/bin/python3

from generator import Generator, gen_multipart_alternative

m = Generator('alternative text/html message with embedded header, signed, with Subject tampered', __file__)

m.add_header('Date', 'Thu, 16 Jul 2015 11:44:44 +0200')
m.add_header('To', 'Julia <julia@example.org>')
m.add_header('From', 'Winston <winston@example.net>')

s = gen_multipart_alternative()
b = m.wrap_with_header(s)
m.sign(b)

m.replace_header('Subject', 'the subject has been tampered!')
m.main()

#!/usr/bin/python3

from generator import Generator, gen_multipart_alternative

m = Generator('alternative text/html message with embedded header, unsigned', __file__)

m.add_header('Date', 'Thu, 16 Jul 2015 11:44:44 +0200')
m.add_header('To', 'Julia <julia@example.org>')
m.add_header('From', 'Winston <winston@example.net>')

s = gen_multipart_alternative()
m.wrap_with_header(s, inself=True)

m.main()

# -*- coding: utf-8 -*

import email.message
import sys
import os
import re
import subprocess

data = {
    'txt': '''This is a test
message on multiple lines

with a silly bit more.
-- 
and a .sig here.
''',
    'html': '''<html>
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
''',
    'bgen': ord('a')
}

    
def gen_boundary():
    r = chr(data['bgen']) * 12
    data['bgen'] += 1
    return r

def gen_text_plain():
    t = email.message.Message()
    t.set_type('text/plain')
    t.set_payload(data['txt'])
    return t
    
def gen_text_html():
    h = email.message.Message()
    h.set_type('text/html')
    h.set_payload(data['html'])
    return h

def gen_multipart_alternative():
    s = email.message.Message()
    s.set_type('multipart/alternative')
    s.set_boundary(gen_boundary())
    s.set_payload([gen_text_plain(),gen_text_html()])
    return s


# adapted from notmuch:devel/printmimestructure 
def render_mime_structure(z, prefix='└', stream=sys.stdout):
    '''z should be an email.message.Message object'''
    fname = '' if z.get_filename() is None else ' [' + z.get_filename() + ']'
    cset = '' if z.get_charset() is None else ' (' + z.get_charset() + ')'
    disp = z.get_params(None, header='Content-Disposition')
    if (disp is None):
        disposition = ''
    else:
        disposition = ''
        for d in disp:
            if d[0] in [ 'attachment', 'inline' ]:
                disposition = ' ' + d[0]
    if (z.is_multipart()):
        print(prefix + '┬╴' + z.get_content_type() + cset +
                disposition + fname, z.as_string().__len__().__str__()
                + ' bytes', file=stream)
        if prefix.endswith('└'):
            prefix = prefix.rpartition('└')[0] + ' '
        if prefix.endswith('├'):
            prefix = prefix.rpartition('├')[0] + '│'
        parts = z.get_payload()
        i = 0
        while (i < parts.__len__()-1):
            render_mime_structure(parts[i], prefix + '├', stream=stream)
            i += 1
        render_mime_structure(parts[i], prefix + '└', stream=stream)
        # FIXME: show epilogue?
    else:
        print(prefix + '─╴'+ z.get_content_type() + cset + disposition
                + fname, z.get_payload().__len__().__str__(), 'bytes', file=stream)


class Generator(email.message.Message):
    def __init__(self, description, messagename):
        email.message.Message.__init__(self)
        self.messagename = os.path.splitext(os.path.basename(messagename))[0]
        self.description = description
        self.add_header('Subject', description)
        self.add_header('Message-ID',  self.messagename + '@memoryhole.example')

    def __str__(self):
        return 'E-mail generator (' + self.description + ')'


    def build_embedded_header(self):
        r = ''
        for x in ['Date', 'Subject', 'From', 'To', 'Message-ID']:
            if self.get(x):
                r += x + ': ' + self.get(x) + '\n'
        return r
    def wrap_with_header(self, body, inself=False):
        emh = email.message.Message()
        emh.set_type('text/rfc822-header')
        emh.add_header('Content-Disposition', 'attachment')
        emh.set_payload(self.build_embedded_header())

        if inself:
            wrapper = self
        else:
            wrapper = email.message.Message()
        wrapper.set_type('multipart/mixed')
        wrapper.set_boundary(gen_boundary())

        wrapper.set_payload([emh,body])
        return wrapper

    def get_password_from(self):
        '''This returns the expected password based on the From: address'''
        return re.sub(r'.*?([^@<]*)@.*', r'_\1_', self.get('From'))

    def sign(self,body):
        g = subprocess.Popen(['gpg2', '--batch',
                              '--homedir=corpus/OpenPGP/GNUPGHOME',
                              '--pinentry-mode=loopback',
                              '--passphrase', self.get_password_from(),
                              '--no-emit-version',
                              '--armor', '--detach-sign',
                              '--digest-algo=sha256',
                              '-u', self.get('From')],
                             stdin=subprocess.PIPE,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE)
        

        # FIXME: this is a sloppy conversion, because it would convert any thing already crlf
        # FIXME: it's also possible that this should do a conversion to string
        # form or something, instead of using raw bytes
        (sout, serr) = g.communicate(body.as_bytes().replace(b'\n', b'\r\n'))
        if serr is not None:
            sys.stderr.buffer.write(serr)

        sig = email.message.Message()
        sig.set_type('application/pgp-signature')
        sig.set_payload(sout)

        self.set_type('multipart/signed')
        self.set_param('micalg', 'pgp-sha256')
        self.set_param('protocol', 'application/pgp-signature')
        self.set_boundary(gen_boundary())

        self.set_payload([body,sig])

        
    def main(self):
        sys.stdout.buffer.write(self.as_bytes())
        descstream = open(3, mode='w')
        if descstream:
            print(self.description, '\n', file=descstream)
            render_mime_structure(self, stream=descstream)


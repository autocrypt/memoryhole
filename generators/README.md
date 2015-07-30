# Generators for corpus emails

Each python script in this directory is intended to generate a
well-formatted email message. Each email message has a different MIME
tree, and is intended to be a showcase of various different email
structures.

To contribute, start by copying one of the scripts in this directory
to a unique filename (like X.py). Your script should always start like
this:

    #!/usr/bin/python3

    description = (
       'alternative text/html message with embedded header, signed'
    )

    #  ====== Do not change this line =====================================

...with that exact comment line, and a brief (< 70 character)
description of what the structure of your email is. The comment line
will be replaced by an email message (stored in the variable `m`),
with an automatically generated Subject and Message-ID. You can then
proceed to customise the message further:

    m.add_header('Date', 'Thu, 16 Jul 2015 11:44:44 +0200')
    m.add_header('To', 'Julia <julia@example.org>')
    ...

Run `make` from the top-level directory to generate the email message
in the corpus directory.

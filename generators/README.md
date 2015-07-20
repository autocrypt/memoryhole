# Generators for corpus emails

Each python script in this directory is intended to generate a
well-formatted email message. Each email message has a different MIME
tree, and is intended to be a showcase of various different email
structures.

To contribute, start by copying one of the scripts in this directory
to a unique filename (like X.py). Your script should contain a brief
(< 70 character) description of the generated email at the top,
assigned to the `description` variable:

    description = (
       'alternative text/html message with embedded header, signed'
    )

Run `make` in the `corpus` directory to generate email messages from
all generator scripts in the `generator` directory.

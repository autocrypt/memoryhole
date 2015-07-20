import email.message
import sys
import os
import subprocess

if(len(sys.argv) == 2):
    print(description)
    exit(0)

m = email.message.Message()
m.add_header('Subject', description)
fname = os.path.splitext(os.path.basename(__file__))[0]
m.add_header('Message-ID', fname + '@memoryhole.example')

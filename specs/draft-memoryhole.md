--- 
title: Cryptographic Protection of E-mail Headers
abbrev: memoryhole
docname: draft-memoryhole
category: info

ipr: trust200902
area: Apps
workgroup: Unknown
keyword: Internet-Draft
stand_alone: yes
pi:
  rfcedstyle: yes
  toc: yes
  tocindent: yes
  sortrefs: yes
  symrefs: yes
  strict: yes
  comments: yes
  inline: yes
  text-list-symbols: -o*+

author:
 -
       ins: D. K. Gillmor
       name: Daniel Kahn Gillmor
       organization: ACLU
       email: dkg@fifthhorseman.net

normative:
  
informative:
   RFC1891:
   RFC1892:
   RFC1894:
   RFC2047:
   RFC3156:
   RFC5322:
   RFC6522:

--- abstract

Encrypted or signed e-mail does not have cryptographic protection of
headers -- only the body of an e-mail message is encrypted or signed.
This specification provides a solution to this problem by embedding
relevant headers within the body of the e-mail in a well-structured
way.

--- middle

Introduction
============

Terminology
===========

header line
: a single header field, like "Subject: 

header block
: a collection of header lines associated with an e-mail message

embedded header
: the text/rfc822-header MIME subpart located as the first immediate
  child of an encrypted or signed e-mail message

external header
: the block of headers located outside the body of an e-mail message

Message Structure
=================

## Locating an embedded header

## Content-Disposition


Distinguishing from DSN
=======================

see [RFC6522]

Consequences for encrypted headers
==================================

Some message headers are more privacy/confidentiality sensitive than
others.  When a block of headers are embedded in the encrypted body,
the corresponding lines in the external header should be stripped or
stubbed out, for at least some of the headers.

If confidentiality is desired for encrypted headers should be removed
and and removing (or replacing with a dummy external ) has

# Subject

Security Considerations
=======================

Privacy Considerations
======================

IANA Considerations
===================

 * registering any new headers?

TODO
====

 * Should we mark this as updating any of the DSN RFCs?
 * Acknowledge message/rfc822 wrapping and explain why this is different

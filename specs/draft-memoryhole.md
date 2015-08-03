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
: a single header field, like "Subject: encrypting mail headers"

header block
: a collection of header lines associated with an e-mail message or MIME part

protection layer
: a MIME part that wraps an entire MIME subtree with some form of
  cryptographic protection. application/signed and
  application/encrypted Content-Types are protection layers.

protected subtree
: a MIME subtree immediately enclosed by a protection layer

top protected part
: the root MIME part of a protected subtree

external header block
: the collection of header lines located outside the body of an e-mail
  message

external header line
: a header line within an external header block

MIME part header block
: the collection of header lines assocatied with a MIME part, as
  distinguished from the content of the MIME part

MIME part header line
: a header line within a MIME part header block

displayable header part
: a Content-Type: text/rfc822-headers MIME subpart located as the
  first child of a multipart/mixed top protected part.  This part has
  a MIME part header block, and its content is also a header block.  A
  displayable header part's MIME part header block should be
  Content-Disposition: inline, and its parent's MIME part header block
  should be Content-Type: multipart/mixed and Memory-Hole: displayable

displayable header line
: a header line in the content of a display header part

mail user agent (MUA)
: an application designed to receive, render, compose, and send e-mail
  on behalf of a user

Message Structure
=================

In order for cryptographic protection of the e-mail body to apply to
associated e-mail headers, the relevant e-mail headers must be present
within the body of the message.  This section describes how a
memoryhole-compatible MUA should inspect the content of a protected
message to find the relevant headers.

Not all headers for a given message will necessarily be protected, so
rendering MUAs should be prepared for circumstances where some headers
have different levels of protection than others.  Displaying this
distinction to the user is out of scope for this specification (we
hope to collect such UI/UX guidance in a companion document).

Below we describe the semantic concepts and how to find them from the
structure of the message.

* When interpreting and rendering an e-mail message, cryptographically
  aware MUAs should associate each e-mail header line with a set of
  cryptographic protections: 0 or more "encrypted-by..." and 0 or more
  "signed-by..." protection associations per header line.

* protection association sets have a prioritization hierarchy, from
  highest to lowest:

   - a set with both signed-by and encrypted-by associations
   - a set with only signed-by associations
   - a set with only encrypted-by associations
   - an empty set

* within each prioritization category, a set with more associations than
  another is higher priority than a set with fewer associations.

* Before cryptographic processing, all header lines have an empty set of
  protection associations.

* an e-mail or message part whose Content-Type is a "message protection
  type" (multipart/signed or multipart/encrypted) inherits all header
  lines (replacing its own lines) from the internal top-level protected
  MIME part, if the internal header line has a higher-priority set of
  protection associations than the current header line.

  * Headers inherited across a verified multipart/signed protection that
    gain a "signed-by" protection association for each verified
    signature.

  * Headers inherited across a successfully-decrypted
    multipart/encrypted protection gain an "encrypted-by" protection
    association for each key known to effectively decrypt the content.
    If the multipart/encrypted protection also includes a cryptographic
    signature (as in the case of one-shot PGP/MIME), these headers also
    gain a "signed-by" protection association for each verified
    signature.

* header inheritance chains, so internal headers "bubble up" if they are
  higher priority.

TODO: document Force-display (explicit embedded header mime part for
compatibility with decryption-capable pre-memoryhole clients) and how
it fits into the above breakdown.


## Locating an embedded header

## 


Distinguishing from DSN
=======================

see [RFC6522]

Consequences for encrypted headers
==================================

Some message headers are more privacy/confidentiality sensitive than
others.  When a block of headers are embedded in the encrypted body,
the corresponding lines in the external header should be stripped or
stubbed out, for at least some of the headers.

If confidentiality is desired for an header line protected in the body
of the message by an encryption protection layer, the external header
line in question should be removed from the external header block, or
possibly replaced with a dummy external header line.  The choice of
whether to remove or replace depends on the header line itself.

We document the tradeoffs about removing/replacing specific header
lines below.

# Subject

# To and Cc

# From

# Message-ID

# In-Reply-To, References

# Date

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

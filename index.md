Encrypted or signed e-mail does not have cryptographic protection of
headers; only the body of an e-mail message is encrypted or signed.

The Memory Hole project aims to fix this problem by stashing relevant
headers within the body of the e-mail in a standardized way.
Compatible mail user agents should be able to use this structure to
display the cryptographically protected headers to the user,
indicating their protection.

### Resources:

* View a list of [example Memory Hole-compliant
  e-mails](/memoryhole/corpus) to get an idea of how such emails are
  structured. Our examples come with screenshots, so that you can see
  how they look in various mail user agents.
* Read our [draft of an IETF standard](/memoryhole/spec) explaining
  how to structure and interpret Memory Hole-compliant e-mails.
* Read our [guidance for implementors](/memoryhole/guidance) for
  UI/UX, deployment and configuration considerations.

Development of the Memory Hole project takes place on
[GitHub](https://github.com/ModernPGP/memoryhole).

---
title: "Open Questions"
date: 2018-09-11
draft: false
type: page
toc: true
---


If you want to help or comment on this project, please [file an issue on GitHub](https://github.com/JUDSYS/v1Spec/issues) (English only) or use one of the following: the [Portuguese contact form](https://goo.gl/forms/0ZvcYGGLDq9EA22C3) and the [English contact form](https://goo.gl/forms/uijCieF4cWvsPTHX2).

## Algorithm Selection

Only one algorithm will be chosen for each of the following categories: hashing, symmetric encryption, asymmetric encryption, signing and key derivation.

This restriction is to make the standard easier to implement.

| Function                | Main candidates             |
|-------------------------|-----------------------------|
| Hashing                 | [SHA-3-512]                 |
| Symmetric encryption    | [AES]                       |
| Asymmetric encryption   | [RSA]                       |
| Signing                 | [RSA], [ECDSA], [Ed25519]   |
| Key derivation          | [Argon2id]                  |

[SHA-3-512]: https://en.wikipedia.org/wiki/SHA-3
[AES]: https://en.wikipedia.org/wiki/Advanced_Encryption_Standard
[RSA]: https://en.wikipedia.org/wiki/RSA_(cryptosystem)
[ECDSA]: https://en.wikipedia.org/wiki/ECDSA
[Argon2id]: https://en.wikipedia.org/wiki/Argon2
[Ed25519]: https://en.wikipedia.org/wiki/EdDSA#Ed25519

## General

### Nameless Certificates

Nameless certificates are self-signed certificates that don't carry subject attributes including the name.

They are intended to let people start using JUDSYS without having to pay for a CA to issue them a certificate.

Their lack of names is intended to help security as many people would probably just ignore some message telling them that this certificate was not issued by a CA. The unfortunate side effect, however, is that people would be force to keep a sort of address book to known which certificate belongs to who.

This address book may be incorporated into the applications and even sync with Google Contacts or a similar service.

There is also the issue of revocation. A nameless certificate may end up being irrevocable.

While they may remind of PGP, they do not form a web-of-trust. This is intentional, as webs-of-trust can be hard to implement and to explain to users.

### Accidental Changes

Suppose Alice signs a document and sends document file and the signature file to Bob. When he receives it, he opens the document and accidentally enters a new line or makes some other tiny change. The signature then becomes invalid.

One option for solving this problem is to use error correction mechanisms like [PAR2]. The idea is to inform the user that the document was later and ask them if they want to fix the file.

The downside is that users will have to deal with three separate files: the original document, the signature and the error correction file.

[PAR2]: https://en.wikipedia.org/wiki/Parchive

### Certificates for Software

Should software acting in the name of someone receive its own certificate? This may help with security at the expense of making the JUDSYS-1 complicated.

Who should issue those certificates? The CAs may be an obvious choice, but this adds expense to end users. Another option is to use a combination of nameless certificates and proofs of attribute.

### Smart-phones as Smart-cards

Should smart-cards be allowed? They can help with security, but it is often hard to implement support for things that use external hardware. In the (somewhat common) worst scenario, some implementations will support them and others not, thus reducing interoperability.

One possible solution is to use smart-phones as smart-cards replacements. The user would have an app installed on their phone that is a full JUDSYS-1 implementation but whose keys remain in a secure-*ish* storage that only that app has access to.

To ease the user, desktop applications and websites could show a QR Code with a signature request that informs the file hash and size. The user would scan that QR Code with his app and confirm the signature with a password or fingerprint (not ideal but biometrics may be more secure than dump passwords such as 0000). 

This QR Code system does lead to few security problems (what if an attacker gives the wrong hash?) but they do not seem to be so much worse then and evil implementation or attacker replacing the document to be signed right before and right after the user signs.

### Dynamic content

Should implementations be required to inform the user when dynamic content is present? What file formats must be required to check for dynamic content?

See section [Dynamic Content](/specs/draft-judsys1-latest.html#dynamic-content) of the JUDSYS-1 spec.



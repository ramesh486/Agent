# OCI Certificates Management Certificate Authority

A certificate authority (CA) issues digital certificates and manages their revocation. A CA typically contains other CAs with defined parent-child relationships between them. The CA at the top of a hierarchy is known as the root CA. Any CA that is not the root CA is a subordinate CA.

## Prerequisite

* Generate Asymmetric key in the vault
* Create IAM Policies
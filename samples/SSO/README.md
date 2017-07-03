This directory contains samples for SSO and Lookup Service APIs:

The vSphere Automation SDK for Perl samples use the vCenter Lookup Service to obtain the URLs for other vSphere Automation services (SSO, vAPI, VIM, SPBM, etc.).

Sample                       | Description
-----------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------
embedded_psc_sso_workflow.pl | Demonstrates how to create a SSO connection using a SAML Bearer token when we have a vCenter Server and embedded Platform Services Controller
external_psc_sso_workflow.pl | Demonstrates how to create a SSO connection using a SAML Bearer token when we have a vCenter Server and external Platform Services Controller

### Testbed Requirement:
    - 1 vCenter Server
    - 1 Platform Services Controller

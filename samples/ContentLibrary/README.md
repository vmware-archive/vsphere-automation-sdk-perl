This directory contains samples for Content Library APIs:

Sample                                                                       | Description
-----------------------------------------------------------------------------| -------------
CRUD/library_crud.pl                                                         | CRUD operations on a content library
ContentUpdate/content_update.pl                                              | Updating content of a content library item
IsoMount/iso_mount.pl                                                        | Content library ISO item mount and unmount workflow
OvfDeploy/deploy_ovf_template.pl                                             | Workflow to deploy an OVF library item to a resource pool
OvfImportExport/ovf_import_export.pl                                         | Workflows to import an OVF package into a content library, and download of an OVF template from a content library
PublishSubscribe/publish_subscribe.pl                                        | Basic workflow to publish and subscribe content libraries
VmCapture/vm_template_capture.pl                                             | Workflow to capture a virtual machine into a content library as a vm template

### Testbed Requirement:
    - 1 vCenter Server
    - 2 ESX hosts
    - 1 datastore
    - Some samples need a Content Library, VM or an OVF library item created as mentioned above

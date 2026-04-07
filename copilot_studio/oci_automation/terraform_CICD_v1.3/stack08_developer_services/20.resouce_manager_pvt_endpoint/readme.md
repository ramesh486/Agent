# Introduction

Resource Manager is an OCI service that allows you to automate the process of provisioning your Oracle Cloud Infrastructure resources. Using Terraform, Resource Manager helps you install, configure, and manage resources through the "infrastructure-as-code" model.

Private Endpoint Management enables you to:
Connect to private resources in a private network (VCN) via remote-exec, including compute and DB instances, as part of Terraform apply.
Connect to private Git servers such as GitHub and GitLab in a private network (VCN) to retrieve terraform configurations required to configure stack resources.
For example, you can configure a private compute instance using Terraform's remote exec functionality and access Terraform configurations in a private GitHub server.

Remotely execute scripts from the Resource Manager during job execution without exposing resources to the public internet.
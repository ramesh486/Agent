variable "tenancy_ocid" {
type = string  
description = "Target Tenancy OCID"
default = ""
}

variable "region" {
type = string  
description = "Region"
default = "us-ashburn-1"
}


variable "identity_domain_idcs_endpoint" {
    type = string
    description = "Go to OCI console >> IAM >> select the domain >> collect the DOMAIN URL with Port"
    default = "https://idcs-542f709831a54717800e4eb61a621ebc.identity.oraclecloud.com:443"
}

variable "group_defined_tags_key" {
    type = string  
    description = "Tag key"
    default = "CostCenter"
}
variable "group_defined_tags_namespace" {
    type = string  
    description = "Tag Namespace"
    default = "Tags"
  
}
variable "group_defined_tags_value" {
    type = string  
    description = "Tag Value"
    default = "6750"
  
}

variable "group_freeform_tags_key" {
    type = string  
    description = "Tag Key"
    default = "pipeline"
  
}

variable "group_freeform_tags_value" {
    type = string  
    description = "Tag Value"
    default = "OCI_OIC_CICD"
  
}

##### integrationviewers group ####

variable "group_integrationviewers_name" {
    type = string
    description = "Group Name - to be created"
    default = "IntegrationViewers"
}


##### integrationdevelopers group ####

variable "group_integrationdevelopers_name" {
    type = string
    description = "Group Name - to be created"
    default = "IntegrationDevelopers"
}


# ##### integrationadmins group ####

variable "group_integrationadmins_name" {
    type = string
    description = "Group Name - to be created"
    default = "IntegrationAdmins"
}



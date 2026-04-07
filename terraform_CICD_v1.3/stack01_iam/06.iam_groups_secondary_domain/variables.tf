# ----------------------------------------
# Common Variables
# ----------------------------------------

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

variable "domain_display_name" {
    type = string
    description = "Secondary Domain Display Name"
    default = "SecondaryDomain"
}

variable "group_defined_tags_namespace" {
    type = string  
    description = "Tag Namespace"
    default = "Automation_Tags"
}

variable "group_defined_tags_key" {
    type = string  
    description = "Tag key"
    default = "Automation_CostCenter"
}

variable "group_defined_tags_value" {
    type = string  
    description = "Tag Value"
    default = "Automation"
}

variable "group_freeform_tags_key" {
    type = string  
    description = "Tag Key"
    default = "Resource"
}

variable "group_freeform_tags_value" {
    type = string  
    description = "Tag Value"
    default = "Group"
}

# ----------------------------------------
##### IntegrationViewers group ####
# ----------------------------------------

variable "group_integrationviewers_name" {
    type = string
    description = "Group Name - to be created"
    default = "IntegrationViewers"
}

# ----------------------------------------
##### IntegrationDevelopers group ####
# ----------------------------------------

variable "group_integrationdevelopers_name" {
    type = string
    description = "Group Name - to be created"
    default = "IntegrationDevelopers"
}

# ----------------------------------------
# ##### IntegrationAdmins group ####
# ----------------------------------------

variable "group_integrationadmins_name" {
    type = string
    description = "Group Name - to be created"
    default = "IntegrationAdmins"
}



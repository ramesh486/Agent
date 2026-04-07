variable "tenancy_ocid" {}
variable "region" {}
variable "project_tag" {
    type = map
    default = {
        definedTags = {}
        freeformTags = {}
    }
}


### Auditors
variable "Auditors" {
    default = "Auditors" # "default/Auditors"
    type = string
    description =""
}
variable "Auditors_description" {
    default = "Managing Auditors-related resources"
    type = string
    description =""
}


### CostAdmins
variable "CostAdmins" {
    default = "CostAdmins" # "default/CostAdmins"
    type = string
    description =""
}
variable "CostAdmins_description" {
    default = "Managing CostAdmins-related resources"
    type = string
    description =""
}


### CredAdmins
variable "CredAdmins" {
    default = "CredAdmins" # "default/CredAdmins"
    type = string
    description =""
}
variable "CredAdmins_description" {
    default = "Managing CredAdmins-related resources"
    type = string
    description =""
}


### DatabaseAdmins
variable "DatabaseAdmins" {
    default = "DatabaseAdmins" # "default/DatabaseAdmins"
    type = string
    description =""
}
variable "DatabaseAdmins_description" {
    default = "Managing DatabaseAdmins-related resources"
    type = string
    description =""
}


### EmailFamilyAdministrator
variable "EmailFamilyAdministrator" {
    default = "EmailFamilyAdministrator" # "default/EmailFamilyAdministrator"
    type = string
    description =""
}
variable "EmailFamilyAdministrator_description" {
    default = "Managing EmailFamilyAdministrator-related resources"
    type = string
    description =""
}


### IAMAdmins
variable "IAMAdmins" {
    default = "IAMAdmins" # "default/IAMAdmins"
    type = string
    description =""
}
variable "IAMAdmins_description" {
    default = "Managing IAMAdmins-related resources"
    type = string
    description =""
}


### IntegrationAdmins
variable "IntegrationAdmins" {
    default = "IntegrationAdmins" # "default/IntegrationAdmins"
    type = string
    description =""
}
variable "IntegrationAdmins_description" {
    default = "Managing IntegrationAdmins-related resources"
    type = string
    description =""
}


### IntegrationDevelopers
variable "IntegrationDevelopers" {
    default = "IntegrationDevelopers" # "default/IntegrationDevelopers"
    type = string
    description =""
}
variable "IntegrationDevelopers_description" {
    default = "Managing IntegrationDevelopers-related resources"
    type = string
    description =""
}


### IntegrationViewers
variable "IntegrationViewers" {
    default = "IntegrationViewers" # "default/IntegrationViewers"
    type = string
    description =""
}
variable "IntegrationViewers_description" {
    default = "Managing IntegrationViewers-related resources"
    type = string
    description =""
}


### NetworkAdmins
variable "NetworkAdmins" {
    default = "NetworkAdmins" # "default/NetworkAdmins"
    type = string
    description =""
}
variable "NetworkAdmins_description" {
    default = "Managing NetworkAdmins-related resources"
    type = string
    description =""
}


### ObjectStorageAdmins
variable "ObjectStorageAdmins" {
    default = "ObjectStorageAdmins" # "default/ObjectStorageAdmins"
    type = string
    description =""
}
variable "ObjectStorageAdmins_description" {
    default = "Managing ObjectStorageAdmins-related resources"
    type = string
    description =""
}


### ObjectStorageReaders
variable "ObjectStorageReaders" {
    default = "ObjectStorageReaders" # "default/ObjectStorageReaders"
    type = string
    description =""
}
variable "ObjectStorageReaders_description" {
    default = "Managing ObjectStorageReaders-related resources"
    type = string
    description =""
}


### ObjectStorageWriters
variable "ObjectStorageWriters" {
    default = "ObjectStorageWriters" # "default/ObjectStorageWriters"
    type = string
    description =""
}
variable "ObjectStorageWriters_description" {
    default = "Managing ObjectStorageWriters-related resources"
    type = string
    description =""
}


### SecurityAdmins
variable "SecurityAdmins" {
    default = "SecurityAdmins" # "default/SecurityAdmins"
    type = string
    description =""
}
variable "SecurityAdmins_description" {
    default = "Managing SecurityAdmins-related resources"
    type = string
    description =""
}


### SysOpsTeam
variable "SysOpsTeam" {
    default = "SysOpsTeam" # "default/SysOpsTeam"
    type = string
    description =""
}
variable "SysOpsTeam_description" {
    default = "Managing SysOpsTeam-related resources"
    type = string
    description =""
}



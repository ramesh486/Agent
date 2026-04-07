###################
# common variables
###################

variable "tenancy_ocid" {
    type = string  
    description = "Target Tenancy OCID"
}

variable "region" {
    type = string  
    description = "Region"
    default = "us-ashburn-1"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Default Domain"
        }
      freeformTags = {}
  }
}
############
### Auditors
#############

variable "Auditors" {
    default = "Auditors" 
    type = string
    description ="Provide Auditors"
}
variable "Auditors_description" {
    default = "Managing Auditors-related resources"
    type = string
    description ="Provide Auditors description"
}

##################
### CostAdmins
##################

variable "CostAdmins" {
    default = "CostAdmins" 
    type = string
    description =""
}
variable "CostAdmins_description" {
    default = "Managing CostAdmins-related resources"
    type = string
    description =""
}

###############
### CredAdmins
###############

variable "CredAdmins" {
    default = "CredAdmins" 
    type = string
    description ="Provide CostAdmins"
}
variable "CredAdmins_description" {
    default = "Managing CredAdmins-related resources"
    type = string
    description ="Provide CostAdmins description"
}

###################
### DatabaseAdmins
####################

variable "DatabaseAdmins" {
    default = "DatabaseAdmins" 
    type = string
    description ="Provide DatabaseAdmins"
}
variable "DatabaseAdmins_description" {
    default = "Managing DatabaseAdmins-related resources"
    type = string
    description ="Provide DatabaseAdmins description"
}

#############################
### EmailFamilyAdministrator
##############################

variable "EmailFamilyAdministrator" {
    default = "EmailFamilyAdministrator" 
    type = string
    description ="Provide Email Family Administrator"
}
variable "EmailFamilyAdministrator_description" {
    default = "Managing EmailFamilyAdministrator-related resources"
    type = string
    description ="Provide Email Family Administrator"
}

############################
### IAMAdmins
###########################

variable "IAMAdmins" {
    default = "IAMAdmins" 
    type = string
    description ="Provide IAMAdmins"
}
variable "IAMAdmins_description" {
    default = "Managing IAMAdmins-related resources"
    type = string
    description ="Provide IAMAdmins description"
}

#######################
### IntegrationAdmins
#######################

variable "IntegrationAdmins" {
    default = "IntegrationAdmins" 
    type = string
    description ="Provide IntegrationAdmins"
}
variable "IntegrationAdmins_description" {
    default = "Managing IntegrationAdmins-related resources"
    type = string
    description ="Provide IntegrationAdmins description"
}

##########################
### IntegrationDevelopers
###########################

variable "IntegrationDevelopers" {
    default = "IntegrationDevelopers" 
    type = string
    description ="Provide IntegrationDevelopers"
}
variable "IntegrationDevelopers_description" {
    default = "Managing IntegrationDevelopers-related resources"
    type = string
    description ="Provide IntegrationDevelopers description"
}

########################
### IntegrationViewers
########################

variable "IntegrationViewers" {
    default = "IntegrationViewers" 
    description ="Provide IntegrationViewers"
}
variable "IntegrationViewers_description" {
    default = "Managing IntegrationViewers-related resources"
    type = string
    description ="Provide IntegrationViewers description"
}

##################
### NetworkAdmins
##################

variable "NetworkAdmins" {
    default = "NetworkAdmins" 
    type = string
    description ="Provide NetworkAdmins"
}
variable "NetworkAdmins_description" {
    default = "Managing NetworkAdmins-related resources"
    type = string
    description ="Provide NetworkAdmins description"
}

########################
### ObjectStorageAdmins
########################

variable "ObjectStorageAdmins" {
    default = "ObjectStorageAdmins" 
    description ="Provide ObjectStorageAdmins"
}
variable "ObjectStorageAdmins_description" {
    default = "Managing ObjectStorageAdmins-related resources"
    type = string
    description ="Provide ObjectStorageAdmins description"
}

#########################
### ObjectStorageReaders
#########################

variable "ObjectStorageReaders" {
    default = "ObjectStorageReaders" 
    type = string
    description ="Provide ObjectStorageReaders"
}
variable "ObjectStorageReaders_description" {
    default = "Managing ObjectStorageReaders-related resources"
    type = string
    description ="Provide ObjectStorageReaders description"
}

#########################
### ObjectStorageWriters
#########################

variable "ObjectStorageWriters" {
    default = "ObjectStorageWriters" 
    type = string
    description ="Provide Object Storage Writers"
}
variable "ObjectStorageWriters_description" {
    default = "Managing ObjectStorageWriters-related resources"
    type = string
    description ="Provide ObjectStorageWriters description"
}

###################
### SecurityAdmins
###################

variable "SecurityAdmins" {
    default = "SecurityAdmins" 
    type = string
    description ="Provide Security Admins"
}
variable "SecurityAdmins_description" {
    default = "Managing SecurityAdmins-related resources"
    type = string
    description ="Provide SecurityAdmins description"
}

###############
### SysOpsTeam
###############
variable "SysOpsTeam" {
    default = "SysOpsTeam" 
    type = string
    description ="Provide SysOpsTeam"
}
variable "SysOpsTeam_description" {
    default = "Managing SysOpsTeam-related resources"
    type = string
    description ="Provide SysOpsTeam description"
}



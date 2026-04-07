### AnnouncementReaders #####

module "AnnouncementReaders" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.AnnouncementReaders_policy_description
  policy_name             = var.AnnouncementReaders_policy_name
  policy_statements       = var.AnnouncementReaders_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

## AppAdmins ####

module "AppAdmins" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.AppAdmins_policy_description
  policy_name             = var.AppAdmins_policy_name
  policy_statements       = var.AppAdmins_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### Auditors ####

module "Auditors" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.Auditors_policy_description
  policy_name             = var.Auditors_policy_name
  policy_statements       = var.Auditors_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### CredAdmins ######

module "CredAdmins" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.CredAdmins_policy_description
  policy_name             = var.CredAdmins_policy_name
  policy_statements       = var.CredAdmins_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### DatabaseAdmins ######

module "DatabaseAdmins" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.DatabaseAdmins_policy_description
  policy_name             = var.DatabaseAdmins_policy_name
  policy_statements       = var.DatabaseAdmins_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}
### EmailFamilyAdminstrator ######

module "EmailFamilyAdminstrator" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.EmailFamilyAdminstrator_policy_description
  policy_name             = var.EmailFamilyAdminstrator_policy_name
  policy_statements       = var.EmailFamilyAdminstrator_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### IAMAdmins ######

module "IAMAdmins" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.IAMAdmins_policy_description
  policy_name             = var.IAMAdmins_policy_name
  policy_statements       = var.IAMAdmins_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### IntegrationAdmins ######

module "IntegrationAdmins" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.IntegrationAdmins_policy_description
  policy_name             = var.IntegrationAdmins_policy_name
  policy_statements       = var.IntegrationAdmins_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### IntegrationDevelopers ######

module "IntegrationDevelopers" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.IntegrationDevelopers_policy_description
  policy_name             = var.IntegrationDevelopers_policy_name
  policy_statements       = var.IntegrationDevelopers_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### IntegrationViewers ######

module "IntegrationViewers"{
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.IntegrationViewers_policy_description
  policy_name             = var.IntegrationViewers_policy_name
  policy_statements       = var.IntegrationViewers_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### NetworkAdmins ######

module "NetworkAdmins" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.NetworkAdmins_policy_description
  policy_name             = var.NetworkAdmins_policy_name
  policy_statements       = var.NetworkAdmins_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### ObjectStorageAdmins ######

module "ObjectStorageAdmins" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.ObjectStorageAdmins_policy_description
  policy_name             = var.ObjectStorageAdmins_policy_name
  policy_statements       = var.ObjectStorageAdmins_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### ObjectStorageReaders ######

module "ObjectStorageReaders"{
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.ObjectStorageReaders_policy_description
  policy_name             = var.ObjectStorageReaders_policy_name
  policy_statements       = var.ObjectStorageReaders_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### ObjectStorageWriters ######

module "ObjectStorageWriters" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.ObjectStorageWriters_policy_description
  policy_name             = var.ObjectStorageWriters_policy_name
  policy_statements       = var.ObjectStorageWriters_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### SecurityAdmins ######

module "SecurityAdmins" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.SecurityAdmins_policy_description
  policy_name             = var.SecurityAdmins_policy_name
  policy_statements       = var.SecurityAdmins_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### SysOpsTeams ######

module "SysOpsTeams" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.SysOpsTeams_policy_description
  policy_name             = var.SysOpsTeams_policy_name
  policy_statements       = var.SysOpsTeams_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### CostAdmins ######

module "CostAdmins" {
  source                  = "./policies_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  policy_description      = var.CostAdmins_policy_description
  policy_name             = var.CostAdmins_policy_name
  policy_statements       = var.CostAdmins_policy_statements
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}


### Auditors

module "Auditors" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.Auditors_description
  group_name              = var.Auditors
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}
### CostAdmins

module "CostAdmins" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.CostAdmins_description
  group_name              = var.CostAdmins
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}



### CredAdmins

module "CredAdmins" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.CredAdmins_description
  group_name              = var.CredAdmins
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}



### DatabaseAdmins

module "DatabaseAdmins" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.DatabaseAdmins_description
  group_name              = var.DatabaseAdmins
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}


### EmailFamilyAdministrator

module "EmailFamilyAdministrator" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.EmailFamilyAdministrator_description
  group_name              = var.EmailFamilyAdministrator
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}



### IAMAdmins

module "IAMAdmins" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.IAMAdmins_description
  group_name              = var.IAMAdmins
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}


### IntegrationAdmins

module "IntegrationAdmins" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.IntegrationAdmins_description
  group_name              = var.IntegrationAdmins
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}



### IntegrationDevelopers

module "IntegrationDevelopers" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.IntegrationDevelopers_description
  group_name              = var.IntegrationDevelopers
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}



### IntegrationViewers

module "IntegrationViewers" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.IntegrationViewers_description
  group_name              = var.IntegrationViewers
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}



### NetworkAdmins

module "NetworkAdmins" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.NetworkAdmins_description
  group_name              = var.NetworkAdmins
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}


### ObjectStorageAdmins

module "ObjectStorageAdmins" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.ObjectStorageAdmins_description
  group_name              = var.ObjectStorageAdmins
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}



### ObjectStorageReaders

module "ObjectStorageReaders" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.ObjectStorageReaders_description
  group_name              = var.ObjectStorageReaders
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}



### ObjectStorageWriters

module "ObjectStorageWriters" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.ObjectStorageWriters_description
  group_name              = var.ObjectStorageWriters
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}

### SecurityAdmins

module "SecurityAdmins" {
  source                  = "./groups_module"
  tenancy_ocid            = var.tenancy_ocid
  group_description       = var.SecurityAdmins_description
  group_name              = var.SecurityAdmins
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}


### SysOpsTeam

module "SysOpsTeam" {
  source                  = "./groups_module"
  tenancy_ocid        = var.tenancy_ocid
  group_description       = var.SysOpsTeam_description
  group_name              = var.SysOpsTeam
  freeformTags            = var.project_tag.freeformTags
  definedTags             = var.project_tag.definedTags
}


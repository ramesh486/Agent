#### 1 security ######

module "security" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  definedTags             = var.project_tag.definedTags
  freeformTags            = var.project_tag.freeformTags
  compartment_name        = var.security_compartment_name
  compartment_description = var.security_compartment_description
  enable_delete           = var.security_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### 2 monitoring ######
 
module "monitoring" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  definedTags             = var.project_tag.definedTags
  freeformTags            = var.project_tag.freeformTags
  compartment_name        = var.monitoring_compartment_name
  compartment_description = var.monitoring_compartment_description
  enable_delete           = var.monitoring_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### 3 network ######

module "network" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  definedTags             = var.project_tag.definedTags
  freeformTags            = var.project_tag.freeformTags 
  compartment_name        = var.network_compartment_name
  compartment_description = var.network_compartment_description
  enable_delete           = var.network_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### 4 nonprod hub ######

module "nonprodhub" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  definedTags             = var.project_tag.definedTags
  freeformTags            = var.project_tag.freeformTags  
  compartment_name        = var.nonprodhub_compartment_name
  compartment_description = var.nonprodhub_compartment_description
  enable_delete           = var.nonprodhub_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
} 

#### 5 nonprod ######

module "nonprod" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  definedTags             = var.nonprod_project_tag.definedTags
  freeformTags            = var.nonprod_project_tag.freeformTags 
  compartment_name        = var.nonprod_compartment_name
  compartment_description = var.nonprod_compartment_description
  enable_delete           = var.nonprod_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### 5.1 nonprod/nonprod_app ######


module "nonprod_app" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.nonprod.compartment_ocid
  definedTags             = var.nonprod_app_project_tag.definedTags
  freeformTags            = var.nonprod_app_project_tag.freeformTags 
  compartment_name        = var.nonprod_app_compartment_name
  compartment_description = var.nonprod_app_compartment_description
  enable_delete           = var.nonprod_app_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

### 5.2 nonprod/nonprod_db ######

module "nonprod_db" {
  source                  = "./compartment_module"
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.nonprod.compartment_ocid
  definedTags             = var.nonprod_db_project_tag.definedTags
  freeformTags            = var.nonprod_db_project_tag.freeformTags
  compartment_name        = var.nonprod_db_compartment_name
  compartment_description = var.nonprod_db_compartment_description
  enable_delete           = var.nonprod_db_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}




















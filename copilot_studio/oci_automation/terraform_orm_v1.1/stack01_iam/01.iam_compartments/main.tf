
#### 1 prod_hub ######

module "prodhub" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  definedTags             = var.project_tag.definedTags
  freeformTags            = var.project_tag.freeformTags  
  compartment_name        = var.prodhub_compartment_name
  compartment_description = var.prodhub_compartment_description
  enable_delete           = var.prodhub_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
} 

#### 2 nonprod hub ######

module "nonprodhub" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  definedTags             = var.project_tag.definedTags
  freeformTags            = var.project_tag.freeformTags  
  compartment_name        = var.nonprodhub_compartment_name
  compartment_description = var.nonprodhub_compartment_description
  enable_delete           = var.nonprodhub_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
} 

#### 3 network ######

module "network" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  definedTags             = var.project_tag.definedTags
  freeformTags            = var.project_tag.freeformTags 
  compartment_name        = var.network_compartment_name
  compartment_description = var.network_compartment_description
  enable_delete           = var.network_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


#### 4 monitoring ######
 
module "monitoring" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  definedTags             = var.project_tag.definedTags
  freeformTags            = var.project_tag.freeformTags
  compartment_name        = var.monitoring_compartment_name
  compartment_description = var.monitoring_compartment_description
  enable_delete           = var.monitoring_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


#### 5 security ######

module "security" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  definedTags             = var.project_tag.definedTags
  freeformTags            = var.project_tag.freeformTags
  compartment_name        = var.security_compartment_name
  compartment_description = var.security_compartment_description
  enable_delete           = var.security_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### 6 nonprod ######

module "nonprod" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  definedTags             = var.nonprod_project_tag.definedTags
  freeformTags            = var.nonprod_project_tag.freeformTags 
  compartment_name        = var.nonprod_compartment_name
  compartment_description = var.nonprod_compartment_description
  enable_delete           = var.nonprod_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### 6.1 nonprod/nonprod_dev ######


module "nonprod_dev" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.nonprod.compartment_ocid
  definedTags             = var.nonprod_dev_project_tag.definedTags
  freeformTags            = var.nonprod_dev_project_tag.freeformTags 
  compartment_name        = var.nonprod_dev_compartment_name
  compartment_description = var.nonprod_dev_compartment_description
  enable_delete           = var.nonprod_dev_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### 6.1.1 nonprod/nonprod_dev/appdev ######

module "appdev" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.nonprod_dev.compartment_ocid
  definedTags             = var.appdev_project_tag.definedTags
  freeformTags            = var.appdev_project_tag.freeformTags
  compartment_name        = var.appdev_compartment_name
  compartment_description = var.appdev_compartment_description
  enable_delete           = var.appdev_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### 6.1.2 nonprod/nonprod_dev/dbdev ######

module "dbdev" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.nonprod_dev.compartment_ocid
  definedTags             = var.dbdev_project_tag.definedTags
  freeformTags            = var.dbdev_project_tag.freeformTags 
  compartment_name        = var.dbdev_compartment_name
  compartment_description = var.dbdev_compartment_description
  enable_delete           = var.dbdev_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


### 6.2 nonprod/nonprod_tst ######

module "nonprod_tst" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.nonprod.compartment_ocid
  definedTags             = var.nonprod_tst_project_tag.definedTags
  freeformTags            = var.nonprod_tst_project_tag.freeformTags
  compartment_name        = var.nonprod_tst_compartment_name
  compartment_description = var.nonprod_tst_compartment_description
  enable_delete           = var.nonprod_tst_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

### 6.2.1 nonprod/nonprod_tst/apptst ######

module "apptst" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.nonprod_tst.compartment_ocid
  definedTags             = var.apptst_project_tag.definedTags
  freeformTags            = var.apptst_project_tag.freeformTags
  compartment_name        = var.apptst_compartment_name
  compartment_description = var.apptst_compartment_description
  enable_delete           = var.apptst_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

### 6.2.2 nonprod/nonprod_tst/dbtst ######

module "dbtst" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.nonprod_tst.compartment_ocid
  definedTags             = var.dbtst_project_tag.definedTags
  freeformTags            = var.dbtst_project_tag.freeformTags
  compartment_name        = var.dbtst_compartment_name
  compartment_description = var.dbtst_compartment_description
  enable_delete           = var.dbtst_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}


### 7 prod ######

module "prod" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = var.compartment_ocid
  definedTags             = var.prod_project_tag.definedTags
  freeformTags            = var.prod_project_tag.freeformTags
  compartment_name        = var.prod_compartment_name
  compartment_description = var.prod_compartment_description
  enable_delete           = var.prod_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### 7.1 prod/app_prod ######

module "appprod" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.prod.compartment_ocid
  definedTags             = var.appprod_project_tag.definedTags
  freeformTags            = var.appprod_project_tag.freeformTags
  compartment_name        = var.appprod_compartment_name
  compartment_description = var.appprod_compartment_description
  enable_delete           = var.appprod_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

#### 7.2 prod/db_prod ######

module "dbprod" {
  source                  = "./compartment_module"
  # providers = {
  # oci = oci.home
  # }
  tenancy_ocid            = var.tenancy_ocid
  compartment_ocid        = module.prod.compartment_ocid
  definedTags             = var.dbprod_project_tag.definedTags
  freeformTags            = var.dbprod_project_tag.freeformTags
  compartment_name        = var.dbprod_compartment_name
  compartment_description = var.dbprod_compartment_description
  enable_delete           = var.dbprod_enable_delete # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci
}

### END
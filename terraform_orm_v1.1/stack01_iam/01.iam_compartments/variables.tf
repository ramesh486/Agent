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

variable "compartment_ocid" {
    type = string  
    description = "Target compartment OCID"
    default = ""
}


variable "project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
        definedTags = {}
        freeformTags = {}
    }
}

#### 1 prod_hub ######

variable "prodhub_compartment_name" {
    type = string
    description = "compartment name"
    default = "prod_hub"
}

variable "prodhub_compartment_description" {
    type = string
    description = "compartment description"
    default     = "Compartment to host all network security / firewall _ Palo Alto VM "
}

variable "prodhub_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

#### 2 nonprod hub ######

variable "nonprodhub_compartment_name" {
    type = string
    description = "compartment name"
    default = "nonprod_hub"
}

variable "nonprodhub_compartment_description" {
    type = string
    description = "compartment description"
    default     = "Compartment to host all network security / firewall _ Palo Alto VM "
}

variable "nonprodhub_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}



#### 3 network ######


variable "network_compartment_name" {
    type = string
    description = "compartment name"
    default = "network"
}

variable "network_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all network related resources _ VCN, subnets etc"
}

variable "network_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

#### 4 monitoring ######

variable "monitoring_compartment_name" {
    type = string
    description = "compartment name"
    default = "monitoring"
}

variable "monitoring_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for monitoring, logging, events, notification and alarm"
}

variable "monitoring_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}


#### 5 security ######

variable "security_compartment_name" {
    type = string
    description = "compartment name"
    default = "security"
}

variable "security_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all security related resources _ Vulneratbility scanning, Secure Zones, Key Vault"
}

variable "security_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

#### 6 nonprod ######

variable "nonprod_compartment_name" {
    type = string
    description = "compartment name"
    default = "nonprod"
}

variable "nonprod_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all non prod related infra objects (dev, test)"
}

variable "nonprod_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

variable "nonprod_project_tag" {
  type = map
  description = "Tags to be Assigned to the Resources"
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

#### 6.1 nonprod/nonprod_dev ######

variable "nonprod_dev_compartment_name" {
    type = string
    description = "compartment name"
    default = "nonprod_dev"
}

variable "nonprod_dev_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all dev resource related Infra Objects"
}

variable "nonprod_dev_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

variable "nonprod_dev_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
    definedTags = {}
    freeformTags = {}
    }
}


#### 6.1.1 nonprod/nonprod_dev/appdev ######

variable "appdev_compartment_name" {
    type = string
    description = "compartment name"
    default = "appdev"
}

variable "appdev_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all app related resource"
}

variable "appdev_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

variable "appdev_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
    definedTags = {}
    freeformTags = {}
    }
}

#### 6.1.2 nonprod/nonprod_dev/dbdev ######

variable "dbdev_compartment_name" {
    type = string
    description = "compartment name"
    default = "dbdev"
}

variable "dbdev_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all database related resource"
}

variable "dbdev_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

variable "dbdev_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
    definedTags = {}
    freeformTags = {}
    }
}

### 6.2 nonprod/nonprod_tst ######

variable "nonprod_tst_compartment_name" {
    type = string
    description = "compartment name"
    default = "nonprod_tst"
}

variable "nonprod_tst_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all Test resource related Infra Objects"
}

variable "nonprod_tst_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

variable "nonprod_tst_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
    definedTags = {}
    freeformTags = {}
    }
}


### 6.2.1 nonprod/nonprod_tst/apptst ######

variable "apptst_compartment_name" {
    type = string
    description = "compartment name"
    default = "apptst"
}

variable "apptst_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all app related resource"
}

variable "apptst_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

variable "apptst_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
    definedTags = {}
    freeformTags = {}
    }
}

### 6.2.2 nonprod/nonprod_tst/dbtst ######

variable "dbtst_compartment_name" {
    type = string
    description = "compartment name"
    default = "dbtst"
}

variable "dbtst_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all database related resource"
}

variable "dbtst_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

variable "dbtst_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
    definedTags = {}
    freeformTags = {}
    }
}

### 7 prod ######

variable "prod_compartment_name" {
    type = string
    description = "compartment name"
    default = "prod"
}

variable "prod_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all Prod resource related Infra Objects"
}

variable "prod_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

variable "prod_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
    definedTags = {}
    freeformTags = {}
  }
}

#### 7.1 prod/app_prod ######

variable "appprod_compartment_name" {
    type = string
    description = "compartment name"
    default = "appprod"
}

variable "appprod_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all app related resource"
}

variable "appprod_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

variable "appprod_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
    definedTags = {}
    freeformTags = {}
  }
}

#### 7.2 prod/db_prod ######


variable "dbprod_compartment_name" {
    type = string
    description = "compartment name"
    default = "dbprod"
}

variable "dbprod_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all database related resource"
}

variable "dbprod_enable_delete" {
    type = bool
    default = false
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

variable "dbprod_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
    definedTags = {}
    freeformTags = {}
  }
}

### END
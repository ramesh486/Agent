variable "tenancy_ocid" {
    type = string  
    description = "Target Tenancy OCID"
    # default = ""
}

variable "region" {
    type = string  
    description = "Region"
    default = "us-ashburn-1"
}

variable "compartment_ocid" {
    type = string  
    description = "Target Compartment ocid"
    default = ""
}


variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Compartment"
        }
      freeformTags = {}
  }
}

#### 1 security ######

variable "security_compartment_name" {
    type = string
    description = "compartment name"
    default = "oci_security"
}

variable "security_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all security related resources _ Vulneratbility scanning, Secure Zones, Key Vault"
}

variable "security_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}



#### 2 monitoring ######

variable "monitoring_compartment_name" {
    type = string
    description = "compartment name"
    default = "oci_monitoring"
}

variable "monitoring_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for monitoring, logging, events, notification and alarm"
}

variable "monitoring_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

#### 3 network ######


variable "network_compartment_name" {
    type = string
    description = "compartment name"
    default = "oci_network"
}

variable "network_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all network related resources _ VCN, subnets etc"
}

variable "network_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

#### 4 nonprod hub ######

variable "nonprodhub_compartment_name" {
    type = string
    description = "compartment name"
    default = "oci_nonprod_hub"
}

variable "nonprodhub_compartment_description" {
    type = string
    description = "compartment description"
    default     = "Compartment to host all network security / firewall _ Palo Alto VM "
}

variable "nonprodhub_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}




#### 5 nonprod ######

variable "nonprod_compartment_name" {
    type = string
    description = "compartment name"
    default = "oci_nonprod"
}

variable "nonprod_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all non prod related infra objects (dev, test)"
}

variable "nonprod_enable_delete" {
    type = bool
    default = true
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

#### 5.1 nonprod/nonprod_app ######

variable "nonprod_app_compartment_name" {
    type = string
    description = "compartment name"
    default = "oci_nonprod_app"
}

variable "nonprod_app_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all dev resource related Infra Objects"
}

variable "nonprod_app_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

variable "nonprod_app_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
    definedTags = {}
    freeformTags = {}
    }
}

### 5.2 nonprod/nonprod_db ######

variable "nonprod_db_compartment_name" {
    type = string
    description = "compartment name"
    default = "oci_nonprod_db"
}

variable "nonprod_db_compartment_description" {
    type = string
    description = "compartment description"
    default = "Compartment for all Test resource related Infra Objects"
}

variable "nonprod_db_enable_delete" {
    type = bool
    default = true
    description = "if unchecked, on `terraform destroy`, compartment is deleted from the terraform state but not from oci"
}

variable "nonprod_db_project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
    definedTags = {}
    freeformTags = {}
    }
}

# ### END
variable "region" { }
variable "tenancy_ocid" { }
variable "compartment_ocid" { }
variable "description" { }

variable "feature_set" { }

variable "license_type" { }

variable "capacity_type" { }

variable "capacity_value" { }

variable "name" { }

variable "state" { }

variable "idcs_access_token" { }

variable "network_endpoint_type" { }
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

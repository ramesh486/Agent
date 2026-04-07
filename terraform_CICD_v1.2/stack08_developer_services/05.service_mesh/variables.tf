variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned."
}
variable "tenancy_ocid" {
  default = "" 
  type = string
  description = "Tenancy OCID"
}

variable "compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Service_mesh"
        }
      freeformTags = {}
  }
}

variable "mesh_certificate_authorities_ocid"{
    type        = string
    default     = ""
    description = "The OCID of the Certificate Authority to be associated with the Service Mesh"
}

variable "mesh_display_name"{
    type        = string
    default     = "Myservicemesh"
    description = "The display name for the Service Mesh"
}

variable "mesh_mtls_minimum"{
    type        = string
    default     = "STRICT"
    description = "The minimum security level for mutual TLS (mTLS) within the Service Mesh"
}

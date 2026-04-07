variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "The OCID of the compartment"
}

variable "region" {
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
}

variable "tag_namespace_description" {
    type        = string
    default     = ""
    description = "The description of the tag namespace"
}

variable "tag_namespace_name" {
    type        = string
    default     = ""
    description = "The name of the tag namespace"
}

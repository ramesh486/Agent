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
variable "ca_bundle_ca_bundle_pem" {
    type        = string
    default     = ""
    description = "The PEM-encoded certificate bundle to be uploaded"
}
variable "description" {
    type        = string
    default     = "Demo"
    description = "A description for the resource"
}
variable "ca_bundle_name" {
    type        = string
    default     = "MyCAbundle" 
    description = "The name of the CA bundle"
}


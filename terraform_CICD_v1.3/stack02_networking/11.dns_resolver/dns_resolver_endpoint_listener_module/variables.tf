###########################################
# Common Variables
###########################################
variable "compartment_ocid" {}
variable "project_tag" {
    type = map
    default = {
        definedTags = {}
        freeformTags = {}
    }
}


###########################################
# OCI DNS Resolver Endpoint Variables
###########################################

variable "resolver_endpoint_is_forwarding" {}

variable "resolver_endpoint_is_listening" {}

variable "resolver_endpoint_name" {}

variable "dns_resolver_ocid" {}

variable "resolver_endpoint_scope" {
    default = "PRIVATE"
}

variable "resolver_endpoint_endpoint_type" {
    default = "VNIC"
}

variable "subnet_ocid" {}
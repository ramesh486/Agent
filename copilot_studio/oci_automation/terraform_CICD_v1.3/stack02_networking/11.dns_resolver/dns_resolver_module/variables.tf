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
# OCI DNS Resolver Variables
###########################################

variable "dns_resolver_ocid" {}

variable "oci_dns_resolver_scope" {
    default = "PRIVATE"
}

variable "resolver_rules_action" {
    default = "FORWARD"
}

variable "source_endpoint_name" {}

variable "dns_views" {}

variable "resolver_rules" {
  
}



###########################################
# Common Variables
###########################################
variable "compartment_ocid" {}
variable "region" {}
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


###########################################
# OCI DNS Resolver Forwarder Variables
###########################################


variable "dns_forwarder_resolver_endpoint_is_forwarding" {
    default = "true"
}

variable "dns_forwarder_resolver_endpoint_is_listening" {
    default = "false"
}

variable "dns_forwarder_resolver_endpoint_name" {
    default = "dns_forwarder"
}

variable "dns_forwarder_subnet_ocid" {}



###########################################
# OCI DNS Resolver Listener Variables
###########################################


variable "dns_listener_resolver_endpoint_is_forwarding" {
    default = "false"
}

variable "dns_listener_resolver_endpoint_is_listening" {
    default = "true"
}

variable "dns_listener_resolver_endpoint_name" {
    default = "dns_listener"
}

variable "dns_listener_subnet_ocid" {}
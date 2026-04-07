variable "compartment_ocid"{
    type = string
    default = ""
    description = "compartment ocid"
}
variable "region"{
    type = string
    default = "us-ashburn-1"
    description = "region name"
}
variable "log_analytics_entity_entity_type_name"{
    type = string
    default = "Host (Linux)"
    description = "type name"
}
variable "log_analytics_entity_name"{
    type = string
    default = "Example_entity"
    description = "Entity name"
}

variable "log_analytics_entity_hostname"{
    type = string
    default = "aa.domainname.com"
    description = "Host name"
}

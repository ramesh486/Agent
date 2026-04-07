variable "compartment_ocid"{
    type        = string
    default     = ""
    description = "The OCID (Oracle Cloud Identifier) of the compartment"
}
variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned."
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

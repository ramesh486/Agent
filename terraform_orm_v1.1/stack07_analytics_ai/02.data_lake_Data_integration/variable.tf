variable "compartment_ocid"{
    type         = string
    default      = ""
    description  = "compartment_ocid"
}

variable "region"{
    type         = string
    default      = ""
    description  = "region"
}

variable "description"{
    type         = string
    default      = "Data_integration_Workspace_Example"
    description  = "Workspace description"
}
variable "display_name"{
    type         = string
    default      = "Workspace_Example"
    description  = "Workspace name"
}
variable "is_private_network_enabled"{
    type         = bool
    default      = false
    description  = "enabled"
}
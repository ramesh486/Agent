variable "compartment_ocid"{
    type        = string
    default     = ""
    description = "compartment ocid"
}
variable "region"{
    type        = string
    default     = "us-ashburn-1"
    description = "region"
}
variable "compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "tenancy_ocid" {
  default     = "" 
  type        = string
  description = "Tenancy OCID"
}

variable "compartment_name" {
    type        = string
    default     = "network"
    description = "Compartment Name to deploy the "
}


variable "subnet_display_name" {
  type          = string
  default       = "example_subnet"
  description   = "The subnet in which the application is deployed"
}

variable "bastion_type" {
    type        = string
    description = "The type of bastion to create"
    default     = "standard"
}

variable "client_cidr_block_allow_list" {
    type        = list(string)
    description = "A list of allowed CIDR blocks for clients connecting to the bastion"
    default     = ["10.0.0.0/16"]
}

variable "max_session_ttl_in_seconds" {
    type        = number
    description = "The maximum session time-to-live (TTL) for the bastion, in seconds"
    default     = "3600"
}

variable "bastion_name" {
    type        = string
    description = "The name of the bastion to create"
    default     = "Bastion002"
}


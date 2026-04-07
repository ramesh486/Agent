#######################################
## Common Variables
#######################################

variable "region"{
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned"
}
variable "tenancy_ocid" {
  default       = "" 
  type          = string
  description   = "Tenancy OCID"
}

variable "app_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "app_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}
variable "network_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name of the Subnet"
}

variable "subnet_display_name" {
  type        = string
  default     = ""
  description = "The subnet in which the application is deployed"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter"   = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Container_instance"
        }
      freeformTags = {}
  }
}
variable "availability_domain" {
  type        = string
  description = "Container instance availability domain."
  default     = ""

}

###################################
## Container instance  Variables
###################################

variable "container_restart_policy" {
  type        = string
  description = "The restart policy for the container."
  default     = "ALWAYS"
}
variable "image_url" {
  type        = string
  description = "The URL of the image to use for the container."
  default     = "iad.ocir.io/idennsb6k3kt/repo_nginx:latest"
}

variable "arguments" {
  type        = list
  description = "The arguments to pass to the container."
  default     = []
}
variable "command" {
  type        = list
  description = "The command to run inside the container."
  default     = []
}
variable "container_instance_display_name" {
  type        = string
  description = "The display name for the container."
  default     = "Demo_container"
}
variable "environment_variables" {
  type        = map(string)
  description = "Environment variables to set inside the container."
  default    = {"dockerHub.com" = "80"}
}

variable "is_resource_principal_disabled" {
  type        = bool
  description = "Whether the resource principal is disabled."
  default     = false
}

variable "container_display_name" {
  type        = string
  description = "container display name"
  default     = "Test_container"
}
variable "graceful_shutdown_timeout_in_seconds" {
  type        = number
  description = "graceful shutdown timeout in seconds"
  default     = 0
}

variable "shape" {
  type        = string
  description = "Shape"
  default     = "CI.Standard.E4.Flex"
}
variable "memory_in_gbs" {
  type        = number
  description = "The memory limit in GBs for the container."
  default     = 8
}

variable "ocpus" {
  type        = number
  description = "The number of OCPUs (Oracle Compute Units) for the container."
  default     = 1
}
variable "state" {
  type        = string
  description = "State"
  default     = "ACTIVE"
}

variable "vnic_display_name" {
  type        = string
  description = "The display name for the VNIC (Virtual Network Interface Card)."
  default     = "oke"
}

variable "hostname_label" {
  type        = string
  description = "The hostname label for the VNIC."
  default     = "oke"
}

variable "is_public_ip_assigned" {
  type        = bool
  description = "Whether a public IP address should be assigned to the VNIC."
  default     = true
}

variable "nsg_ids" {
  type        = list
  description = "The IDs of the NSGs (Network Security Groups) to associate with the VNIC."
  default     = []
}

variable "private_ip" {
  type        = string
  description = "The private IP address for the VNIC."
  default     = "10.0.0.45"
}

variable "skip_source_dest_check" {
  type        = bool
  description = "Whether to skip source/destination IP check for the VNIC."
  default     = true
}


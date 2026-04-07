variable "user_ocid" {
  type        = string
  description = "The OCID of the user running Terraform (for the OCI provider)."
  default = ""
}

variable "fingerprint" {
  type        = string
  description = "The fingerprint of your OCI API key."
  default = ""
}

variable "private_key_path" {
  type        = string
  description = "Local file path to your OCI private key."
  default = ""
}

variable "tenancy_ocid" {
  type        = string
  default     = ""
  description = "Tenancy OCID"
}

variable "region" {
  type        = string
  default     = ""
  description = "OCI region name."
}

variable "service_label" {
  type        = string
  default     = ""
  description = "Prefix prepended to deployed resource names."
}

variable "cis_level" {
  type        = number
  default     = 1
  description = "CIS benchmark level (options: 1 or 2)."
}

variable "hub_deployment" {
  type        = number
  default     = 3
  description = <<EOT
Hub deployment option:
  3 - Create DRG & DMZ VCN with a Network Virtual Appliance
  4 - Create DMZ VCN & use existing DRG (requires DRG OCID)
EOT
}

variable "define_net" {
  type        = bool
  default     = true
  description = "Enables network resources provisioning."
}

variable "enable_zpr" {
  type        = bool
  default     = true
  description = "Enables Zero Trust Packet Routing."
}

variable "add_tt_vcn1" {
  type        = bool
  default     = true
  description = "Deploys a three-tier VCN with default settings."
}

variable "tt_vcn1_attach_to_drg" {
  type        = bool
  default     = true
  description = "Attaches the three-tier VCN to the DRG."
}

variable "network_admin_email_endpoints" {
  type        = list(string)
  default     = ["email.address@example.com"]
  description = "Email addresses for network-related events."
}

variable "security_admin_email_endpoints" {
  type        = list(string)
  default     = ["email.address@example.com"]
  description = "Email addresses for security-related events."
}

variable "enable_service_connector" {
  type        = bool
  default     = true
  description = "Enables service connector for logging consolidation."
}

variable "activate_service_connector" {
  type        = bool
  default     = true
  description = "Activates the service connector."
}

variable "service_connector_target_kind" {
  type        = string
  default     = "streaming"
  description = "Target kind for the service connector (e.g., streaming, objectstorage)."
}

variable "enable_cloud_guard" {
  type        = bool
  default     = true
  description = "Enable Cloud Guard (set to false if already enabled)."
}

variable "enable_security_zones" {
  type        = bool
  default     = true
  description = "Deploys a security zone in the given compartment."
}

variable "vss_create" {
  type        = bool
  default     = true
  description = "Enables Vulnerability Scanning Service for Compute instances."
}

variable "create_budget" {
  type        = bool
  default     = true
  description = "Deploys a default budget."
}

variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "compartment ocid"
}
variable "region" {
    type        = string
    default     = ""
    description = "region"
}
variable "blockchain_platform_compute_shape" {
    type        = string
    default     = "STANDARD"
    description = "Select the blockchain platform compute shape"
}
variable "blockchain_platform_display_name" {
    type        = string
    default     = "MyBlockchain"
    description = "Assign the display name"
}
variable "blockchain_platform_idcs_access_token" {
    type        = string
    default     = ""
    description = "Provide idcs access token"
}
variable "blockchain_platform_platform_role" {
    type        = string
    default     = "FOUNDER"
    description = "Select blockchain platform platform role"
}

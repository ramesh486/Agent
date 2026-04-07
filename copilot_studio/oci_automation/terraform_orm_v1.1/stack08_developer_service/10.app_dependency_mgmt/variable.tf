
variable "region" {
    type        = string
    default     = ""
    description = "The region where the resources will be provisioned."
}
variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "The OCID (Oracle Cloud Identifier) of the compartment"
}

variable "knowledge_base_display_name" {
    type        = string
    default     = "Example_knowledge"
    description = "Specifies the display name for the knowledge base."
}
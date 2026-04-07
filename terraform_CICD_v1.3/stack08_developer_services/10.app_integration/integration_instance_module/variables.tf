variable "compartment_ocid" {}
variable "consumption_model" {}
variable "display_name" {}
variable "integration_instance_type" {}
variable "idcs_at" {}
variable "is_byol" {}
variable "is_file_server_enabled" {}
variable "is_visual_builder_enabled" {}
variable "message_packs" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

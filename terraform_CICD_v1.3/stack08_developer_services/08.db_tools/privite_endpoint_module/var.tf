variable "oci_db_compartment_ocid" {}
variable "database_tools_private_endpoint_display_name" {}
variable "subnet_ocid" {}
variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

variable  "compartment_ocid" {}
variable  "table_ddl_statement" {}
variable  "table_name" {}
variable  "max_read_units" {}
variable  "max_write_units" {}
variable  "max_storage_in_gbs" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}

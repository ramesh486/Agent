module test_tag_namespace {
  source                      = "./Tag_namespace_module"
  compartment_ocid            = var.compartment_ocid
  region                      = var.region
  tag_namespace_description   = var.tag_namespace_description
  tag_namespace_name          = var.tag_namespace_name
}

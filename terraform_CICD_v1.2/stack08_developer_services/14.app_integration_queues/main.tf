module "queue" {
  source                      = "./queue_module"
  region                      =  var.region
  compartment_ocid            =   local.compartment_ocid
  tag_namespace_description   = var.tag_namespace_description
  tag_namespace_name          = var.tag_namespace_name
  project_tag                 = var.project_tag
  tag_description             = var.tag_description
  tag_name                    = var.tag_name
  queue_display_name          = var.queue_display_name
  queue_retention_in_seconds  = var.queue_retention_in_seconds
  queue_timeout_in_seconds    = var.queue_timeout_in_seconds
  queue_visibility_in_seconds = var.queue_visibility_in_seconds
}

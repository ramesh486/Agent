module "service_connector_policy" {
  source                                  = "./service_connector_policy"
  service_connector_compartment_ocid      = local.service_connector_compartment_ocid
  service_connector_policy_display_name   = var.service_connector_policy_display_name
  service_connector_policy_description    = var.service_connector_policy_description
  policy_statements                       = var.policy_statements
  project_tag                             = var.project_tag
  
  
}

module "service_connector" {
  source                                = "./service_connector"
  service_connector_compartment_ocid    = local.service_connector_compartment_ocid
  service_connector_display_name        = var.service_connector_display_name
  service_connector_description         = var.service_connector_description
  source_kind                           = var.source_kind
  logging_source_compartment_ocid       = local.logging_source_compartment_ocid
  log_group_id                          = var.log_group_id
  target_kind                           = var.target_kind
  object_storage_bucket_name            = var.object_storage_bucket_name
  object_name_prefix                    = var.object_name_prefix
  project_tag                           = var.project_tag
}

########################
## dataflow application
########################
module application {
  source                           = "./data_flow_module"
  compartment_ocid                 = local.app_compartment_ocid
  application_display_name         = var.application_display_name
  application_driver_shape         = var.application_driver_shape
  application_executor_shape       = var.application_executor_shape
  file_uri                         = var.file_uri
  application_language             = var.application_language
  application_num_executors        = var.application_num_executors
  application_spark_version        = var.application_spark_version
  warehouse_bucket_uri             = var.warehouse_bucket_uri
  logs_bucket_uri                  = var.logs_bucket_uri
  project_tag                      = var.project_tag
}

############################
## catalog_private_endpoint
############################

module dataflow_private_endpoint {
    source                                   = "./data_Flow_endpoint_module"  
    compartment_ocid                         = local.network_compartment_ocid
    private_endpoint_dns_zones               = var.private_endpoint_dns_zones
    dataflow_private_endpoint_display_name   = var.dataflow_private_endpoint_display_name
    subnet_ocid                              = local.subnet_ocid
    project_tag                              = var.project_tag
}

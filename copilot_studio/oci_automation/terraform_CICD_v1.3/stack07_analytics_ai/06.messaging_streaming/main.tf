#####################################
# stream pool
#####################################

module "oci_stream_pool_module" {
  source                            = "./oci_stream_pool_module"
  compartment_ocid                  = local.monitor_compartment_ocid
  stream_pool_name                  = var.stream_pool_name  
  auto_create_topics_enable         = var.auto_create_topics_enable
  stream_pool_log_retention_hours   = var.stream_pool_log_retention_hours
  stream_pool_num_of_partitions     = var.stream_pool_num_of_partitions
  subnet_ocid                       = local.subnet_ocid
  project_tag                       = var.project_tag
  
}

#####################################
# oci stream
#####################################

module "oci_stream_module" {
  source                            = "./oci_stream_module"
  stream_display_name               = var.stream_display_name
  retention_in_hours                = var.stream_retention_in_hours
  stream_partitions                 = var.stream_partitions
  project_tag                       = var.project_tag
  stream_pool_ocid                  = module.oci_stream_pool_module.stream_pool_ocid
  }
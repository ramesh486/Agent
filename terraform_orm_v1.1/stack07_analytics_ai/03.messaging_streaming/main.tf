module "oci_stream_module" {
  source                            = "./oci_stream_module"
  compartment_ocid                  = var.compartment_ocid
  stream_pool_name                  = var.stream_pool_name  
  project_tag                       = var.project_tag 
  auto_create_topics_enable         = var.auto_create_topics_enable
  stream_pool_log_retention_hours   = var.stream_pool_log_retention_hours
  stream_pool_num_of_partitions     = var.stream_pool_num_of_partitions
  stream_display_name               = var.stream_display_name
  retention_in_hours                = var.stream_retention_in_hours
  stream_partitions                 = var.stream_partitions
  vcn_cidr_block                    = var.vcn_cidr_block                  
  vcn_display_name                  = var.vcn_display_name
  vcn_dns_label                     = var.vcn_dns_label
  subnet_cidr_block                 = var.subnet_cidr_block
  }
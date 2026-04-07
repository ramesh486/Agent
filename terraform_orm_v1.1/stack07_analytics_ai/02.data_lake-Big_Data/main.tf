module bds_instance {
  #Required
  source                                   = "./bds_module"
  compartment_ocid                         = var.compartment_ocid
  display_name                             = var.display_name
  cluster_admin_password                   = var.cluster_admin_password
  is_high_availability                     = var.is_high_availability 
  is_secure                                = var.is_secure 
  cluster_version                          = var.cluster_version 
  master_node_shape                        = var.master_node_shape 
  subnet_ocid                              = var.subnet_ocid
  master_node_block_volume_size_in_gbs     = var.master_node_block_volume_size_in_gbs 
  master_node_number_of_nodes              = var.master_node_number_of_nodes 
  util_node_shape                          = var.util_node_shape 
  util_node_shape_block_volume_size_in_gbs = var.util_node_shape_block_volume_size_in_gbs
  util_node_shape_number_of_nodes          = var.util_node_shape_number_of_nodes 
  worker_node_shape                        = var.worker_node_shape 
  worker_node_shape_block_volume_size_in_gbs = var.worker_node_shape_block_volume_size_in_gbs 
  worker_node_number_of_nodes              = var.worker_node_number_of_nodes  
  cluster_public_key                       = var.cluster_public_key 

}
resource "oci_bds_bds_instance" "tf_bds_instance" {
  #Required
  compartment_id             = var.compartment_ocid
  display_name               = var.display_name
  
  cluster_admin_password     = var.cluster_admin_password
  is_high_availability       = var.is_high_availability 
  is_secure                  = var.is_secure 
  cluster_version            = var.cluster_version 
  master_node {
    shape                    = var.master_node_shape 
    subnet_id                = var.subnet_ocid 
    block_volume_size_in_gbs = var.master_node_block_volume_size_in_gbs 
    number_of_nodes          = var.master_node_number_of_nodes
  }
  util_node {
    shape                    = var.util_node_shape 
    subnet_id                = var.subnet_ocid 
    block_volume_size_in_gbs = var.util_node_shape_block_volume_size_in_gbs
    number_of_nodes          = var.util_node_shape_number_of_nodes 
  }
  worker_node {
    shape                    = var.worker_node_shape 
    subnet_id                = var.subnet_ocid 
    block_volume_size_in_gbs = var.worker_node_shape_block_volume_size_in_gbs 
    number_of_nodes          = var.worker_node_number_of_nodes  
  }
  cluster_public_key         = var.cluster_public_key 

}

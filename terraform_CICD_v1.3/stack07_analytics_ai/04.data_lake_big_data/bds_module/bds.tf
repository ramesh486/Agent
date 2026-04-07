resource "oci_bds_bds_instance" "tf_bds_instance" {
  compartment_id             = var.compartment_ocid
  display_name               = var.display_name
  
  cluster_admin_password     = var.cluster_admin_password
  is_high_availability       = var.is_high_availability 
  is_secure                  = var.is_secure 
  cluster_version            = var.cluster_version 
  master_node {
    shape                    = var.master_node_shape 
    subnet_id                = var.master_subnet_ocid 
    block_volume_size_in_gbs = var.master_node_block_volume_size_in_gbs 
    number_of_nodes          = var.master_node_number_of_nodes
  }
  util_node {
    shape                    = var.util_node_shape 
    subnet_id                = var.util_subnet_ocid 
    block_volume_size_in_gbs = var.util_node_shape_block_volume_size_in_gbs
    number_of_nodes          = var.util_node_shape_number_of_nodes 
  }
  worker_node {
    shape                    = var.worker_node_shape 
    subnet_id                = var.worker_subnet_ocid 
    block_volume_size_in_gbs = var.worker_node_shape_block_volume_size_in_gbs 
    number_of_nodes          = var.worker_node_number_of_nodes  
  }
  cluster_public_key         = var.cluster_public_key 
  defined_tags      = var.project_tag.definedTags
  freeform_tags     = var.project_tag.freeformTags
  

}


data "oci_bds_bds_instance" "tf_bds_instance" {
    bds_instance_id = "ocid1.bigdataservice.oc1.iad.amaaaaaapvq3y5aa6py23yw6bjek7isvysriu42u4yghwvs75jbxs3baxlja"
}

output "tf_bds_instance" {
  value = data.oci_bds_bds_instance.tf_bds_instance
}


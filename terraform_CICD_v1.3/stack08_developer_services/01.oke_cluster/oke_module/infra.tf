
data "oci_identity_availability_domains" "ad_list" {
  compartment_id = var.tenancy_ocid
}
data "oci_containerengine_cluster_option" "k8s_cluster_option" {
    cluster_option_id = "all"
}
locals {
  ad_names = data.oci_identity_availability_domains.ad_list.availability_domains[*].name
}

############################################
# SSH key for all nodes
############################################

resource "tls_private_key" "ssh_key" {
  count     = var.use_custom_ssh_public_key == "true" ? 0 : 1
  algorithm = "RSA"
  rsa_bits  = 4096
}


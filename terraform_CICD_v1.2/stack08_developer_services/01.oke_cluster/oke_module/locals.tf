
locals {
  available_kubernetes_versions                             = data.oci_containerengine_cluster_option.k8s_cluster_option.kubernetes_versions
  num_kubernetes_versions                                   = length(local.available_kubernetes_versions)  

  is_worker_node_flexible_shape                             = length(regexall(".*Flex$", var.node_instance_shape)) > 0

  core_kubernetes_version                                   = local.oke_cluster.cluster_kubernetes_version == "LATEST" ? element(local.available_kubernetes_versions, (local.num_kubernetes_versions - 1)) : local.oke_cluster.cluster_kubernetes_version

  oke_cluster = {
    cluster_kubernetes_version                              = "LATEST"
    cluster_name                                            = var.oke_display_name
    cluster_options_add_ons_is_kubernetes_dashboard_enabled = false
    cluster_options_add_ons_is_kubernetes_tiller_enabled    = false
    cluster_options_kubernetes_network_config_pods_cidr     = var.k8s_cluster_pods_cidr_blocks
    cluster_options_kubernetes_network_config_services_cidr = var.k8s_cluster_services_cidr_blocks
    cluster_nodepool_display_name                           = "${var.oke_display_name}_nodepool"
    source_type                                             = "IMAGE"
    ssh_public_key                                          = var.use_custom_ssh_public_key == "true" ? var.ssh_public_key : tls_private_key.ssh_key[0].public_key_openssh
  }
}
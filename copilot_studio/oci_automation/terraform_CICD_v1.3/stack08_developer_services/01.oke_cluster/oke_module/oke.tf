
##############################################
# OKE Cluster 
##############################################

resource "oci_containerengine_cluster" "this" {
  endpoint_config {
    is_public_ip_enabled              = var.create_private_k8s_endpoint == "false" ? "true" : "false"
    subnet_id                         = var.k8s_api_endpoint_subnet_ocid
  }
  compartment_id                      = var.compartment_ocid
  kubernetes_version                  = local.core_kubernetes_version
  name                                = local.oke_cluster.cluster_name
  defined_tags                        = var.project_tag.definedTags
  freeform_tags                       = var.project_tag.freeformTags
  options {
    add_ons {
      is_kubernetes_dashboard_enabled = local.oke_cluster.cluster_options_add_ons_is_kubernetes_dashboard_enabled
      is_tiller_enabled               = local.oke_cluster.cluster_options_add_ons_is_kubernetes_tiller_enabled
    }
    kubernetes_network_config {
      pods_cidr                       = local.oke_cluster.cluster_options_kubernetes_network_config_pods_cidr
      services_cidr                   = local.oke_cluster.cluster_options_kubernetes_network_config_services_cidr
    }
    service_lb_subnet_ids             = var.load_balancer_subnet_ocid
    service_lb_config {
        defined_tags                  = var.project_tag.definedTags
        freeform_tags                 = var.project_tag.freeformTags
    }
    persistent_volume_config {
        defined_tags                  = var.project_tag.definedTags
        freeform_tags                 = var.project_tag.freeformTags
    }
  }
  cluster_pod_network_options {
      cni_type                        = var.pod_network_option_details_cni_type
  }
  vcn_id = var.vcn_ocid
}

###################################################
 # Create OKE node pool
###################################################

resource "oci_containerengine_node_pool" "nodepool" {
  count                        = var.node_pool_count
  cluster_id                   = oci_containerengine_cluster.this.id
  compartment_id               = var.compartment_ocid
  kubernetes_version           = local.core_kubernetes_version
  name                         = local.oke_cluster.cluster_nodepool_display_name
  defined_tags                 = var.project_tag.definedTags
  freeform_tags                = var.project_tag.freeformTags
  node_config_details {
    defined_tags               = var.project_tag.definedTags
    freeform_tags              = var.project_tag.freeformTags
    node_pool_pod_network_option_details {

            cni_type            = var.pod_network_option_details_cni_type
            max_pods_per_node   = var.pod_network_option_details_cni_type == "OCI_VCN_IP_NATIVE" ? var.pod_network_option_details_max_pods_per_node : 0
            pod_nsg_ids         = var.pod_network_option_details_cni_type == "OCI_VCN_IP_NATIVE" ? var.pod_network_option_details_pod_nsg_ids : []
            pod_subnet_ids      = var.pod_network_option_details_cni_type == "OCI_VCN_IP_NATIVE" ? var.pod_network_option_details_pod_subnet_ids : []
        }

    dynamic "placement_configs" {
      iterator                  = ad_iterator
      for_each                  = local.ad_names
      content {
        availability_domain     = ad_iterator.value
        subnet_id               = var.worker_node_subnet_ocid
      }
    }
    size = var.node_pool_regional_size
  }
  node_source_details {
    image_id                   = var.instance_vm_image_ocid
    source_type                = local.oke_cluster.source_type
    boot_volume_size_in_gbs    = var.node_pool_node_source_details_boot_volume_size_in_gbs
  }

  node_shape                    = var.node_instance_shape
  dynamic "node_shape_config" {
    for_each                    = local.is_worker_node_flexible_shape ? [1] : []

    content {
      memory_in_gbs             = var.node_config_memory_in_gbs
      ocpus                     = var.node_config_ocpus
    }
  }
  ssh_public_key                = local.oke_cluster.ssh_public_key
}

data "oci_containerengine_cluster_kube_config" "oke_cluster_kube_config" {
  cluster_id                    = oci_containerengine_cluster.this.id
}

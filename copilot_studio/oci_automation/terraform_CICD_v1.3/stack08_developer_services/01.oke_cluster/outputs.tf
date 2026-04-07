output "k8s_version" {
  value = module.oke_cluster.k8s_version
}

output "rsa_public_key" {
  value = module.oke_cluster.rsa_public_key
  sensitive = true
}

output "rsa_private_key" {
  value = module.oke_cluster.rsa_private_key
  sensitive = true
}

output "oci_core_images" {
  value = data.oci_core_images.images.images.0.id
}

output "worker_node_image_name" {
  value = data.oci_core_images.images.images.0.display_name
}

output "worker_node_operating_system" {
  value = data.oci_core_images.images.images.0.operating_system
}


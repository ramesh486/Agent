output "k8s_version" {
  value = "${element(local.available_kubernetes_versions, (local.num_kubernetes_versions - 1))} is used for Kubernetes cluster"
}

output "rsa_public_key" {
  value = tls_private_key.ssh_key.0.public_key_openssh
  sensitive = true
}

output "rsa_private_key" {
  value = tls_private_key.ssh_key.0.private_key_openssh
  sensitive = true
}
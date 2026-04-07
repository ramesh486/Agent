output "k8s_version" {
  value = "${element(local.available_kubernetes_versions, (local.num_kubernetes_versions - 1))} is used for Kubernetes cluster"
}
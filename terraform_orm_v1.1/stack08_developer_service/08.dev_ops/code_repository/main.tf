module "code_repo_module" {
  source                = "./code_repo_module"
  tenancy_ocid          = var.tenancy_ocid
  region                = var.region
  repo_name             = var.repo_name
  default_branch        = var.default_branch
  description           = var.description
  repository_type       = var.repository_type
  compartment_ocid      = var.compartment_ocid
  project_name          = var.project_name
  notification_topic    = var.notification_topic
}

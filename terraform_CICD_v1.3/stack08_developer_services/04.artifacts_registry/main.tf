module "artifacts_repository" {
    source                              = "./artifacts_repository_module"
    compartment_ocid                    = local.compartment_ocid
    project_tag                         = var.project_tag
    artifacts_repository_is_immutable   = var.artifacts_repository_is_immutable
    artifacts_repository_type           = var.artifacts_repository_type
    artifacts_repository_description    = var.artifacts_repository_description
    artifacts_repository_display_name   = var.artifacts_repository_display_name
}
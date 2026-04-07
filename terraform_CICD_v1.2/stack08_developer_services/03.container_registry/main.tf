module "container_repository" {
    source                                      = "./container_repository_module"
    compartment_ocid                            = local.compartment_ocid
    project_tag                                 = var.project_tag
    container_repository_readme_content         = var.container_repository_readme_content
    container_repository_readme_format          = var.container_repository_readme_format
    container_repository_description            = var.container_repository_description
    container_repository_display_name           = var.container_repository_display_name
    container_repository_is_public              = var.container_repository_is_public
}
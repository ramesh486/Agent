module "iam_group" {
  source                                  = "./groups_module"
  project_tag                             = var.project_tag
  domain_group_display_name               = var.domain_group_display_name
  identity_domain_idcs_endpoint           = var.identity_domain_idcs_endpoint
  iam_group_schema                        = var.iam_group_schema
}
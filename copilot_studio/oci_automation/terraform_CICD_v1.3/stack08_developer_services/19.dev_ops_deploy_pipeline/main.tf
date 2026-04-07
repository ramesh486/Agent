#####################################
# Dev ops Deploy Pipeline
#####################################

module "oke_blue_green_deploy_stage" {
  source                            = "./oke_blue_green_deploy_stage_module"
  tenancy_ocid                      = var.tenancy_ocid
  region                            = var.region
  compartment_ocid                  = local.app_compartment_ocid
  notification_topic_name           = var.notification_topic_name
  project_name                      = var.project_name
  deploy_pipeline_display_name      = var.deploy_pipeline_display_name
  deploy_artifact_display_name      = var.deploy_artifact_display_name
  deploy_artifact_type              = var.deploy_artifact_type
  argument_substitution_mode        = var.argument_substitution_mode
  deploy_artifact_source_type       = var.deploy_artifact_source_type
  base64encoded_content             = var.base64encoded_content
  deploy_environment_type           = var.deploy_environment_type
  deploy_environment_display_name   = var.deploy_environment_display_name
  deploy_stage_type                 = var.deploy_stage_type
  deploy_stage_display_name         = var.deploy_stage_display_name
  strategy_type                     = var.strategy_type
  namespace_a                       = var.namespace_a
  namespace_b                       = var.namespace_b
  ingress_name                      = var.ingress_name
  deploy_stage_type1                = var.deploy_stage_type1
  deploy_stage_display_name1        = var.deploy_stage_display_name1
  kubernetes_version                = var.kubernetes_version
  cluster_name                      = var.cluster_name
  vcn_ocid                          = local.vcn_ocid
  cidr_block                        = var.cidr_block
  display_name                      = var.display_name
  project_tag                       = var.project_tag
}

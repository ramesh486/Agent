resource "oci_ons_notification_topic" "test_notification_topic" {
  compartment_id                 = var.compartment_ocid
  name                           = var.notification_topic_name
}

resource "oci_devops_project" "test_project" {
  compartment_id                  = var.compartment_ocid
  name                            = var.project_name
  notification_config {
    topic_id = oci_ons_notification_topic.test_notification_topic.id
  }
}

resource "oci_devops_deploy_pipeline" "test_deploy_pipeline" {
  project_id                      = oci_devops_project.test_project.id
  display_name                    = var.deploy_pipeline_display_name
}

resource "oci_devops_deploy_artifact" "test_deploy_inline_artifact" {
  project_id                      = oci_devops_project.test_project.id
  display_name                    = var.deploy_artifact_display_name
  deploy_artifact_type            = var.deploy_artifact_type
  argument_substitution_mode      = var.argument_substitution_mode
  deploy_artifact_source {
    deploy_artifact_source_type   = var.deploy_artifact_source_type
    base64encoded_content         = var.base64encoded_content
  }
}

resource "oci_devops_deploy_environment" "test_deploy_oke_environment" {
  deploy_environment_type         = var.deploy_environment_type
  project_id                      = oci_devops_project.test_project.id
  cluster_id                      = oci_containerengine_cluster.test_cluster.id
  display_name                    = var.deploy_environment_display_name
}

resource "oci_devops_deploy_stage" "test_oke_blue_green_deploy_stage" { 
  deploy_pipeline_id              = oci_devops_deploy_pipeline.test_deploy_pipeline.id
  deploy_stage_predecessor_collection {
    items {
      id = oci_devops_deploy_pipeline.test_deploy_pipeline.id
    }
  }
  deploy_stage_type              = var.deploy_stage_type
  display_name                            = var.deploy_stage_display_name
  oke_cluster_deploy_environment_id       = oci_devops_deploy_environment.test_deploy_oke_environment.id
  kubernetes_manifest_deploy_artifact_ids = [oci_devops_deploy_artifact.test_deploy_inline_artifact.id]
  blue_green_strategy {
    strategy_type = var.strategy_type
    namespace_a   = var.namespace_a
    namespace_b   = var.namespace_b
    ingress_name  = var.ingress_name
  }
}

resource "oci_devops_deploy_stage" "test_oke_blue_green_traffic_shift_deploy_stage" {
  deploy_pipeline_id = oci_devops_deploy_pipeline.test_deploy_pipeline.id
  deploy_stage_predecessor_collection {
    items {
      id = oci_devops_deploy_stage.test_oke_blue_green_deploy_stage.id
    }
  }
  deploy_stage_type                  = var.deploy_stage_type1
  display_name                       = var.deploy_stage_display_name1
  oke_blue_green_deploy_stage_id     = oci_devops_deploy_stage.test_oke_blue_green_deploy_stage.id
}

resource "oci_containerengine_cluster" "test_cluster" {
  compartment_id                     = var.compartment_ocid
  kubernetes_version                 = var.kubernetes_version
  name                               = var.cluster_name
  vcn_id                             = var.vcn_ocid
  defined_tags                       = var.project_tag.definedTags
  freeform_tags                      = var.project_tag.freeformTags  
}

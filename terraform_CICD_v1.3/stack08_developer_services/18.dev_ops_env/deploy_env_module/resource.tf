resource "oci_ons_notification_topic" "test_notification_topic" {
  compartment_id         = var.compartment_ocid
  name                   = var.notification_topic
  defined_tags           = var.project_tag.definedTags
  freeform_tags          = var.project_tag.freeformTags  
}

resource "oci_devops_project" "test_project" {
  compartment_id        = var.compartment_ocid
  name                  = var.project_name
  notification_config {
    topic_id = oci_ons_notification_topic.test_notification_topic.id
  }
  defined_tags          = var.project_tag.definedTags
  freeform_tags         = var.project_tag.freeformTags  
}

resource "oci_devops_deploy_environment" "test_deploy_function_environment" {
  deploy_environment_type = var.deploy_environment_type
  project_id              = oci_devops_project.test_project.id
  function_id             = var.function_id
  display_name            = var.deploy_environment_display_name
  defined_tags            = var.project_tag.definedTags
  freeform_tags           = var.project_tag.freeformTags
}

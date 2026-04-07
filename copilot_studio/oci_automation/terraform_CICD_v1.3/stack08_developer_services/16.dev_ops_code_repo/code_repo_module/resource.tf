resource "oci_devops_repository" "test_repository" {
  name            = var.repo_name
  project_id      = oci_devops_project.test_project.id
  default_branch  = var.default_branch
  description     = var.description
  repository_type = var.repository_type
  defined_tags    = var.project_tag.definedTags
  freeform_tags   = var.project_tag.freeformTags  
}

resource "oci_devops_project" "test_project" {
  compartment_id = var.compartment_ocid
  name           = var.project_name
  notification_config {
    topic_id     = oci_ons_notification_topic.test_notification_topic.id
  }
  defined_tags   = var.project_tag.definedTags
  freeform_tags  = var.project_tag.freeformTags  
}

resource "oci_ons_notification_topic" "test_notification_topic" {
  compartment_id = var.compartment_ocid
  name           = var.notification_topic
  defined_tags   = var.project_tag.definedTags
  freeform_tags  = var.project_tag.freeformTags  
}

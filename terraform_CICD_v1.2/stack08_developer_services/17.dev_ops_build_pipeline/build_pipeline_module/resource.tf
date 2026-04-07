resource "oci_devops_build_pipeline" "test_build_pipeline" {
  project_id = oci_devops_project.test_project.id
  build_pipeline_parameters {
    items {
      name          = var.parameter_name
      default_value = var.default_value
      description   = var.description
    }
  }
  display_name      = var.display_name
  defined_tags      = var.project_tag.definedTags
  freeform_tags     = var.project_tag.freeformTags  
}

resource "oci_devops_project" "test_project" {
  compartment_id    = var.compartment_ocid
  name              = var.project_name
  notification_config {
    topic_id        = oci_ons_notification_topic.test_notification_topic.id
  }
  defined_tags      = var.project_tag.definedTags
  freeform_tags     = var.project_tag.freeformTags  
}

resource "oci_ons_notification_topic" "test_notification_topic" {
  compartment_id    = var.compartment_ocid
  name              = var.notification_topic  
  defined_tags      = var.project_tag.definedTags
  freeform_tags     = var.project_tag.freeformTags
}

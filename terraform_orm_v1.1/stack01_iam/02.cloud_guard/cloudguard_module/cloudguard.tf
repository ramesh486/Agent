
resource "oci_cloud_guard_cloud_guard_configuration" "tenancy_cloud_guard_configuration" {
  compartment_id   = var.tenancy_ocid
  reporting_region = var.region
  status           = var.is_cloud_guard_enabled == true ? "ENABLED" : "DISABLED"
}

# ----------------------------------
# Cloud Guard policies
# ----------------------------------

resource "random_id" "cloudguard" {
  byte_length = 4
}

resource "oci_identity_policy" "cloud_guard_policy" {
  compartment_id    = var.tenancy_ocid
  description       = var.policy_description
  name              = "${var.cloud_guard_policy_name}-${var.suffix}-${random_id.cloudguard.hex}"
  defined_tags      = var.project_tag.definedTags
  freeform_tags     = var.project_tag.freeformTags
  statements        = var.policy_statements
}

# ------------------------------------
# Cloud Guard target
# ------------------------------------

resource "oci_cloud_guard_target" "cloud_guard_target" {
  compartment_id       = var.tenancy_ocid
  display_name         = "${var.cloud_guard_target_name}-${var.suffix}"
  target_resource_id   = var.tenancy_ocid
  target_resource_type = var.target_resource_type
  description          = var.target_description

  defined_tags       = var.project_tag.definedTags
  freeform_tags      = var.project_tag.freeformTags
  
  target_detector_recipes {
    detector_recipe_id = data.oci_cloud_guard_detector_recipes.configuration_detector_recipe.detector_recipe_collection.0.items.0.id
  }

  target_detector_recipes {
    detector_recipe_id = data.oci_cloud_guard_detector_recipes.activity_detector_recipe.detector_recipe_collection.0.items.0.id
  }

  target_detector_recipes {
    detector_recipe_id = data.oci_cloud_guard_detector_recipes.threat_detector_recipe.detector_recipe_collection.0.items.0.id
  }

  target_responder_recipes {
    responder_recipe_id = data.oci_cloud_guard_responder_recipes.responder_recipe.responder_recipe_collection.0.items.0.id
  }

  depends_on = [oci_cloud_guard_cloud_guard_configuration.tenancy_cloud_guard_configuration]
}

### END
resource "oci_autoscaling_auto_scaling_configuration" "test_Auto_Scaling_Configuration" {
  compartment_id       = var.compartment_ocid
  cool_down_in_seconds = var.cool_down_in_seconds
  display_name         = var.auto_scaling_configuration_display_name
  defined_tags         = var.project_tag.definedTags
  freeform_tags        = var.project_tag.freeformTags

  policies {
    capacity {
      initial = var.capacity_initial
      max     = var.capacity_max
      min     = var.capacity_min
    }

    display_name = var.policy_display_name
    policy_type  = var.policy_type 

    rules {
      action {
        type  = var.action_type
        value = var.action_value
      }

      display_name = var.action_display_name

      metric {
        metric_type = var.metric_type

        threshold {
          operator = var.threshold_operator
          value    = var.threshold_value
        }
      }
    }

    rules {
      action {
        type  = var.action_type1
        value = var.action_value1
      }

      display_name = var.rules_display_name

      metric {
        metric_type = var.metric_type1

        threshold {
          operator = var.threshold_operator1
          value    = var.threshold_value1
        }
      }
    }
  }

  auto_scaling_resources {
    id   = var.instance_pool_ocid
    type = var.auto_scaling_resources_type
  }
}


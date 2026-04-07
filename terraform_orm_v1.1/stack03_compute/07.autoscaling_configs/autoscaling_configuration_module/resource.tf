resource "oci_autoscaling_auto_scaling_configuration" "test_Auto_Scaling_Configuration" {
  compartment_id       = var.compartment_ocid
  cool_down_in_seconds = var.cool_down_in_seconds
  display_name         = var.auto_scaling_configuration_display_name

  policies {
    capacity {
      initial = "2"
      max     = "4"
      min     = "2"
    }

    display_name = var.policy_display_name
    policy_type  = var.policy_type 

    rules {
      action {
        type  = "CHANGE_COUNT_BY"
        value = "1"
      }

      display_name = "TestScaleOutRule"

      metric {
        metric_type = "CPU_UTILIZATION"

        threshold {
          operator = "GT"
          value    = "90"
        }
      }
    }

    rules {
      action {
        type  = "CHANGE_COUNT_BY"
        value = "-1"
      }

      display_name = "testScaleInRule"

      metric {
        metric_type = "CPU_UTILIZATION"

        threshold {
          operator = "LT"
          value    = "1"
        }
      }
    }
  }

  auto_scaling_resources {
    id   = var.instance_pool_ocid
    type = "instancePool"
  }
}


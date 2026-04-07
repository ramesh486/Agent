resource oci_apigateway_usage_plan this {
    compartment_id              = var.compartment_ocid
    entitlements {
        name                    = var.usage_plan_entitlements_name
        description             = var.usage_plan_entitlements_description
        quota {
            operation_on_breach = var.usage_plan_entitlements_quota_operation_on_breach
            reset_policy        = var.usage_plan_entitlements_quota_reset_policy
            unit                = var.usage_plan_entitlements_quota_unit
            value               = var.usage_plan_entitlements_quota_value
        }
        rate_limit {
            unit                = var.usage_plan_entitlements_rate_limit_unit
            value               = var.usage_plan_entitlements_rate_limit_value
        }
        targets {
            deployment_id       = var.deployment_ocid
        }
    }
}


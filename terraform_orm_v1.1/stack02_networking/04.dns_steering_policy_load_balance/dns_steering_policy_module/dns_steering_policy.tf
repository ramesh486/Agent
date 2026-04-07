resource oci_dns_steering_policy this {
  compartment_id = var.compartment_ocid
  defined_tags = var.project_tag.definedTags
  display_name = var.dns_steering_policy_display_name
  freeform_tags = var.project_tag.freeformTags
  health_check_monitor_id = var.health_check_ocid == "" ? "" : var.health_check_ocid
  
  dynamic "answers" {
    for_each  = var.dns_answers
    content {
      is_disabled = answers.value.is_disabled
      name        = answers.value.name
      rtype       = answers.value.rtype
      rdata       = answers.value.rdata
    }
  }

  rules {
    default_answer_data {
      answer_condition = var.filter_rule_default_answer_data.answer_condition
      should_keep      = var.filter_rule_default_answer_data.should_keep
    }
    description = var.filter_rule_default_answer_data.description
    rule_type   = local.common_variables.rule_type_filter
  }
  dynamic "rules" {
    for_each = var.health_check_ocid == "" ? [] : [var.health_check_ocid]
    content {
      rule_type   = local.common_variables.rule_type_health  
    }
  }
  # rules {
  #   rule_type   = local.common_variables.rule_type_health
  # }

  rules {
    dynamic "default_answer_data" {
      for_each  = var.default_answer_data
      content {
        answer_condition  = default_answer_data.value.answer_condition
        value             = default_answer_data.value.answer_condition_value
      }
    }
    rule_type = local.common_variables.rule_type_weighted
  }
  
  rules {
    default_count = var.limit_rule_variables.default_count
    rule_type = local.common_variables.rule_type_limit
  }
  template = var.dns_steering_policy_type
  ttl      = var.ttl
}


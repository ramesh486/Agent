
resource "oci_events_rule" "events_rule" {
	actions {
		actions {
			action_type  = var.rule_actions_actions_action_type
			description  = var.rule_actions_actions_description 
			is_enabled   = var.rule_actions_actions_is_enabled 
			topic_id     = var.topic_ocid
			
		}
	}
	compartment_id = var.compartment_ocid
	condition      = var.rule_condition 
	description    = var.rule_description 
	display_name   = var.rule_display_name 
	is_enabled     = var.rule_is_enabled
	defined_tags   = var.project_tag.definedTags
    freeform_tags  = var.project_tag.freeformTags
}

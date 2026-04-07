########################
# IAM User Rules  
#########################

module "user_rule" {
  source                               = "./events_module"
  compartment_ocid                     = local.monitoring_compartment_ocid
  rule_actions_actions_action_type     = var.iam_user_rule_actions_actions_action_type
  rule_actions_actions_description     = var.iam_user_rule_actions_actions_description
  rule_actions_actions_is_enabled      = var.iam_user_rule_actions_actions_is_enabled
  rule_condition                       = var.iam_user_rule_condition
  rule_description                     = var.iam_user_rule_description
  rule_display_name                    = var.iam_user_rule_display_name
  rule_is_enabled                      = var.iam_user_rule_is_enabled
  topic_ocid                           = local.user_topic_ocid
  project_tag                          = var.project_tag

  
}

###################################
## Objectstorage Bucket Create Rule
###################################

 module "objectstorage_bucket_create_rule" {
  source                               = "./events_module"
  compartment_ocid                     = local.monitoring_compartment_ocid
  rule_actions_actions_action_type     = var.objectstorage_bucket_create_rule_actions_actions_action_type
  rule_actions_actions_description     = var.objectstorage_bucket_create_rule_actions_actions_description
  rule_actions_actions_is_enabled      = var.objectstorage_bucket_create_rule_actions_actions_is_enabled
  rule_condition                       = var.objectstorage_bucket_create_rule_condition
  rule_description                     = var.objectstorage_bucket_create_rule_description
  rule_display_name                    = var.objectstorage_bucket_create_rule_display_name
  rule_is_enabled                      = var.objectstorage_bucket_create_rule_is_enabled
  topic_ocid                           = local.objectstorage_topic_ocid
  project_tag                          = var.project_tag
  }

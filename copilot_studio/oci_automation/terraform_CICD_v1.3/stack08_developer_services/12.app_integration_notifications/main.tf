#####################################
# Notification Topic
#####################################
module  test_notification_topic {
  source                           = "./ons_module"
  compartment_ocid                 = local.compartment_ocid
  tenancy_ocid                     = var.tenancy_ocid
  region                           = var.region
  notification_topic_name          = var.notification_topic_name
  notification_topic_description   = var.notification_topic_description
  subscription_name                = var.subscription_name
  subscription_endpoint            = var.subscription_endpoint
  subscription_protocol            = var.subscription_protocol
  project_tag                      = var.project_tag  
}


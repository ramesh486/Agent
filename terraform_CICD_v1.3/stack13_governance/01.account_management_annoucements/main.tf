####  Announcement & Subscription Configuration ####

module "announcement_subscription" {
  source                                                = "./announcement_module"
  compartment_ocid                                      = var.compartment_ocid
  tenancy_ocid                                          = var.tenancy_ocid
  region                                                = var.region
  notification_topic_name                               = var.notification_topic_name
  topic_ocid                                            = var.topic_ocid            
  subscription_endpoint                                 = var.subscription_endpoint
  subscription_protocol                                 = var.subscription_protocol
  announcement_subscription_display_name                = var.announcement_subscription_display_name
  announcement_subscription_description                 = var.announcement_subscription_description
  announcement_subscription_filter_groups_filters_type  = var.announcement_subscription_filter_groups_filters_type
  announcement_subscription_filter_groups_filters_value = var.announcement_subscription_filter_groups_filters_value
  project_tag                                           = var.project_tag
}


module "announcement_subscription" {
  source                                                = "./announcement_module"
  compartment_ocid                                      = var.compartment_ocid
  tenancy_ocid                                          = var.tenancy_ocid
  region                                                = var.region
  notification_topic_name                               = var.notification_topic_name
  notification_topic_state                              = var.notification_topic_state
  subscription_endpoint                                 = var.subscription_endpoint
  subscription_protocol                                 = var.subscription_protocol
  announcement_subscription_display_name                = var.announcement_subscription_display_name
  announcement_subscription_description                 = var.announcement_subscription_description
  announcement_subscription_filter_groups_filters_type  = var.announcement_subscription_filter_groups_filters_type
  announcement_subscription_filter_groups_filters_value = var.announcement_subscription_filter_groups_filters_value
  announcement_subscription_id                          = var.announcement_subscription_id
  announcement_subscription_state                       = var.announcement_subscription_state
}


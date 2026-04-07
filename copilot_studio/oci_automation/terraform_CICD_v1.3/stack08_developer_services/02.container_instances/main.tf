#######################################
## Container instance
#######################################

module container_instance {
  source                               = "./container_module"
  availability_domain                  = var.availability_domain
  compartment_ocid                     = local.app_compartment_ocid
  container_restart_policy             = var.container_restart_policy
  image_url                            = var.image_url
  arguments                            = var.arguments
  command                              = var.command  
  container_instance_display_name      = var.container_instance_display_name
  environment_variables                = var.environment_variables
  is_resource_principal_disabled       = var.is_resource_principal_disabled
  container_display_name               = var.container_display_name
  graceful_shutdown_timeout_in_seconds = var.graceful_shutdown_timeout_in_seconds
  shape                                = var.shape
  memory_in_gbs                        = var.memory_in_gbs
  ocpus                                = var.ocpus
  state                                = var.state
  vnic_display_name                    = var.vnic_display_name
  hostname_label                       = var.hostname_label
  is_public_ip_assigned                = var.is_public_ip_assigned
  nsg_ids                              = var.nsg_ids
  private_ip                           = var.private_ip
  skip_source_dest_check               = var.skip_source_dest_check
  subnet_ocid                          = local.subnet_ocid
  project_tag                          = var.project_tag
  }
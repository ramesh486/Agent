#####################
## MYSQL DB System
#####################

module mysql_db_system {
  source                  = "./db_mysql_module"
  admin_password          = var.admin_password
  admin_username          = var.admin_username
  availability_domain     = var.availability_domain
  compartment_ocid        = local.db_compartment_ocid
  shape_name              = var.shape_name
  subnet_ocid             = local.subnet_ocid
  data_storage_size_in_gb = var.data_storage_size_in_gb
  is_enabled              = var.is_enabled
  retention_in_days       = var.retention_in_days
  window_start_time       = var.window_start_time
  description             = var.description
  display_name            = var.display_name
  fault_domain            = var.fault_domain
  hostname_label          = var.hostname_label
  ip_address              = var.ip_address
  window_start_time_1     = var.window_start_time_1
  port                    = var.port
  port_x                  = var.port_x
  state                   = var.state
  project_tag             = var.project_tag

}

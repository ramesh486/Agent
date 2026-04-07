resource "oci_mysql_mysql_db_system" "test_mysql_db_system" {
  admin_username          = var.admin_username
  admin_password          = var.admin_password
  availability_domain     = var.availability_domain
  compartment_id          = var.compartment_ocid
  shape_name              = var.shape_name
  subnet_id               = var.subnet_ocid
  data_storage_size_in_gb = var.data_storage_size_in_gb
  backup_policy {
    is_enabled            = var.is_enabled
    retention_in_days     = var.retention_in_days
    window_start_time     = var.window_start_time
  }
  description             = var.description
  display_name            = var.display_name
  fault_domain            = var.fault_domain
  hostname_label          = var.hostname_label
  ip_address              = var.ip_address
  maintenance {
    window_start_time     = var.window_start_time_1
  }
  port                    = var.port
  port_x                  = var.port_x
}

data "oci_mysql_mysql_configurations" "test_mysql_configurations" {
  compartment_id          = var.compartment_ocid
  state                   = var.state
}

data "oci_mysql_shapes" "test_shapes" {
  compartment_id          = var.compartment_ocid
}

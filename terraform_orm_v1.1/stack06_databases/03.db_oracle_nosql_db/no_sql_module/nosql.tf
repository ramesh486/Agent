resource "oci_nosql_table" "test_table" {
  compartment_id    = var.compartment_ocid
  ddl_statement     = var.table_ddl_statement
  name              = var.table_name
  table_limits {
    max_read_units     = var.max_read_units
    max_write_units    = var.max_write_units
    max_storage_in_gbs = var.max_storage_in_gbs
    
  }
}


module no_sql {
      source                 = "./no_sql_module"
      compartment_ocid       = var.compartment_ocid
      table_ddl_statement    = var.table_ddl_statement
      table_name             = var.table_name
      max_read_units         = var.max_read_units
      max_write_units        = var.max_write_units
      max_storage_in_gbs     = var.max_storage_in_gbs
  }

resource "oci_dataflow_application" "application" {
  compartment_id       = var.compartment_ocid
  display_name         = var.application_display_name
  driver_shape         = var.application_driver_shape
  executor_shape       = var.application_executor_shape
  file_uri             = var.file_uri
  language             = var.application_language
  num_executors        = var.application_num_executors
  spark_version        = var.application_spark_version
  warehouse_bucket_uri = var.warehouse_bucket_uri
  logs_bucket_uri      = var.logs_bucket_uri
}





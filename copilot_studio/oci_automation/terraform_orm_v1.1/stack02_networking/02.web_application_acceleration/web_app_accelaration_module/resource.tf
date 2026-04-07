resource "oci_waa_web_app_acceleration_policy" "test_web_app_acceleration_policy" {
  
  compartment_id  = var.compartment_ocid
  display_name    = var.web_app_acceleration_policy_display_name

  response_caching_policy {
    is_response_header_based_caching_enabled = var.is_response_header_based_caching_enabled 
  }
  response_compression_policy {
    gzip_compression {
      is_enabled = var.gzip_compression_is_enabled 
    }
  }   
}


resource "oci_waa_web_app_acceleration" "test_web_app_acceleration" {
  
  display_name                   = var.web_app_acceleration_display_name
  backend_type                   = var.backend_type 
  compartment_id                 = var.compartment_ocid
  load_balancer_id               = var.load_balancer_ocid
  web_app_acceleration_policy_id = oci_waa_web_app_acceleration_policy.test_web_app_acceleration_policy.id

}


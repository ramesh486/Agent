locals {
  provider_service_id = data.oci_core_fast_connect_provider_service.fast_connect_provider_service.id
  virtual_circuit_type = "PRIVATE"
}
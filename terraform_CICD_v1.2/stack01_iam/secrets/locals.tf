 locals {
  compartment_ocid         = data.oci_identity_compartments.this.compartments[0].id
  vault_ocid               = data.oci_kms_vaults.this.vaults[0].id
  key_ocid                 = data.oci_kms_keys.this.keys[0].id
  key_management_endpoint  = data.oci_kms_vaults.this.vaults[0].management_endpoint
 }
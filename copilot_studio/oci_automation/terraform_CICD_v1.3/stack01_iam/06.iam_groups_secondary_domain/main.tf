module "integrationviewers" {
  source                  = "./groups_module"
  group_name                                                                        = var.group_integrationviewers_name
  identity_domain_idcs_endpoint                                                     = local.domain_url
  group_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_key       = var.group_defined_tags_key
  group_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_namespace = var.group_defined_tags_namespace
  group_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_value     = var.group_defined_tags_value
  group_urnietfparamsscimschemasoracleidcsextension_oci_tags_freeform_tags_key      = var.group_freeform_tags_key
  group_urnietfparamsscimschemasoracleidcsextension_oci_tags_freeform_tags_value    = var.group_freeform_tags_value
}

module "integrationdevelopers" {
 source                  = "./groups_module" 
 group_name                                                                        = var.group_integrationdevelopers_name
 identity_domain_idcs_endpoint                                                     = local.domain_url
 group_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_key       = var.group_defined_tags_key
 group_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_namespace = var.group_defined_tags_namespace
 group_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_value     = var.group_defined_tags_value
 group_urnietfparamsscimschemasoracleidcsextension_oci_tags_freeform_tags_key      = var.group_freeform_tags_key
 group_urnietfparamsscimschemasoracleidcsextension_oci_tags_freeform_tags_value     = var.group_freeform_tags_value 
}

module "integrationadmins" {
 source                  = "./groups_module" 
 group_name                                                                        = var.group_integrationadmins_name
 identity_domain_idcs_endpoint                                                     = local.domain_url
 group_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_key       = var.group_defined_tags_key
 group_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_namespace = var.group_defined_tags_namespace
 group_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_value     = var.group_defined_tags_value
 group_urnietfparamsscimschemasoracleidcsextension_oci_tags_freeform_tags_key      = var.group_freeform_tags_key
 group_urnietfparamsscimschemasoracleidcsextension_oci_tags_freeform_tags_value    = var.group_freeform_tags_value 
}


module "iamuser" {
    source                              = "./users_module"
    tenancy_ocid                        = var.tenancy_ocid
    user_name                           = var.iamuser_user_name
    user_description                    = var.iamuser_user_description
    email_id                            = var.iamuser_email_id
    group_ocid                          = local.group_ocid
    can_use_api_keys                    = var.iamuser_can_use_api_keys
    can_use_auth_tokens                 = var.iamuser_can_use_auth_tokens
    can_use_console_password            = var.iamuser_can_use_console_password
    can_use_customer_secret_keys        = var.iamuser_can_use_customer_secret_keys
    can_use_smtp_credentials            = var.iamuser_can_use_smtp_credentials
}

variable "tenancy_ocid" {
    default =""
    type = string
    description = "Provide the Tenancy OCID"
}
variable "region" {
    default =""
    type = string
    description = "Provide the Region"
}
variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "user"}
      freeformTags = {}
  }
}

variable "iamuser_email_id" {
    default =""
    type = string
    description = "Provide the email id"
}
variable "iamuser_user_description" {
    default =""
    type = string
    description = "Provide the user description"
}
variable "iamuser_group_name" {
    default =""
    type = string
    description = "Provide the Group name"
}
variable "iamuser_user_name" {
    default =""
    type = string
    description = "Provide the User name"
}
variable "iamuser_can_use_api_keys" {
    default =""
    type = string
    description = "Can use API keys ?"
}
variable "iamuser_can_use_auth_tokens" {
    default =""
    type = string
    description = "Can use Auth Tokesn ?"
}
variable "iamuser_can_use_console_password" {
    default =""
    type = string
    description = "Can use Console Password ?"
}
variable "iamuser_can_use_customer_secret_keys" {
    default =""
    type = string
    description = "Can use customer Secret Keys ?"
}
variable "iamuser_can_use_smtp_credentials" {
    default =""
    type = string
    description = "Can use SMTP credentials ?"
}




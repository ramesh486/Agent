variable "compartment_ocid" {
type = string
description = "Target Compartment OCID"
default = ""
}
variable "tenancy_ocid" {
type = string
description = "Target Tenancy OCID"
default = ""
}
variable "region" {
type = string
description = "Region"
default = "us-ashburn-1"
}

variable "project_tag" {
    type = map
    default = {
        definedTags = {}
        freeformTags = {

        }
    }
}
### AnnouncementReaders ####

variable "AnnouncementReaders_policy_name" {
  type = string
  default = "AnnouncementReaders"
  description = "Name for Announcement Readers"
}
variable "AnnouncementReaders_policy_description" {
  type = string
  default = "Group responsible for Console Announcements"
  description = "Policy for Announcement Readers"
}
variable "AnnouncementReaders_policy_statements" {
  type = list
  default = [
"Allow group 'AnnouncementReaders' to read announcements in tenancy",
"Allow group 'AnnouncementReaders' to use cloud-shell in tenancy",
  ]
  description = "Policy Statement for Announcement Readers"
}

### AppAdmins ####

variable "AppAdmins_policy_name" {
  type = string
  default = "AppAdmins"
  description = "Name for AppAdmins"
}
variable "AppAdmins_policy_description" {
  type = string
  default = "Group responsible for managing app development related services in compartment AppDev"
  description = "Policy for AppAdmins"
}
variable "AppAdmins_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'AppAdmins' to read all-resources in Tenancy",
"Allow group 'default'/'AppAdmins' to use instance-family in compartment nonprod:nonprod_dev:appdev",
"Allow group 'default'/'AppAdmins' to use volume-family in compartment nonprod:nonprod_dev:appdev",
"Allow group 'default'/'AppAdmins' to use object-family in compartment nonprod:nonprod_dev:appdev",
"Allow group 'default'/'AppAdmins' to use instance-family in compartment prod:appprod",
"Allow group 'default'/'AppAdmins' to use object-family in compartment prod:appprod",
"Allow group 'default'/'AppAdmins' to use instance-family in compartment nonprod:nonprod_tst:apptst",
"Allow group 'default'/'AppAdmins' to use volume-family in compartment nonprod:nonprod_tst:apptst",
"Allow group 'default'/'AppAdmins' to use object-family in compartment nonprod:nonprod_tst:apptst",
"Allow group 'default'/'AppAdmins' to read virtual-network-family in compartment network",
"Allow group 'default'/'AppAdmins' to use subnets in compartment network",
"Allow group 'default'/'AppAdmins' to use network-security-groups in compartment network",
"Allow group 'default'/'AppAdmins' to use vnics in compartment network",
"Allow group 'default'/'AppAdmins' to use load-balancers in compartment network",
"Allow group 'default'/'AppAdmins' to read vaults in compartment security",
"Allow group 'default'/'AppAdmins' to inspect keys in compartment security",
  ]
  description = "Policy Statement for AppAdmins"
}

### Auditors ####

variable "Auditors_policy_name" {
  type = string
  default = "Auditors"
  description = "Name for Auditors"
}
variable "Auditors_policy_description" {
  type = string
  default = "Group responsible for Auditing the tenancy"
  description = "Policy for Auditing"
}
variable "Auditors_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'Auditors' to inspect all-resources in tenancy",   
"Allow group 'default'/'Auditors' to read instances in tenancy",
"Allow group 'default'/'Auditors' to read load-balancers in tenancy",
"Allow group 'default'/'Auditors' to read buckets in tenancy",
"Allow group 'default'/'Auditors' to read nat-gateways in tenancy",
"Allow group 'default'/'Auditors' to read public-ips in tenancy",
"Allow group 'default'/'Auditors' to read file-family in tenancy",
"Allow group 'default'/'Auditors' to read instance-configurations in tenancy",
"Allow group 'default'/'Auditors' to read network-security-groups in tenancy",
"Allow group 'default'/'Auditors' to read resource-availability in tenancy",
"Allow group 'default'/'Auditors' to read audit-events in tenancy",
"Allow group 'default'/'Auditors' to use cloud-shell in tenancy",
"Allow group 'default'/'Auditors' to read users in tenancy",
"Allow group 'default'/'Auditors' to read vss-family in tenancy",
"Allow group 'default'/'Auditors' to read usage-budgets in tenancy",
"Allow group 'default'/'Auditors' to read usage-reports in tenancy",
  ]
  description = "Policy Statement for Auditors"
}

### CredAdmins ######

variable "CredAdmins_policy_name" {
  type = string
  default = "CredAdmins"
  description = "Name for CredAdmins"
}
variable "CredAdmins_policy_description" {
  type = string
  default = "Group responsible for managing users credentials in the tenancy."
  description = "Policy for CredAdmins"
}
variable "CredAdmins_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'CredAdmins' to inspect users in tenancy",
"Allow group 'default'/'CredAdmins' to inspect groups in tenancy",
"Allow group 'default'/'CredAdmins' to manage users in tenancy  where any {request.operation = 'ListApiKeys',request.operation = 'ListAuthTokens',request.operation = 'ListCustomerSecretKeys',request.operation = 'UploadApiKey',request.operation = 'DeleteApiKey',request.operation = 'UpdateAuthToken',request.operation = 'CreateAuthToken',request.operation = 'DeleteAuthToken',request.operation = 'CreateSecretKey',request.operation = 'UpdateCustomerSecretKey',request.operation = 'DeleteCustomerSecretKey',request.operation = 'UpdateUserCapabilities'}",
"Allow group 'default'/'CredAdmins' to use cloud-shell in tenancy",
  ]
  description = "Policy Statement for CredAdmins"
}

### DatabaseAdmins ######

variable "DatabaseAdmins_policy_name" {
  type = string
  default = "DatabaseAdmins"
  description = "Name for DatabaseAdmins"
}
variable "DatabaseAdmins_policy_description" {
  type = string
  default = "Group responsible for managing databases in compartment Database"
  description = "Policy for DatabaseAdmins"
}
variable "DatabaseAdmins_policy_statements" {
  type = list
  default = [

"Allow group 'default'/'DatabaseAdmins' to read virtual-network-family in compartment network",
"Allow group 'default'/'DatabaseAdmins' to use vnics in compartment network",
"Allow group 'default'/'DatabaseAdmins' to use subnets in compartment network",
"Allow group 'default'/'DatabaseAdmins' to use network-security-groups in compartment network", 
"Allow group 'default'/'DatabaseAdmins' to read vaults in compartment security",
"Allow group 'default'/'DatabaseAdmins' to inspect keys in compartment security",
"Allow group 'default'/'DatabaseAdmins' to use bastion in compartment security",
"Allow group 'default'/'DatabaseAdmins' to manage bastion-session in compartment security",
"Allow group 'default'/'DatabaseAdmins' to read usage-budgets in tenancy",
"Allow group 'default'/'DatabaseAdmins' to read usage-reports in tenancy",
"Allow group 'default'/'DatabaseAdmins' to read all-resources in compartment prod:dbprod", 
"Allow group 'default'/'DatabaseAdmins' to manage database-family in compartment prod:dbprod",
"Allow group 'default'/'DatabaseAdmins' to manage autonomous-database-family in compartment prod:dbprod",
"Allow group 'default'/'DatabaseAdmins' to manage alarms in compartment prod:dbprod",
"Allow group 'default'/'DatabaseAdmins' to manage object-family in compartment prod:dbprod",
"Allow group 'default'/'DatabaseAdmins' to manage orm-stacks in compartment prod:dbprod",
"Allow group 'default'/'DatabaseAdmins' to manage orm-jobs in compartment prod:dbprod",
"Allow group 'default'/'DatabaseAdmins' to manage orm-config-source-providers in compartment prod:dbprod",
"Allow group 'default'/'DatabaseAdmins' to read audit-events in compartment prod:dbprod",
"Allow group 'default'/'DatabaseAdmins' to read work-requests in compartment prod:dbprod",
"Allow group 'default'/'DatabaseAdmins' to manage bastion-session in compartment prod:dbprod",
"Allow group 'default'/'DatabaseAdmins' to read instance-agent-plugins in compartment prod:dbprod",
"Allow group 'default'/'DatabaseAdmins' to read all-resources in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to manage database-family in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to manage autonomous-database-family in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to manage alarms in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to manage metrics in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to manage object-family in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to manage orm-stacks in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to manage orm-jobs in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to manage orm-config-source-providers in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to read audit-events in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to read vss-family in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to read work-requests in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to manage bastion-session in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to manage cloudevents-rules in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to read instance-agent-plugins in compartment nonprod:nonprod_tst:dbtst",
"Allow group 'default'/'DatabaseAdmins' to read all-resources in compartment nonprod:nonprod_dev:dbdev",
"Allow group 'default'/'DatabaseAdmins' to manage database-family in compartment nonprod:nonprod_dev:dbdev",
"Allow group 'default'/'DatabaseAdmins' to manage autonomous-database-family in compartment nonprod:nonprod_dev:dbdev",
"Allow group 'default'/'DatabaseAdmins' to manage alarms in compartment nonprod:nonprod_dev:dbdev",
"Allow group 'default'/'DatabaseAdmins' to manage metrics in compartment nonprod:nonprod_dev:dbdev",
"Allow group 'default'/'DatabaseAdmins' to manage object-family in compartment nonprod:nonprod_dev:dbdev",
"Allow group 'default'/'DatabaseAdmins' to manage orm-stacks in compartment nonprod:nonprod_dev:dbdev",
"Allow group 'default'/'DatabaseAdmins' to manage orm-jobs in compartment nonprod:nonprod_dev:dbdev",
"Allow group 'default'/'DatabaseAdmins' to manage orm-config-source-providers in compartment nonprod:nonprod_dev:dbdev",
"Allow group 'default'/'DatabaseAdmins' to read vss-family in compartment nonprod:nonprod_dev:dbdev",
"Allow group 'default'/'DatabaseAdmins' to read work-requests in compartment nonprod:nonprod_dev:dbdev",
"Allow group 'default'/'DatabaseAdmins' to manage bastion-session in compartment nonprod:nonprod_dev:dbdev",
"Allow group 'default'/'DatabaseAdmins' to read instance-agent-plugins in compartment nonprod:nonprod_dev:dbdev",
  ]
  description = "Policy Statement for DatabaseAdmins"
}

### EmailFamilyAdminstrator ######

variable "EmailFamilyAdminstrator_policy_name" {
  type = string
  default = "EmailFamilyAdministrator"
  description = "Name for EmailFamilyAdminstrator"
}
variable "EmailFamilyAdminstrator_policy_description" {
  type = string
  default = "Group provides access to send email from OCI tenancy"
  description = "Policy for EmailFamilyAdminstrator"
}
variable "EmailFamilyAdminstrator_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'EmailFamilyAdministrator' to manage email-family in tenancy",
  ]
  description = "Policy Statement for EmailFamilyAdminstrator"
}

### IAMAdmins ######

variable "IAMAdmins_policy_name" {
  type = string
  default = "IAMAdmins"
  description = "Name for IAMAdmins"
}
variable "IAMAdmins_policy_description" {
  type = string
  default = "Group responsible for managing IAM resources in the tenancy"
  description = "Policy for IAMAdmins"
}
variable "IAMAdmins_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'IAMAdmins' to manage policies in tenancy",
"Allow group 'default'/'IAMAdmins' to manage compartments in tenancy",
"Allow group 'default'/'IAMAdmins' to manage tag-defaults in tenancy",
"Allow group 'default'/'IAMAdmins' to manage tag-namespaces in tenancy",
"Allow group 'default'/'IAMAdmins' to manage orm-stacks in tenancy",
"Allow group 'default'/'IAMAdmins' to manage orm-jobs in tenancy",
"Allow group 'default'/'IAMAdmins' to manage orm-config-source-providers in tenancy",
"Allow group 'default'/'IAMAdmins' to inspect users in tenancy",
"Allow group 'default'/'IAMAdmins' to inspect groups in tenancy",
"Allow group 'default'/'IAMAdmins' to manage groups in tenancy where all {target.group.name != 'Administrators', target.group.name != 'CredAdmins'}",
"Allow group 'default'/'IAMAdmins' to inspect identity-providers in tenancy",
"Allow group 'default'/'IAMAdmins' to manage identity-providers in tenancy where any {request.operation = 'AddIdpGroupMapping', request.operation = 'DeleteIdpGroupMapping'}",
"Allow group 'default'/'IAMAdmins' to manage dynamic-groups in tenancy",
"Allow group 'default'/'IAMAdmins' to manage authentication-policies in tenancy",
"Allow group 'default'/'IAMAdmins' to manage network-sources in tenancy",
"Allow group 'default'/'IAMAdmins' to manage quota in tenancy",
"Allow group 'default'/'IAMAdmins' to read audit-events in tenancy",
"Allow group 'default'/'IAMAdmins' to use cloud-shell in tenancy",
  ]
  description = "Policy Statement for IAMAdmins"
}

### IntegrationAdmins ######

variable "IntegrationAdmins_policy_name" {
  type = string
  default = "IntegrationAdmins"
  description = "Name for IntegrationAdmins"
}
variable "IntegrationAdmins_policy_description" {
  type = string
  default = "Group responsible for Oracle Integration Cloud Services in the tenancy"
  description = "Policy for IntegrationAdmins"
}
variable "IntegrationAdmins_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'IntegrationAdmins' to manage integration-instance in tenancy",

  ]
  description = "Policy Statement for IntegrationAdmins"
}

### IntegrationDevelopers ######

variable "IntegrationDevelopers_policy_name" {
  type = string
  default = "IntegrationDevelopers"
  description = "Name for IntegrationDevelopers"
}
variable "IntegrationDevelopers_policy_description" {
  type = string
  default = "Group of Developers able to access Oracle integration cloud specific instances with Service Developer Privileges"
  description = "Policy for IntegrationDevelopers"
}
variable "IntegrationDevelopers_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'IntegrationDevelopers' to read integration-instance in tenancy",
"Allow group 'default'/'IntegrationDevelopers' to read metrics in tenancy",
 ]
  description = "Policy Statement for IntegrationDevelopers"
}

### IntegrationViewers ######

variable "IntegrationViewers_policy_name" {
  type = string
  default = "IntegrationViewers"
  description = "Name for IntegrationViewers"
}
variable "IntegrationViewers_policy_description" {
  type = string
  default = "Group provides read only access to Oracle integration cloud service instances"
  description = "Policy for IntegrationViewers"
}
variable "IntegrationViewers_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'IntegrationViewers' to read integration-instance in tenancy",
"Allow group 'default'/'IntegrationViewers' to read metrics in tenancy",
 ]
  description = "Policy Statement for IntegrationViewers"
}

### NetworkAdmins ######

variable "NetworkAdmins_policy_name" {
  type = string
  default = "NetworkAdmins"
  description = "Name for NetworkAdmins"
}
variable "NetworkAdmins_policy_description" {
  type = string
  default = "Group responsible for managing networking in compartment network."
  description = "Policy for NetworkAdmins"
}
variable "NetworkAdmins_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'NetworkAdmins' to read all-resources in compartment network",  
"Allow group 'default'/'NetworkAdmins' to manage virtual-network-family in compartment network",
"Allow group 'default'/'NetworkAdmins' to manage dns in compartment network",
"Allow group 'default'/'NetworkAdmins' to manage load-balancers in compartment network",
"Allow group 'default'/'NetworkAdmins' to manage alarms in compartment network",
"Allow group 'default'/'NetworkAdmins' to manage metrics in compartment network",
"Allow group 'default'/'NetworkAdmins' to manage orm-stacks in compartment network",
"Allow group 'default'/'NetworkAdmins' to manage orm-jobs in compartment network",
"Allow group 'default'/'NetworkAdmins' to manage orm-config-source-providers in compartment network",
"Allow group 'default'/'NetworkAdmins' to read audit-events in compartment network",
"Allow group 'default'/'NetworkAdmins' to read vss-family in compartment security",
"Allow group 'default'/'NetworkAdmins' to read work-requests in compartment network",
"Allow group 'default'/'NetworkAdmins' to use bastion in compartment security",
"Allow group 'default'/'NetworkAdmins' to manage bastion-session in compartment network",
"Allow group 'default'/'NetworkAdmins' to manage bastion-session in compartment security",
"Allow group 'default'/'NetworkAdmins' to manage cloudevents-rules in compartment network",
"Allow group 'default'/'NetworkAdmins' to manage instance-family in compartment network",
"Allow group 'default'/'NetworkAdmins' to read instance-agent-plugins in compartment network",
"Allow group 'default'/'NetworkAdmins' to use cloud-shell in tenancy",
"Allow group 'default'/'NetworkAdmins' to read usage-budgets in tenancy",
"Allow group 'default'/'NetworkAdmins' to read usage-reports in tenancy",
  ]
  description = "Policy Statement for NetworkAdmins"
}

### ObjectStorageAdmins ######

variable "ObjectStorageAdmins_policy_name" {
  type = string
  default = "ObjectStorageAdmins"
  description = "Name for ObjectStorageAdmins"
}
variable "ObjectStorageAdmins_policy_description" {
  type = string
  default = "Group responsible for managing Object Storage as an Administrators"
  description = "Policy for ObjectStorageAdmins"
}
variable "ObjectStorageAdmins_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'ObjectStorageAdmins' to manage buckets in tenancy",
"Allow group 'default'/'ObjectStorageAdmins' to manage objects in tenancy",
  ]
  description = "Policy Statement for ObjectStorageAdmins"
}

### ObjectStorageReaders ######

variable "ObjectStorageReaders_policy_name" {
  type = string
  default = "ObjectStorageReaders"
  description = "Name for ObjectStorageReaders"
}
variable "ObjectStorageReaders_policy_description" {
  type = string
  default = "ObjectStorageReaders"
  description = "Policy for ObjectStorageReaders"
}
variable "ObjectStorageReaders_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'ObjectStorageReaders' to read buckets in tenancy",    
"Allow group 'default'/'ObjectStorageReaders' to read objects in tenancy",
  ]
  description = "Policy Statement for ObjectStorageReaders"
}

### ObjectStorageWriters ######

variable "ObjectStorageWriters_policy_name" {
  type = string
  default = "ObjectStorageWriters"
  description = "Name for ObjectStorageWriters"
}
variable "ObjectStorageWriters_policy_description" {
  type = string
  default = "ObjectStorageWriters"
  description = "Policy for ObjectStorageWriters"
}
variable "ObjectStorageWriters_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'ObjectStorageWriters' to read buckets in tenancy",
"Allow group 'default'/'ObjectStorageWriters' to manage objects in tenancy"
  ]
  description = "Policy Statement for ObjectStorageWriters"
}

### SecurityAdmins ######

variable "SecurityAdmins_policy_name" {
  type = string
  default = "SecurityAdmins"
  description = "Name for SecurityAdmins"
}
variable "SecurityAdmins_policy_description" {
  type = string
  default = "Group responsible for managing security services in compartment security"
  description = "Policy for SecurityAdmins"
}
variable "SecurityAdmins_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'SecurityAdmins' to manage tag-namespaces in tenancy",
"Allow group 'default'/'SecurityAdmins' to manage tag-defaults in tenancy",
"Allow group 'default'/'SecurityAdmins' to manage repos in tenancy",
"Allow group 'default'/'SecurityAdmins' to read audit-events in tenancy",
"Allow group 'default'/'SecurityAdmins' to read app-catalog-listing in tenancy",
"Allow group 'default'/'SecurityAdmins' to read instance-images in tenancy",
"Allow group 'default'/'SecurityAdmins' to inspect buckets in tenancy",
"Allow group 'default'/'SecurityAdmins' to read all-resources in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage instance-family in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage vaults in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage keys in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage secret-family in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage logging-family in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage serviceconnectors in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage streams in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage ons-family in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage functions-family in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage waas-family in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage security-zone in compartment security",
"Allow group 'default'/'SecurityAdmins' to read virtual-network-family in compartment network",
"Allow group 'default'/'SecurityAdmins' to use subnets in compartment network",
"Allow group 'default'/'SecurityAdmins' to use network-security-groups in compartment network",
"Allow group 'default'/'SecurityAdmins' to use vnics in compartment network",
"Allow group 'default'/'SecurityAdmins' to manage orm-stacks in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage orm-jobs in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage orm-config-source-providers in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage vss-family in compartment security",
"Allow group 'default'/'SecurityAdmins' to read work-requests in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage bastion-family in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage cloudevents-rules in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage alarms in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage metrics in compartment security",
"Allow group 'default'/'SecurityAdmins' to read instance-agent-plugins in compartment security",
"Allow group 'default'/'SecurityAdmins' to manage cloudevents-rules in tenancy",
"Allow group 'default'/'SecurityAdmins' to manage cloud-guard-family in tenancy",
"Allow group 'default'/'SecurityAdmins' to read tenancies in tenancy",
"Allow group 'default'/'SecurityAdmins' to read objectstorage-namespaces in tenancy",
"Allow group 'default'/'SecurityAdmins' to use cloud-shell in tenancy",
"Allow group 'default'/'SecurityAdmins' to read usage-budgets in tenancy",
"Allow group 'default'/'SecurityAdmins' to read usage-reports in tenancy",
  ]
  description = "Policy Statement for SecurityAdmins"
}

### SysOpsTeams ######

variable "SysOpsTeams_policy_name" {
  type = string
  default = "SysOpsTeam"
  description = "Name for SysOpsTeam"
}
variable "SysOpsTeams_policy_description" {
  type = string
  default = "Group responsible for managing SysOpsTeam in tenency"
  description = "Policy for SysOpsTeam"
}
variable "SysOpsTeams_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'SysOpsTeam' to read all-resources in tenancy",    
  ]
  description = "Policy Statement for SysOpsTeam"
}

### CostAdmins ######

variable "CostAdmins_policy_name" {
  type = string
  default = "CostAdmins"
  description = "Name for CostAdmins"
}
variable "CostAdmins_policy_description" {
  type = string
  default = "Group responsible for Cost Management Reports in the Tenancy"
  description = "Policy for CostAdmins"
}
variable "CostAdmins_policy_statements" {
  type = list
  default = [
"Allow group 'default'/'CostAdmins' to manage usage-report in tenancy",
"Allow group 'default'/'CostAdmins' to manage usage-budgets in tenancy",
  ]
  description = "Policy Statement for CostAdmins"
}

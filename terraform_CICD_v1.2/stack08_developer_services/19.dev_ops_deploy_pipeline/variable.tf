variable "region" {
  type        = string
  description = "Enter Region"  
  default     = "us-ashburn-1"  
}

variable "tenancy_ocid" {
  type        = string
  description = "Enter tenancy_ocid"  
  default     = ""  
}

variable "app_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name"
 }

variable "app_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name"
 }

variable "network_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "dev_ops_deploy_pipeline"
        }
      freeformTags = {}
  }
}

variable "vcn_display_name" {
    type        = string
    default     = ""
    description = "VCN Name"  
}

variable "notification_topic_name" {
  type        = string
  default     = "test_demo_topic123"
  description = "Provide name for Notification Topic"
}

variable "project_name" {
  type        = string
  default     = "demo_pro"
  description = "Provide the Project name "
}

variable "deploy_pipeline_display_name" {
  type        = string
  default     = "deployPipeline"
  description = "Deployment pipeline display name."
}

variable "deploy_artifact_display_name" {
  type        = string
  default     = "inlineDeployArtifact"
  description = "Deployment artifact display name."
}

variable "deploy_artifact_type" {
  type        = string
  default     = "KUBERNETES_MANIFEST"
  description = "Type of the deployment artifact."
}

variable "argument_substitution_mode" {
  type        = string
  default     = "NONE"
  description = "Mode for artifact parameter substitution. "
}

variable "deploy_artifact_source_type" {
  type        = string
  default     = "INLINE"
  description = "Specifies types of artifact sources. "
}


variable "base64encoded_content" {
  type        = string
  default     = "YXBpVmVyc2lvbjogYmF0Y2gvdjEKa2luZDogSm9iCm1ldGFkYXRhOgogIGdlbmVyYXRlTmFtZTogaGVsbG93b3JsZAogIGxhYmVsczoKICAgIGFwcDogaGVsbG93b3JsZApzcGVjOgogIHR0bFNlY29uZHNBZnRlckZpbmlzaGVkOiAxMjAKICB0ZW1wbGF0ZToKICAgIHNwZWM6CiAgICAgIGNvbnRhaW5lcnM6CiAgICAgICAgLSBuYW1lOiBoZWxsb3dvcmxkCiAgICAgICAgICBpbWFnZTogcGh4Lm9jaXIuaW8vYXgwMjJ3dmdtanBxL2hlbGxvd29ybGQtb2tlLXZlcmlmaWVyOmxhdGVzdAogICAgICAgICAgY29tbWFuZDoKICAgICAgICAgICAgLSAiL2Jpbi9iYXNoIgogICAgICAgICAgICAtICItYyIKICAgICAgICAgICAgLSAic2xlZXAgMjsgZWNobyBIZWxsbyBXb3JsZDsiCiAgICAgIHJlc3RhcnRQb2xpY3k6IE5ldmVy"
  description =  "Specifies content for the inline artifact."
}

variable "deploy_environment_type" {
  type        = string
  default     = "OKE_CLUSTER"
  description = "Deployment environment type."
}

variable "deploy_environment_display_name" {
  type        = string
  default     = "okeDeployEnvironment"
  description = "Deployment environment display name."
}

variable "deploy_stage_type" {
  type        = string
  default     = "OKE_BLUE_GREEN_DEPLOYMENT"
  description = "Deployment stage type. "
}

variable "deploy_stage_display_name" {
  type        = string
  default     = "okeBlueGreenDeployStage"
  description = "Deployment stage display name"
}

variable "strategy_type" {
  type        = string
  default     = "NGINX_BLUE_GREEN_STRATEGY"
  description = "Blue Green strategy type."
}

variable "namespace_a" {
  type        = string
  default     = "namespaceA"
  description = "First Namespace for deployment."
}

variable "namespace_b" {
  type        = string
  default     = "namespaceB"
  description = "Second Namespace for deployment."
}

variable "ingress_name" {
  type        = string
  default     = "ingressName"
  description = "Name of the Ingress resource."
}

variable "deploy_stage_type1" {
  type        = string
  default     = "OKE_BLUE_GREEN_TRAFFIC_SHIFT"
  description = "Deployment stage type."
}

variable "deploy_stage_display_name1" {
  type        = string
  default     = "okeBlueGreenTrafficShiftDeployStage"
  description = "Deployment stage display name"
}

variable "kubernetes_version" {
  type        = string
  default     = "v1.24.1"
  description = "The version of Kubernetes to install into the cluster masters"
}

variable "cluster_name" {
  type        = string
  default     = "cluster"
  description = "The name of the cluster"
}

variable "cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "The CIDR block for Kubernetes pods "
}

variable "display_name" {
  type        = string
  default     = "tfVcnForClusters"
  description = "The OCID of the virtual cloud network (VCN) in which to create the cluster"
}


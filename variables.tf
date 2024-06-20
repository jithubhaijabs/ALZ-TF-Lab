# Root Variables
variable "root_id" {
  description = "Root Management Group ID"
  type        = string
  default     = "jabs"
}

variable "root_name" {
  type      = string
  default = "jabs"
}

# Connectivity Variables
variable "deploy_connectivity_resources" {
  type = bool
  default = true
}

variable "connectivity_resources_location" {
  type = string
  default = "eastus"
}

variable "subscription_id_connectivity" {
  type = string
  default = "0f5f5ccd-318c-4ed0-b90f-f1dd51fafc37"
}

variable "connectivity_resources_tags" {
  type = map(string)
  default = {
    resourcetype = "connectivity"
  }
}

# Management Variables
variable "deploy_management_resources" {
  type = bool
  default = true
}


variable "log_retention_in_days" {
  type = number
  default = 30
}

variable "security_alerts_email_address" {
  type = string
  default = "jithin.pp@outlook.com"
}

variable "management_resources_location" {
  type = string
  default = "eastus"
}

variable "subscription_id_management" {
  type = string
  default = "0f5f5ccd-318c-4ed0-b90f-f1dd51fafc37"
}

variable "management_resources_tags" {
  type = map(string)
  default = {
    resourcetype = "management"
  }
}

# Identity Variables
variable "deploy_identity_resources" {
  type = bool
  default = true
}

variable "subscription_id_identity" {
  type = string
  default = "0f5f5ccd-318c-4ed0-b90f-f1dd51fafc37"
}

variable "identity_resources_tags" {
  type = map(string)
  default = {
    resourcetype = "identity"
  }
}

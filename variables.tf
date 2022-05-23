variable "resource_group_name" {
  type        = string
  description = "Resource Group where the public DNS zone is deployed"
}

variable "acme_registration_email" {
  type        = string
  description = "Email address used to register with letsencrypt"
}

variable "acme_api_endpoint" {
  default     = "https://acme-v02.api.letsencrypt.org/directory"
  description = "ACME API endpoint, defaults to letsencrypt prod directory."
}

variable "domain" {
  type        = string
  description = "Domain for this certificate e.g. apps.cluster.example.com"
}

variable "wildcard_domain" {
  type        = bool
  description = "Specify wether wildcard subdomain should be supported e.g. *.apps.cluster.example.com"
  default     = false
}

variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}

variable "client_id" {
  type        = string
  description = "Azure Client ID"
}

variable "client_secret" {
  type        = string
  description = "Azure Client Secret"
}

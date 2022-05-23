module "acme-cert-api" {
  source = "./module"

  domain                  = var.domain
  acme_registration_email = var.acme_registration_email
  acme_api_endpoint       = var.acme_api_endpoint
  resource_group_name     = var.resource_group_name
  wildcard_domain         = var.wildcard_domain

  subscription_id  = var.subscription_id
  tenant_id        = var.tenant_id
  client_id        = var.client_id
  client_secret    = var.client_secret
}
module "acme-cert-api" {
  source = "./module"

  resource_group_name     = "ocp-ipi-rg"
  domain                  = var.domain
  wildcard_domain         = var.wildcard_domain
  acme_registration_email = var.acme_registration_email
  acme_api_endpoint       = var.acme_api_endpoint

  subscription_id  = var.subscription_id
  tenant_id        = var.tenant_id
  client_id        = var.client_id
  client_secret    = var.client_secret
}
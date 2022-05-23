module "acme-cert-api" {
  source = "./module"

  domain = "api.ocp-ipi-tf-test.clusters.azure.ibm-software-everywhere.dev"
  acme_registration_email = "noe.samaille@ibm.com"
  resource_group_name     = "ocp-ipi-rg"
  wildcard_domain         = false

  subscription_id  = var.subscription_id
  tenant_id        = var.tenant_id
  client_id        = var.client_id
  client_secret    = var.client_secret
}
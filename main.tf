provider "acme" {
  server_url = var.acme_api_endpoint
}

resource "tls_private_key" "private_key" {
  algorithm = "RSA"
}

resource "acme_registration" "reg" {
  account_key_pem = tls_private_key.private_key.private_key_pem
  email_address   = var.acme_registration_email
}

resource "acme_certificate" "certificate" {
  account_key_pem           = acme_registration.reg.account_key_pem
  common_name               = var.domain
  subject_alternative_names = var.wildcard_domain ? ["*.${var.domain}"] : []

  dns_challenge {
    provider = "azure"

    config = {
      AZURE_CLIENT_ID       = var.client_id
      AZURE_CLIENT_SECRET   = var.client_secret
      AZURE_ENVIRONMENT     = "public"
      AZURE_RESOURCE_GROUP  = var.resource_group_name
      AZURE_SUBSCRIPTION_ID = var.subscription_id
      AZURE_TENANT_ID       = var.tenant_id
    }
  }
}

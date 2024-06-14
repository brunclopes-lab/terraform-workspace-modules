module "secrets_key_vault" {
  source                     = "./modules/secrets_key_vault"
  key_vault_id               = module.key_vault.key_vault_id
  app_registration_object_id = module.azure_ad.app_registration.object_id
  app_registration_client_id = module.azure_ad.app_registration.client_id
  secret_app_registration    = module.azure_ad.secret_app_registration

  depends_on = [module.azure_ad.role_akv_user_secrets_officer]
}
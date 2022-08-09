data "vault_generic_secret" "username" {
    path = "my.secrets/username"
}


provider "rundeck" {
  url        = "http://rundeck.example.com/"
  auth_token = data.vault_generic_secret.rundeck_auth.data["auth_token"]
}
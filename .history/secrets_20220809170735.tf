

data "vault_generic_secret" "password" {
  path = "my.secrets/password"
}


provider "vault" {

  auth_login {
    user = data.vault_generic_secret.password.data["password"]

    parameters = {
      password = var.password
    }
  }

}

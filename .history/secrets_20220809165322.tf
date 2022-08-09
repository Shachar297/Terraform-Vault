variable "usename" {}

data "vault_generic_secret" "username" {
    path = "my.secrets/username"
}


provider "vault" {

    auth_login {
        user = "${data.vault_generic_secret.username.data["username"]}"

            parameters = {
      password = var.login_password
    }
    }
  
}
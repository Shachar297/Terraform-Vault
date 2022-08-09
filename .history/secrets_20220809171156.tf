variable "username" {
    type = string
    default = "username"
}

variable "password" {
    type = string
    default = "password"
}

data "vault_generic_secret" "password" {
  path = "my.secrets/password"
}

data "vault_generic_secret" "username" {
  path = "my.secrets/username"
}

data "vault_access" "creds" {
    backend = ""
}

provider "vault" {

}


output "username" {
  value = data.vault_generic_secret.username
}

output "password" {
  value = data.vault_generic_secret.password
}
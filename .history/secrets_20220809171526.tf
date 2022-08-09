variable "username" {
    type = string
    default = "username"
}

variable "password" {
    type = string
    default = "password"
}

# data "vault_generic_secret" "password" {
#   path = "my.secrets/password"
# }

data "vault_generic_secret" "username" {
  path = "my.secrets/username"
}


provider "vault" {
  address = "http://localhost:8200"
}


output "username" {
  value = data.vault_generic_secret.username
}

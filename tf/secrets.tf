data "vault_generic_secret" "password" {
  path = "my.secrets/password"
}

data "vault_generic_secret" "username" {
  path = "my.secrets/username"
}


data "vault_generic_secret" "aws_access_key" {
  path = "my.secrets/aws_access_key"
}

data "vault_generic_secret" "aws_secret_key" {
  path = "my.secrets/aws_secret_key"
}

output "username" {
  value = data.vault_generic_secret.username
  sensitive = false
}

output "password" {
  value = data.vault_generic_secret.password
  sensitive = false
}

output "aws_access_key" {
  value = data.vault_generic_secret.aws_access_key
  sensitive = true
}

output "aws_secret_key" {
  value = data.vault_generic_secret.aws_secret_key
  sensitive = true
}
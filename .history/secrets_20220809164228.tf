data "vault_generic_secret" "username" {
    path = "my.secrets/username"
}


provider "vault" {

    auth_login {
      
    }
  
}
resource "random_password" "root_password" {
  length  = 16
  special = true
}

variable "AWS_REGION" {
  type    = string
  default = "eu-west-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  type = string
  default = "/Users/simran/terraform/demo/terraform-key.pem"
}

variable "PATH_TO_PUBLIC_KEY" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCK9FDssAx9GhCTilql/FLdZZyXSpEzFh99qxtZv06mWwLXniwzbfrRwerFhP9VQ24QSqRw8pmNagsrBVwxHqodKJX2cHP23VE5vmqouqkP3CH2Cuxz8eTIWv6ZIr9KXjvSVQTA3zvbcx/lkizx8BkOWQvcf6rRAp5tzgR7WD+jpsBfvQTctetQtU0g7rrT4Cqj+ikug3PRhZYrYopKOPE8xvpvLj4NrrkYxQGEsoSuM1uiWTKFlVwkkAAJrlApuFh6E1onJ6904vrdgZ/lERpCJcveuBvg1nr+3D+C2s4XQN4FEwZqAlkJcNU1yZNqIssefeVRRgMATYrBRsWYypMH"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-04ac550b78324f651"
    us-west-2 = "ami-02e30ba14d8ffa6e6"
    eu-west-1 = "ami-01793b684af7a3e2c"
  }
}




variable "public_hosted_zone" {}


variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "/Users/simran/terraform/terraform-course/demo-16/terraform-key.pem"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "/Users/simran/terraform/terraform-course/demo-16/terraform-key.pub"
}
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-04ac550b78324f651"
    us-west-2 = "ami-02e30ba14d8ffa6e6"
    eu-west-1 = "ami-01793b684af7a3e2c" 
  }
}
variable "ALB_NAME" {}
variable CONDITION_VALUES {}





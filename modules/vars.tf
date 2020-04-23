
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
  default = "/Users/simran/terraform/demo/terraform-key.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-04ac550b78324f651"
    us-west-2 = "ami-02e30ba14d8ffa6e6"
    eu-west-1 = "ami-01793b684af7a3e2c"
  }
}

variable "name" {
  description = "The resource name and Name tag of the load balancer."
  type        = string
  default     = "my-alb"
}

variable "domain" {
  description = "The resource name and Name tag of the load balancer."
  type        = string
  default     = "servermyip.com"
}


variable "ssl_policy" {
  description = "The resource name and Name tag of the load balancer."
  type        = string
  default     = "ELBSecurityPolicy-2016-08"
}













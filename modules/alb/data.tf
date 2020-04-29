

data "aws_acm_certificate" "sslcert" {
  domain  =  "servermyip.com"
  types   =  ["AMAZON_ISSUED"]
  most_recent  =  true
}

data "aws_lb" "alb" {
 name = var.ALB_NAME
}


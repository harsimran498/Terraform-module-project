
data "aws_lb" "alb" {
 name = var.ALB_NAME
}
data "aws_lb_target_group" "target" {
   name = "alb-target-group2"
}
data "aws_acm_certificate" "sslcert" {
  domain  =  "servermyip.com"
  types   =  ["AMAZON_ISSUED"]
  most_recent  =  true
}
data "aws_route53_zone" "hostedzone" {
  name         = "servermyip.com"
  private_zone = "false"
}

data "aws_acm_certificate" "sslcert" {
  domain  =  "servermyip.com"
  types   =  ["AMAZON_ISSUED"]
  most_recent  =  true
}

data "aws_lb_target_group" "tg" {
 name = "alb-target-group2"
}

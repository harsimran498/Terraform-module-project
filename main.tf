module "public_zone" {
  source = "./modules/alb"
  public_hosted_zone = "servermyip.com"
  ALB_NAME           = "my-alb"
  CONDITION_VALUES   = var.CONDITION_VALUES
}


resource "aws_lb_listener_certificate" "cert-listener" {
  listener_arn    = "${module.public_zone.listenerarn}"
  certificate_arn = "${data.aws_acm_certificate.sslcert.arn}"
}


resource "aws_alb_listener_rule" "listener_rule" {
    listener_arn = "${module.public_zone.listenerarn}"
    action {
      type             = "forward"
      target_group_arn = "${data.aws_lb_target_group.tg.arn}"
    }   
    condition {    
     field  = "path-pattern"      
     values = ["/index.html/*"] 
    }
    condition {
    field = "host-header"
    values = var.CONDITION_VALUES
    } 
}


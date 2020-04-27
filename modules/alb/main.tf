# This file takes data sources created in AWS from data.tf file
# Vars are declared in vars.tf and called here



#create alb listener and set default action 
resource "aws_alb_listener" "listener" {
  load_balancer_arn = "${data.aws_lb.alb.arn}"
  port              = "443"
  protocol = "HTTPS"
  ssl_policy = "ELBSecurityPolicy-2016-08"
  certificate_arn = "${data.aws_acm_certificate.sslcert.arn}" 
  default_action {
      type = "fixed-response"
      fixed_response {
        content_type = "text/plain"
        message_body = "NOT -- HEALTHY"
        status_code  = "404"
    }
  }
 }

 #for replacing default acm certificate

resource "aws_lb_listener_certificate" "cert-listener" {
  listener_arn    = "${aws_lb_listener.listener.arn}"
  certificate_arn = "${aws_acm_certificate.sslcert.arn}"
}

#create alb listener rule and config forwarding actions 

resource "aws_alb_listener_rule" "listener_rule" {
    listener_arn = "${aws_alb_listener.listener.arn}"
    action {
      type             = "forward"
      target_group_arn = "${data.aws_lb_target_group.target.arn}"
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


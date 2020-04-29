
resource "aws_alb_target_group" "target1" {
 name = "alb-target-group"
 port = 80
 protocol = "HTTP"
 vpc_id = "${data.aws_lb.alb.vpc_id}"
}

resource "aws_alb_target_group" "target2" {
 name = "alb-target-group2"
 port = 80
 protocol = "HTTP"
 vpc_id = "${data.aws_lb.alb.vpc_id}"
}


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



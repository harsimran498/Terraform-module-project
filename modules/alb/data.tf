
data "aws_lb" "alb" {
 name = var.ALB_NAME
}
data "aws_lb_target_group" "target" {
   name = "alb-target-group2"
}


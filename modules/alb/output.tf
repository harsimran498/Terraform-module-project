
output "alb" {
  value = "${data.aws_lb.alb.id}"
}
output "route" {
  value = "{var.public_hosted_zone}"
}
output "targetarn" {
  value = "{data.aws_lb_target_group.target.arn}"  
}


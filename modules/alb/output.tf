

output "alb" {
  value = "${data.aws_lb.alb.id}"
}

output "route" {
  value = "{var.public_hosted_zone}"
}

output "listenerarn" {
  value = "${aws_alb_listener.listener.arn}"
}

output "tg1" {
  value = "{aws_alb_target_group.target1.id}"  
}

output "tg2" {
  value = "{aws_alb_target_group.target2.id}"  
}



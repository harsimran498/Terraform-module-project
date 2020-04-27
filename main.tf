module "public_zone" {
  source = "./modules/alb"
  public_hosted_zone = "servermyip.com"
  ALB_NAME           = "my-alb"
  CONDITION_VALUES   = ["admin.servermyip.com"]
}


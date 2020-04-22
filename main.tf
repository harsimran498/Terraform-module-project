provider "aws" {
  region = var.AWS_REGION
}

module "create-alb" {
	source = "./modules"
	
}

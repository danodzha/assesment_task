module "code_deploy" {
  module = .../../../../modules/compute/alb
  my-role-arn = var.my-role-arn
  # the rest of the variables
}


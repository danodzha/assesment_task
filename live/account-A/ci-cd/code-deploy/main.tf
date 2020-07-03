module "code_deploy" {
  module = ../../../../modules/ci-cd/code-deploy
  my-role-arn = var.my-role-arn
  # the rest of the variables
}
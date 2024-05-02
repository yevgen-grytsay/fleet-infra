module "kbot-tf-flux" {
  source            = "./modules/tf-flux-bootstrap"
  github_org        = var.github_org
  github_repository = var.github_repository
  github_token      = var.github_token
}

module "kbot-helm-release" {
  source               = "./modules/tf-helm-release"
  helm-kbot-tele-token = var.tele_token
}

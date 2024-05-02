resource "helm_release" "example" {
  name             = "kbot-app"
  chart            = "https://github.com/yevgen-grytsay/kbot/releases/download/v1.0.2/kbot-0.1.1.tgz"
  namespace        = "kbot-tf-flux"
  create_namespace = true

  set {
    name  = "secret.tokenValue"
    value = var.helm-kbot-tele-token
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

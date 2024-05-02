provider "github" {
  owner = var.github_org
  token = var.github_token
}


provider "flux" {
  kubernetes = {
    config_path = "~/.kube/config"
  }

  git = {
    url = "https://github.com/yevgen-grytsay/fleet-infra"
    http = {
      username = var.github_org
      # username = "git"
      password = var.github_token
    }
  }
}

resource "flux_bootstrap_git" "this" {
  path = "clusters/kbot-test-cluster"
}

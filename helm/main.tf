provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "helm_deploy" {
  name       = "helm-deploy"
  repository = "https://ooghenekaro.github.io/myawesomeapp/"
  version    = "1.1.0"
  chart      = "myawesomeapp"
}

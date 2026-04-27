resource "kubernetes_deployment" "app" {
  metadata {
    name = var.app_name
    labels = {
      app = "demo"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "demo"
      }
    }

    template {
      metadata {
        labels = {
          app = "demo"
        }
      }

      spec {
        container {
          name  = "demo"
          image = var.image

          image_pull_policy = "Never"

          port {
            container_port = 5000
          }

          env {
            name  = "REDIS_HOST"
            value = "redis"
          }
        }
      }
    }
  }
}
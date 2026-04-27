resource "kubernetes_service" "app" {
  metadata {
    name = "demo-service"
  }

  spec {
    selector = {
      app = "demo"
    }

    port {
      port        = 80
      target_port = 5000
    }

    type = "NodePort"
  }
}
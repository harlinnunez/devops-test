resource "kubernetes_ingress_v1" "app" {
  metadata {
    name = "demo-ingress"
  }

  spec {
    rule {
      host = "demo.local"

      http {
        path {
          path      = "/"
          path_type = "Prefix"

          backend {
            service {
              name = kubernetes_service.app.metadata[0].name

              port {
                number = 80
              }
            }
          }
        }
      }
    }
  }
}
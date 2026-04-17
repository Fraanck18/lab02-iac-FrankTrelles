resource "docker_container" "web" {
  name  = "web-${terraform.workspace}-01"
  image = "web-localhost"

   ports {
    internal = "80"
    external = var.web_port[terraform.workspace]
  }
}

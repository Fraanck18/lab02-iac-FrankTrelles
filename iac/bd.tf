resource "docker_container" "db" {
  # El nombre cambia según si es LOCALHOST o DEV
  name  = "bd-${terraform.workspace}-01" 
  
  # Imagen oficial de Docker Hub (no requiere build local)
  image = "postgres:alpine"

  env = [
    "POSTGRES_PASSWORD=frank_password",
    "POSTGRES_DB=app_db",
    "POSTGRES_USER=frank_admin"
  ]

  ports {
    internal = "5432"
    # Mapea a 4003 (default) o 5003 (dev) según tu diagrama
    external = var.db_port[terraform.workspace] 
  }

  networks_advanced {
    name = docker_network.private_network.name
  }
}

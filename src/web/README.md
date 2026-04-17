# Despliegue

Vamos a utilizar terraform.
Lo primero es habilitar los proveedores, desde la carpeta donde se encuentra terraform

```
cd iac
```

```
terraform init
```

Deben documentar como crear los ambientes y seleccionar los ambientes

terraform.tfvars:
```
web_port={
    "default" = 4001
    "dev" = 5001
}
api_port={
    "default" = 4002
    "dev" = 5002
}
# para la base de datos
db_port = {
    "default" = 4003
    "dev" = 5432
}

```

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "hello_devops" {
  name         = var.docker_image
  keep_locally = false
}

resource "docker_container" "hello_devops" {
  name      = "hello-devops-app"
  image     = docker_image.hello_devops.image_id
  must_run  = false
  ports {
    internal = 8080
    external = 8080
  }
}

output "container_name" {
  description = "Name of the running container"
  value       = docker_container.hello_devops.name
}

output "container_port" {
  description = "Port the container is running on"
  value       = "http://localhost:8080"
}
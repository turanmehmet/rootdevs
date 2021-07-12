variable "region" {
  type    = string
  default = "us-east-1"
}
variable "clustername" {
  type    = string
  default = "my-cluster"
}
variable "desired_count" {
  type    = number
  default = 3
}
variable "ecs_name" {
  type    = string
  default = "my-first-service"
}
variable "container_port" {
  type    = number
  default = 4567
}
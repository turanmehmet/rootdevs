output "region" {
  value = var.region
}
output "rootdev" {
  value       = aws_alb.application_load_balancer.dns_name
  description = "DNS address of Load Balancer."
}
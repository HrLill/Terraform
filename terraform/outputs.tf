output "web_01_ip" {
  description = "IP address of web-01"
  value       = var.web01_ip
}

output "db_01_ip" {
  description = "IP address of db-01"
  value       = var.db01_ip
}

output "monitor_01_ip" {
  description = "IP address of monitor-01"
  value       = var.monitor01_ip
}

output "app_url" {
  description = "URL to access the Flask application"
  value       = "http://${var.web01_ip}:5000"
}

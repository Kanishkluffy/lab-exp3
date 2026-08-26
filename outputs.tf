output "web_public_ips" {
  description = "Public IP addresses of the web servers, for browser/curl testing"
  value       = module.compute.web_public_ips
}
 
output "db_private_ip" {
  description = "Private IP address of the database server, reachable only from the web tier"
  value       = module.compute.db_private_ip
}

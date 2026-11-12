output "clients_lookup_id" {
  description = "Map of id values across all clients_lookup, keyed the same as var.clients_lookup"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.id }
}
output "clients_lookup_app_types" {
  description = "Map of app_types values across all clients_lookup, keyed the same as var.clients_lookup"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.app_types }
}
output "clients_lookup_clients" {
  description = "Map of clients values across all clients_lookup, keyed the same as var.clients_lookup"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.clients }
}
output "clients_lookup_external_client_id" {
  description = "Map of external_client_id values across all clients_lookup, keyed the same as var.clients_lookup"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.external_client_id }
}
output "clients_lookup_hide_client_secret" {
  description = "Map of hide_client_secret values across all clients_lookup, keyed the same as var.clients_lookup"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.hide_client_secret }
}
output "clients_lookup_is_first_party" {
  description = "Map of is_first_party values across all clients_lookup, keyed the same as var.clients_lookup"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.is_first_party }
}
output "clients_lookup_name_filter" {
  description = "Map of name_filter values across all clients_lookup, keyed the same as var.clients_lookup"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.name_filter }
}


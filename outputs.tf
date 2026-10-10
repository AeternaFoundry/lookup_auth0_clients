output "clients_lookup_id" {
  description = "Map of id values across all clients_lookup, keyed the same as var.clients_lookup except keys with no id are omitted"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "clients_lookup_app_types" {
  description = "Map of app_types values across all clients_lookup, keyed the same as var.clients_lookup except keys with no app_types are omitted"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.app_types if v.app_types != null && length(v.app_types) > 0 }
}
output "clients_lookup_clients" {
  description = "Map of clients values across all clients_lookup, keyed the same as var.clients_lookup except keys with no clients are omitted"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.clients if v.clients != null && length(v.clients) > 0 }
}
output "clients_lookup_external_client_id" {
  description = "Map of external_client_id values across all clients_lookup, keyed the same as var.clients_lookup except keys with no external_client_id are omitted"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.external_client_id if v.external_client_id != null && length(v.external_client_id) > 0 }
}
output "clients_lookup_hide_client_secret" {
  description = "Map of hide_client_secret values across all clients_lookup, keyed the same as var.clients_lookup except keys with no hide_client_secret are omitted"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.hide_client_secret if v.hide_client_secret != null }
}
output "clients_lookup_is_first_party" {
  description = "Map of is_first_party values across all clients_lookup, keyed the same as var.clients_lookup except keys with no is_first_party are omitted"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.is_first_party if v.is_first_party != null }
}
output "clients_lookup_name_filter" {
  description = "Map of name_filter values across all clients_lookup, keyed the same as var.clients_lookup except keys with no name_filter are omitted"
  value       = { for k, v in data.auth0_clients.clients_lookup : k => v.name_filter if v.name_filter != null && length(v.name_filter) > 0 }
}


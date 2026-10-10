data "auth0_clients" "clients_lookup" {
  for_each = var.clients_lookup

  app_types          = each.value.app_types
  external_client_id = each.value.external_client_id
  hide_client_secret = each.value.hide_client_secret
  is_first_party     = each.value.is_first_party
  name_filter        = each.value.name_filter
}


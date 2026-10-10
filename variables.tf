variable "clients_lookup" {
  description = <<EOT
Map of clients_lookup, attributes below
Optional:
    - app_types
    - external_client_id
    - hide_client_secret
    - is_first_party
    - name_filter
EOT

  type = map(object({
    app_types          = optional(set(string))
    external_client_id = optional(string)
    hide_client_secret = optional(bool)
    is_first_party     = optional(bool)
    name_filter        = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


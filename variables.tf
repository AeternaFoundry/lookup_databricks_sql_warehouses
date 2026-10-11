variable "sql_warehouses_lookup" {
  description = <<EOT
Map of sql_warehouses_lookup, attributes below
Optional:
    - ids
    - warehouse_name_contains
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    ids                     = optional(set(string))
    warehouse_name_contains = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}


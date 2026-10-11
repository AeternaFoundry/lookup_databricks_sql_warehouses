output "sql_warehouses_lookup_id" {
  description = "Map of id values across all sql_warehouses_lookup, keyed the same as var.sql_warehouses_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_sql_warehouses.sql_warehouses_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_warehouses_lookup_ids" {
  description = "Map of ids values across all sql_warehouses_lookup, keyed the same as var.sql_warehouses_lookup except keys with no ids are omitted"
  value       = { for k, v in data.databricks_sql_warehouses.sql_warehouses_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "sql_warehouses_lookup_provider_config" {
  description = "Map of provider_config values across all sql_warehouses_lookup, keyed the same as var.sql_warehouses_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_sql_warehouses.sql_warehouses_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "sql_warehouses_lookup_warehouse_name_contains" {
  description = "Map of warehouse_name_contains values across all sql_warehouses_lookup, keyed the same as var.sql_warehouses_lookup except keys with no warehouse_name_contains are omitted"
  value       = { for k, v in data.databricks_sql_warehouses.sql_warehouses_lookup : k => v.warehouse_name_contains if v.warehouse_name_contains != null && length(v.warehouse_name_contains) > 0 }
}


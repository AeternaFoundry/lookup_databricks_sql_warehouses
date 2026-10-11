data "databricks_sql_warehouses" "sql_warehouses_lookup" {
  for_each = var.sql_warehouses_lookup

  ids                     = each.value.ids
  warehouse_name_contains = each.value.warehouse_name_contains

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}


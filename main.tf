resource "google_bigquery_bi_reservation" "bigquery_bi_reservations" {
  for_each = var.bigquery_bi_reservations

  location        = each.value.location
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  size            = each.value.size

  dynamic "preferred_tables" {
    for_each = each.value.preferred_tables != null ? each.value.preferred_tables : []
    content {
      dataset_id = preferred_tables.value.dataset_id
      project_id = preferred_tables.value.project_id
      table_id   = preferred_tables.value.table_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


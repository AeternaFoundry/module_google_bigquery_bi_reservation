output "bigquery_bi_reservations_id" {
  description = "Map of id values across all bigquery_bi_reservations, keyed the same as var.bigquery_bi_reservations except keys with no id are omitted"
  value       = { for k, v in google_bigquery_bi_reservation.bigquery_bi_reservations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigquery_bi_reservations_deletion_policy" {
  description = "Map of deletion_policy values across all bigquery_bi_reservations, keyed the same as var.bigquery_bi_reservations except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigquery_bi_reservation.bigquery_bi_reservations : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigquery_bi_reservations_location" {
  description = "Map of location values across all bigquery_bi_reservations, keyed the same as var.bigquery_bi_reservations except keys with no location are omitted"
  value       = { for k, v in google_bigquery_bi_reservation.bigquery_bi_reservations : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bigquery_bi_reservations_name" {
  description = "Map of name values across all bigquery_bi_reservations, keyed the same as var.bigquery_bi_reservations except keys with no name are omitted"
  value       = { for k, v in google_bigquery_bi_reservation.bigquery_bi_reservations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bigquery_bi_reservations_preferred_tables" {
  description = "Map of preferred_tables values across all bigquery_bi_reservations, keyed the same as var.bigquery_bi_reservations except keys with no preferred_tables are omitted"
  value       = { for k, v in google_bigquery_bi_reservation.bigquery_bi_reservations : k => v.preferred_tables if v.preferred_tables != null && length(v.preferred_tables) > 0 }
}
output "bigquery_bi_reservations_project" {
  description = "Map of project values across all bigquery_bi_reservations, keyed the same as var.bigquery_bi_reservations except keys with no project are omitted"
  value       = { for k, v in google_bigquery_bi_reservation.bigquery_bi_reservations : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigquery_bi_reservations_size" {
  description = "Map of size values across all bigquery_bi_reservations, keyed the same as var.bigquery_bi_reservations except keys with no size are omitted"
  value       = { for k, v in google_bigquery_bi_reservation.bigquery_bi_reservations : k => v.size if v.size != null }
}
output "bigquery_bi_reservations_update_time" {
  description = "Map of update_time values across all bigquery_bi_reservations, keyed the same as var.bigquery_bi_reservations except keys with no update_time are omitted"
  value       = { for k, v in google_bigquery_bi_reservation.bigquery_bi_reservations : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}


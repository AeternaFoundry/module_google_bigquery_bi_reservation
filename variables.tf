variable "bigquery_bi_reservations" {
  description = <<EOT
Map of bigquery_bi_reservations, attributes below
Required:
    - location
Optional:
    - deletion_policy
    - project
    - size
    - preferred_tables (block):
        - dataset_id (optional)
        - project_id (optional)
        - table_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location        = string
    deletion_policy = optional(string)
    project         = optional(string)
    size            = optional(number)
    preferred_tables = optional(list(object({
      dataset_id = optional(string)
      project_id = optional(string)
      table_id   = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}


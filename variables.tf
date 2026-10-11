variable "datascience_model_group_version_histories" {
  description = <<EOT
Map of datascience_model_group_version_histories, attributes below
Required:
    - compartment_id
    - project_id
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - latest_model_group_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id        = string
    project_id            = string
    defined_tags          = optional(map(string))
    description           = optional(string)
    display_name          = optional(string)
    freeform_tags         = optional(map(string))
    latest_model_group_id = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}


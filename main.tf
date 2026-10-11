resource "oci_datascience_model_group_version_history" "datascience_model_group_version_histories" {
  for_each = var.datascience_model_group_version_histories

  compartment_id        = each.value.compartment_id
  project_id            = each.value.project_id
  defined_tags          = each.value.defined_tags
  description           = each.value.description
  display_name          = each.value.display_name
  freeform_tags         = each.value.freeform_tags
  latest_model_group_id = each.value.latest_model_group_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


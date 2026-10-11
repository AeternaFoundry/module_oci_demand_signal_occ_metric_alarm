resource "oci_demand_signal_occ_metric_alarm" "demand_signal_occ_metric_alarms" {
  for_each = var.demand_signal_occ_metric_alarms

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  frequency      = each.value.frequency
  is_active      = each.value.is_active
  threshold      = each.value.threshold
  defined_tags   = each.value.defined_tags
  description    = each.value.description
  freeform_tags  = each.value.freeform_tags
  state          = each.value.state
  subscribers    = each.value.subscribers
  threshold_type = each.value.threshold_type

  resource_configuration {
    compute_hw_generation     = each.value.resource_configuration.compute_hw_generation
    hw_generation             = each.value.resource_configuration.hw_generation
    link_role                 = each.value.resource_configuration.link_role
    node_type                 = each.value.resource_configuration.node_type
    occ_metric_alarm_provider = each.value.resource_configuration.occ_metric_alarm_provider
    resource                  = each.value.resource_configuration.resource
    shape                     = each.value.resource_configuration.shape
    storage_type              = each.value.resource_configuration.storage_type
    usage_type                = each.value.resource_configuration.usage_type
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


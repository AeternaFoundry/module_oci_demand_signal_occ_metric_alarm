output "demand_signal_occ_metric_alarms_id" {
  description = "Map of id values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no id are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.id if v.id != null && length(v.id) > 0 }
}
output "demand_signal_occ_metric_alarms_compartment_id" {
  description = "Map of compartment_id values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no compartment_id are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "demand_signal_occ_metric_alarms_defined_tags" {
  description = "Map of defined_tags values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no defined_tags are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "demand_signal_occ_metric_alarms_description" {
  description = "Map of description values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no description are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.description if v.description != null && length(v.description) > 0 }
}
output "demand_signal_occ_metric_alarms_display_name" {
  description = "Map of display_name values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no display_name are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "demand_signal_occ_metric_alarms_freeform_tags" {
  description = "Map of freeform_tags values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "demand_signal_occ_metric_alarms_frequency" {
  description = "Map of frequency values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no frequency are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.frequency if v.frequency != null && length(v.frequency) > 0 }
}
output "demand_signal_occ_metric_alarms_is_active" {
  description = "Map of is_active values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no is_active are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.is_active if v.is_active != null }
}
output "demand_signal_occ_metric_alarms_resource_configuration" {
  description = "Map of resource_configuration values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no resource_configuration are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => one(v.resource_configuration) if v.resource_configuration != null && length(v.resource_configuration) > 0 }
}
output "demand_signal_occ_metric_alarms_state" {
  description = "Map of state values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no state are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.state if v.state != null && length(v.state) > 0 }
}
output "demand_signal_occ_metric_alarms_subscribers" {
  description = "Map of subscribers values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no subscribers are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.subscribers if v.subscribers != null && length(v.subscribers) > 0 }
}
output "demand_signal_occ_metric_alarms_system_tags" {
  description = "Map of system_tags values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no system_tags are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "demand_signal_occ_metric_alarms_threshold" {
  description = "Map of threshold values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no threshold are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.threshold if v.threshold != null }
}
output "demand_signal_occ_metric_alarms_threshold_type" {
  description = "Map of threshold_type values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no threshold_type are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.threshold_type if v.threshold_type != null && length(v.threshold_type) > 0 }
}
output "demand_signal_occ_metric_alarms_time_created" {
  description = "Map of time_created values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no time_created are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "demand_signal_occ_metric_alarms_time_updated" {
  description = "Map of time_updated values across all demand_signal_occ_metric_alarms, keyed the same as var.demand_signal_occ_metric_alarms except keys with no time_updated are omitted"
  value       = { for k, v in oci_demand_signal_occ_metric_alarm.demand_signal_occ_metric_alarms : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}


variable "demand_signal_occ_metric_alarms" {
  description = <<EOT
Map of demand_signal_occ_metric_alarms, attributes below
Required:
    - compartment_id
    - display_name
    - frequency
    - is_active
    - threshold
    - resource_configuration (block):
        - compute_hw_generation (optional)
        - hw_generation (optional)
        - link_role (optional)
        - node_type (optional)
        - occ_metric_alarm_provider (optional)
        - resource (required)
        - shape (optional)
        - storage_type (optional)
        - usage_type (required)
Optional:
    - defined_tags
    - description
    - freeform_tags
    - state
    - subscribers
    - threshold_type
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    display_name   = string
    frequency      = string
    is_active      = bool
    threshold      = number
    defined_tags   = optional(map(string))
    description    = optional(string)
    freeform_tags  = optional(map(string))
    state          = optional(string)
    subscribers    = optional(list(string))
    threshold_type = optional(string)
    resource_configuration = object({
      compute_hw_generation     = optional(string)
      hw_generation             = optional(string)
      link_role                 = optional(string)
      node_type                 = optional(string)
      occ_metric_alarm_provider = optional(string)
      resource                  = string
      shape                     = optional(string)
      storage_type              = optional(string)
      usage_type                = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.demand_signal_occ_metric_alarms : (
        contains([for v in ["COMPUTE", "EXADATA", "NETWORK", "STORAGE"] : lower(v)], lower(v.resource_configuration.resource))
      )
    ])
    error_message = "must be one of: \"COMPUTE\", \"EXADATA\", \"NETWORK\", \"STORAGE\""
  }
}


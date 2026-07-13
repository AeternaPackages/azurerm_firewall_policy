variable "firewall_policies" {
  description = <<EOT
Map of firewall_policies, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - auto_learn_private_ranges_enabled
    - base_policy_id
    - private_ip_ranges
    - sku
    - sql_redirect_allowed
    - tags
    - threat_intelligence_mode
    - dns (block)
    - explicit_proxy (block)
    - identity (block)
    - insights (block)
    - intrusion_detection (block)
    - threat_intelligence_allowlist (block)
    - tls_certificate (block)
Nested firewall_policy_rule_collection_groups (azurerm_firewall_policy_rule_collection_group):
    Required:
        - name
        - priority
    Optional:
        - application_rule_collection (block)
        - nat_rule_collection (block)
        - network_rule_collection (block)
EOT

  type = map(object({
    location                          = string
    name                              = string
    resource_group_name               = string
    auto_learn_private_ranges_enabled = optional(bool)
    base_policy_id                    = optional(string)
    private_ip_ranges                 = optional(list(string))
    sku                               = optional(string)
    sql_redirect_allowed              = optional(bool)
    tags                              = optional(map(string))
    threat_intelligence_mode          = optional(string)
    dns = optional(object({
      proxy_enabled = optional(bool)
      servers       = optional(list(string))
    }))
    explicit_proxy = optional(object({
      enable_pac_file = optional(bool)
      enabled         = optional(bool)
      http_port       = optional(number)
      https_port      = optional(number)
      pac_file        = optional(string)
      pac_file_port   = optional(number)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    insights = optional(object({
      default_log_analytics_workspace_id = string
      enabled                            = bool
      log_analytics_workspace = optional(list(object({
        firewall_location = string
        id                = string
      })))
      retention_in_days = optional(number)
    }))
    intrusion_detection = optional(object({
      mode           = optional(string)
      private_ranges = optional(list(string))
      signature_overrides = optional(list(object({
        id    = optional(string)
        state = optional(string)
      })))
      traffic_bypass = optional(list(object({
        description           = optional(string)
        destination_addresses = optional(set(string))
        destination_ip_groups = optional(set(string))
        destination_ports     = optional(set(string))
        name                  = string
        protocol              = string
        source_addresses      = optional(set(string))
        source_ip_groups      = optional(set(string))
      })))
    }))
    threat_intelligence_allowlist = optional(object({
      fqdns        = optional(set(string))
      ip_addresses = optional(set(string))
    }))
    tls_certificate = optional(object({
      key_vault_secret_id = string
      name                = string
    }))
    firewall_policy_rule_collection_groups = optional(map(object({
      name     = string
      priority = number
      application_rule_collection = optional(list(object({
        action   = string
        name     = string
        priority = number
        rule = list(object({
          description           = optional(string)
          destination_addresses = optional(list(string))
          destination_fqdn_tags = optional(list(string))
          destination_fqdns     = optional(list(string))
          destination_urls      = optional(list(string))
          http_headers = optional(list(object({
            name  = string
            value = string
          })))
          name = string
          protocols = optional(list(object({
            port = number
            type = string
          })))
          source_addresses = optional(list(string))
          source_ip_groups = optional(list(string))
          terminate_tls    = optional(bool)
          web_categories   = optional(list(string))
        }))
      })))
      nat_rule_collection = optional(list(object({
        action   = string
        name     = string
        priority = number
        rule = list(object({
          description         = optional(string)
          destination_address = optional(string)
          destination_ports   = optional(list(string))
          name                = string
          protocols           = list(string)
          source_addresses    = optional(list(string))
          source_ip_groups    = optional(list(string))
          translated_address  = optional(string)
          translated_fqdn     = optional(string)
          translated_port     = number
        }))
      })))
      network_rule_collection = optional(list(object({
        action   = string
        name     = string
        priority = number
        rule = list(object({
          description           = optional(string)
          destination_addresses = optional(list(string))
          destination_fqdns     = optional(list(string))
          destination_ip_groups = optional(list(string))
          destination_ports     = list(string)
          name                  = string
          protocols             = list(string)
          source_addresses      = optional(list(string))
          source_ip_groups      = optional(list(string))
        }))
      })))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.firewall_policies) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.firewall_policies : [for kk in keys(coalesce(v0.firewall_policy_rule_collection_groups, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}

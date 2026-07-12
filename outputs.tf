# --- azurerm_firewall_policy ---
output "firewall_policies_id" {
  description = "Map of id values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_id
}

output "firewall_policies_auto_learn_private_ranges_enabled" {
  description = "Map of auto_learn_private_ranges_enabled values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_auto_learn_private_ranges_enabled
}

output "firewall_policies_base_policy_id" {
  description = "Map of base_policy_id values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_base_policy_id
}

output "firewall_policies_child_policies" {
  description = "Map of child_policies values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_child_policies
}

output "firewall_policies_dns" {
  description = "Map of dns values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_dns
}

output "firewall_policies_explicit_proxy" {
  description = "Map of explicit_proxy values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_explicit_proxy
}

output "firewall_policies_firewalls" {
  description = "Map of firewalls values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_firewalls
}

output "firewall_policies_identity" {
  description = "Map of identity values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_identity
}

output "firewall_policies_insights" {
  description = "Map of insights values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_insights
}

output "firewall_policies_intrusion_detection" {
  description = "Map of intrusion_detection values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_intrusion_detection
}

output "firewall_policies_location" {
  description = "Map of location values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_location
}

output "firewall_policies_name" {
  description = "Map of name values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_name
}

output "firewall_policies_private_ip_ranges" {
  description = "Map of private_ip_ranges values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_private_ip_ranges
}

output "firewall_policies_resource_group_name" {
  description = "Map of resource_group_name values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_resource_group_name
}

output "firewall_policies_rule_collection_groups" {
  description = "Map of rule_collection_groups values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_rule_collection_groups
}

output "firewall_policies_sku" {
  description = "Map of sku values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_sku
}

output "firewall_policies_sql_redirect_allowed" {
  description = "Map of sql_redirect_allowed values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_sql_redirect_allowed
}

output "firewall_policies_tags" {
  description = "Map of tags values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_tags
}

output "firewall_policies_threat_intelligence_allowlist" {
  description = "Map of threat_intelligence_allowlist values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_threat_intelligence_allowlist
}

output "firewall_policies_threat_intelligence_mode" {
  description = "Map of threat_intelligence_mode values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_threat_intelligence_mode
}

output "firewall_policies_tls_certificate" {
  description = "Map of tls_certificate values across all firewall_policies, keyed the same as var.firewall_policies"
  value       = module.firewall_policies.firewall_policies_tls_certificate
}

# --- azurerm_firewall_policy_rule_collection_group ---
output "firewall_policy_rule_collection_groups_id" {
  description = "Map of id values across all firewall_policy_rule_collection_groups, keyed the same as var.firewall_policy_rule_collection_groups"
  value       = module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups_id
}

output "firewall_policy_rule_collection_groups_application_rule_collection" {
  description = "Map of application_rule_collection values across all firewall_policy_rule_collection_groups, keyed the same as var.firewall_policy_rule_collection_groups"
  value       = module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups_application_rule_collection
}

output "firewall_policy_rule_collection_groups_firewall_policy_id" {
  description = "Map of firewall_policy_id values across all firewall_policy_rule_collection_groups, keyed the same as var.firewall_policy_rule_collection_groups"
  value       = module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups_firewall_policy_id
}

output "firewall_policy_rule_collection_groups_name" {
  description = "Map of name values across all firewall_policy_rule_collection_groups, keyed the same as var.firewall_policy_rule_collection_groups"
  value       = module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups_name
}

output "firewall_policy_rule_collection_groups_nat_rule_collection" {
  description = "Map of nat_rule_collection values across all firewall_policy_rule_collection_groups, keyed the same as var.firewall_policy_rule_collection_groups"
  value       = module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups_nat_rule_collection
}

output "firewall_policy_rule_collection_groups_network_rule_collection" {
  description = "Map of network_rule_collection values across all firewall_policy_rule_collection_groups, keyed the same as var.firewall_policy_rule_collection_groups"
  value       = module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups_network_rule_collection
}

output "firewall_policy_rule_collection_groups_priority" {
  description = "Map of priority values across all firewall_policy_rule_collection_groups, keyed the same as var.firewall_policy_rule_collection_groups"
  value       = module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups_priority
}



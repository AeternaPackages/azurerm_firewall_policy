# --- azurerm_firewall_policy ---
output "firewall_policies" {
  description = "All firewall_policy resources"
  value       = module.firewall_policies.firewall_policies
}
output "firewall_policies_auto_learn_private_ranges_enabled" {
  description = "List of auto_learn_private_ranges_enabled values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.auto_learn_private_ranges_enabled]
}
output "firewall_policies_base_policy_id" {
  description = "List of base_policy_id values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.base_policy_id]
}
output "firewall_policies_child_policies" {
  description = "List of child_policies values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.child_policies]
}
output "firewall_policies_dns" {
  description = "List of dns values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.dns]
}
output "firewall_policies_explicit_proxy" {
  description = "List of explicit_proxy values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.explicit_proxy]
}
output "firewall_policies_firewalls" {
  description = "List of firewalls values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.firewalls]
}
output "firewall_policies_identity" {
  description = "List of identity values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.identity]
}
output "firewall_policies_insights" {
  description = "List of insights values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.insights]
}
output "firewall_policies_intrusion_detection" {
  description = "List of intrusion_detection values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.intrusion_detection]
}
output "firewall_policies_location" {
  description = "List of location values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.location]
}
output "firewall_policies_name" {
  description = "List of name values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.name]
}
output "firewall_policies_private_ip_ranges" {
  description = "List of private_ip_ranges values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.private_ip_ranges]
}
output "firewall_policies_resource_group_name" {
  description = "List of resource_group_name values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.resource_group_name]
}
output "firewall_policies_rule_collection_groups" {
  description = "List of rule_collection_groups values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.rule_collection_groups]
}
output "firewall_policies_sku" {
  description = "List of sku values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.sku]
}
output "firewall_policies_sql_redirect_allowed" {
  description = "List of sql_redirect_allowed values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.sql_redirect_allowed]
}
output "firewall_policies_tags" {
  description = "List of tags values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.tags]
}
output "firewall_policies_threat_intelligence_allowlist" {
  description = "List of threat_intelligence_allowlist values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.threat_intelligence_allowlist]
}
output "firewall_policies_threat_intelligence_mode" {
  description = "List of threat_intelligence_mode values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.threat_intelligence_mode]
}
output "firewall_policies_tls_certificate" {
  description = "List of tls_certificate values across all firewall_policies"
  value       = [for k, v in module.firewall_policies.firewall_policies : v.tls_certificate]
}


# --- azurerm_firewall_policy_rule_collection_group ---
output "firewall_policy_rule_collection_groups" {
  description = "All firewall_policy_rule_collection_group resources"
  value       = module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups
}
output "firewall_policy_rule_collection_groups_application_rule_collection" {
  description = "List of application_rule_collection values across all firewall_policy_rule_collection_groups"
  value       = [for k, v in module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups : v.application_rule_collection]
}
output "firewall_policy_rule_collection_groups_firewall_policy_id" {
  description = "List of firewall_policy_id values across all firewall_policy_rule_collection_groups"
  value       = [for k, v in module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups : v.firewall_policy_id]
}
output "firewall_policy_rule_collection_groups_name" {
  description = "List of name values across all firewall_policy_rule_collection_groups"
  value       = [for k, v in module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups : v.name]
}
output "firewall_policy_rule_collection_groups_nat_rule_collection" {
  description = "List of nat_rule_collection values across all firewall_policy_rule_collection_groups"
  value       = [for k, v in module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups : v.nat_rule_collection]
}
output "firewall_policy_rule_collection_groups_network_rule_collection" {
  description = "List of network_rule_collection values across all firewall_policy_rule_collection_groups"
  value       = [for k, v in module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups : v.network_rule_collection]
}
output "firewall_policy_rule_collection_groups_priority" {
  description = "List of priority values across all firewall_policy_rule_collection_groups"
  value       = [for k, v in module.firewall_policy_rule_collection_groups.firewall_policy_rule_collection_groups : v.priority]
}




locals {
  firewall_policies = { for k1, v1 in var.firewall_policies : k1 => { auto_learn_private_ranges_enabled = v1.auto_learn_private_ranges_enabled, base_policy_id = v1.base_policy_id, dns = v1.dns, explicit_proxy = v1.explicit_proxy, identity = v1.identity, insights = v1.insights, intrusion_detection = v1.intrusion_detection, location = v1.location, name = v1.name, private_ip_ranges = v1.private_ip_ranges, resource_group_name = v1.resource_group_name, sku = v1.sku, sql_redirect_allowed = v1.sql_redirect_allowed, tags = v1.tags, threat_intelligence_allowlist = v1.threat_intelligence_allowlist, threat_intelligence_mode = v1.threat_intelligence_mode, tls_certificate = v1.tls_certificate } }

  firewall_policy_rule_collection_groups = merge([
    for k1, v1 in var.firewall_policies : {
      for k2, v2 in coalesce(v1.firewall_policy_rule_collection_groups, {}) :
      "${k1}/${k2}" => merge(v2, {
        firewall_policy_id = module.firewall_policies.firewall_policies_id["${k1}"]
      })
    }
  ]...)
}

module "firewall_policies" {
  source            = "git::https://github.com/AeternaModules/azurerm_firewall_policy.git?ref=v5.0.1"
  firewall_policies = local.firewall_policies
}

module "firewall_policy_rule_collection_groups" {
  source                                 = "git::https://github.com/AeternaModules/azurerm_firewall_policy_rule_collection_group.git?ref=v5.0.1"
  firewall_policy_rule_collection_groups = local.firewall_policy_rule_collection_groups
  depends_on                             = [module.firewall_policies]
}


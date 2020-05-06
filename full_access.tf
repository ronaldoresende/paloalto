resource "panos_security_rule_group" "policy" {
  rule {
    name                  = "IP_ALL_ACCESS"
    source_zones          = ["any"]
    source_addresses      = ["${panos_address_object.IP_ALL_ACCESS.name}"]
    source_users          = ["any"]
    hip_profiles          = ["any"]
    destination_zones     = ["${panos_zone.int.name}"]
    destination_addresses = ["any"]
    applications          = ["any"]
    services              = ["application-default"]
    categories            = ["any"]
    action                = "allow"
  }
  rule {
    name                  = "Outbound"
    source_zones          = ["${panos_zone.int.name}"]
    source_addresses      = ["any"]
    source_users          = ["any"]
    hip_profiles          = ["any"]
    #profile               = ["${panos_panorama_monitor_profile.monitor-profile}"]
    destination_zones     = ["${panos_zone.ext.name}"]
    destination_addresses = ["any"]
    applications          = ["any"]
    services              = ["application-default"]
    categories            = ["any"]
    #categories            = ["any"]
    action                = "allow"
  }
  rule {
    name                  = "Default Deny"
    source_zones          = ["any"]
    source_addresses      = ["any"]
    source_users          = ["any"]
    hip_profiles          = ["any"]
    destination_zones     = ["any"]
    destination_addresses = ["any"]
    applications          = ["any"]
    services              = ["application-default"]
    categories            = ["any"]
    action                = "deny"
  }
}
resource "panos_zone" "mgm-ext" {
  name       = "Manager-Interface"
  mode       = "layer3"
  interfaces = ["${panos_ethernet_interface.eth1.name}"]
}
resource "panos_zone" "ext" {
  name       = "L3-untrust"
  mode       = "layer3"
  interfaces = ["${panos_ethernet_interface.eth2.name}"]
}

resource "panos_zone" "int" {
  name       = "L3-trust"
  mode       = "layer3"
  interfaces = ["${panos_ethernet_interface.eth3.name}"]
}

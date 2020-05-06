resource "panos_virtual_router" "vr" {
  name = "default"
  interfaces = [
    "${panos_ethernet_interface.eth1.name}",
    "${panos_ethernet_interface.eth2.name}",
    "${panos_ethernet_interface.eth3.name}",
  ]
}
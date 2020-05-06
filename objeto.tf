resource "panos_address_object" "IP_ALL_ACCESS" {
    name = "IP_ALL_ACCESS"
    value = "192.168.80.1/32"
    description = "Host 192.168.80.1"
    #tags = ["internal", "dmz"]
}
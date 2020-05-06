resource "panos_management_profile" "panos_management_profile" {
    name = "allow ping"
    ping = true
    ssh =  true
    permitted_ips = ["0.0.0.0/0", "11.1.1.1/32"]
}


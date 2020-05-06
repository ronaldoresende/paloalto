resource "panos_general_settings" "PA-RONALDO" {
    hostname = "${var.panos_hostname}"
    dns_primary = "8.8.8.8"
   # ntp_primary = "a.st1.ntp.br"
 #   ntp_primary_auth_type = "none"
#    timezone = "America/Recife"
timezone = "America/Recife"
}
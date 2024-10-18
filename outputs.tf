# output "Flask-URLs" {
#  value = join("",["http://",google_compute_instance.student_vm[1].network_interface.0.access_config.0.nat_ip,":5000"])
# }
# output "IPs" {
#   value = "${google_compute_instance.student_vm[*].network_interface.0.access_config.0.nat_ip}"
# }

resource "google_compute_network" "this" {
  name = "lbg-cohort2-terraform-network"
  auto_create_subnetworks = false
}

# resource "google_compute_subnetwork" "default" {
#   name          = "cohort1-custom-subnet"  
#   ip_cidr_range = "10.0.1.0/24"
#   region        = "europe-west2"  
#   network       = google_compute_network.lbg_cohort1_vpc_network.id
# }

# resource "google_compute_instance" "student_vm" {
#   count        = 3

#   name         = "student-${count.index + 1}"
#   machine_type = "f1-micro"
#   zone         = "europe-west2-c"
#   tags         = ["cohort1"]


#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-11"
#     }
#   }
#     network_interface {
#     subnetwork = google_compute_subnetwork.default.id

#     access_config {
#       # Include this section to give the VM an external IP address
#     }
#   }
# }
# resource "google_compute_firewall" "cohort1-ssh" {
# name = "allow-ssh"
#   allow {
#     ports    = ["22"]
#     protocol = "tcp"
#   }
#   direction     = "INGRESS"
#   network       = google_compute_network.lbg_cohort1_vpc_network.id
#   priority      = 1000
#   source_ranges = ["0.0.0.0/0"]
#   target_tags   = ["cohort1"]
# }
# resource "google_compute_firewall" "flask" {
#   name    = "flask-app-firewall"
#   network = google_compute_network.lbg_cohort1_vpc_network.id

#   allow {
#     protocol = "tcp"
#     ports    = ["5000"]
#   }
#   source_ranges = ["0.0.0.0/0"]
# }

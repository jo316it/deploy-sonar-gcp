provider "google" {
    project = var.project
    # credentials = "${file("...")}" here you have to put gcp key access
    region = var.region
    # region = "us-east4"
}



resource "google_compute_instance" "sonar-cube" {
  count        = 1
  name         = "sonar-cube"
  machine_type = var.instance_type
  zone = var.zone

  boot_disk {
    initialize_params {
      image = var.os
      size  = var.disk_size
      type  = "pd-standard"
    }
  }

# lABELS

#   labels = {
#     goog-ec-src = "vm_add-tf"
#     name        = ""
#     type        = ""
#   }


  network_interface {
    network = "default"
    network_ip = var.network_ip 
    access_config {}
  }


    connection {
    type        = "ssh"
    user        = var.connection_user
    # private_key = file("...") here you have to put your key (id_rsa)
    host        = self.network_interface[0].access_config[0].nat_ip
  }



provisioner "file" {
    source      = "./inputs/sonar.service"
    destination = "/tmp/sonar.service"
}

provisioner "file" {
    source      = "./inputs/sonar-scanner.sh"
    destination = "/tmp/sonar-scanner.sh"
}

provisioner "file" {
    source      = "./inputs/install.sh"
    destination = "/tmp/install.sh"
}


  
provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/install.sh",
      "sudo bash /tmp/install.sh"
    ]
  }

  
  metadata = {
    ssh-keys = var.keys
  }

  tags = ["http-server", "https-server"]
}
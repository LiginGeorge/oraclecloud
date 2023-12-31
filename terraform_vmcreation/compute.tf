resource "oci_core_instance" "pci_segmentation_vm" {
  availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[var.AD -1]["name"]
  compartment_id      = var.compartment_ocid
  display_name        = "PCI_Segmentation"
  shape               = var.instance_shape

  create_vnic_details {
    subnet_id = oci_core_subnet.subnet.id
    display_name = "primaryvnic"
  }
  source_details {
    source_type             = "image"
    source_id               = lookup(data.oci_core_images.compute_images.images[0], "id")
    boot_volume_size_in_gbs = "50"
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
    user_data = base64encode(data.template_file.user_data.rendered)
  }

}


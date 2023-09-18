variable "instance_name" {
  description = "The instance name of the VM"
  type        = string
  default     = "terraform-workspace"
}

variable "project_prod" {
  default = "br-carrefour-devops"
  sensitive = true
}
variable "project_qa" {
  default = "c4-shared-nonprod-vpcs-br"
  sensitive = true
}

variable "machine_type_prod" {
  description = "The machine_type of the VM"
  default     = "e2-standard-8"
}
variable "machine_type_qa" {
  description = "The machine_type of the VM"
  default     = "e2-medium"
}
variable "subnetwork_prod" {
  default = "/projects/br-carrefour-devops/regions/us-east1/subnetworks/c4-subnet-devops-tools-br"
  sensitive = true
}
variable "subnetwork_qa" {
  default = "/projects/c4-shared-nonprod-vpcs-br/regions/us-east1/subnetworks/gcp-local-nonprod-br-middle-base"
  sensitive = true
}

variable "gcs_image" {
  description = "The image of the VM"
  default     = "debian-11-bullseye-v20230912"
}

variable "boot_disk_size_prod" {
  description = "The disk size of the VM"
  default     = "100"
}
variable "boot_disk_size_qa" {
  description = "The disk size of the VM"
  default     = "50"
}

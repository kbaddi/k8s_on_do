variable "region" {
    description = "Region in which the droplets are to be created"
    default = "nyc1"
} 

variable "image" {
    description = "Image to be used for the droplet"
    default = "ubuntu-18-04-x64"
}       
variable "master_node_size" {
    description  = "Size of the VM"
    default = "s-1vcpu-1gb"
} 

variable "worker_node_size" {
    description  = "Size of the VM"
    default = "s-1vcpu-1gb"
} 

variable "worker_nodes" {
    description = "Number of worker counts"
    default = 2
}
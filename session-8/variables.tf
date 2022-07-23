variable "instance_type" {
  type        = string
  description = "This is a size of EC2"
  default     = "t3.micro"
}
variable "key_name" {
  type        = string
  description = "This is my Public Key"
  default     = "MyMacKey"
}
variable "env" {
  type        = string
  description = "This variable represents environment"
  default     = "dev"
}
variable "ingress_ports" {
  type        = list(string)
  description = "This is a list of ports for Ingress Rule"
  default     = ["22", "80", "443", "3306", "23", "5432"]
}
variable "bucket_name" {
  type            = string
  description     = "Nome do bucket"
}

variable "tags" {
  type = map(string)
  default = {}
  description = "Tags de criação"
}
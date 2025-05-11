variable "origin_id" {
   type        = string
   description = "Id do S3"
 }
 
 variable "bucket_domain_name" {
   type        = string
   description = "Domínio do S3"
 }

 variable "tags" {
  type = map(string)
  default = {}
  description = "Tags de criação"
}
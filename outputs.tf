output bucket_domain_name {
  value       = data.aws_s3_bucket.bucket.bucket_domain_name
  sensitive   = false
  description = "Nome de domínio do bucket S3"
}

# value 
# data               → é um data block, ou seja, uma consulta.
# aws_s3_bucket      → tipo da consulta (bucket do S3).
# bucket             → é o nome interno do data que foi declarado no data.
# bucket_domain_name → é um atributo retornado pela AWS quando a consulta funciona (pode ser visto no terraform.tfstate).

output bucket_region {
    value       = data.aws_s3_bucket.bucket.region
    sensitive   = false
    description = "Região do bucket S#"
}
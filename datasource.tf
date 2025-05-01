data "aws_s3_bucket" "bucket" {
        bucket = "${var.bucket_name}-${terraform.workspace}"  #pega o bucket correspondente
}

# Usar data serve para consultar um recurso que já existe no AWS
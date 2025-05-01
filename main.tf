resource "aws_s3_bucket" "s3_bucket" {
    bucket = "${var.bucket_name}-${terraform.workspace}"

    tags = {
        Name = "Bucket"
        Iac = true # boa prática => se foi criado via IAC
        context = "${terraform.workspace}"
    }
}
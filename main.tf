resource "aws_s3_bucket" "s3_bucket" {
    bucket = "s3-bucket-ndeves-${terraform.workspace}"

    tags = {
        Name = "Bucket"
        Iac = true # boa prática => se foi criado via IAC
        context = "${terraform.workspace}"
    }
}
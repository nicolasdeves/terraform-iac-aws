resource "aws_s3_bucket" "s3_bucket" {
    bucket = "s3-bucket-nicolas-deves-123" #name

    tags = {
        Name = "First bucket"
        Iac = true # boa prática => se foi criado via IAC
    }
}
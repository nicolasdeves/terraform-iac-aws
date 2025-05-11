module "s3" {
  source      = "./modules/s3" #private (modules)
  bucket_name = "s3-bucket-ndeves"
  tags = {
    Name = "Bucket"
    Iac = true 
    context = "${terraform.workspace}"
  }
}

module "cloudfront" {
  source             = "./modules/cloudfront" #private (modules)
  origin_id          = module.s3.bucket_id
  bucket_domain_name = module.s3.bucket_domain_name
  tags = {
    Iac = true
  }

  depends_on = [
    module.s3
  ]
}

module "sqs" {
  source  = "terraform-aws-modules/sqs/aws" #public
  name = "sqs-ndeves"
  create_dlq = true

  tags = {
    Iac = true
  }
}
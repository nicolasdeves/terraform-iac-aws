module "s3" {
    source = "./modules/s3"
    bucket_name = "s3-bucket-ndeves"
}

module "cloudfront" {
    source = "./modules/cloudfront"
    origin_id = module.s3.bucket_id
    bucket_domain_name = module.s3.bucket_domain_name

    depends_on = [
        module.s3
    ]
}
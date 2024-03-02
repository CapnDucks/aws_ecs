module "kms" {
  #source = "../kms"
  source = "git::https://github.com/CapnDucks/aws_kms?ref=v1"

  kms_key_alias = var.kms_key_alias
}

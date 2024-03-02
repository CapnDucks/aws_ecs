module "kms" {
  source = "git::https://github.com/CapnDucks/aws_kms?ref=v1"
    #checkov:skip=CKV_TF_1:

  kms_key_alias = var.kms_key_alias
}

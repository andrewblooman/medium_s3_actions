resource "aws_s3_bucket" "s3_bucket_example" {
  bucket        = var.bucket_name
  force_destroy = var.force_destroy
  tags          = var.bucket_tags
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.s3_bucket_example.id
  versioning_configuration {
    status = var.versioning_status
  }
}

resource "aws_kms_key" "kmskey" {
  description             = var.kmskey_description
  enable_key_rotation     = var.kmskey_key_rotation
  rotation_period_in_days = var.kmskey_rotation_period
}

resource "aws_kms_alias" "kmsalias" {
  name          = var.kms_alias_name
  target_key_id = aws_kms_key.kmskey.id
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.s3_bucket_example.id
  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.kmskey.arn
      sse_algorithm     = var.sse_algorithm
    }
    bucket_key_enabled = var.bucket_key_enabled
  }
}








/*data "aws_iam_policy_document" "cloudtrail_iam_policy" {
  statement {
    sid    = "AWSCloudTrailAclCheck"
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["cloudtrail.amazonaws.com"]
    }

    actions   = ["s3:GetBucketAcl"]
    resources = [aws_s3_bucket.cloudtrail.arn]
  }

  statement {
    sid    = "AWSCloudTrailWrite"
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["cloudtrail.amazonaws.com"]
    }

    actions   = ["s3:PutObject"]
    resources = ["${aws_s3_bucket.cloudtrail.arn}/logs/AWSLogs/${data.aws_caller_identity.current.account_id}/*"]

    condition {
      test     = "StringEquals"
      variable = "s3:x-amz-acl"
      values   = ["bucket-owner-full-control"]
    }
  }
}

resource "aws_s3_bucket_policy" "cloudtrail_s3_policy" {
  bucket = aws_s3_bucket.cloudtrail.id
  policy = data.aws_iam_policy_document.cloudtrail_iam_policy.json
}
*/

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.69.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.69.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.kmsalias](https://registry.terraform.io/providers/hashicorp/aws/5.69.0/docs/resources/kms_alias) | resource |
| [aws_kms_key.kmskey](https://registry.terraform.io/providers/hashicorp/aws/5.69.0/docs/resources/kms_key) | resource |
| [aws_s3_bucket.s3_bucket_example](https://registry.terraform.io/providers/hashicorp/aws/5.69.0/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.example](https://registry.terraform.io/providers/hashicorp/aws/5.69.0/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.versioning_example](https://registry.terraform.io/providers/hashicorp/aws/5.69.0/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_key_enabled"></a> [bucket\_key\_enabled](#input\_bucket\_key\_enabled) | n/a | `string` | `"true"` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The Name of Your S3 Bucket | `string` | n/a | yes |
| <a name="input_bucket_tags"></a> [bucket\_tags](#input\_bucket\_tags) | Tags to apply to the S3 bucket | `map(string)` | <pre>{<br/>  "Data Clasification": "GDPR",<br/>  "Data Owner": "Bucket Owner"<br/>}</pre> | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | Cleans up the bucket and all items. Use Carefully! | `bool` | `true` | no |
| <a name="input_kms_alias_name"></a> [kms\_alias\_name](#input\_kms\_alias\_name) | n/a | `string` | `"alias/s3-kms-alias"` | no |
| <a name="input_kmskey_description"></a> [kmskey\_description](#input\_kmskey\_description) | n/a | `string` | `"This key is used to encrypt bucket objects"` | no |
| <a name="input_kmskey_key_rotation"></a> [kmskey\_key\_rotation](#input\_kmskey\_key\_rotation) | n/a | `bool` | `true` | no |
| <a name="input_kmskey_rotation_period"></a> [kmskey\_rotation\_period](#input\_kmskey\_rotation\_period) | n/a | `number` | `365` | no |
| <a name="input_sse_algorithm"></a> [sse\_algorithm](#input\_sse\_algorithm) | n/a | `string` | `"aws:kms"` | no |
| <a name="input_versioning_status"></a> [versioning\_status](#input\_versioning\_status) | n/a | `string` | `"Enabled"` | no |

## Outputs

No outputs.

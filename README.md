## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| bastion\_instance\_size | n/a | `string` | `"t3.nano"` | no |
| bastion\_ssh\_keys | n/a | `list(string)` | n/a | yes |
| config\_output\_path | n/a | `any` | n/a | yes |
| eks\_authorized\_roles | n/a | `list(string)` | `[]` | no |
| extra\_policy\_arn | n/a | `string` | `"arn:aws:iam::aws:policy/AmazonS3FullAccess"` | no |
| instance\_types | n/a | `list(string)` | n/a | yes |
| ip\_whitelist | n/a | `list(string)` | `[]` | no |
| key\_name | n/a | `string` | n/a | yes |
| kubectl\_assume\_role | n/a | `string` | `""` | no |
| project\_fqdn | n/a | `string` | n/a | yes |
| project\_prefix | n/a | `string` | n/a | yes |
| project\_rev\_fqdn | n/a | `string` | n/a | yes |
| spot\_price | n/a | `string` | `""` | no |
| vpc\_cidr | n/a | `string` | `"172.31.0.0/16"` | no |
| worker\_groups | n/a | `list` | <code><pre>[<br>  {<br>    "instance_type": "t3.large"<br>  },<br>  {<br>    "instance_type": "t3.2xlarge"<br>  }<br>]<br></pre></code> | no |

## Outputs

| Name | Description |
|------|-------------|
| bastion | How to reach bastion |
| cluster\_name | n/a |
| eks\_cluster | n/a |
| kubeconfig\_filename | n/a |
| vpc | n/a |
| whitelist\_sg\_id | n/a |


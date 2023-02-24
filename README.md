## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | n/a | `string` | `"us-east-1"` | no |
| <a name="input_enable_nat"></a> [enable\_nat](#input\_enable\_nat) | Enable NAT Gateway | `bool` | `true` | no |
| <a name="input_vpc_app_subnets"></a> [vpc\_app\_subnets](#input\_vpc\_app\_subnets) | VPC Application Subnets | <pre>list(object({<br>    az     = string<br>    prefix = string<br>  }))</pre> | <pre>[<br>  {<br>    "az": "us-east-1a",<br>    "prefix": "10.10.4.0/24"<br>  },<br>  {<br>    "az": "us-east-1b",<br>    "prefix": "10.10.5.0/24"<br>  },<br>  {<br>    "az": "us-east-1c",<br>    "prefix": "10.10.6.0/24"<br>  },<br>  {<br>    "az": "us-east-1d",<br>    "prefix": "10.10.7.0/24"<br>  }<br>]</pre> | no |
| <a name="input_vpc_database_subnets"></a> [vpc\_database\_subnets](#input\_vpc\_database\_subnets) | VPC Database Subnets | <pre>list(object({<br>    az     = string<br>    prefix = string<br>  }))</pre> | <pre>[<br>  {<br>    "az": "us-east-1a",<br>    "prefix": "10.10.0.0/24"<br>  },<br>  {<br>    "az": "us-east-1b",<br>    "prefix": "10.10.1.0/24"<br>  },<br>  {<br>    "az": "us-east-1c",<br>    "prefix": "10.10.2.0/24"<br>  },<br>  {<br>    "az": "us-east-1d",<br>    "prefix": "10.10.3.0/24"<br>  }<br>]</pre> | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the VPC | `string` | `"aws-web-demo"` | no |
| <a name="input_vpc_prefix"></a> [vpc\_prefix](#input\_vpc\_prefix) | CIDR Notation of the VPC IP Prefix | `string` | `"10.10.0.0/20"` | no |
| <a name="input_vpc_public_subnets"></a> [vpc\_public\_subnets](#input\_vpc\_public\_subnets) | VPC DMZ/Public Subnets | <pre>list(object({<br>    az     = string<br>    prefix = string<br>  }))</pre> | <pre>[<br>  {<br>    "az": "us-east-1a",<br>    "prefix": "10.10.8.0/24"<br>  },<br>  {<br>    "az": "us-east-1b",<br>    "prefix": "10.10.9.0/24"<br>  },<br>  {<br>    "az": "us-east-1c",<br>    "prefix": "10.10.10.0/24"<br>  },<br>  {<br>    "az": "us-east-1d",<br>    "prefix": "10.10.11.0/24"<br>  }<br>]</pre> | no |

## Outputs

No outputs.

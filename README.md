# tf-aws-network

## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_aws"></a> [aws](#provider\_aws) (4.51.0)

## Modules

The following Modules are called:

### <a name="module_vpc"></a> [vpc](#module\_vpc)

Source: terraform-aws-modules/vpc/aws

Version:

## Resources

The following resources are used by this module:

- [aws_security_group.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) (resource)

## Required Inputs

No required inputs.

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region)

Description: n/a

Type: `string`

Default: `"us-east-1"`

### <a name="input_vpc_app_subnets"></a> [vpc\_app\_subnets](#input\_vpc\_app\_subnets)

Description: VPC Application Subnets

Type:

```hcl
list(object({
    az     = string
    prefix = string
  }))
```

Default:

```json
[
  {
    "az": "us-east-1a",
    "prefix": "10.10.4.0/24"
  },
  {
    "az": "us-east-1b",
    "prefix": "10.10.5.0/24"
  },
  {
    "az": "us-east-1c",
    "prefix": "10.10.6.0/24"
  },
  {
    "az": "us-east-1d",
    "prefix": "10.10.7.0/24"
  }
]
```

### <a name="input_vpc_database_subnets"></a> [vpc\_database\_subnets](#input\_vpc\_database\_subnets)

Description: VPC Database Subnets

Type:

```hcl
list(object({
    az     = string
    prefix = string
  }))
```

Default:

```json
[
  {
    "az": "us-east-1a",
    "prefix": "10.10.0.0/24"
  },
  {
    "az": "us-east-1b",
    "prefix": "10.10.1.0/24"
  },
  {
    "az": "us-east-1c",
    "prefix": "10.10.2.0/24"
  },
  {
    "az": "us-east-1d",
    "prefix": "10.10.3.0/24"
  }
]
```

### <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name)

Description: Name of the VPC

Type: `string`

Default: `"aws-web-demo"`

### <a name="input_vpc_prefix"></a> [vpc\_prefix](#input\_vpc\_prefix)

Description: CIDR Notation of the VPC IP Prefix

Type: `string`

Default: `"10.10.0.0/20"`

### <a name="input_vpc_public_subnets"></a> [vpc\_public\_subnets](#input\_vpc\_public\_subnets)

Description: VPC DMZ/Public Subnets

Type:

```hcl
list(object({
    az     = string
    prefix = string
  }))
```

Default:

```json
[
  {
    "az": "us-east-1a",
    "prefix": "10.10.8.0/24"
  },
  {
    "az": "us-east-1b",
    "prefix": "10.10.9.0/24"
  },
  {
    "az": "us-east-1c",
    "prefix": "10.10.10.0/24"
  },
  {
    "az": "us-east-1d",
    "prefix": "10.10.11.0/24"
  }
]
```

## Outputs

The following outputs are exported:

### <a name="output_app_subnets"></a> [app\_subnets](#output\_app\_subnets)

Description: AWS Application Subnets

### <a name="output_database_subnets"></a> [database\_subnets](#output\_database\_subnets)

Description: AWS Database Subnets

### <a name="output_network_id"></a> [network\_id](#output\_network\_id)

Description: AWS VPC ID

### <a name="output_network_name"></a> [network\_name](#output\_network\_name)

Description: AWS VPC Name

### <a name="output_platform"></a> [platform](#output\_platform)

Description: Platform

### <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets)

Description: AWS Public Subnets

### <a name="output_region"></a> [region](#output\_region)

Description: AWS Region

### <a name="output_web_security_group"></a> [web\_security\_group](#output\_web\_security\_group)

Description: AWS Web Security Group

### Use with AWS
# AWS configuration including environmental variables, shared credentials file (\~/.aws/credentials),
# and shared config file (\~/.aws/config) will be loaded by the tool by default.
# To use a specific profile, you can use the following command:
# You can also provide no regions when importing resources:
# In that case terraformer will not know with which region resources are associated with and will not assume any region.
# That scenario is useful in case of global resources (e.g. CloudFront distributions or Route 53 records)
# and when region is passed implicitly through environmental variables or metadata service.
terraform init
terraformer import aws --profile=064592191516 --resources=vpc
terraformer import aws --profile=064592191516 --resources=subnet
terraformer import aws --profile=064592191516 --resources=route_table
terraformer import aws --profile=064592191516 --resources=budgets
terraformer import aws --profile=064592191516 --resources=sg
terraformer import aws --profile=064592191516 --resources=iam
terraformer import aws --profile=064592191516 --resources=s3

terraformer import aws --profile=064592191516 --resources=api_gateway
terraformer import aws --profile=064592191516 --resources=transit_gateway
terraformer import aws --profile=064592191516 --resources=vpn_gateway
terraformer import aws --profile=064592191516 --resources=accessanalyzer
terraformer import aws --profile=064592191516 --resources=acm
terraformer import aws --profile=064592191516 --resources=alb
terraformer import aws --profile=064592191516 --resources=appsync
terraformer import aws --profile=064592191516 --resources=auto_scaling
terraformer import aws --profile=064592191516 --resources=batch
terraformer import aws --profile=064592191516 --resources=cloud9
terraformer import aws --profile=064592191516 --resources=cloudformation
terraformer import aws --profile=064592191516 --resources=cloudfront
terraformer import aws --profile=064592191516 --resources=cloudhsm
terraformer import aws --profile=064592191516 --resources=cloudtrail
terraformer import aws --profile=064592191516 --resources=cloudwatch
terraformer import aws --profile=064592191516 --resources=codecommit
terraformer import aws --profile=064592191516 --resources=codebuild
terraformer import aws --profile=064592191516 --resources=codedeploy
terraformer import aws --profile=064592191516 --resources=codepipeline
terraformer import aws --profile=064592191516 --resources=cognito
terraformer import aws --profile=064592191516 --resources=config
terraformer import aws --profile=064592191516 --resources=customer_gateway
terraformer import aws --profile=064592191516 --resources=datapipeline
terraformer import aws --profile=064592191516 --resources=devicefarm
terraformer import aws --profile=064592191516 --resources=docdb
terraformer import aws --profile=064592191516 --resources=dynamodb
terraformer import aws --profile=064592191516 --resources=ebs
terraformer import aws --profile=064592191516 --resources=ec2_instance
terraformer import aws --profile=064592191516 --resources=ecr
terraformer import aws --profile=064592191516 --resources=ecrpublic
terraformer import aws --profile=064592191516 --resources=ecs
terraformer import aws --profile=064592191516 --resources=efs
terraformer import aws --profile=064592191516 --resources=eip
terraformer import aws --profile=064592191516 --resources=eks
terraformer import aws --profile=064592191516 --resources=elastic_beanstalk
terraformer import aws --profile=064592191516 --resources=elasticache
terraformer import aws --profile=064592191516 --resources=elb
terraformer import aws --profile=064592191516 --resources=emr
terraformer import aws --profile=064592191516 --resources=eni
terraformer import aws --profile=064592191516 --resources=es
terraformer import aws --profile=064592191516 --resources=firehose
terraformer import aws --profile=064592191516 --resources=glue
terraformer import aws --profile=064592191516 --resources=igw
terraformer import aws --profile=064592191516 --resources=iot
terraformer import aws --profile=064592191516 --resources=kinesis
terraformer import aws --profile=064592191516 --resources=kms
terraformer import aws --profile=064592191516 --resources=lambda
terraformer import aws --profile=064592191516 --resources=logs
terraformer import aws --profile=064592191516 --resources=media_package
terraformer import aws --profile=064592191516 --resources=media_store
terraformer import aws --profile=064592191516 --resources=msk
terraformer import aws --profile=064592191516 --resources=nacl
terraformer import aws --profile=064592191516 --resources=nat
terraformer import aws --profile=064592191516 --resources=opsworks
terraformer import aws --profile=064592191516 --resources=organization
terraformer import aws --profile=064592191516 --resources=qldb
terraformer import aws --profile=064592191516 --resources=rds
terraformer import aws --profile=064592191516 --resources=redshift
terraformer import aws --profile=064592191516 --resources=resourcegroups
terraformer import aws --profile=064592191516 --resources=route53
terraformer import aws --profile=064592191516 --resources=secretsmanager
terraformer import aws --profile=064592191516 --resources=securityhub
terraformer import aws --profile=064592191516 --resources=servicecatalog
terraformer import aws --profile=064592191516 --resources=ses
terraformer import aws --profile=064592191516 --resources=sfn
terraformer import aws --profile=064592191516 --resources=sns
terraformer import aws --profile=064592191516 --resources=sqs
terraformer import aws --profile=064592191516 --resources=ssm
terraformer import aws --profile=064592191516 --resources=swf
terraformer import aws --profile=064592191516 --resources=vpc_peering
terraformer import aws --profile=064592191516 --resources=vpn_connection
terraformer import aws --profile=064592191516 --resources=waf
terraformer import aws --profile=064592191516 --resources=waf_regional
terraformer import aws --profile=064592191516 --resources=wafv2_cloudfront
terraformer import aws --profile=064592191516 --resources=wafv2_regional
terraformer import aws --profile=064592191516 --resources=workspaces
terraformer import aws --profile=064592191516 --resources=xray
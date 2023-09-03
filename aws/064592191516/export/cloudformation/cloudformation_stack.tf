resource "aws_cloudformation_stack" "tfer--hello-world-dev" {
  capabilities     = ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM"]
  disable_rollback = "false"
  name             = "hello-world-dev"

  tags = {
    STAGE = "dev"
  }

  tags_all = {
    STAGE = "dev"
  }

  template_body = "{\"AWSTemplateFormatVersion\":\"2010-09-09\",\"Description\":\"The AWS CloudFormation template for this Serverless application\",\"Outputs\":{\"HelloLambdaFunctionQualifiedArn\":{\"Description\":\"Current Lambda function version\",\"Export\":{\"Name\":\"sls-hello-world-dev-HelloLambdaFunctionQualifiedArn\"},\"Value\":{\"Ref\":\"HelloLambdaVersionsWV16akTgvrSoEIPY8A5Rea93rl81KARiRUXbuxl9fA\"}},\"ServerlessDeploymentBucketName\":{\"Export\":{\"Name\":\"sls-hello-world-dev-ServerlessDeploymentBucketName\"},\"Value\":{\"Ref\":\"ServerlessDeploymentBucket\"}}},\"Resources\":{\"HelloLambdaFunction\":{\"DependsOn\":[\"HelloLogGroup\"],\"Properties\":{\"Code\":{\"S3Bucket\":{\"Ref\":\"ServerlessDeploymentBucket\"},\"S3Key\":\"serverless/hello-world/dev/1692878027696-2023-08-24T11:53:47.696Z/hello-world.zip\"},\"FunctionName\":\"hello-world-dev-hello\",\"Handler\":\"handler.hello\",\"MemorySize\":1024,\"Role\":{\"Fn::GetAtt\":[\"IamRoleLambdaExecution\",\"Arn\"]},\"Runtime\":\"nodejs18.x\",\"Timeout\":6},\"Type\":\"AWS::Lambda::Function\"},\"HelloLambdaVersionsWV16akTgvrSoEIPY8A5Rea93rl81KARiRUXbuxl9fA\":{\"DeletionPolicy\":\"Retain\",\"Properties\":{\"CodeSha256\":\"eFxg46Ci66caKp3lQN7q04Dbx/E+MG38qq+1RZv8Ld8=\",\"FunctionName\":{\"Ref\":\"HelloLambdaFunction\"}},\"Type\":\"AWS::Lambda::Version\"},\"HelloLogGroup\":{\"Properties\":{\"LogGroupName\":\"/aws/lambda/hello-world-dev-hello\"},\"Type\":\"AWS::Logs::LogGroup\"},\"IamRoleLambdaExecution\":{\"Properties\":{\"AssumeRolePolicyDocument\":{\"Statement\":[{\"Action\":[\"sts:AssumeRole\"],\"Effect\":\"Allow\",\"Principal\":{\"Service\":[\"lambda.amazonaws.com\"]}}],\"Version\":\"2012-10-17\"},\"Path\":\"/\",\"Policies\":[{\"PolicyDocument\":{\"Statement\":[{\"Action\":[\"logs:CreateLogStream\",\"logs:CreateLogGroup\",\"logs:TagResource\"],\"Effect\":\"Allow\",\"Resource\":[{\"Fn::Sub\":\"arn:$${AWS::Partition}:logs:$${AWS::Region}:$${AWS::AccountId}:log-group:/aws/lambda/hello-world-dev*:*\"}]},{\"Action\":[\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":[{\"Fn::Sub\":\"arn:$${AWS::Partition}:logs:$${AWS::Region}:$${AWS::AccountId}:log-group:/aws/lambda/hello-world-dev*:*:*\"}]}],\"Version\":\"2012-10-17\"},\"PolicyName\":{\"Fn::Join\":[\"-\",[\"hello-world\",\"dev\",\"lambda\"]]}}],\"RoleName\":{\"Fn::Join\":[\"-\",[\"hello-world\",\"dev\",{\"Ref\":\"AWS::Region\"},\"lambdaRole\"]]}},\"Type\":\"AWS::IAM::Role\"},\"ServerlessDeploymentBucket\":{\"Properties\":{\"BucketEncryption\":{\"ServerSideEncryptionConfiguration\":[{\"ServerSideEncryptionByDefault\":{\"SSEAlgorithm\":\"AES256\"}}]}},\"Type\":\"AWS::S3::Bucket\"},\"ServerlessDeploymentBucketPolicy\":{\"Properties\":{\"Bucket\":{\"Ref\":\"ServerlessDeploymentBucket\"},\"PolicyDocument\":{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":false}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[{\"Fn::Join\":[\"\",[\"arn:\",{\"Ref\":\"AWS::Partition\"},\":s3:::\",{\"Ref\":\"ServerlessDeploymentBucket\"},\"/*\"]]},{\"Fn::Join\":[\"\",[\"arn:\",{\"Ref\":\"AWS::Partition\"},\":s3:::\",{\"Ref\":\"ServerlessDeploymentBucket\"}]]}]}]}},\"Type\":\"AWS::S3::BucketPolicy\"}}}"
}

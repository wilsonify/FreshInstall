import os

import boto3
from botocore.config import Config
from botocore.exceptions import ClientError

# Initialize S3 Client for AWS
s3_client_aws = boto3.client('s3')

# Initialize S3 Client for Backblaze B2
s3_client_b2 = boto3.client(
    's3',
    endpoint_url="https://s3.us-east-005.backblazeb2.com",
    aws_access_key_id=os.getenv('B2_APPLICATION_KEY_ID'),
    aws_secret_access_key=os.getenv('B2_SECRET_ACCESS_KEY'),
    config=Config(signature_version='s3v4')
)


def file_exists_in_b2(bucket_name, key):
    try:
        s3_client_b2.head_object(Bucket=bucket_name, Key=key)
        return True
    except ClientError as e:
        if e.response['Error']['Code'] == '404':
            return False
        else:
            raise


def get_filesize_in_s3(s3client, bucket_name, key):
    try:
        response = s3client.head_object(Bucket=bucket_name, Key=key)
        return response['ContentLength']
    except ClientError as e:
        print(f"Failed to get file size from S3: {e}")
        return 0


def migrate_s3_to_b2(source_bucket, destination_bucket):
    paginator = s3_client_aws.get_paginator('list_objects_v2')
    page_iterator = paginator.paginate(Bucket=source_bucket)

    for page in page_iterator:
        objects = page.get('Contents', [])
        for obj in objects:
            key = obj['Key']
            print(f"Processing {key}...")
            if file_exists_in_b2(destination_bucket, key):
                print(f"{key} already exists in {destination_bucket}, skipping...")
                filesize_in_s3 = get_filesize_in_s3(s3_client_aws, source_bucket, key)
                filesize_in_b2 = get_filesize_in_s3(s3_client_b2, destination_bucket, key)
                if filesize_in_s3 == filesize_in_b2:
                    continue

            print("Download the object from AWS S3")
            s3_response = s3_client_aws.get_object(Bucket=source_bucket, Key=key)
            file_data = s3_response['Body'].read()

            print("Upload the file to Backblaze B2")
            s3_client_b2.put_object(Bucket=destination_bucket, Key=key, Body=file_data)
            print(f"{key} has been uploaded to Backblaze B2.")


if __name__ == "__main__":
    migrate_s3_to_b2(source_bucket='064592191516-books', destination_bucket='bb-064592191516-books')

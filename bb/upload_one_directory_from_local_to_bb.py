import os

import boto3
from botocore.config import Config

# Backblaze Configuration
s3_client_b2 = boto3.client(
    's3',
    endpoint_url="https://s3.us-east-005.backblazeb2.com",
    aws_access_key_id=os.getenv('B2_APPLICATION_KEY_ID'),
    aws_secret_access_key=os.getenv('B2_SECRET_ACCESS_KEY'),
    config=Config(signature_version='s3v4')
)


def upload_directory_to_b2():
    directory_path = "/media/thom/seagate03/064592191516-books"
    bucket_name = "bb-064592191516-books"
    # bucket_dest = b2_api.get_bucket_by_id(bucket_name)
    for root, dirs, files in os.walk(directory_path):
        for file_name in files:
            file_path = os.path.join(root, file_name)
            relative_path = os.path.relpath(file_path, directory_path)
            print(f"Start Uploading {relative_path} to Backblaze B2 {bucket_name}")
            s3_client_b2.put_object(
                Bucket=bucket_name,
                Key='hello.txt',
                Body='Hello, World!',
            )
            print(f"Done {relative_path} has been uploaded to {relative_path}")
            break
        break


if __name__ == "__main__":
    upload_directory_to_b2()

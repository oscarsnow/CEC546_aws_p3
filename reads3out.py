
from smart_open import smart_open

import boto3
import os

s3_resource = boto3.resource("s3", region_name='us-east-1')
input_bucket = "546proj3"
output_bucket = "546proj3output"

if __name__ == '__main__':

    s3_client = boto3.client('s3')
    csv_out=os.popen('aws s3 ls s3://546proj3output | wc -l').read()
    for num in range(int(csv_out)+1):
        if num == 3:
            continue
        try:
            with smart_open(f's3://{output_bucket}/test_{num}.csv', 'r') as s3_source:
                for line in s3_source:
                    s3_source.seek(0)  # seek to the beginning
                    b1000 = s3_source.read(1000)  # read 1000 bytes
                    print(f'test_{num}.mp4:{line}')
        except OSError:
            print('An error occurred (NoSuchKey) when calling the GetObject operation: The specified key does not exist.')

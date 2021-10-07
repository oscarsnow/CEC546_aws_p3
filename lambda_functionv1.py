import boto3
import os
import sys
from urllib.parse import unquote_plus
import uuid


input_bucket = "testbucker333345"
output_bucket = "testbucker333345out"
jpg_bucket = "testbucker333345jpg"

s3_client = boto3.client('s3')

def save_image(image,addr):
    address = addr + tmp2key
    cv2.imwrite(address,image)


def lambda_handler(event, context):
    for record in event['Records']:
        bucket = record['s3']['bucket']['name']
        key = unquote_plus(record['s3']['object']['key'])
        tmpkey = key.replace('/', '')
        download_path = '/tmp/{}{}'.format(uuid.uuid4(), tmpkey)
        #upload_path = '/tmp/resized-{}'.format(tmpkey)
        s3_client.download_file(bucket, key, download_path)
        #resize_image(download_path, upload_path)
        #s3_client.upload_file(upload_path, '{}-resized'.format(bucket), key)
        
        #download_path = '/tmp/'{}.format(tmpkey)
        #s3_client.download_file(bucket, key, download_path)
       
        #videoCapture = cv2.VideoCapture(download_path)
        #success, frame = videoCapture.read()
        #tmp2key =key.replace('mp4', 'jpg')
        #save_image(frame,'./tmp/')
      
        #upload_path = './tmp/{}'.format(tmp2key)
        #s3_client.upload_file(upload_path, 'testbucker333345jpg', key)
      
      #download_path = '/tmp/{}{}'.format(uuid.uuid4(), tmpkey)
      #upload_path = '/tmp/{}' + '.jpg'.format(tmpkey)
      #s3_client.download_file(bucket, key, download_path)
      #resize_image(download_path, upload_path)
      #s3_client.upload_file(upload_path, '{}-resized'.format(bucket), key)
            
import boto3
import os
import sys
from urllib.parse import unquote_plus
import uuid
import ffmpeg
import cv2
from boto3 import client as boto3_client
import face_recognition
import pickle

input_bucket = "testbucker333345"
output_bucket = "testbucker333345out"
jpg_bucket = "testbucker333345jpg"
sys_path = "/tmp/"

s3_client = boto3.client('s3')

def save_image(image,addr):
    address = addr + tmp2key
    cv2.imwrite(address,image)


def face_recognition_handler(event, context):
    for record in event['Records']:
        bucket = record['s3']['bucket']['name']
        key = unquote_plus(record['s3']['object']['key'])
        tmpkey = key.replace('/', '')
        download_path = sys_path +'{}'.format(tmpkey)
        s3_client.download_file(bucket, key, download_path)
        
        file_name = tmpkey.replace('.mp4', '')
        jpg_path = download_path.replace('.mp4', '.jpg')
        videoCapture = cv2.VideoCapture(download_path)
        success, frame = videoCapture.read()
        cv2.imwrite(jpg_path,frame)

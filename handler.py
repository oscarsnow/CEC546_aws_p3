import configparser
import os
import pickle
import time
import cv2
import boto3
import botocore
import PIL.Image as Image
import face_recognition
import numpy as np
from boto3.dynamodb.conditions import Key
from botocore.config import Config

# Working Directory
home_dir = os.path.dirname(os.path.abspath('__file__'))
tmp_path = '/tmp'

# output Directory
output = f'{home_dir}/result'
# Configure the parser
cf = configparser.ConfigParser()
cf.read(os.path.join(home_dir, 'config.ini'))

# AWS ENV
AWS_REGION = cf.get("EC2", "AWS_REGION")
aws_config = Config(
    region_name=AWS_REGION,
    signature_version='v4',
    retries={
        'max_attempts': 10,
        'mode': 'standard'
    }
)
# S3
s3 = boto3.resource("s3", region_name=AWS_REGION)
s3_client = boto3.client('s3', region_name=AWS_REGION)
input_bucket = cf.get("S3", "input_bucket")
output_bucket = cf.get("S3", "output_bucket")
# DDB
dynamodb = boto3.resource('dynamodb', region_name=AWS_REGION)
table = dynamodb.Table('student_data')


def readImageFromBucket(key, bucket_name):
    bucket = s3.Bucket(bucket_name)
    object = bucket.Object(key)
    response = object.get()
    return Image.open(response['Body'])


# Function to read the 'encoding' file
def open_encoding(encoding_file):
    file = open(encoding_file, "rb")
    data = pickle.load(file)
    file.close()
    return data


def filter_s3_objects(bucket_name):
    print(f"[S3 ] Filter Amazon S3 Bucket Objects")
    bucket = s3.Bucket(bucket_name)
    count = 0
    for obj in bucket.objects.filter(Prefix='test'):
        count += 1
        print(f'[S3 ]   -> Find S3 bucket image output in order "{count}": <{obj.key}>')


def get_one_s3_objects(bucket_name):
    bucket = s3.Bucket(bucket_name)
    print(f"[S3 ] Listing Amazon S3 Bucket Objects")
    for obj in bucket.objects.all():
        print(f'[S3 ]   -> Find S3 bucket objects": <{obj.key}>')
        break
    return obj.key


def save_file(file_name, academic_info):
    if os.path.exists(f'{output}/{file_name}'):
        print(f'[EC2] The output file exists, read the cache directly.')
    else:
        with open(f'{output}/{file_name}', "w") as f:
            f.write(f'{academic_info}')
        time.sleep(1)


def upload_files(file_name, bucket, object_name=None, args=None):
    if object_name is None:
        object_name = file_name
    s3_client.upload_file(file_name, bucket, object_name, ExtraArgs=args)
    print(f'[S3 ]    -> File <{file_name}> has been uploaded into S3 Bucket <{bucket}>.')


def file_s3_download(bucket_name, file_name, download_path):
    try:
        s3_object = s3.Object(bucket_name, file_name)
        s3_object.download_file(download_path)
        print(f'S3 object {file_name} download complete')
    except botocore.exceptions.ClientError as e:
        if e.response['Error']['Code'] == "404":
            print("The object does not exist.")
        else:
            raise


def file_s3_delete(bucket_name, file_name):
    try:
        s3_object = s3.Object(bucket_name, file_name)
        s3_object.delete()
        print(f'S3 object {file_name} deleted')
    except botocore.exceptions.ClientError as e:
        if e.response['Error']['Code'] == "404":
            print("The object does not exist.")
        else:
            raise


def file_s3_download_and_delete(bucket_name, file_name):
    try:
        s3_object = s3.Object(bucket_name, file_name)
        s3_object.download_file()
        s3_object.delete()
        print(f'S3 object {file_name} download complete and deleted simultaneously')
    except botocore.exceptions.ClientError as e:
        if e.response['Error']['Code'] == "404":
            print("The object does not exist.")
        else:
            raise


def query_Ddb_all():
    response = table.query(KeyConditionExpression=Key('class').eq('CEC546'), ScanIndexForward=False)
    print('===============================================')
    print("The query DDB returned the following items:")
    print('===============================================')
    for item in response['Items']:
        name = item.get("name")
        major = item.get("major")
        year = item.get("year")
        print(f'{name}, {major}, {year}')
    return item


def query_Ddb_byName(prediction_name):
    response = table.query(KeyConditionExpression=Key('class').eq('CEC546'), ScanIndexForward=False)
    for item in response['Items']:
        name = item.get("name")
        if name == prediction_name:
            major = item.get("major")
            year = item.get("year")
            academic_info = f'{name}, {major}, {year}'
    print('====================================================')
    print(f"The query of <{prediction_name}> Academic information:")
    print(f'{academic_info}')
    print('====================================================')
    return academic_info





def face_recognition_handler(event, context):
    bucket_name = event['Records'][0]['s3']['bucket']['name']
    region = event['Records'][0]['awsRegion']
    object = event['Records'][0]['s3']['object']['key']
    user = event['Records'][0]['userIdentity']['principalId']
    key = event['Records'][0]['s3']['object']['key']
    tmpkey = key.replace('/', '')

    print(f'=== bucket: {bucket_name}, region: {region}, object: {object}, user: {user}, key: {key} ===')

    print(f' --- {tmp_path} ')
    download_file_mp4 = tmp_path + '/' + '{}'.format(tmpkey)
    print(f'======= download_file_mp4: {download_file_mp4} =======')

    file_s3_download(input_bucket, key, download_file_mp4)

    file_name = key.replace('.mp4', '')
    print(f'======= file_name: {file_name} =======')

    file_name_jpg = download_file_mp4.replace('.mp4', '.jpg')
    print(f'======= file_name_jpg: {file_name_jpg} =======')

    # save image
    # videoCapture = cv2.VideoCapture(download_file_mp4)
    # success, frame = videoCapture.read()
    # cv2.imwrite(file_name_jpg, frame)

    os.system("ffmpeg -i " + str(download_file_mp4) + " -r 1 " + str(tmp_path) + "image-%3d.jpeg")

    data = open_encoding(f'{home_dir}/encoding')
    known_encoding_arrays = data['encoding']

    # Load a test image and get encondings for it
    unknown_image = face_recognition.load_image_file(f'{tmp_path}/image-001.jpg')
    unknown_encoding = face_recognition.face_encodings(unknown_image)[0]

    prediction_name = "unknown"
    # Compare a list of face encodings against a candidate encoding to see if they match.
    matches_arrays = face_recognition.compare_faces(known_encoding_arrays, unknown_encoding)
    """
    face_recognition.api.face_distance(face_encodings, face_to_compare)
        Given a list of face encodings, compare them to a known face encoding and get a euclidean distance for each comparison face. The distance tells you how similar the faces are. 
        Parameters:     face_encodings – List of face encodings to compare
                        face_to_compare – A face encoding to compare against
        Returns:	    A numpy ndarray with the distance for each face in the same order as the 'faces' array
    """
    # See how far apart the test image is from the known faces
    face_distances = face_recognition.api.face_distance(known_encoding_arrays, unknown_encoding)
    # 给出水平方向最小值的下标 Returns the indices of the minimum values along an axis.
    best_match_index = np.argmin(face_distances)

    # Recognized the prediction name from img
    if matches_arrays[best_match_index]:
        prediction_name = data['name'][best_match_index]
    print('======================================================================')
    print(f'The Name of {file_name_jpg} is: {prediction_name}')
    print('======================================================================')

    # search in DynamoDB for this person’s academic information
    academic_info = query_Ddb_byName(prediction_name)

    # stores the student’s academic information as a csv file
    with open(f'{home_dir}/result/result.csv', "w") as f:
        f.write(f'{academic_info}')
    # upload it to the output bucket in S3
    # upload_files(file_name, output_bucket, )


# if __name__ == '__main__':
#     # item = query_Ddb_all()
#     # academic_info = query_Ddb_byName("president_biden")
#     # file_name = file_s3_download(input_bucket, "test_2.mp4")
#     # name = file_name.replace()
#     # save_file("test_2", academic_info)
#     print(f' --- {tmp_path} ')
#     key = f'{tmp_path}/test_2.mp4'
#     tmpkey = key.replace('', '')
#
#     download_file_mp4 = '{}'.format(tmpkey)
#     print(f'======= download_file_mp4: {download_file_mp4} =======')
#
#     file_name = tmpkey.replace('.mp4', '')
#     print(f'======= file_name: {file_name} =======')
#
#     file_name_jpg = download_file_mp4.replace('.mp4', '.jpg')
#     print(f'======= file_name_jpg: {file_name_jpg} =======')
#
#     videoCapture = cv2.VideoCapture(download_file_mp4)
#     success, frame = videoCapture.read()
#     cv2.imwrite(file_name_jpg, frame)
#
#     data = open_encoding(f'{home_dir}/encoding')
#     known_encoding_arrays = data['encoding']
#
#     # Load a test image and get encondings for it
#     unknown_image = face_recognition.load_image_file(file_name_jpg)
#     unknown_encoding = face_recognition.face_encodings(unknown_image)[0]
#
#     prediction_name = "unknown"
#     # Compare a list of face encodings against a candidate encoding to see if they match.
#     matches_arrays = face_recognition.compare_faces(known_encoding_arrays, unknown_encoding)
#     """
#     face_recognition.api.face_distance(face_encodings, face_to_compare)
#         Given a list of face encodings, compare them to a known face encoding and get a euclidean distance for each comparison face. The distance tells you how similar the faces are.
#         Parameters:     face_encodings – List of face encodings to compare
#                         face_to_compare – A face encoding to compare against
#         Returns:	    A numpy ndarray with the distance for each face in the same order as the 'faces' array
#     """
#     # See how far apart the test image is from the known faces
#     face_distances = face_recognition.api.face_distance(known_encoding_arrays, unknown_encoding)
#     # 给出水平方向最小值的下标 Returns the indices of the minimum values along an axis.
#     best_match_index = np.argmin(face_distances)
#
#     # Recognized the prediction name from img
#     if matches_arrays[best_match_index]:
#         prediction_name = data['name'][best_match_index]
#     print('======================================================================')
#     print(f'The Name of {file_name_jpg} is: {prediction_name}')
#     print('======================================================================')
#
#     # search in DynamoDB for this person’s academic information
#     academic_info = query_Ddb_byName(prediction_name)
#
#     # stores the student’s academic information as a csv file
#     with open(f'{home_dir}/result/result.csv', "w") as f:
#         f.write(f'{academic_info}')
#     # upload it to the output bucket in S3
#     # upload_files(file_name, output_bucket, )

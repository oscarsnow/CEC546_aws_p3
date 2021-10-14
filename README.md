# CSE546 Project Group 9 ： 
从S3里下载视频，调用FFMPEG分解为图片，调用人脸识别库得到人名，根据名字调用db获取全部信息并存入S3中

#### For win 10 ####
pip3 install dlib-19.19.0-cp38-cp38-win_amd64.whl.whl

#### Dockerfile add ####
COPY config.ini ${FUNCTION_DIR}
COPY encoding ${FUNCTION_DIR}

####Lamda 调内存和超时，加载快 
lambda->function->project->configuration->General configuration

#### git push ####
#使用.gitignore忽略.开头的文件以及文件夹
#1 在.gitignore中输入以下内容
# .开头的任何文件
.*
# 排除.gitignore本身，排除符号就是逻辑非
!/.gitignore
!/.github

#2 清除git缓存
#若是不清除缓存，修改.gitignore是没有效果的。
#因为cached是暂存区，工作目录的修改需要与暂存区比较；
#因此git status会显示差异，为了生效，需要删除暂存区；
#最后将所有本地文件跟踪一下，得到最新的暂存区文件。
 
git rm -r --cached .               # 删除缓存区
git add .                          # 添加当前内容到缓存区
git commit -m 'v1.2'               # 将缓存区的内容提交到本地仓库
git push -u origin master          # 将本地仓库提交到服务器仓库

#### Build docker in ubuntu and Push image to ECR ####
TAG=''
REGION=
AWS_ACCOUNT_ID=
# Build the docker image
docker build -t $TAG .
# Create a ECR repository  $AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/$TAG
aws ecr create-repository --repository-name $TAG --image-scanning-configuration scanOnPush=true --region $REGION
# Tag the image to match the repository name
docker tag $TAG:latest $AWS_ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$TAG:latest
# Register docker to ECR
aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com
# Push the image to ECR
docker push $AWS_ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$TAG:latest


#### Docker Command for testing ####
docker run -p 9000:8080 486003376662.dkr.ecr.us-east-1.amazonaws.com/project3-group9&
docker logs -f 3a9002b294b8
docker exec -it 3a9002b294b8 /bin/bash
docker cp test_0.mp4 3a9002b294b8:/tmp
docker cp handler.py 3a9002b294b8:/home/app
docker cp config.ini 3a9002b294b8:/home/app
docker cp people_i_know 3a9002b294b8:/home/app
#### run by shell for testing ####
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-east-1",
      "eventTime": "1970-01-01T00:00:00.000Z",
      "eventName": "ObjectCreated:Put",
      "userIdentity": {
        "principalId": "AIDAJDPLRKLG7UEXAMPLE"
      },
      "requestParameters": {
        "sourceIPAddress": "127.0.0.1"
      },
      "responseElements": {
        "x-amz-request-id": "C3D13FE58DE4C810",
        "x-amz-id-2": "FMyUVURIY8/IgAtTv8xRjskZQpcIZ9KG4V5Wp6S7S/JRWeUWerMUE5JgHvANOjpD"
      },
      "s3": {
        "s3SchemaVersion": "1.0",
        "configurationId": "testConfigRule",
        "bucket": {
          "name": "546proj3",
          "ownerIdentity": {
            "principalId": "A3NL1KOZZKExample"
          },
          "arn": "arn:aws:s3:::546proj3"
        },
        "object": {
          "key": "test_1.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
#### dangling images ####
docker rmi $(docker images -f "dangling=true" -q)

#### workload ####
time python3 workload.py input=546proj3 output=546proj3output test_file=test_cases/test_case_1  
  
Could not load dynamic library ‘libcudart.so.11.0’ 的原因。
解决方案呢，就是通过pip install tensorflow==2.3.1，降低tensorflow的版本，让它和我现在的cuda 10.1匹配
pip install tensorflow==2.3.1

创建一个S3触发事件的lamda：https://www.pianshen.com/article/9638751322/
有关最后的s3输出内容: s3的key为去掉.mp4后缀的视频文件名，s3的body为“nameValue,majorValue,yearValue”形式的字符串 
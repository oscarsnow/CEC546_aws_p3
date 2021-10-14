          "ownerIdentity": {
            "principalId": "A3NL1KOZZKExample"
          },
          "arn": "arn:aws:s3:::546proj3"
        },
        "object": {
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
docker exec -it 277cd4a584c3 /bin/bash
curl http://localhost:9000/2015-03-31/functions/function/invocations
ls
docker ps -a
set -o vi
docker exec -it 277cd4a584c3 /bin/bash
ls
vim handler.py 
vim Dockerfile 
ls
cd awsp3t/
ls
cd ../
ls
rm -rf awsp3t
ls
cd CEC546_aws_p3/
ls
more README.md 
ls
cd ../
ls
pwd
ls
cd test_cases/
ls
cd ../
ls
rm -rf face_recognition_handler.py
ls
vim handler.py 
ls -lrt
ls
ls -lrt
docker ps -a
docker images
docker stop project3-group9
docker stop ff6f2409b169
docker stop 277cd4a584c3
docker ps -a
docker rm 277cd4a584c3
docker images
docker rmi ff6f2409b169
docker rmiproject3-group9
docker rmi project3-group9
docker ps -a
docker images
docker rim ff6f2409b169
docker rmi ff6f2409b169
docker images
ls
ls -lrt
rm -rf lambda_functionv1.py 
more lambda_functionv2.py 
ls
ls -lrt
rm -rf face_recognition_handler.py.bak lambda_functionv2.py 
ls
ls -lrt
cd CEC546_aws_p3/
ls
mv * ../
LS
ls
ls -lrt
cd ../
ls
rm -rf CEC546_aws_p3/
ls
ls -lrt
vim Dockerfile 
ls
ls -lrt
more Dockerfile 
ls
l s-lrt
ls -lrt
docker images
docker build -t project3-group9 .
docker ps -a
docker images
docker imags
docker images -a
docker rmi $(docker images -f "dangling=true" -q)
docker images -a
docker images
docker -a
docker ps -a
docker images
TAG='project3-group9'
REGION=us-east-1
AWS_ACCOUNT_ID=486003376662
echo $TAG
docker tag $TAG:latest $AWS_ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$TAG:latest
docker images -a
docker images
aws ecr get-login-password --region $REGION | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com
docker push $AWS_ACCOUNT_ID.dkr.ecr.$REGION.amazonaws.com/$TAG:latest
docker images -f “dangling=true” -q
docker images -f "dangling=true" -q
dokcer ps -a
docker ps
docker ps -a
docker images
docker start 486003376662.dkr.ecr.us-east-1.amazonaws.com/project3-group9
docker ps -a
docker start ec6650ac9e85
docker start '486003376662.dkr.ecr.us-east-1.amazonaws.com/project3-group9'
docker ps -a
docker run -p 9000:8080 486003376662.dkr.ecr.us-east-1.amazonaws.com/project3-group9&
docker ps -a
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
ls
docker ps -a
ls
docker images
docker ps -a
docker exec -it 60ceae8d6155 /bin/bash
ls
ls -lrt
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
docker exec -it 60ceae8d6155 /bin/bash
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
ls
docker exec -it 60ceae8d6155 /bin/bash
ls
more handler.py 
docker cp handler.py 60ceae8d6155:/home/app
ls -lrt
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
ls -lrt
docker ps -a
docker cp handler.py 60ceae8d6155:/home/app
aws configure list
ls
vim handler.py
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
set -o vi
docker cp handler.py 60ceae8d6155:/home/app
docker exec -it 60ceae8d6155 /bin/bash
docker cp config.ini 60ceae8d6155:/home/app
docker exec -it 60ceae8d6155 /bin/bash
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
ls -lrt
ls
docker exec -it 60ceae8d6155 /bin/bash
more handler.py 
ls
docker cp handler.py 60ceae8d6155:/home/app
docker exec -it 60ceae8d6155 /bin/bash
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
docker exec -it 60ceae8d6155 /bin/bash
clear
exit
docker ps -a
docker -f 65d37e6d5a53
docker log 65d37e6d5a53
docker logs 65d37e6d5a53
docker -f logs 65d37e6d5a53
docker ps -a
docker logs 65d37e6d5a53
docker logs -f 65d37e6d5a53
ls
ls -lrt
docker ps -a
docker stop 65d37e6d5a53
docker images -a
docker ps -a
docker rm 65d37e6d5a53
docker ps -a
docker images
docker ps -a
docker images
docker run -p 9000:8080 project3-group9&
docker ps -a
docker stop 277cd4a584c3
docker ps -a
docker start 277cd4a584c3
docker ps -a
docker exec -it 277cd4a584c3 /bin/bash
docker -ps -a
docker ps -a
docker logs -f 277cd4a584c3
docker logs -f 60ceae8d6155
docker ps -a
docker stop 60ceae8d6155
docker start 60ceae8d6155
docker logs -f 60ceae8d6155
ls
docker ps -a
docker stop 60ceae8d6155
docker start 60ceae8d6155
docker logs -f 60ceae8d6155
ls
docker ps -a
docker stop 60ceae8d6155
docker start 60ceae8d6155
set -o vi
docker logs -f 60ceae8d6155
set -o vi
/curl
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [

curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
docker exec -it 60ceae8d6155 /bin/bash
docker cp handler.py 60ceae8d6155:/home/app
clear
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
ls
set -o vi
docker exec -it 60ceae8d6155 /bin/bash
docker ps -a
docker stop 60ceae8d6155
ls
docker start 60ceae8d6155
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
ls -lrt
export LANG="en_US";export LANGUAGE="en_US";export LC_ALL="en_US";top
docker ps -a
docker restart 60ceae8d6155
docker logs -f 60ceae8d6155
ls
vim handler.py 
docker logs -f 60ceae8d6155
docker ps -a
docker stop 60ceae8d6155
docker rm 60ceae8d6155
docker ps -a
docker images
docker run -p 9000:8080 486003376662.dkr.ecr.us-east-1.amazonaws.com/project3-group9&
log
set -o vi
docker ps -a
docker logs -f 3a9002b294b8
export LANG="en_US";export LANGUAGE="en_US";export LC_ALL="en_US";top
ls -lrt
vim workload.py 
ls -lrt
cd test_cases/
ls
cd test_case_1/
ls
cd 
ls
more workload.py 
ls -lrt
python workload.py input=546proj3 output=546proj3 test_file=test_cases/test_case_1
python
python3 workload.py input=546proj3 output=546proj3 test_file=test_cases/test_case_1
pip3 install boto3
pip install boto3
sudo apt install python3-pip
ls -lrt
python
python3
pip
piplist
pip3
python3
python
sudo apt-get install python3-pip
pip3 install boto3
set -o vi
python3 workload.py input=546proj3 output=546proj3 test_file=test_cases/test_case_1
ls -lrt test_cases/
ls
cd test_cases/
ls
wget https://github.com/EugeneKuz/CSE546-FallA2021/tree/master/test_cases/test_case_1
ls
wget -r -np https://github.com/EugeneKuz/CSE546-FallA2021/tree/master/test_cases/test_case_1
ls
cd github.com/
ls
cd EugeneKuz/
ls
cd CSE546-FallA2021/
ls
cd tree/
ls
cd master/
ls
cd test_cases/
ls
ls -lrt
more test_case_1 
ls
cd 
ls
cd test_cases/
ls
rm -rf github.com/
ls
cd test_case_1/
ls
cd ../
ls
wget https://github.com/EugeneKuz/CSE546-FallA2021.git
ls
rm -rf CSE546-FallA2021.git 
wget https://github.com/EugeneKuz/CSE546-FallA2021/archive/refs/heads/master.zip
ls
unzip master.zip 
ls
cd CSE546-FallA2021-master/
ls
cd test_cases/
ls
tar cvf test_case.tar *
ls
mv test_case.tar /home/ubuntu/
ls
cd 
ls
cd test_cases/
ls
rm -rf CSE546-FallA2021-master/
ls
cd ../
ls
tar -tvf test_case.tar 
ls
cd test_cases/
ls
cd ../
ls
tar -tvf test_case.tar 
ls
cd /
ls
cd /home/
ls
cd ubuntu/
ls
cd test_cases/
ls
cd test_case_1/
ls
cd ../
ls
cd
ls
man tar
tar -xvf test_case.tar 
ls -lrt
ls
mv test_case_* test_case/
ls
mv test_case_1 test_case/
mv test_case_2 test_case/
cd test_case
ls
ls -lrt
cd test_case_2/
ls
cd ../
ls
mkdir test_case_1
mv *.mp4 test_case_1
ls
cd
ls
ls -lrt
cd test_case
ls
cd ../
ls
cd test_case
ls
cd test_case_1/
ls
cd ../
ls
cd ../
ls
ls -lrt
mv test_case.tar test_cases.tar
tar -tvf test_cases.tar |more
ls
ls -lrt
rm -rf test_case
ls
cd test_cases/
ls
ls -lrt
cd test_case_1/
ls
cd ../
ls
cd ../
ls
tar -xvf test_cases.tar 
ls
ls -lrt
mv test_case1 test_cases/
mv test_case_1 test_cases/
mv -r test_case_1 test_cases/
ls
cd test_cases
ls
rm -rf *
cd -
ls
mv test_case_1 test_case_2 test_case/
mv test_case_1 test_case_2 test_cases/
ls
ls -lrt
cd test_cases/
ls
ls -lrt
ls -lart
ls -lart *
ls
cd ../
ls
ls -lrt
rm -rf test_cases.tar 
tar cvf test_cases.tar test_cases
ls -lrt
python3 workload.py input=546proj3 output=546proj3 test_file=test_cases/test_case_1
time python3 workload.py input=546proj3 output=546proj3 test_file=test_cases/test_case_1
ls
docker images
docker ps -a
docker start 3a9002b294b8
docker ps -a
docker logs -f 3a9002b294b8
clear
docker logs -f 3a9002b294b8
ls -lrt
ls
ls -lrt
clear
/cu
set -o vi
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
ls
ls -lrt
ls
more handler.py 
ls
docker cp handler.py 3a9002b294b8:/home/app
docker ps -a
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
ls
docker ps -a
docker stop 3a9002b294b8
docker start 3a9002b294b8
docker ps -a
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
docker exec -it 3a9002b294b8 /bin/bash
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
docker ps
docker stop 3a9002b294b8
docker start 3a9002b294b8
docker exec -it 3a9002b294b8 /bin/bash
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "us-west-1",
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
clear
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "ap-northeast-2",
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
          "name": "testbucker333345",
          "ownerIdentity": {
            "principalId": "A3NL1KOZZKExample"
          },
          "arn": "arn:aws:s3:::testbucker333345"
        },
        "object": {
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
ls
cd people_i_know/
ls
docker exec -it 3a9002b294b8 /bin/bash
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "ap-northeast-2",
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
          "name": "testbucker333345",
          "ownerIdentity": {
            "principalId": "A3NL1KOZZKExample"
          },
          "arn": "arn:aws:s3:::testbucker333345"
        },
        "object": {
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
docker ps -a
docker stop 3a9002b294b8
docker start 3a9002b294b8
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "ap-northeast-2",
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
          "name": "testbucker333345",
          "ownerIdentity": {
            "principalId": "A3NL1KOZZKExample"
          },
          "arn": "arn:aws:s3:::testbucker333345"
        },
        "object": {
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
ls
cd ../
ls
docker cp people_i_know 3a9002b294b8:/home/app
docker exec -it 3a9002b294b8 /bin/bash
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "ap-northeast-2",
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
          "name": "testbucker333345",
          "ownerIdentity": {
            "principalId": "A3NL1KOZZKExample"
          },
          "arn": "arn:aws:s3:::testbucker333345"
        },
        "object": {
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "ap-northeast-2",
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
          "name": "testbucker333345",
          "ownerIdentity": {
            "principalId": "A3NL1KOZZKExample"
          },
          "arn": "arn:aws:s3:::testbucker333345"
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
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "ap-northeast-2",
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
          "name": "testbucker333345",
          "ownerIdentity": {
            "principalId": "A3NL1KOZZKExample"
          },
          "arn": "arn:aws:s3:::testbucker333345"
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
clear
time curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "ap-northeast-2",
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
          "name": "testbucker333345",
          "ownerIdentity": {
            "principalId": "A3NL1KOZZKExample"
          },
          "arn": "arn:aws:s3:::testbucker333345"
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
ls
docer ps -a
docker ps -a
docker stop 3a9002b294b8
exit
export LANG="en_US";export LANGUAGE="en_US";export LC_ALL="en_US";top
ls
ls -lrt
rm -rf lambda_function.ipynb Untitled.ipynb awsp3t.zip 
ls
ls -lrt
ls
ls -lrt
ls
l s-lrt
ls -lrt
export LANG="en_US";export LANGUAGE="en_US";export LC_ALL="en_US";top
ls
time python3 reads3out.py 
ls -lrt
vim reads3out.py 
ls -lrt
chmod +x *.py
ls
time python3 reads3out.p
time python3 reads3out.py
pip install smart_open
pip3 install smart_open
time python3 reads3out.py
vim reads3out.py 
time python3 reads3out.py
ls
aws
cd .aws/
ls
more credentials 
ls
more config 
ls
id
ipconfig -a
ls
ls -lrt
docker ps -a
docker images
ls
ls -lrt
time python3 reads3out.py
ls
ls -lrt
vim reads3out.py 
yum install python3-pip
sudo apt-get install python3-pip
ls -lrt
tiem python3 reads3out.py 
python3 reads3out.py 
ls
cd .aws/
ls
more credentials 
ls
cd
ls
ls -lrt
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "ap-northeast-2",
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
ls
clear
ls -lrt
docker cp handler.py 3a9002b294b8:/home/app
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
cls
clear
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
docker exec -it 3a9002b294b8 /bin/bash
docker cp config.ini 3a9002b294b8:/home/app
more config.ini 
docker cp config.ini 3a9002b294b8:/home/app
docker exec -it 3a9002b294b8 /bin/bash
docker ps -a
docker restart 3a9002b294b8
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
docker cp handler.py 3a9002b294b8:/home/app
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
          "key": "test_2.mp4",
          "size": 1024,
          "eTag": "d41d8cd98f00b204e9800998ecf8427e",
          "versionId": "096fKKXTRTtl3on89fVO.nfljtsv6qko"
        }
      }
    }
  ]}'
docker exec -it 3a9002b294b8 /bin/bash
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
ls
vim handler.py 
docker exec -it 3a9002b294b8 /bin/bash
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
vim handler.py 
docker exec -it 3a9002b294b8 /bin/bash
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
docker ps -a
docker restart 3a9002b294b8
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
ls
vim handler.py 
set -o vi
docker exec -it 3a9002b294b8 /bin/bash
clear
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
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"Records": [
    {
      "eventVersion": "2.0",
      "eventSource": "aws:s3",
      "awsRegion": "",
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
ls
ls -lrt
rm -rf people_i_know/
ls
vim Dockerfile 
ls
ls -lrt
vim handler.py
rm -rf test_cases.tar 
ls -lrt
vim config.ini 
ls
git status
ls
cd test_cases/
ls
cd test_case_1/
ls
cd ../test_case_2
ls
cd
ls
ls -lrt
more reads3out.py 
ls
vim reads3out.py
ls
ls -lrt
python3 reads3out.py 
ls
ls -lrt
vim ~/.aws/credentials
more config.ini
ls
vim reads3out.py
python3 reads3out.py 
vim reads3out.py
python3 reads3out.py 
vim reads3out.py
python3 reads3out.py 
pip3 install requests
python3 reads3out.py 
ls -lrt
ls
vim handler.py
git status
ls
ls -lrt
more student_data.json 
ls
ls -lrt
vim requirements.txt
more README.md 
ls
more Dockerfile 
ls
ls -lrt
more mapping 
ls
ls -lrt
more encoding 
git status
git .add
git add .
ls
git status
ls
ls -lrt
pwd
mv test_cases/ ../
ls
mv test_cases/ /tmp/
ls
ls -lrt
git add .
git status
git commit -m "v1.0"
git push -u origin main
git status
git push -u origin main
git status
git add .
git commit -m "v1.0"
git push -u origin main
git status
sudo apt-get install apt-utils
ls
ls -lrt
more README.md 
ls
ls -lart
vim .git
ls
cd .git
ls
ls -lrt
vim config
ls
cd info/
ls
more exclude 
ls
cd
ls
ls -lart
cd .local/
ls
cd
vim .gitignore
cd .docker/
ls
more config.json 
ls
cd ../
ls
ls -lrt
ls -lart
more .github/
cd .github/
ls
cd workflows/
ls
vim aws.yml
ls
cd
ls
ls -lart
cd .vim/
ls
cd ../
ls
vim .gitignore
ls
git status
ls
ls -lart
git add .
git status
ls
git config --global core.excludesfile ~/.gitignore
git status
git add .
exit

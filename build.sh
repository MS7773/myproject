docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID monil777/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID monil777/$JOB_NAME:latest

docker push monil777/$JOB_NAME:$BUILD_ID

docker push monil777/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID monil777/$JOB_NAME:$BUILD_ID monil777/$JOB_NAME:latest

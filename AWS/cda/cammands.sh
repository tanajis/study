
#first create bucket
aws s3 mb s3://tmssamproject

#Now create package . this will create cloudformation pakcage and upload it into specified S3 loc.
aws cloudformation package --s3-bucket tmssamproject --template-file template.yaml --output-template-file tem.yaml

#Deploye This Will create lambda
aws cloudformation deploy --template-file tem.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM

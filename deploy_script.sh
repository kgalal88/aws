aws cloudformation package --template-file sam.yaml --output-template-file output-sam.yaml --s3-bucket kg-deployment-bucket
aws cloudformation deploy --template-file output-sam.yaml --stack-name MySampleStack --capabilities CAPABILITY_IAM
aws cloudformation describe-stacks --stack-name MySampleStack

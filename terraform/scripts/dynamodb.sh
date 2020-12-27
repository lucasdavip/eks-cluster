# Criar tabela state lock (dynamodb)
env=$1
aws dynamodb create-table \
    --table-name terraform_${env} \
    --attribute-definitions \
        AttributeName=LockID,AttributeType=S \
    --key-schema AttributeName=LockID,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1

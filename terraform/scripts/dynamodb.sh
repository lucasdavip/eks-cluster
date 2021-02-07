# Criar tabela state lock (dynamodb)
resource=$1
env=$2
aws dynamodb create-table \
    --table-name ${resource}_terraform_${env} \
    --attribute-definitions \
        AttributeName=LockID,AttributeType=S \
    --key-schema AttributeName=LockID,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1

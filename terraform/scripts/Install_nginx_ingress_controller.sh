kubectl create namespace nginx-ingress-controller

helm install nginx-ingress-controller ingress-nginx/ingress-nginx \
--namespace nginx-ingress-controller \
--set controller.metrics.enabled=true \
--set-string controller.metrics.service.annotations."prometheus\.io/port"="10254" \
--set-string controller.metrics.service.annotations."prometheus\.io/scrape"="true"
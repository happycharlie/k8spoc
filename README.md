# k8spoc

## Tools stack
### docker hub hub.docker.com
    app1 : pinghuang/fork8spoc
    app2 : pinghuang/fork8spoc_app2

### helm 
### prometheus
reference : https://www.youtube.com/watch?v=zW-E8THfvPY
### lens
### nginx (ingress controller)
reference : https://www.youtube.com/watch?v=nuNfCRQ2Yac&t=620s


## install ingress controller on aks
helm install ingress-nginx ingress-nginx/ingress-nginx \    
    --namespace ingress-basic \
    --set controller.replication=2 \    
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \    
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux \    
    --set controller.service.externalTrafficPolicy=Local
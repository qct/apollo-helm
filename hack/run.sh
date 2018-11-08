#!/usr/bin/env bash

helm install --name apollo --namespace wrd-infra ./ \
             --set portalmysql.persistence.storageClass="local-storage" \
             --set devconfigservicemysql.persistence.storageClass="local-storage" \
             --set proconfigservicemysql.persistence.storageClass="local-storage" \
             --set portal.ingress.enabled=true \
             --set portal.ingress.hosts={apollo-portal.k8s-dev.com}
#             --set fatconfigservicemysql.persistence.storageClass="local-storage" \
#             --set uatconfigservicemysql.persistence.storageClass="local-storage" \
#             --set configservice.extraEnv."eureka\.service\.url"="http://apollo-configservice:8080/eureka/" \
#             --set configservice.extraEnv."logging\.level\.root"=debug

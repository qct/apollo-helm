#!/usr/bin/env bash

helm install --dry-run --debug --name apollo --namespace wrd-infra ./ \
             --set portal.ingress.enabled=true \
             --set portal.ingress.hosts={apollo-portal.k8s-dev.com} \
             --set devconfigservice.extraEnv."eureka\.instance\.hostname"="apollo-devconfigservice" \
             --set devconfigservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             --set devadminservice.extraEnv."eureka\.instance\.hostname"="apollo-devadminservice" \
             --set devadminservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             \
             --set fatconfigservice.extraEnv."eureka\.instance\.hostname"="apollo-fatconfigservice" \
             --set fatconfigservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             --set fatadminservice.extraEnv."eureka\.instance\.hostname"="apollo-fatadminservice" \
             --set fatadminservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             \
             --set uatconfigservice.extraEnv."eureka\.instance\.hostname"="apollo-uatconfigservice" \
             --set uatconfigservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             --set uatadminservice.extraEnv."eureka\.instance\.hostname"="apollo-uatadminservice" \
             --set uatadminservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             \
             --set proconfigservice.extraEnv."eureka\.instance\.hostname"="apollo-proconfigservice" \
             --set proconfigservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\" \
             --set proadminservice.extraEnv."eureka\.instance\.hostname"="apollo-proadminservice" \
             --set proadminservice.extraEnv."eureka\.instance\.preferIpAddress"=\"false\"

# Specify storage class for four databases in four envs
#            --set portalmysql.persistence.storageClass="local-storage" \
#            --set devconfigservicemysql.persistence.storageClass="local-storage" \
#            --set fatconfigservicemysql.persistence.storageClass="local-storage" \
#            --set uatconfigservicemysql.persistence.storageClass="local-storage" \
#            --set proconfigservicemysql.persistence.storageClass="local-storage"

# For debug
#             --set configservice.extraEnv."logging\.level\.root"=debug

#!/usr/bin/env bash

helm install --dry-run --debug --name apollo --namespace wrd-infra ../ \
             --set portalmysql.persistence.storageClass="local-storage" \
             --set configservicemysql.persistence.storageClass="local-storage" \
             --set portal.ingress.enabled=true \
             --set portal.ingress.hosts={apollo-portal.k8s-dev.com}